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
(declare-sort T@Field_13193_53 0)
(declare-sort T@Field_13206_13207 0)
(declare-sort T@Field_19377_3299 0)
(declare-sort T@Field_19424_19425 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19437_19442 0)
(declare-sort T@Field_20344_20345 0)
(declare-sort T@Field_20357_20362 0)
(declare-sort T@Field_21352_21353 0)
(declare-sort T@Field_21365_21370 0)
(declare-sort T@Field_7889_19425 0)
(declare-sort T@Field_7889_19442 0)
(declare-sort T@Field_19424_3299 0)
(declare-sort T@Field_19424_53 0)
(declare-sort T@Field_19424_13207 0)
(declare-sort T@Field_20344_3299 0)
(declare-sort T@Field_20344_53 0)
(declare-sort T@Field_20344_13207 0)
(declare-sort T@Field_21352_3299 0)
(declare-sort T@Field_21352_53 0)
(declare-sort T@Field_21352_13207 0)
(declare-datatypes ((T@PolymorphicMapType_13154 0)) (((PolymorphicMapType_13154 (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| (Array T@Ref T@Field_19377_3299 Real)) (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| (Array T@Ref T@Field_19424_19425 Real)) (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| (Array T@Ref T@Field_20344_20345 Real)) (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| (Array T@Ref T@Field_21352_21353 Real)) (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| (Array T@Ref T@Field_7889_19425 Real)) (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| (Array T@Ref T@Field_13193_53 Real)) (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| (Array T@Ref T@Field_13206_13207 Real)) (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| (Array T@Ref T@Field_7889_19442 Real)) (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| (Array T@Ref T@Field_19424_3299 Real)) (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| (Array T@Ref T@Field_19424_53 Real)) (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| (Array T@Ref T@Field_19424_13207 Real)) (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| (Array T@Ref T@Field_19437_19442 Real)) (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| (Array T@Ref T@Field_20344_3299 Real)) (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| (Array T@Ref T@Field_20344_53 Real)) (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| (Array T@Ref T@Field_20344_13207 Real)) (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| (Array T@Ref T@Field_20357_20362 Real)) (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| (Array T@Ref T@Field_21352_3299 Real)) (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| (Array T@Ref T@Field_21352_53 Real)) (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| (Array T@Ref T@Field_21352_13207 Real)) (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| (Array T@Ref T@Field_21365_21370 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13682 0)) (((PolymorphicMapType_13682 (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (Array T@Ref T@Field_19377_3299 Bool)) (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (Array T@Ref T@Field_13193_53 Bool)) (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (Array T@Ref T@Field_13206_13207 Bool)) (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (Array T@Ref T@Field_7889_19425 Bool)) (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (Array T@Ref T@Field_7889_19442 Bool)) (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (Array T@Ref T@Field_19424_3299 Bool)) (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (Array T@Ref T@Field_19424_53 Bool)) (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (Array T@Ref T@Field_19424_13207 Bool)) (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (Array T@Ref T@Field_19424_19425 Bool)) (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (Array T@Ref T@Field_19437_19442 Bool)) (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (Array T@Ref T@Field_20344_3299 Bool)) (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (Array T@Ref T@Field_20344_53 Bool)) (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (Array T@Ref T@Field_20344_13207 Bool)) (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (Array T@Ref T@Field_20344_20345 Bool)) (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (Array T@Ref T@Field_20357_20362 Bool)) (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (Array T@Ref T@Field_21352_3299 Bool)) (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (Array T@Ref T@Field_21352_53 Bool)) (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (Array T@Ref T@Field_21352_13207 Bool)) (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (Array T@Ref T@Field_21352_21353 Bool)) (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (Array T@Ref T@Field_21365_21370 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13133 0)) (((PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| (Array T@Ref T@Field_13193_53 Bool)) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| (Array T@Ref T@Field_13206_13207 T@Ref)) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| (Array T@Ref T@Field_19377_3299 Int)) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| (Array T@Ref T@Field_19424_19425 T@FrameType)) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| (Array T@Ref T@Field_19437_19442 T@PolymorphicMapType_13682)) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| (Array T@Ref T@Field_20344_20345 T@FrameType)) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| (Array T@Ref T@Field_20357_20362 T@PolymorphicMapType_13682)) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| (Array T@Ref T@Field_21352_21353 T@FrameType)) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| (Array T@Ref T@Field_21365_21370 T@PolymorphicMapType_13682)) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| (Array T@Ref T@Field_7889_19425 T@FrameType)) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| (Array T@Ref T@Field_7889_19442 T@PolymorphicMapType_13682)) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| (Array T@Ref T@Field_19424_3299 Int)) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| (Array T@Ref T@Field_19424_53 Bool)) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| (Array T@Ref T@Field_19424_13207 T@Ref)) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| (Array T@Ref T@Field_20344_3299 Int)) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| (Array T@Ref T@Field_20344_53 Bool)) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| (Array T@Ref T@Field_20344_13207 T@Ref)) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| (Array T@Ref T@Field_21352_3299 Int)) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| (Array T@Ref T@Field_21352_53 Bool)) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| (Array T@Ref T@Field_21352_13207 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_13193_53)
(declare-fun f_7 () T@Field_19377_3299)
(declare-fun succHeap (T@PolymorphicMapType_13133 T@PolymorphicMapType_13133) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13133 T@PolymorphicMapType_13133) Bool)
(declare-fun state (T@PolymorphicMapType_13133 T@PolymorphicMapType_13154) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13154) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13682)
(declare-fun p3_1 (T@Ref Int) T@Field_21352_21353)
(declare-fun IsPredicateField_7942_7943 (T@Field_21352_21353) Bool)
(declare-fun |p3#trigger_7942| (T@PolymorphicMapType_13133 T@Field_21352_21353) Bool)
(declare-fun |p3#everUsed_7942| (T@Field_21352_21353) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun p1 (T@Ref) T@Field_19424_19425)
(declare-fun IsPredicateField_7892_7893 (T@Field_19424_19425) Bool)
(declare-fun p2 (T@Ref) T@Field_20344_20345)
(declare-fun IsPredicateField_7917_7918 (T@Field_20344_20345) Bool)
(declare-fun |p1#trigger_7892| (T@PolymorphicMapType_13133 T@Field_19424_19425) Bool)
(declare-fun |p1#everUsed_7892| (T@Field_19424_19425) Bool)
(declare-fun |p2#trigger_7917| (T@PolymorphicMapType_13133 T@Field_20344_20345) Bool)
(declare-fun |p2#everUsed_7917| (T@Field_20344_20345) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13133 T@PolymorphicMapType_13133 T@PolymorphicMapType_13154) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7942 (T@Field_21352_21353) T@Field_21365_21370)
(declare-fun HasDirectPerm_21352_19425 (T@PolymorphicMapType_13154 T@Ref T@Field_21352_21353) Bool)
(declare-fun PredicateMaskField_7917 (T@Field_20344_20345) T@Field_20357_20362)
(declare-fun HasDirectPerm_20344_19425 (T@PolymorphicMapType_13154 T@Ref T@Field_20344_20345) Bool)
(declare-fun PredicateMaskField_7892 (T@Field_19424_19425) T@Field_19437_19442)
(declare-fun HasDirectPerm_19424_19425 (T@PolymorphicMapType_13154 T@Ref T@Field_19424_19425) Bool)
(declare-fun IsPredicateField_7889_42542 (T@Field_7889_19425) Bool)
(declare-fun PredicateMaskField_7889 (T@Field_7889_19425) T@Field_7889_19442)
(declare-fun HasDirectPerm_7889_19425 (T@PolymorphicMapType_13154 T@Ref T@Field_7889_19425) Bool)
(declare-fun IsWandField_21352_50249 (T@Field_21352_21353) Bool)
(declare-fun WandMaskField_21352 (T@Field_21352_21353) T@Field_21365_21370)
(declare-fun IsWandField_20344_49892 (T@Field_20344_20345) Bool)
(declare-fun WandMaskField_20344 (T@Field_20344_20345) T@Field_20357_20362)
(declare-fun IsWandField_19424_49535 (T@Field_19424_19425) Bool)
(declare-fun WandMaskField_19424 (T@Field_19424_19425) T@Field_19437_19442)
(declare-fun IsWandField_7889_49178 (T@Field_7889_19425) Bool)
(declare-fun WandMaskField_7889 (T@Field_7889_19425) T@Field_7889_19442)
(declare-fun |p3#sm| (T@Ref Int) T@Field_21365_21370)
(declare-fun |p1#sm| (T@Ref) T@Field_19437_19442)
(declare-fun |p2#sm| (T@Ref) T@Field_20357_20362)
(declare-fun dummyHeap () T@PolymorphicMapType_13133)
(declare-fun ZeroMask () T@PolymorphicMapType_13154)
(declare-fun InsidePredicate_21352_21352 (T@Field_21352_21353 T@FrameType T@Field_21352_21353 T@FrameType) Bool)
(declare-fun InsidePredicate_20344_20344 (T@Field_20344_20345 T@FrameType T@Field_20344_20345 T@FrameType) Bool)
(declare-fun InsidePredicate_19424_19424 (T@Field_19424_19425 T@FrameType T@Field_19424_19425 T@FrameType) Bool)
(declare-fun InsidePredicate_13193_13193 (T@Field_7889_19425 T@FrameType T@Field_7889_19425 T@FrameType) Bool)
(declare-fun IsPredicateField_7889_3299 (T@Field_19377_3299) Bool)
(declare-fun IsWandField_7889_3299 (T@Field_19377_3299) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7942_63953 (T@Field_21365_21370) Bool)
(declare-fun IsWandField_7942_63969 (T@Field_21365_21370) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7942_13207 (T@Field_21352_13207) Bool)
(declare-fun IsWandField_7942_13207 (T@Field_21352_13207) Bool)
(declare-fun IsPredicateField_7942_53 (T@Field_21352_53) Bool)
(declare-fun IsWandField_7942_53 (T@Field_21352_53) Bool)
(declare-fun IsPredicateField_7942_3299 (T@Field_21352_3299) Bool)
(declare-fun IsWandField_7942_3299 (T@Field_21352_3299) Bool)
(declare-fun IsPredicateField_7917_63122 (T@Field_20357_20362) Bool)
(declare-fun IsWandField_7917_63138 (T@Field_20357_20362) Bool)
(declare-fun IsPredicateField_7917_13207 (T@Field_20344_13207) Bool)
(declare-fun IsWandField_7917_13207 (T@Field_20344_13207) Bool)
(declare-fun IsPredicateField_7917_53 (T@Field_20344_53) Bool)
(declare-fun IsWandField_7917_53 (T@Field_20344_53) Bool)
(declare-fun IsPredicateField_7917_3299 (T@Field_20344_3299) Bool)
(declare-fun IsWandField_7917_3299 (T@Field_20344_3299) Bool)
(declare-fun IsPredicateField_7892_62291 (T@Field_19437_19442) Bool)
(declare-fun IsWandField_7892_62307 (T@Field_19437_19442) Bool)
(declare-fun IsPredicateField_7892_13207 (T@Field_19424_13207) Bool)
(declare-fun IsWandField_7892_13207 (T@Field_19424_13207) Bool)
(declare-fun IsPredicateField_7892_53 (T@Field_19424_53) Bool)
(declare-fun IsWandField_7892_53 (T@Field_19424_53) Bool)
(declare-fun IsPredicateField_7892_3299 (T@Field_19424_3299) Bool)
(declare-fun IsWandField_7892_3299 (T@Field_19424_3299) Bool)
(declare-fun IsPredicateField_7889_61460 (T@Field_7889_19442) Bool)
(declare-fun IsWandField_7889_61476 (T@Field_7889_19442) Bool)
(declare-fun IsPredicateField_7889_13207 (T@Field_13206_13207) Bool)
(declare-fun IsWandField_7889_13207 (T@Field_13206_13207) Bool)
(declare-fun IsPredicateField_7889_53 (T@Field_13193_53) Bool)
(declare-fun IsWandField_7889_53 (T@Field_13193_53) Bool)
(declare-fun HasDirectPerm_21352_42297 (T@PolymorphicMapType_13154 T@Ref T@Field_21365_21370) Bool)
(declare-fun HasDirectPerm_21352_13207 (T@PolymorphicMapType_13154 T@Ref T@Field_21352_13207) Bool)
(declare-fun HasDirectPerm_21352_53 (T@PolymorphicMapType_13154 T@Ref T@Field_21352_53) Bool)
(declare-fun HasDirectPerm_21352_3299 (T@PolymorphicMapType_13154 T@Ref T@Field_21352_3299) Bool)
(declare-fun HasDirectPerm_20344_41179 (T@PolymorphicMapType_13154 T@Ref T@Field_20357_20362) Bool)
(declare-fun HasDirectPerm_20344_13207 (T@PolymorphicMapType_13154 T@Ref T@Field_20344_13207) Bool)
(declare-fun HasDirectPerm_20344_53 (T@PolymorphicMapType_13154 T@Ref T@Field_20344_53) Bool)
(declare-fun HasDirectPerm_20344_3299 (T@PolymorphicMapType_13154 T@Ref T@Field_20344_3299) Bool)
(declare-fun HasDirectPerm_19424_40061 (T@PolymorphicMapType_13154 T@Ref T@Field_19437_19442) Bool)
(declare-fun HasDirectPerm_19424_13207 (T@PolymorphicMapType_13154 T@Ref T@Field_19424_13207) Bool)
(declare-fun HasDirectPerm_19424_53 (T@PolymorphicMapType_13154 T@Ref T@Field_19424_53) Bool)
(declare-fun HasDirectPerm_19424_3299 (T@PolymorphicMapType_13154 T@Ref T@Field_19424_3299) Bool)
(declare-fun HasDirectPerm_7889_38900 (T@PolymorphicMapType_13154 T@Ref T@Field_7889_19442) Bool)
(declare-fun HasDirectPerm_7889_13207 (T@PolymorphicMapType_13154 T@Ref T@Field_13206_13207) Bool)
(declare-fun HasDirectPerm_7889_53 (T@PolymorphicMapType_13154 T@Ref T@Field_13193_53) Bool)
(declare-fun HasDirectPerm_7889_3299 (T@PolymorphicMapType_13154 T@Ref T@Field_19377_3299) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13154 T@PolymorphicMapType_13154 T@PolymorphicMapType_13154) Bool)
(declare-fun getPredWandId_7942_7943 (T@Field_21352_21353) Int)
(declare-fun getPredWandId_7892_7893 (T@Field_19424_19425) Int)
(declare-fun getPredWandId_7917_7918 (T@Field_20344_20345) Int)
(declare-fun InsidePredicate_21352_20344 (T@Field_21352_21353 T@FrameType T@Field_20344_20345 T@FrameType) Bool)
(declare-fun InsidePredicate_21352_19424 (T@Field_21352_21353 T@FrameType T@Field_19424_19425 T@FrameType) Bool)
(declare-fun InsidePredicate_21352_13193 (T@Field_21352_21353 T@FrameType T@Field_7889_19425 T@FrameType) Bool)
(declare-fun InsidePredicate_20344_21352 (T@Field_20344_20345 T@FrameType T@Field_21352_21353 T@FrameType) Bool)
(declare-fun InsidePredicate_20344_19424 (T@Field_20344_20345 T@FrameType T@Field_19424_19425 T@FrameType) Bool)
(declare-fun InsidePredicate_20344_13193 (T@Field_20344_20345 T@FrameType T@Field_7889_19425 T@FrameType) Bool)
(declare-fun InsidePredicate_19424_21352 (T@Field_19424_19425 T@FrameType T@Field_21352_21353 T@FrameType) Bool)
(declare-fun InsidePredicate_19424_20344 (T@Field_19424_19425 T@FrameType T@Field_20344_20345 T@FrameType) Bool)
(declare-fun InsidePredicate_19424_13193 (T@Field_19424_19425 T@FrameType T@Field_7889_19425 T@FrameType) Bool)
(declare-fun InsidePredicate_13193_21352 (T@Field_7889_19425 T@FrameType T@Field_21352_21353 T@FrameType) Bool)
(declare-fun InsidePredicate_13193_20344 (T@Field_7889_19425 T@FrameType T@Field_20344_20345 T@FrameType) Bool)
(declare-fun InsidePredicate_13193_19424 (T@Field_7889_19425 T@FrameType T@Field_19424_19425 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_13133) (Heap1 T@PolymorphicMapType_13133) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13133) (Mask T@PolymorphicMapType_13154) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13133) (Heap1@@0 T@PolymorphicMapType_13133) (Heap2 T@PolymorphicMapType_13133) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_21365_21370) ) (!  (not (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21352_21353) ) (!  (not (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21352_13207) ) (!  (not (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_21352_53) ) (!  (not (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21352_3299) ) (!  (not (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20357_20362) ) (!  (not (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20344_20345) ) (!  (not (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_20344_13207) ) (!  (not (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20344_53) ) (!  (not (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_20344_3299) ) (!  (not (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_19437_19442) ) (!  (not (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_19424_19425) ) (!  (not (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_19424_13207) ) (!  (not (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_19424_53) ) (!  (not (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_19424_3299) ) (!  (not (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7889_19442) ) (!  (not (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7889_19425) ) (!  (not (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_13206_13207) ) (!  (not (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_13193_53) ) (!  (not (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_19377_3299) ) (!  (not (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((r_1 T@Ref) (i Int) ) (! (IsPredicateField_7942_7943 (p3_1 r_1 i))
 :qid |stdinbpl.523:15|
 :skolemid |95|
 :pattern ( (p3_1 r_1 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13133) (r_1@@0 T@Ref) (i@@0 Int) ) (! (|p3#everUsed_7942| (p3_1 r_1@@0 i@@0))
 :qid |stdinbpl.542:15|
 :skolemid |99|
 :pattern ( (|p3#trigger_7942| Heap@@0 (p3_1 r_1@@0 i@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_7892_7893 (p1 r_1@@1))
 :qid |stdinbpl.410:15|
 :skolemid |83|
 :pattern ( (p1 r_1@@1))
)))
(assert (forall ((r_1@@2 T@Ref) ) (! (IsPredicateField_7917_7918 (p2 r_1@@2))
 :qid |stdinbpl.464:15|
 :skolemid |89|
 :pattern ( (p2 r_1@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13133) (r_1@@3 T@Ref) ) (! (|p1#everUsed_7892| (p1 r_1@@3))
 :qid |stdinbpl.429:15|
 :skolemid |87|
 :pattern ( (|p1#trigger_7892| Heap@@1 (p1 r_1@@3)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13133) (r_1@@4 T@Ref) ) (! (|p2#everUsed_7917| (p2 r_1@@4))
 :qid |stdinbpl.483:15|
 :skolemid |93|
 :pattern ( (|p2#trigger_7917| Heap@@2 (p2 r_1@@4)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13133) (ExhaleHeap T@PolymorphicMapType_13133) (Mask@@0 T@PolymorphicMapType_13154) (pm_f_34 T@Field_21352_21353) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_21352_19425 Mask@@0 null pm_f_34) (IsPredicateField_7942_7943 pm_f_34)) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@3) null (PredicateMaskField_7942 pm_f_34)) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap) null (PredicateMaskField_7942 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_7942_7943 pm_f_34) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap) null (PredicateMaskField_7942 pm_f_34)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13133) (ExhaleHeap@@0 T@PolymorphicMapType_13133) (Mask@@1 T@PolymorphicMapType_13154) (pm_f_34@@0 T@Field_20344_20345) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20344_19425 Mask@@1 null pm_f_34@@0) (IsPredicateField_7917_7918 pm_f_34@@0)) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@4) null (PredicateMaskField_7917 pm_f_34@@0)) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@0) null (PredicateMaskField_7917 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_7917_7918 pm_f_34@@0) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@0) null (PredicateMaskField_7917 pm_f_34@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13133) (ExhaleHeap@@1 T@PolymorphicMapType_13133) (Mask@@2 T@PolymorphicMapType_13154) (pm_f_34@@1 T@Field_19424_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_19424_19425 Mask@@2 null pm_f_34@@1) (IsPredicateField_7892_7893 pm_f_34@@1)) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@5) null (PredicateMaskField_7892 pm_f_34@@1)) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@1) null (PredicateMaskField_7892 pm_f_34@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsPredicateField_7892_7893 pm_f_34@@1) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@1) null (PredicateMaskField_7892 pm_f_34@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13133) (ExhaleHeap@@2 T@PolymorphicMapType_13133) (Mask@@3 T@PolymorphicMapType_13154) (pm_f_34@@2 T@Field_7889_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_7889_19425 Mask@@3 null pm_f_34@@2) (IsPredicateField_7889_42542 pm_f_34@@2)) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@6) null (PredicateMaskField_7889 pm_f_34@@2)) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@2) null (PredicateMaskField_7889 pm_f_34@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsPredicateField_7889_42542 pm_f_34@@2) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@2) null (PredicateMaskField_7889 pm_f_34@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13133) (ExhaleHeap@@3 T@PolymorphicMapType_13133) (Mask@@4 T@PolymorphicMapType_13154) (pm_f_34@@3 T@Field_21352_21353) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_21352_19425 Mask@@4 null pm_f_34@@3) (IsWandField_21352_50249 pm_f_34@@3)) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@7) null (WandMaskField_21352 pm_f_34@@3)) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@3) null (WandMaskField_21352 pm_f_34@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsWandField_21352_50249 pm_f_34@@3) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@3) null (WandMaskField_21352 pm_f_34@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13133) (ExhaleHeap@@4 T@PolymorphicMapType_13133) (Mask@@5 T@PolymorphicMapType_13154) (pm_f_34@@4 T@Field_20344_20345) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_20344_19425 Mask@@5 null pm_f_34@@4) (IsWandField_20344_49892 pm_f_34@@4)) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@8) null (WandMaskField_20344 pm_f_34@@4)) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@4) null (WandMaskField_20344 pm_f_34@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsWandField_20344_49892 pm_f_34@@4) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@4) null (WandMaskField_20344 pm_f_34@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13133) (ExhaleHeap@@5 T@PolymorphicMapType_13133) (Mask@@6 T@PolymorphicMapType_13154) (pm_f_34@@5 T@Field_19424_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_19424_19425 Mask@@6 null pm_f_34@@5) (IsWandField_19424_49535 pm_f_34@@5)) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@9) null (WandMaskField_19424 pm_f_34@@5)) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@5) null (WandMaskField_19424 pm_f_34@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_19424_49535 pm_f_34@@5) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@5) null (WandMaskField_19424 pm_f_34@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13133) (ExhaleHeap@@6 T@PolymorphicMapType_13133) (Mask@@7 T@PolymorphicMapType_13154) (pm_f_34@@6 T@Field_7889_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_7889_19425 Mask@@7 null pm_f_34@@6) (IsWandField_7889_49178 pm_f_34@@6)) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@10) null (WandMaskField_7889 pm_f_34@@6)) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@6) null (WandMaskField_7889 pm_f_34@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_7889_49178 pm_f_34@@6) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@6) null (WandMaskField_7889 pm_f_34@@6)))
)))
(assert (forall ((r_1@@5 T@Ref) (i@@1 Int) (r2 T@Ref) (i2 Int) ) (!  (=> (= (p3_1 r_1@@5 i@@1) (p3_1 r2 i2)) (and (= r_1@@5 r2) (= i@@1 i2)))
 :qid |stdinbpl.533:15|
 :skolemid |97|
 :pattern ( (p3_1 r_1@@5 i@@1) (p3_1 r2 i2))
)))
(assert (forall ((r_1@@6 T@Ref) (i@@2 Int) (r2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|p3#sm| r_1@@6 i@@2) (|p3#sm| r2@@0 i2@@0)) (and (= r_1@@6 r2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.537:15|
 :skolemid |98|
 :pattern ( (|p3#sm| r_1@@6 i@@2) (|p3#sm| r2@@0 i2@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13133) (ExhaleHeap@@7 T@PolymorphicMapType_13133) (Mask@@8 T@PolymorphicMapType_13154) (pm_f_34@@7 T@Field_21352_21353) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_21352_19425 Mask@@8 null pm_f_34@@7) (IsPredicateField_7942_7943 pm_f_34@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34 f_65) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@11) o2_34 f_65) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@11) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@11) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@11) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@11) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@3 f_65@@3))
))) (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@11) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@4 f_65@@4))
))) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@11) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@11) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@11) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@11) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@8 f_65@@8))
))) (forall ((o2_34@@9 T@Ref) (f_65@@9 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@9 f_65@@9) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@11) o2_34@@9 f_65@@9) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@9 f_65@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@9 f_65@@9))
))) (forall ((o2_34@@10 T@Ref) (f_65@@10 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@10 f_65@@10) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@11) o2_34@@10 f_65@@10) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@10 f_65@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@10 f_65@@10))
))) (forall ((o2_34@@11 T@Ref) (f_65@@11 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@11 f_65@@11) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@11) o2_34@@11 f_65@@11) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@11 f_65@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@11 f_65@@11))
))) (forall ((o2_34@@12 T@Ref) (f_65@@12 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@12 f_65@@12) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@11) o2_34@@12 f_65@@12) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@12 f_65@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@12 f_65@@12))
))) (forall ((o2_34@@13 T@Ref) (f_65@@13 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@13 f_65@@13) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@11) o2_34@@13 f_65@@13) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@13 f_65@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@13 f_65@@13))
))) (forall ((o2_34@@14 T@Ref) (f_65@@14 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@14 f_65@@14) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@11) o2_34@@14 f_65@@14) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@14 f_65@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@14 f_65@@14))
))) (forall ((o2_34@@15 T@Ref) (f_65@@15 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@15 f_65@@15) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@11) o2_34@@15 f_65@@15) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@15 f_65@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@15 f_65@@15))
))) (forall ((o2_34@@16 T@Ref) (f_65@@16 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@16 f_65@@16) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@11) o2_34@@16 f_65@@16) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@16 f_65@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@16 f_65@@16))
))) (forall ((o2_34@@17 T@Ref) (f_65@@17 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@17 f_65@@17) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@11) o2_34@@17 f_65@@17) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@17 f_65@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@17 f_65@@17))
))) (forall ((o2_34@@18 T@Ref) (f_65@@18 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) null (PredicateMaskField_7942 pm_f_34@@7))) o2_34@@18 f_65@@18) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@11) o2_34@@18 f_65@@18) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@18 f_65@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@7) o2_34@@18 f_65@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (IsPredicateField_7942_7943 pm_f_34@@7))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13133) (ExhaleHeap@@8 T@PolymorphicMapType_13133) (Mask@@9 T@PolymorphicMapType_13154) (pm_f_34@@8 T@Field_20344_20345) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_20344_19425 Mask@@9 null pm_f_34@@8) (IsPredicateField_7917_7918 pm_f_34@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_65@@19 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@19 f_65@@19) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@12) o2_34@@19 f_65@@19) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@19 f_65@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@19 f_65@@19))
)) (forall ((o2_34@@20 T@Ref) (f_65@@20 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@20 f_65@@20) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@12) o2_34@@20 f_65@@20) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@20 f_65@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@20 f_65@@20))
))) (forall ((o2_34@@21 T@Ref) (f_65@@21 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@21 f_65@@21) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@12) o2_34@@21 f_65@@21) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@21 f_65@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@21 f_65@@21))
))) (forall ((o2_34@@22 T@Ref) (f_65@@22 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@22 f_65@@22) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@12) o2_34@@22 f_65@@22) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@22 f_65@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@22 f_65@@22))
))) (forall ((o2_34@@23 T@Ref) (f_65@@23 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@23 f_65@@23) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@12) o2_34@@23 f_65@@23) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@23 f_65@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@23 f_65@@23))
))) (forall ((o2_34@@24 T@Ref) (f_65@@24 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@24 f_65@@24) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@12) o2_34@@24 f_65@@24) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@24 f_65@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@24 f_65@@24))
))) (forall ((o2_34@@25 T@Ref) (f_65@@25 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@25 f_65@@25) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@12) o2_34@@25 f_65@@25) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@25 f_65@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@25 f_65@@25))
))) (forall ((o2_34@@26 T@Ref) (f_65@@26 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@26 f_65@@26) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@12) o2_34@@26 f_65@@26) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@26 f_65@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@26 f_65@@26))
))) (forall ((o2_34@@27 T@Ref) (f_65@@27 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@27 f_65@@27) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@12) o2_34@@27 f_65@@27) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@27 f_65@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@27 f_65@@27))
))) (forall ((o2_34@@28 T@Ref) (f_65@@28 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@28 f_65@@28) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@12) o2_34@@28 f_65@@28) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@28 f_65@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@28 f_65@@28))
))) (forall ((o2_34@@29 T@Ref) (f_65@@29 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@29 f_65@@29) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@12) o2_34@@29 f_65@@29) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@29 f_65@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@29 f_65@@29))
))) (forall ((o2_34@@30 T@Ref) (f_65@@30 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@30 f_65@@30) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@12) o2_34@@30 f_65@@30) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@30 f_65@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@30 f_65@@30))
))) (forall ((o2_34@@31 T@Ref) (f_65@@31 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@31 f_65@@31) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@12) o2_34@@31 f_65@@31) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@31 f_65@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@31 f_65@@31))
))) (forall ((o2_34@@32 T@Ref) (f_65@@32 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@32 f_65@@32) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@12) o2_34@@32 f_65@@32) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@32 f_65@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@32 f_65@@32))
))) (forall ((o2_34@@33 T@Ref) (f_65@@33 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@33 f_65@@33) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) o2_34@@33 f_65@@33) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@33 f_65@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@33 f_65@@33))
))) (forall ((o2_34@@34 T@Ref) (f_65@@34 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@34 f_65@@34) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@12) o2_34@@34 f_65@@34) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@34 f_65@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@34 f_65@@34))
))) (forall ((o2_34@@35 T@Ref) (f_65@@35 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@35 f_65@@35) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@12) o2_34@@35 f_65@@35) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@35 f_65@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@35 f_65@@35))
))) (forall ((o2_34@@36 T@Ref) (f_65@@36 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@36 f_65@@36) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@12) o2_34@@36 f_65@@36) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@36 f_65@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@36 f_65@@36))
))) (forall ((o2_34@@37 T@Ref) (f_65@@37 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@37 f_65@@37) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@12) o2_34@@37 f_65@@37) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@37 f_65@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@37 f_65@@37))
))) (forall ((o2_34@@38 T@Ref) (f_65@@38 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@12) null (PredicateMaskField_7917 pm_f_34@@8))) o2_34@@38 f_65@@38) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@12) o2_34@@38 f_65@@38) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@38 f_65@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@8) o2_34@@38 f_65@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (IsPredicateField_7917_7918 pm_f_34@@8))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13133) (ExhaleHeap@@9 T@PolymorphicMapType_13133) (Mask@@10 T@PolymorphicMapType_13154) (pm_f_34@@9 T@Field_19424_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_19424_19425 Mask@@10 null pm_f_34@@9) (IsPredicateField_7892_7893 pm_f_34@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@39 T@Ref) (f_65@@39 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@39 f_65@@39) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@13) o2_34@@39 f_65@@39) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@39 f_65@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@39 f_65@@39))
)) (forall ((o2_34@@40 T@Ref) (f_65@@40 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@40 f_65@@40) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@13) o2_34@@40 f_65@@40) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@40 f_65@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@40 f_65@@40))
))) (forall ((o2_34@@41 T@Ref) (f_65@@41 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@41 f_65@@41) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@13) o2_34@@41 f_65@@41) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@41 f_65@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@41 f_65@@41))
))) (forall ((o2_34@@42 T@Ref) (f_65@@42 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@42 f_65@@42) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@13) o2_34@@42 f_65@@42) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@42 f_65@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@42 f_65@@42))
))) (forall ((o2_34@@43 T@Ref) (f_65@@43 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@43 f_65@@43) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@13) o2_34@@43 f_65@@43) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@43 f_65@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@43 f_65@@43))
))) (forall ((o2_34@@44 T@Ref) (f_65@@44 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@44 f_65@@44) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@13) o2_34@@44 f_65@@44) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@44 f_65@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@44 f_65@@44))
))) (forall ((o2_34@@45 T@Ref) (f_65@@45 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@45 f_65@@45) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@13) o2_34@@45 f_65@@45) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@45 f_65@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@45 f_65@@45))
))) (forall ((o2_34@@46 T@Ref) (f_65@@46 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@46 f_65@@46) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@13) o2_34@@46 f_65@@46) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@46 f_65@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@46 f_65@@46))
))) (forall ((o2_34@@47 T@Ref) (f_65@@47 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@47 f_65@@47) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@13) o2_34@@47 f_65@@47) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@47 f_65@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@47 f_65@@47))
))) (forall ((o2_34@@48 T@Ref) (f_65@@48 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@48 f_65@@48) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) o2_34@@48 f_65@@48) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@48 f_65@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@48 f_65@@48))
))) (forall ((o2_34@@49 T@Ref) (f_65@@49 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@49 f_65@@49) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@13) o2_34@@49 f_65@@49) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@49 f_65@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@49 f_65@@49))
))) (forall ((o2_34@@50 T@Ref) (f_65@@50 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@50 f_65@@50) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@13) o2_34@@50 f_65@@50) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@50 f_65@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@50 f_65@@50))
))) (forall ((o2_34@@51 T@Ref) (f_65@@51 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@51 f_65@@51) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@13) o2_34@@51 f_65@@51) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@51 f_65@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@51 f_65@@51))
))) (forall ((o2_34@@52 T@Ref) (f_65@@52 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@52 f_65@@52) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@13) o2_34@@52 f_65@@52) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@52 f_65@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@52 f_65@@52))
))) (forall ((o2_34@@53 T@Ref) (f_65@@53 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@53 f_65@@53) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@13) o2_34@@53 f_65@@53) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@53 f_65@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@53 f_65@@53))
))) (forall ((o2_34@@54 T@Ref) (f_65@@54 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@54 f_65@@54) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@13) o2_34@@54 f_65@@54) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@54 f_65@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@54 f_65@@54))
))) (forall ((o2_34@@55 T@Ref) (f_65@@55 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@55 f_65@@55) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@13) o2_34@@55 f_65@@55) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@55 f_65@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@55 f_65@@55))
))) (forall ((o2_34@@56 T@Ref) (f_65@@56 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@56 f_65@@56) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@13) o2_34@@56 f_65@@56) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@56 f_65@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@56 f_65@@56))
))) (forall ((o2_34@@57 T@Ref) (f_65@@57 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@57 f_65@@57) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@13) o2_34@@57 f_65@@57) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@57 f_65@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@57 f_65@@57))
))) (forall ((o2_34@@58 T@Ref) (f_65@@58 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@13) null (PredicateMaskField_7892 pm_f_34@@9))) o2_34@@58 f_65@@58) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@13) o2_34@@58 f_65@@58) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@58 f_65@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@9) o2_34@@58 f_65@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@10) (IsPredicateField_7892_7893 pm_f_34@@9))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13133) (ExhaleHeap@@10 T@PolymorphicMapType_13133) (Mask@@11 T@PolymorphicMapType_13154) (pm_f_34@@10 T@Field_7889_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_7889_19425 Mask@@11 null pm_f_34@@10) (IsPredicateField_7889_42542 pm_f_34@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@59 T@Ref) (f_65@@59 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@59 f_65@@59) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@14) o2_34@@59 f_65@@59) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@59 f_65@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@59 f_65@@59))
)) (forall ((o2_34@@60 T@Ref) (f_65@@60 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@60 f_65@@60) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@14) o2_34@@60 f_65@@60) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@60 f_65@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@60 f_65@@60))
))) (forall ((o2_34@@61 T@Ref) (f_65@@61 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@61 f_65@@61) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@14) o2_34@@61 f_65@@61) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@61 f_65@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@61 f_65@@61))
))) (forall ((o2_34@@62 T@Ref) (f_65@@62 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@62 f_65@@62) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@14) o2_34@@62 f_65@@62) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@62 f_65@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@62 f_65@@62))
))) (forall ((o2_34@@63 T@Ref) (f_65@@63 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@63 f_65@@63) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) o2_34@@63 f_65@@63) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@63 f_65@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@63 f_65@@63))
))) (forall ((o2_34@@64 T@Ref) (f_65@@64 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@64 f_65@@64) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@14) o2_34@@64 f_65@@64) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@64 f_65@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@64 f_65@@64))
))) (forall ((o2_34@@65 T@Ref) (f_65@@65 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@65 f_65@@65) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@14) o2_34@@65 f_65@@65) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@65 f_65@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@65 f_65@@65))
))) (forall ((o2_34@@66 T@Ref) (f_65@@66 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@66 f_65@@66) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@14) o2_34@@66 f_65@@66) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@66 f_65@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@66 f_65@@66))
))) (forall ((o2_34@@67 T@Ref) (f_65@@67 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@67 f_65@@67) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@14) o2_34@@67 f_65@@67) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@67 f_65@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@67 f_65@@67))
))) (forall ((o2_34@@68 T@Ref) (f_65@@68 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@68 f_65@@68) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@14) o2_34@@68 f_65@@68) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@68 f_65@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@68 f_65@@68))
))) (forall ((o2_34@@69 T@Ref) (f_65@@69 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@69 f_65@@69) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@14) o2_34@@69 f_65@@69) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@69 f_65@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@69 f_65@@69))
))) (forall ((o2_34@@70 T@Ref) (f_65@@70 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@70 f_65@@70) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@14) o2_34@@70 f_65@@70) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@70 f_65@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@70 f_65@@70))
))) (forall ((o2_34@@71 T@Ref) (f_65@@71 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@71 f_65@@71) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@14) o2_34@@71 f_65@@71) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@71 f_65@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@71 f_65@@71))
))) (forall ((o2_34@@72 T@Ref) (f_65@@72 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@72 f_65@@72) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@14) o2_34@@72 f_65@@72) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@72 f_65@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@72 f_65@@72))
))) (forall ((o2_34@@73 T@Ref) (f_65@@73 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@73 f_65@@73) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@14) o2_34@@73 f_65@@73) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@73 f_65@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@73 f_65@@73))
))) (forall ((o2_34@@74 T@Ref) (f_65@@74 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@74 f_65@@74) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@14) o2_34@@74 f_65@@74) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@74 f_65@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@74 f_65@@74))
))) (forall ((o2_34@@75 T@Ref) (f_65@@75 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@75 f_65@@75) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@14) o2_34@@75 f_65@@75) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@75 f_65@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@75 f_65@@75))
))) (forall ((o2_34@@76 T@Ref) (f_65@@76 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@76 f_65@@76) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@14) o2_34@@76 f_65@@76) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@76 f_65@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@76 f_65@@76))
))) (forall ((o2_34@@77 T@Ref) (f_65@@77 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@77 f_65@@77) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@14) o2_34@@77 f_65@@77) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@77 f_65@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@77 f_65@@77))
))) (forall ((o2_34@@78 T@Ref) (f_65@@78 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@14) null (PredicateMaskField_7889 pm_f_34@@10))) o2_34@@78 f_65@@78) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@14) o2_34@@78 f_65@@78) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@78 f_65@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@10) o2_34@@78 f_65@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@11) (IsPredicateField_7889_42542 pm_f_34@@10))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13133) (ExhaleHeap@@11 T@PolymorphicMapType_13133) (Mask@@12 T@PolymorphicMapType_13154) (pm_f_34@@11 T@Field_21352_21353) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_21352_19425 Mask@@12 null pm_f_34@@11) (IsWandField_21352_50249 pm_f_34@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@79 T@Ref) (f_65@@79 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@79 f_65@@79) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@15) o2_34@@79 f_65@@79) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@79 f_65@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@79 f_65@@79))
)) (forall ((o2_34@@80 T@Ref) (f_65@@80 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@80 f_65@@80) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@15) o2_34@@80 f_65@@80) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@80 f_65@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@80 f_65@@80))
))) (forall ((o2_34@@81 T@Ref) (f_65@@81 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@81 f_65@@81) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@15) o2_34@@81 f_65@@81) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@81 f_65@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@81 f_65@@81))
))) (forall ((o2_34@@82 T@Ref) (f_65@@82 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@82 f_65@@82) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@15) o2_34@@82 f_65@@82) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@82 f_65@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@82 f_65@@82))
))) (forall ((o2_34@@83 T@Ref) (f_65@@83 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@83 f_65@@83) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@15) o2_34@@83 f_65@@83) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@83 f_65@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@83 f_65@@83))
))) (forall ((o2_34@@84 T@Ref) (f_65@@84 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@84 f_65@@84) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@15) o2_34@@84 f_65@@84) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@84 f_65@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@84 f_65@@84))
))) (forall ((o2_34@@85 T@Ref) (f_65@@85 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@85 f_65@@85) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@15) o2_34@@85 f_65@@85) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@85 f_65@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@85 f_65@@85))
))) (forall ((o2_34@@86 T@Ref) (f_65@@86 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@86 f_65@@86) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@15) o2_34@@86 f_65@@86) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@86 f_65@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@86 f_65@@86))
))) (forall ((o2_34@@87 T@Ref) (f_65@@87 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@87 f_65@@87) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@15) o2_34@@87 f_65@@87) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@87 f_65@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@87 f_65@@87))
))) (forall ((o2_34@@88 T@Ref) (f_65@@88 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@88 f_65@@88) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@15) o2_34@@88 f_65@@88) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@88 f_65@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@88 f_65@@88))
))) (forall ((o2_34@@89 T@Ref) (f_65@@89 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@89 f_65@@89) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@15) o2_34@@89 f_65@@89) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@89 f_65@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@89 f_65@@89))
))) (forall ((o2_34@@90 T@Ref) (f_65@@90 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@90 f_65@@90) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@15) o2_34@@90 f_65@@90) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@90 f_65@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@90 f_65@@90))
))) (forall ((o2_34@@91 T@Ref) (f_65@@91 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@91 f_65@@91) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@15) o2_34@@91 f_65@@91) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@91 f_65@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@91 f_65@@91))
))) (forall ((o2_34@@92 T@Ref) (f_65@@92 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@92 f_65@@92) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@15) o2_34@@92 f_65@@92) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@92 f_65@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@92 f_65@@92))
))) (forall ((o2_34@@93 T@Ref) (f_65@@93 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@93 f_65@@93) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@15) o2_34@@93 f_65@@93) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@93 f_65@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@93 f_65@@93))
))) (forall ((o2_34@@94 T@Ref) (f_65@@94 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@94 f_65@@94) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@15) o2_34@@94 f_65@@94) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@94 f_65@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@94 f_65@@94))
))) (forall ((o2_34@@95 T@Ref) (f_65@@95 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@95 f_65@@95) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@15) o2_34@@95 f_65@@95) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@95 f_65@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@95 f_65@@95))
))) (forall ((o2_34@@96 T@Ref) (f_65@@96 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@96 f_65@@96) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@15) o2_34@@96 f_65@@96) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@96 f_65@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@96 f_65@@96))
))) (forall ((o2_34@@97 T@Ref) (f_65@@97 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@97 f_65@@97) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@15) o2_34@@97 f_65@@97) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@97 f_65@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@97 f_65@@97))
))) (forall ((o2_34@@98 T@Ref) (f_65@@98 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) null (WandMaskField_21352 pm_f_34@@11))) o2_34@@98 f_65@@98) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@15) o2_34@@98 f_65@@98) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@98 f_65@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@11) o2_34@@98 f_65@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@12) (IsWandField_21352_50249 pm_f_34@@11))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13133) (ExhaleHeap@@12 T@PolymorphicMapType_13133) (Mask@@13 T@PolymorphicMapType_13154) (pm_f_34@@12 T@Field_20344_20345) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_20344_19425 Mask@@13 null pm_f_34@@12) (IsWandField_20344_49892 pm_f_34@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@99 T@Ref) (f_65@@99 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@99 f_65@@99) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@16) o2_34@@99 f_65@@99) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@99 f_65@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@99 f_65@@99))
)) (forall ((o2_34@@100 T@Ref) (f_65@@100 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@100 f_65@@100) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@16) o2_34@@100 f_65@@100) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@100 f_65@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@100 f_65@@100))
))) (forall ((o2_34@@101 T@Ref) (f_65@@101 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@101 f_65@@101) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@16) o2_34@@101 f_65@@101) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@101 f_65@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@101 f_65@@101))
))) (forall ((o2_34@@102 T@Ref) (f_65@@102 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@102 f_65@@102) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@16) o2_34@@102 f_65@@102) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@102 f_65@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@102 f_65@@102))
))) (forall ((o2_34@@103 T@Ref) (f_65@@103 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@103 f_65@@103) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@16) o2_34@@103 f_65@@103) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@103 f_65@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@103 f_65@@103))
))) (forall ((o2_34@@104 T@Ref) (f_65@@104 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@104 f_65@@104) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@16) o2_34@@104 f_65@@104) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@104 f_65@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@104 f_65@@104))
))) (forall ((o2_34@@105 T@Ref) (f_65@@105 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@105 f_65@@105) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@16) o2_34@@105 f_65@@105) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@105 f_65@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@105 f_65@@105))
))) (forall ((o2_34@@106 T@Ref) (f_65@@106 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@106 f_65@@106) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@16) o2_34@@106 f_65@@106) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@106 f_65@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@106 f_65@@106))
))) (forall ((o2_34@@107 T@Ref) (f_65@@107 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@107 f_65@@107) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@16) o2_34@@107 f_65@@107) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@107 f_65@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@107 f_65@@107))
))) (forall ((o2_34@@108 T@Ref) (f_65@@108 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@108 f_65@@108) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@16) o2_34@@108 f_65@@108) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@108 f_65@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@108 f_65@@108))
))) (forall ((o2_34@@109 T@Ref) (f_65@@109 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@109 f_65@@109) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@16) o2_34@@109 f_65@@109) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@109 f_65@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@109 f_65@@109))
))) (forall ((o2_34@@110 T@Ref) (f_65@@110 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@110 f_65@@110) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@16) o2_34@@110 f_65@@110) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@110 f_65@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@110 f_65@@110))
))) (forall ((o2_34@@111 T@Ref) (f_65@@111 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@111 f_65@@111) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@16) o2_34@@111 f_65@@111) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@111 f_65@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@111 f_65@@111))
))) (forall ((o2_34@@112 T@Ref) (f_65@@112 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@112 f_65@@112) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@16) o2_34@@112 f_65@@112) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@112 f_65@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@112 f_65@@112))
))) (forall ((o2_34@@113 T@Ref) (f_65@@113 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@113 f_65@@113) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) o2_34@@113 f_65@@113) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@113 f_65@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@113 f_65@@113))
))) (forall ((o2_34@@114 T@Ref) (f_65@@114 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@114 f_65@@114) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@16) o2_34@@114 f_65@@114) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@114 f_65@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@114 f_65@@114))
))) (forall ((o2_34@@115 T@Ref) (f_65@@115 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@115 f_65@@115) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@16) o2_34@@115 f_65@@115) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@115 f_65@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@115 f_65@@115))
))) (forall ((o2_34@@116 T@Ref) (f_65@@116 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@116 f_65@@116) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@16) o2_34@@116 f_65@@116) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@116 f_65@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@116 f_65@@116))
))) (forall ((o2_34@@117 T@Ref) (f_65@@117 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@117 f_65@@117) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@16) o2_34@@117 f_65@@117) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@117 f_65@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@117 f_65@@117))
))) (forall ((o2_34@@118 T@Ref) (f_65@@118 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@16) null (WandMaskField_20344 pm_f_34@@12))) o2_34@@118 f_65@@118) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@16) o2_34@@118 f_65@@118) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@118 f_65@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@12) o2_34@@118 f_65@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@13) (IsWandField_20344_49892 pm_f_34@@12))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13133) (ExhaleHeap@@13 T@PolymorphicMapType_13133) (Mask@@14 T@PolymorphicMapType_13154) (pm_f_34@@13 T@Field_19424_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_19424_19425 Mask@@14 null pm_f_34@@13) (IsWandField_19424_49535 pm_f_34@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@119 T@Ref) (f_65@@119 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@119 f_65@@119) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@17) o2_34@@119 f_65@@119) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@119 f_65@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@119 f_65@@119))
)) (forall ((o2_34@@120 T@Ref) (f_65@@120 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@120 f_65@@120) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@17) o2_34@@120 f_65@@120) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@120 f_65@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@120 f_65@@120))
))) (forall ((o2_34@@121 T@Ref) (f_65@@121 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@121 f_65@@121) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@17) o2_34@@121 f_65@@121) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@121 f_65@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@121 f_65@@121))
))) (forall ((o2_34@@122 T@Ref) (f_65@@122 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@122 f_65@@122) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@17) o2_34@@122 f_65@@122) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@122 f_65@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@122 f_65@@122))
))) (forall ((o2_34@@123 T@Ref) (f_65@@123 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@123 f_65@@123) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@17) o2_34@@123 f_65@@123) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@123 f_65@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@123 f_65@@123))
))) (forall ((o2_34@@124 T@Ref) (f_65@@124 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@124 f_65@@124) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@17) o2_34@@124 f_65@@124) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@124 f_65@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@124 f_65@@124))
))) (forall ((o2_34@@125 T@Ref) (f_65@@125 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@125 f_65@@125) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@17) o2_34@@125 f_65@@125) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@125 f_65@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@125 f_65@@125))
))) (forall ((o2_34@@126 T@Ref) (f_65@@126 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@126 f_65@@126) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@17) o2_34@@126 f_65@@126) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@126 f_65@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@126 f_65@@126))
))) (forall ((o2_34@@127 T@Ref) (f_65@@127 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@127 f_65@@127) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@17) o2_34@@127 f_65@@127) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@127 f_65@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@127 f_65@@127))
))) (forall ((o2_34@@128 T@Ref) (f_65@@128 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@128 f_65@@128) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) o2_34@@128 f_65@@128) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@128 f_65@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@128 f_65@@128))
))) (forall ((o2_34@@129 T@Ref) (f_65@@129 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@129 f_65@@129) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@17) o2_34@@129 f_65@@129) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@129 f_65@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@129 f_65@@129))
))) (forall ((o2_34@@130 T@Ref) (f_65@@130 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@130 f_65@@130) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@17) o2_34@@130 f_65@@130) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@130 f_65@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@130 f_65@@130))
))) (forall ((o2_34@@131 T@Ref) (f_65@@131 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@131 f_65@@131) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@17) o2_34@@131 f_65@@131) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@131 f_65@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@131 f_65@@131))
))) (forall ((o2_34@@132 T@Ref) (f_65@@132 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@132 f_65@@132) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@17) o2_34@@132 f_65@@132) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@132 f_65@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@132 f_65@@132))
))) (forall ((o2_34@@133 T@Ref) (f_65@@133 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@133 f_65@@133) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@17) o2_34@@133 f_65@@133) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@133 f_65@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@133 f_65@@133))
))) (forall ((o2_34@@134 T@Ref) (f_65@@134 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@134 f_65@@134) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@17) o2_34@@134 f_65@@134) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@134 f_65@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@134 f_65@@134))
))) (forall ((o2_34@@135 T@Ref) (f_65@@135 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@135 f_65@@135) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@17) o2_34@@135 f_65@@135) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@135 f_65@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@135 f_65@@135))
))) (forall ((o2_34@@136 T@Ref) (f_65@@136 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@136 f_65@@136) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@17) o2_34@@136 f_65@@136) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@136 f_65@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@136 f_65@@136))
))) (forall ((o2_34@@137 T@Ref) (f_65@@137 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@137 f_65@@137) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@17) o2_34@@137 f_65@@137) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@137 f_65@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@137 f_65@@137))
))) (forall ((o2_34@@138 T@Ref) (f_65@@138 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@17) null (WandMaskField_19424 pm_f_34@@13))) o2_34@@138 f_65@@138) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@17) o2_34@@138 f_65@@138) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@138 f_65@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@13) o2_34@@138 f_65@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@14) (IsWandField_19424_49535 pm_f_34@@13))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13133) (ExhaleHeap@@14 T@PolymorphicMapType_13133) (Mask@@15 T@PolymorphicMapType_13154) (pm_f_34@@14 T@Field_7889_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_7889_19425 Mask@@15 null pm_f_34@@14) (IsWandField_7889_49178 pm_f_34@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@139 T@Ref) (f_65@@139 T@Field_19377_3299) ) (!  (=> (select (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@139 f_65@@139) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@18) o2_34@@139 f_65@@139) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@139 f_65@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@139 f_65@@139))
)) (forall ((o2_34@@140 T@Ref) (f_65@@140 T@Field_13193_53) ) (!  (=> (select (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@140 f_65@@140) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@18) o2_34@@140 f_65@@140) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@140 f_65@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@140 f_65@@140))
))) (forall ((o2_34@@141 T@Ref) (f_65@@141 T@Field_13206_13207) ) (!  (=> (select (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@141 f_65@@141) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@18) o2_34@@141 f_65@@141) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@141 f_65@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@141 f_65@@141))
))) (forall ((o2_34@@142 T@Ref) (f_65@@142 T@Field_7889_19425) ) (!  (=> (select (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@142 f_65@@142) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@18) o2_34@@142 f_65@@142) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@142 f_65@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@142 f_65@@142))
))) (forall ((o2_34@@143 T@Ref) (f_65@@143 T@Field_7889_19442) ) (!  (=> (select (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@143 f_65@@143) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) o2_34@@143 f_65@@143) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@143 f_65@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@143 f_65@@143))
))) (forall ((o2_34@@144 T@Ref) (f_65@@144 T@Field_19424_3299) ) (!  (=> (select (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@144 f_65@@144) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@18) o2_34@@144 f_65@@144) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@144 f_65@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@144 f_65@@144))
))) (forall ((o2_34@@145 T@Ref) (f_65@@145 T@Field_19424_53) ) (!  (=> (select (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@145 f_65@@145) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@18) o2_34@@145 f_65@@145) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@145 f_65@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@145 f_65@@145))
))) (forall ((o2_34@@146 T@Ref) (f_65@@146 T@Field_19424_13207) ) (!  (=> (select (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@146 f_65@@146) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@18) o2_34@@146 f_65@@146) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@146 f_65@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@146 f_65@@146))
))) (forall ((o2_34@@147 T@Ref) (f_65@@147 T@Field_19424_19425) ) (!  (=> (select (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@147 f_65@@147) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@18) o2_34@@147 f_65@@147) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@147 f_65@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@147 f_65@@147))
))) (forall ((o2_34@@148 T@Ref) (f_65@@148 T@Field_19437_19442) ) (!  (=> (select (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@148 f_65@@148) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@18) o2_34@@148 f_65@@148) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@148 f_65@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@148 f_65@@148))
))) (forall ((o2_34@@149 T@Ref) (f_65@@149 T@Field_20344_3299) ) (!  (=> (select (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@149 f_65@@149) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@18) o2_34@@149 f_65@@149) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@149 f_65@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@149 f_65@@149))
))) (forall ((o2_34@@150 T@Ref) (f_65@@150 T@Field_20344_53) ) (!  (=> (select (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@150 f_65@@150) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@18) o2_34@@150 f_65@@150) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@150 f_65@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@150 f_65@@150))
))) (forall ((o2_34@@151 T@Ref) (f_65@@151 T@Field_20344_13207) ) (!  (=> (select (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@151 f_65@@151) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@18) o2_34@@151 f_65@@151) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@151 f_65@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@151 f_65@@151))
))) (forall ((o2_34@@152 T@Ref) (f_65@@152 T@Field_20344_20345) ) (!  (=> (select (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@152 f_65@@152) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@18) o2_34@@152 f_65@@152) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@152 f_65@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@152 f_65@@152))
))) (forall ((o2_34@@153 T@Ref) (f_65@@153 T@Field_20357_20362) ) (!  (=> (select (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@153 f_65@@153) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@18) o2_34@@153 f_65@@153) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@153 f_65@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@153 f_65@@153))
))) (forall ((o2_34@@154 T@Ref) (f_65@@154 T@Field_21352_3299) ) (!  (=> (select (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@154 f_65@@154) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@18) o2_34@@154 f_65@@154) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@154 f_65@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@154 f_65@@154))
))) (forall ((o2_34@@155 T@Ref) (f_65@@155 T@Field_21352_53) ) (!  (=> (select (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@155 f_65@@155) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@18) o2_34@@155 f_65@@155) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@155 f_65@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@155 f_65@@155))
))) (forall ((o2_34@@156 T@Ref) (f_65@@156 T@Field_21352_13207) ) (!  (=> (select (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@156 f_65@@156) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@18) o2_34@@156 f_65@@156) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@156 f_65@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@156 f_65@@156))
))) (forall ((o2_34@@157 T@Ref) (f_65@@157 T@Field_21352_21353) ) (!  (=> (select (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@157 f_65@@157) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@18) o2_34@@157 f_65@@157) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@157 f_65@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@157 f_65@@157))
))) (forall ((o2_34@@158 T@Ref) (f_65@@158 T@Field_21365_21370) ) (!  (=> (select (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@18) null (WandMaskField_7889 pm_f_34@@14))) o2_34@@158 f_65@@158) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@18) o2_34@@158 f_65@@158) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@158 f_65@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@14) o2_34@@158 f_65@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@15) (IsWandField_7889_49178 pm_f_34@@14))
)))
(assert (forall ((r_1@@7 T@Ref) (r2@@1 T@Ref) ) (!  (=> (= (p1 r_1@@7) (p1 r2@@1)) (= r_1@@7 r2@@1))
 :qid |stdinbpl.420:15|
 :skolemid |85|
 :pattern ( (p1 r_1@@7) (p1 r2@@1))
)))
(assert (forall ((r_1@@8 T@Ref) (r2@@2 T@Ref) ) (!  (=> (= (|p1#sm| r_1@@8) (|p1#sm| r2@@2)) (= r_1@@8 r2@@2))
 :qid |stdinbpl.424:15|
 :skolemid |86|
 :pattern ( (|p1#sm| r_1@@8) (|p1#sm| r2@@2))
)))
(assert (forall ((r_1@@9 T@Ref) (r2@@3 T@Ref) ) (!  (=> (= (p2 r_1@@9) (p2 r2@@3)) (= r_1@@9 r2@@3))
 :qid |stdinbpl.474:15|
 :skolemid |91|
 :pattern ( (p2 r_1@@9) (p2 r2@@3))
)))
(assert (forall ((r_1@@10 T@Ref) (r2@@4 T@Ref) ) (!  (=> (= (|p2#sm| r_1@@10) (|p2#sm| r2@@4)) (= r_1@@10 r2@@4))
 :qid |stdinbpl.478:15|
 :skolemid |92|
 :pattern ( (|p2#sm| r_1@@10) (|p2#sm| r2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13133) (ExhaleHeap@@15 T@PolymorphicMapType_13133) (Mask@@16 T@PolymorphicMapType_13154) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@19) o_47 $allocated) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@15) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@15) o_47 $allocated))
)))
(assert (forall ((p T@Field_21352_21353) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_21352_21352 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_21352_21352 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_20344_20345) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_20344_20344 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20344_20344 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_19424_19425) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_19424_19424 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19424_19424 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_7889_19425) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_13193_13193 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13193_13193 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_7889_3299 f_7)))
(assert  (not (IsWandField_7889_3299 f_7)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13133) (ExhaleHeap@@16 T@PolymorphicMapType_13133) (Mask@@17 T@PolymorphicMapType_13154) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@20 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13154) (o_2@@19 T@Ref) (f_4@@19 T@Field_21365_21370) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7942_63953 f_4@@19))) (not (IsWandField_7942_63969 f_4@@19))) (<= (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13154) (o_2@@20 T@Ref) (f_4@@20 T@Field_21352_13207) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7942_13207 f_4@@20))) (not (IsWandField_7942_13207 f_4@@20))) (<= (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13154) (o_2@@21 T@Ref) (f_4@@21 T@Field_21352_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_7942_53 f_4@@21))) (not (IsWandField_7942_53 f_4@@21))) (<= (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13154) (o_2@@22 T@Ref) (f_4@@22 T@Field_21352_21353) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_7942_7943 f_4@@22))) (not (IsWandField_21352_50249 f_4@@22))) (<= (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13154) (o_2@@23 T@Ref) (f_4@@23 T@Field_21352_3299) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_7942_3299 f_4@@23))) (not (IsWandField_7942_3299 f_4@@23))) (<= (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13154) (o_2@@24 T@Ref) (f_4@@24 T@Field_20357_20362) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_7917_63122 f_4@@24))) (not (IsWandField_7917_63138 f_4@@24))) (<= (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13154) (o_2@@25 T@Ref) (f_4@@25 T@Field_20344_13207) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_7917_13207 f_4@@25))) (not (IsWandField_7917_13207 f_4@@25))) (<= (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13154) (o_2@@26 T@Ref) (f_4@@26 T@Field_20344_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_7917_53 f_4@@26))) (not (IsWandField_7917_53 f_4@@26))) (<= (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13154) (o_2@@27 T@Ref) (f_4@@27 T@Field_20344_20345) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_7917_7918 f_4@@27))) (not (IsWandField_20344_49892 f_4@@27))) (<= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13154) (o_2@@28 T@Ref) (f_4@@28 T@Field_20344_3299) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_7917_3299 f_4@@28))) (not (IsWandField_7917_3299 f_4@@28))) (<= (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13154) (o_2@@29 T@Ref) (f_4@@29 T@Field_19437_19442) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_7892_62291 f_4@@29))) (not (IsWandField_7892_62307 f_4@@29))) (<= (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13154) (o_2@@30 T@Ref) (f_4@@30 T@Field_19424_13207) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_7892_13207 f_4@@30))) (not (IsWandField_7892_13207 f_4@@30))) (<= (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13154) (o_2@@31 T@Ref) (f_4@@31 T@Field_19424_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_7892_53 f_4@@31))) (not (IsWandField_7892_53 f_4@@31))) (<= (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13154) (o_2@@32 T@Ref) (f_4@@32 T@Field_19424_19425) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_7892_7893 f_4@@32))) (not (IsWandField_19424_49535 f_4@@32))) (<= (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13154) (o_2@@33 T@Ref) (f_4@@33 T@Field_19424_3299) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_7892_3299 f_4@@33))) (not (IsWandField_7892_3299 f_4@@33))) (<= (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13154) (o_2@@34 T@Ref) (f_4@@34 T@Field_7889_19442) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_7889_61460 f_4@@34))) (not (IsWandField_7889_61476 f_4@@34))) (<= (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13154) (o_2@@35 T@Ref) (f_4@@35 T@Field_13206_13207) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_7889_13207 f_4@@35))) (not (IsWandField_7889_13207 f_4@@35))) (<= (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13154) (o_2@@36 T@Ref) (f_4@@36 T@Field_13193_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_7889_53 f_4@@36))) (not (IsWandField_7889_53 f_4@@36))) (<= (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_13154) (o_2@@37 T@Ref) (f_4@@37 T@Field_7889_19425) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_7889_42542 f_4@@37))) (not (IsWandField_7889_49178 f_4@@37))) (<= (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_13154) (o_2@@38 T@Ref) (f_4@@38 T@Field_19377_3299) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_7889_3299 f_4@@38))) (not (IsWandField_7889_3299 f_4@@38))) (<= (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_13154) (o_2@@39 T@Ref) (f_4@@39 T@Field_21365_21370) ) (! (= (HasDirectPerm_21352_42297 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21352_42297 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_13154) (o_2@@40 T@Ref) (f_4@@40 T@Field_21352_21353) ) (! (= (HasDirectPerm_21352_19425 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21352_19425 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_13154) (o_2@@41 T@Ref) (f_4@@41 T@Field_21352_13207) ) (! (= (HasDirectPerm_21352_13207 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21352_13207 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_13154) (o_2@@42 T@Ref) (f_4@@42 T@Field_21352_53) ) (! (= (HasDirectPerm_21352_53 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21352_53 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_13154) (o_2@@43 T@Ref) (f_4@@43 T@Field_21352_3299) ) (! (= (HasDirectPerm_21352_3299 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21352_3299 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_13154) (o_2@@44 T@Ref) (f_4@@44 T@Field_20357_20362) ) (! (= (HasDirectPerm_20344_41179 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20344_41179 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_13154) (o_2@@45 T@Ref) (f_4@@45 T@Field_20344_20345) ) (! (= (HasDirectPerm_20344_19425 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20344_19425 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_13154) (o_2@@46 T@Ref) (f_4@@46 T@Field_20344_13207) ) (! (= (HasDirectPerm_20344_13207 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20344_13207 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_13154) (o_2@@47 T@Ref) (f_4@@47 T@Field_20344_53) ) (! (= (HasDirectPerm_20344_53 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20344_53 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_13154) (o_2@@48 T@Ref) (f_4@@48 T@Field_20344_3299) ) (! (= (HasDirectPerm_20344_3299 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20344_3299 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_13154) (o_2@@49 T@Ref) (f_4@@49 T@Field_19437_19442) ) (! (= (HasDirectPerm_19424_40061 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19424_40061 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_13154) (o_2@@50 T@Ref) (f_4@@50 T@Field_19424_19425) ) (! (= (HasDirectPerm_19424_19425 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19424_19425 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_13154) (o_2@@51 T@Ref) (f_4@@51 T@Field_19424_13207) ) (! (= (HasDirectPerm_19424_13207 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19424_13207 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_13154) (o_2@@52 T@Ref) (f_4@@52 T@Field_19424_53) ) (! (= (HasDirectPerm_19424_53 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19424_53 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_13154) (o_2@@53 T@Ref) (f_4@@53 T@Field_19424_3299) ) (! (= (HasDirectPerm_19424_3299 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19424_3299 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_13154) (o_2@@54 T@Ref) (f_4@@54 T@Field_7889_19442) ) (! (= (HasDirectPerm_7889_38900 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7889_38900 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_13154) (o_2@@55 T@Ref) (f_4@@55 T@Field_7889_19425) ) (! (= (HasDirectPerm_7889_19425 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7889_19425 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_13154) (o_2@@56 T@Ref) (f_4@@56 T@Field_13206_13207) ) (! (= (HasDirectPerm_7889_13207 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7889_13207 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_13154) (o_2@@57 T@Ref) (f_4@@57 T@Field_13193_53) ) (! (= (HasDirectPerm_7889_53 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7889_53 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_13154) (o_2@@58 T@Ref) (f_4@@58 T@Field_19377_3299) ) (! (= (HasDirectPerm_7889_3299 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7889_3299 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13133) (ExhaleHeap@@17 T@PolymorphicMapType_13133) (Mask@@58 T@PolymorphicMapType_13154) (o_47@@0 T@Ref) (f_65@@159 T@Field_21365_21370) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_21352_42297 Mask@@58 o_47@@0 f_65@@159) (= (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@21) o_47@@0 f_65@@159) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@17) o_47@@0 f_65@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| ExhaleHeap@@17) o_47@@0 f_65@@159))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13133) (ExhaleHeap@@18 T@PolymorphicMapType_13133) (Mask@@59 T@PolymorphicMapType_13154) (o_47@@1 T@Ref) (f_65@@160 T@Field_21352_21353) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_21352_19425 Mask@@59 o_47@@1 f_65@@160) (= (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@22) o_47@@1 f_65@@160) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@18) o_47@@1 f_65@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| ExhaleHeap@@18) o_47@@1 f_65@@160))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13133) (ExhaleHeap@@19 T@PolymorphicMapType_13133) (Mask@@60 T@PolymorphicMapType_13154) (o_47@@2 T@Ref) (f_65@@161 T@Field_21352_13207) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_21352_13207 Mask@@60 o_47@@2 f_65@@161) (= (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@23) o_47@@2 f_65@@161) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@19) o_47@@2 f_65@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| ExhaleHeap@@19) o_47@@2 f_65@@161))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13133) (ExhaleHeap@@20 T@PolymorphicMapType_13133) (Mask@@61 T@PolymorphicMapType_13154) (o_47@@3 T@Ref) (f_65@@162 T@Field_21352_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_21352_53 Mask@@61 o_47@@3 f_65@@162) (= (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@24) o_47@@3 f_65@@162) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@20) o_47@@3 f_65@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| ExhaleHeap@@20) o_47@@3 f_65@@162))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13133) (ExhaleHeap@@21 T@PolymorphicMapType_13133) (Mask@@62 T@PolymorphicMapType_13154) (o_47@@4 T@Ref) (f_65@@163 T@Field_21352_3299) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_21352_3299 Mask@@62 o_47@@4 f_65@@163) (= (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@25) o_47@@4 f_65@@163) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@21) o_47@@4 f_65@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| ExhaleHeap@@21) o_47@@4 f_65@@163))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13133) (ExhaleHeap@@22 T@PolymorphicMapType_13133) (Mask@@63 T@PolymorphicMapType_13154) (o_47@@5 T@Ref) (f_65@@164 T@Field_20357_20362) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_20344_41179 Mask@@63 o_47@@5 f_65@@164) (= (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@26) o_47@@5 f_65@@164) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@22) o_47@@5 f_65@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| ExhaleHeap@@22) o_47@@5 f_65@@164))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13133) (ExhaleHeap@@23 T@PolymorphicMapType_13133) (Mask@@64 T@PolymorphicMapType_13154) (o_47@@6 T@Ref) (f_65@@165 T@Field_20344_20345) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_20344_19425 Mask@@64 o_47@@6 f_65@@165) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@27) o_47@@6 f_65@@165) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@23) o_47@@6 f_65@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| ExhaleHeap@@23) o_47@@6 f_65@@165))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13133) (ExhaleHeap@@24 T@PolymorphicMapType_13133) (Mask@@65 T@PolymorphicMapType_13154) (o_47@@7 T@Ref) (f_65@@166 T@Field_20344_13207) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_20344_13207 Mask@@65 o_47@@7 f_65@@166) (= (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@28) o_47@@7 f_65@@166) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@24) o_47@@7 f_65@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| ExhaleHeap@@24) o_47@@7 f_65@@166))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13133) (ExhaleHeap@@25 T@PolymorphicMapType_13133) (Mask@@66 T@PolymorphicMapType_13154) (o_47@@8 T@Ref) (f_65@@167 T@Field_20344_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_20344_53 Mask@@66 o_47@@8 f_65@@167) (= (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@29) o_47@@8 f_65@@167) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@25) o_47@@8 f_65@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| ExhaleHeap@@25) o_47@@8 f_65@@167))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13133) (ExhaleHeap@@26 T@PolymorphicMapType_13133) (Mask@@67 T@PolymorphicMapType_13154) (o_47@@9 T@Ref) (f_65@@168 T@Field_20344_3299) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_20344_3299 Mask@@67 o_47@@9 f_65@@168) (= (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@30) o_47@@9 f_65@@168) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@26) o_47@@9 f_65@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| ExhaleHeap@@26) o_47@@9 f_65@@168))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13133) (ExhaleHeap@@27 T@PolymorphicMapType_13133) (Mask@@68 T@PolymorphicMapType_13154) (o_47@@10 T@Ref) (f_65@@169 T@Field_19437_19442) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_19424_40061 Mask@@68 o_47@@10 f_65@@169) (= (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@31) o_47@@10 f_65@@169) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@27) o_47@@10 f_65@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| ExhaleHeap@@27) o_47@@10 f_65@@169))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13133) (ExhaleHeap@@28 T@PolymorphicMapType_13133) (Mask@@69 T@PolymorphicMapType_13154) (o_47@@11 T@Ref) (f_65@@170 T@Field_19424_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_19424_19425 Mask@@69 o_47@@11 f_65@@170) (= (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@32) o_47@@11 f_65@@170) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@28) o_47@@11 f_65@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| ExhaleHeap@@28) o_47@@11 f_65@@170))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13133) (ExhaleHeap@@29 T@PolymorphicMapType_13133) (Mask@@70 T@PolymorphicMapType_13154) (o_47@@12 T@Ref) (f_65@@171 T@Field_19424_13207) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_19424_13207 Mask@@70 o_47@@12 f_65@@171) (= (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@33) o_47@@12 f_65@@171) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@29) o_47@@12 f_65@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| ExhaleHeap@@29) o_47@@12 f_65@@171))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13133) (ExhaleHeap@@30 T@PolymorphicMapType_13133) (Mask@@71 T@PolymorphicMapType_13154) (o_47@@13 T@Ref) (f_65@@172 T@Field_19424_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_19424_53 Mask@@71 o_47@@13 f_65@@172) (= (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@34) o_47@@13 f_65@@172) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@30) o_47@@13 f_65@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| ExhaleHeap@@30) o_47@@13 f_65@@172))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13133) (ExhaleHeap@@31 T@PolymorphicMapType_13133) (Mask@@72 T@PolymorphicMapType_13154) (o_47@@14 T@Ref) (f_65@@173 T@Field_19424_3299) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_19424_3299 Mask@@72 o_47@@14 f_65@@173) (= (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@35) o_47@@14 f_65@@173) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@31) o_47@@14 f_65@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| ExhaleHeap@@31) o_47@@14 f_65@@173))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13133) (ExhaleHeap@@32 T@PolymorphicMapType_13133) (Mask@@73 T@PolymorphicMapType_13154) (o_47@@15 T@Ref) (f_65@@174 T@Field_7889_19442) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_7889_38900 Mask@@73 o_47@@15 f_65@@174) (= (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@36) o_47@@15 f_65@@174) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@32) o_47@@15 f_65@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| ExhaleHeap@@32) o_47@@15 f_65@@174))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13133) (ExhaleHeap@@33 T@PolymorphicMapType_13133) (Mask@@74 T@PolymorphicMapType_13154) (o_47@@16 T@Ref) (f_65@@175 T@Field_7889_19425) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_7889_19425 Mask@@74 o_47@@16 f_65@@175) (= (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@37) o_47@@16 f_65@@175) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@33) o_47@@16 f_65@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| ExhaleHeap@@33) o_47@@16 f_65@@175))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13133) (ExhaleHeap@@34 T@PolymorphicMapType_13133) (Mask@@75 T@PolymorphicMapType_13154) (o_47@@17 T@Ref) (f_65@@176 T@Field_13206_13207) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_7889_13207 Mask@@75 o_47@@17 f_65@@176) (= (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@38) o_47@@17 f_65@@176) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@34) o_47@@17 f_65@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| ExhaleHeap@@34) o_47@@17 f_65@@176))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13133) (ExhaleHeap@@35 T@PolymorphicMapType_13133) (Mask@@76 T@PolymorphicMapType_13154) (o_47@@18 T@Ref) (f_65@@177 T@Field_13193_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_7889_53 Mask@@76 o_47@@18 f_65@@177) (= (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@39) o_47@@18 f_65@@177) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@35) o_47@@18 f_65@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| ExhaleHeap@@35) o_47@@18 f_65@@177))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13133) (ExhaleHeap@@36 T@PolymorphicMapType_13133) (Mask@@77 T@PolymorphicMapType_13154) (o_47@@19 T@Ref) (f_65@@178 T@Field_19377_3299) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_7889_3299 Mask@@77 o_47@@19 f_65@@178) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@40) o_47@@19 f_65@@178) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@36) o_47@@19 f_65@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| ExhaleHeap@@36) o_47@@19 f_65@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_21365_21370) ) (! (= (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_21352_13207) ) (! (= (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_21352_53) ) (! (= (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_21352_21353) ) (! (= (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_21352_3299) ) (! (= (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_20357_20362) ) (! (= (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_20344_13207) ) (! (= (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_20344_53) ) (! (= (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_20344_20345) ) (! (= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_20344_3299) ) (! (= (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_19437_19442) ) (! (= (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_19424_13207) ) (! (= (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_19424_53) ) (! (= (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_19424_19425) ) (! (= (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_19424_3299) ) (! (= (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_7889_19442) ) (! (= (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_13206_13207) ) (! (= (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_13193_53) ) (! (= (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_7889_19425) ) (! (= (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_19377_3299) ) (! (= (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13154) (SummandMask1 T@PolymorphicMapType_13154) (SummandMask2 T@PolymorphicMapType_13154) (o_2@@79 T@Ref) (f_4@@79 T@Field_21365_21370) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13154) (SummandMask1@@0 T@PolymorphicMapType_13154) (SummandMask2@@0 T@PolymorphicMapType_13154) (o_2@@80 T@Ref) (f_4@@80 T@Field_21352_13207) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13154) (SummandMask1@@1 T@PolymorphicMapType_13154) (SummandMask2@@1 T@PolymorphicMapType_13154) (o_2@@81 T@Ref) (f_4@@81 T@Field_21352_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13154) (SummandMask1@@2 T@PolymorphicMapType_13154) (SummandMask2@@2 T@PolymorphicMapType_13154) (o_2@@82 T@Ref) (f_4@@82 T@Field_21352_21353) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13154) (SummandMask1@@3 T@PolymorphicMapType_13154) (SummandMask2@@3 T@PolymorphicMapType_13154) (o_2@@83 T@Ref) (f_4@@83 T@Field_21352_3299) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13154) (SummandMask1@@4 T@PolymorphicMapType_13154) (SummandMask2@@4 T@PolymorphicMapType_13154) (o_2@@84 T@Ref) (f_4@@84 T@Field_20357_20362) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13154) (SummandMask1@@5 T@PolymorphicMapType_13154) (SummandMask2@@5 T@PolymorphicMapType_13154) (o_2@@85 T@Ref) (f_4@@85 T@Field_20344_13207) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13154) (SummandMask1@@6 T@PolymorphicMapType_13154) (SummandMask2@@6 T@PolymorphicMapType_13154) (o_2@@86 T@Ref) (f_4@@86 T@Field_20344_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13154) (SummandMask1@@7 T@PolymorphicMapType_13154) (SummandMask2@@7 T@PolymorphicMapType_13154) (o_2@@87 T@Ref) (f_4@@87 T@Field_20344_20345) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13154) (SummandMask1@@8 T@PolymorphicMapType_13154) (SummandMask2@@8 T@PolymorphicMapType_13154) (o_2@@88 T@Ref) (f_4@@88 T@Field_20344_3299) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13154) (SummandMask1@@9 T@PolymorphicMapType_13154) (SummandMask2@@9 T@PolymorphicMapType_13154) (o_2@@89 T@Ref) (f_4@@89 T@Field_19437_19442) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13154) (SummandMask1@@10 T@PolymorphicMapType_13154) (SummandMask2@@10 T@PolymorphicMapType_13154) (o_2@@90 T@Ref) (f_4@@90 T@Field_19424_13207) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_13154) (SummandMask1@@11 T@PolymorphicMapType_13154) (SummandMask2@@11 T@PolymorphicMapType_13154) (o_2@@91 T@Ref) (f_4@@91 T@Field_19424_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_13154) (SummandMask1@@12 T@PolymorphicMapType_13154) (SummandMask2@@12 T@PolymorphicMapType_13154) (o_2@@92 T@Ref) (f_4@@92 T@Field_19424_19425) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_13154) (SummandMask1@@13 T@PolymorphicMapType_13154) (SummandMask2@@13 T@PolymorphicMapType_13154) (o_2@@93 T@Ref) (f_4@@93 T@Field_19424_3299) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_13154) (SummandMask1@@14 T@PolymorphicMapType_13154) (SummandMask2@@14 T@PolymorphicMapType_13154) (o_2@@94 T@Ref) (f_4@@94 T@Field_7889_19442) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_13154) (SummandMask1@@15 T@PolymorphicMapType_13154) (SummandMask2@@15 T@PolymorphicMapType_13154) (o_2@@95 T@Ref) (f_4@@95 T@Field_13206_13207) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_13154) (SummandMask1@@16 T@PolymorphicMapType_13154) (SummandMask2@@16 T@PolymorphicMapType_13154) (o_2@@96 T@Ref) (f_4@@96 T@Field_13193_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_13154) (SummandMask1@@17 T@PolymorphicMapType_13154) (SummandMask2@@17 T@PolymorphicMapType_13154) (o_2@@97 T@Ref) (f_4@@97 T@Field_7889_19425) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_13154) (SummandMask1@@18 T@PolymorphicMapType_13154) (SummandMask2@@18 T@PolymorphicMapType_13154) (o_2@@98 T@Ref) (f_4@@98 T@Field_19377_3299) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((r_1@@11 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_7942_7943 (p3_1 r_1@@11 i@@3)) 2)
 :qid |stdinbpl.527:15|
 :skolemid |96|
 :pattern ( (p3_1 r_1@@11 i@@3))
)))
(assert (forall ((r_1@@12 T@Ref) ) (! (= (getPredWandId_7892_7893 (p1 r_1@@12)) 0)
 :qid |stdinbpl.414:15|
 :skolemid |84|
 :pattern ( (p1 r_1@@12))
)))
(assert (forall ((r_1@@13 T@Ref) ) (! (= (getPredWandId_7917_7918 (p2 r_1@@13)) 1)
 :qid |stdinbpl.468:15|
 :skolemid |90|
 :pattern ( (p2 r_1@@13))
)))
(assert (forall ((r_1@@14 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_7942 (p3_1 r_1@@14 i@@4)) (|p3#sm| r_1@@14 i@@4))
 :qid |stdinbpl.519:15|
 :skolemid |94|
 :pattern ( (PredicateMaskField_7942 (p3_1 r_1@@14 i@@4)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13133) (o_17 T@Ref) (f_19 T@Field_21365_21370) (v T@PolymorphicMapType_13682) ) (! (succHeap Heap@@41 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@41) (store (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@41) o_17 f_19 v) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@41) (store (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@41) o_17 f_19 v) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@41) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13133) (o_17@@0 T@Ref) (f_19@@0 T@Field_21352_21353) (v@@0 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@42) (store (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@42) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@42) (store (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@42) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@42) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_13133) (o_17@@1 T@Ref) (f_19@@1 T@Field_21352_3299) (v@@1 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@43) (store (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@43) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@43) (store (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@43) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@43) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_13133) (o_17@@2 T@Ref) (f_19@@2 T@Field_21352_13207) (v@@2 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@44) (store (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@44) o_17@@2 f_19@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@44) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@44) (store (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@44) o_17@@2 f_19@@2 v@@2)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_13133) (o_17@@3 T@Ref) (f_19@@3 T@Field_21352_53) (v@@3 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@45) (store (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@45) o_17@@3 f_19@@3 v@@3) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@45) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@45) (store (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@45) o_17@@3 f_19@@3 v@@3) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_13133) (o_17@@4 T@Ref) (f_19@@4 T@Field_20357_20362) (v@@4 T@PolymorphicMapType_13682) ) (! (succHeap Heap@@46 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@46) (store (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@46) o_17@@4 f_19@@4 v@@4) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@46) (store (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@46) o_17@@4 f_19@@4 v@@4) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@46) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_13133) (o_17@@5 T@Ref) (f_19@@5 T@Field_20344_20345) (v@@5 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@47) (store (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@47) o_17@@5 f_19@@5 v@@5) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@47) (store (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@47) o_17@@5 f_19@@5 v@@5) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@47) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_13133) (o_17@@6 T@Ref) (f_19@@6 T@Field_20344_3299) (v@@6 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@48) (store (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@48) o_17@@6 f_19@@6 v@@6) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@48) (store (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@48) o_17@@6 f_19@@6 v@@6) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@48) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_13133) (o_17@@7 T@Ref) (f_19@@7 T@Field_20344_13207) (v@@7 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@49) (store (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@49) o_17@@7 f_19@@7 v@@7) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@49) (store (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@49) o_17@@7 f_19@@7 v@@7) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@49) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_13133) (o_17@@8 T@Ref) (f_19@@8 T@Field_20344_53) (v@@8 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@50) (store (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@50) o_17@@8 f_19@@8 v@@8) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@50) (store (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@50) o_17@@8 f_19@@8 v@@8) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@50) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_13133) (o_17@@9 T@Ref) (f_19@@9 T@Field_19437_19442) (v@@9 T@PolymorphicMapType_13682) ) (! (succHeap Heap@@51 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@51) (store (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@51) o_17@@9 f_19@@9 v@@9) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@51) (store (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@51) o_17@@9 f_19@@9 v@@9) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@51) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_13133) (o_17@@10 T@Ref) (f_19@@10 T@Field_19424_19425) (v@@10 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@52) (store (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@52) o_17@@10 f_19@@10 v@@10) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@52) (store (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@52) o_17@@10 f_19@@10 v@@10) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@52) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_13133) (o_17@@11 T@Ref) (f_19@@11 T@Field_19424_3299) (v@@11 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@53) (store (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@53) o_17@@11 f_19@@11 v@@11) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@53) (store (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@53) o_17@@11 f_19@@11 v@@11) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@53) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_13133) (o_17@@12 T@Ref) (f_19@@12 T@Field_19424_13207) (v@@12 T@Ref) ) (! (succHeap Heap@@54 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@54) (store (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@54) o_17@@12 f_19@@12 v@@12) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@54) (store (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@54) o_17@@12 f_19@@12 v@@12) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@54) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_13133) (o_17@@13 T@Ref) (f_19@@13 T@Field_19424_53) (v@@13 Bool) ) (! (succHeap Heap@@55 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@55) (store (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@55) o_17@@13 f_19@@13 v@@13) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@55) (store (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@55) o_17@@13 f_19@@13 v@@13) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@55) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_13133) (o_17@@14 T@Ref) (f_19@@14 T@Field_7889_19442) (v@@14 T@PolymorphicMapType_13682) ) (! (succHeap Heap@@56 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@56) (store (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@56) o_17@@14 f_19@@14 v@@14) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@56) (store (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@56) o_17@@14 f_19@@14 v@@14) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@56) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_13133) (o_17@@15 T@Ref) (f_19@@15 T@Field_7889_19425) (v@@15 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@57) (store (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@57) o_17@@15 f_19@@15 v@@15) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@57) (store (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@57) o_17@@15 f_19@@15 v@@15) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@57) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_13133) (o_17@@16 T@Ref) (f_19@@16 T@Field_19377_3299) (v@@16 Int) ) (! (succHeap Heap@@58 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@58) (store (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@58) o_17@@16 f_19@@16 v@@16) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@58) (store (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@58) o_17@@16 f_19@@16 v@@16) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@58) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_13133) (o_17@@17 T@Ref) (f_19@@17 T@Field_13206_13207) (v@@17 T@Ref) ) (! (succHeap Heap@@59 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@59) (store (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@59) o_17@@17 f_19@@17 v@@17) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@59) (store (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@59) o_17@@17 f_19@@17 v@@17) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@59) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_13133) (o_17@@18 T@Ref) (f_19@@18 T@Field_13193_53) (v@@18 Bool) ) (! (succHeap Heap@@60 (PolymorphicMapType_13133 (store (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@60) o_17@@18 f_19@@18 v@@18) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13133 (store (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@60) o_17@@18 f_19@@18 v@@18) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@60) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@60)))
)))
(assert (forall ((r_1@@15 T@Ref) ) (! (= (PredicateMaskField_7892 (p1 r_1@@15)) (|p1#sm| r_1@@15))
 :qid |stdinbpl.406:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_7892 (p1 r_1@@15)))
)))
(assert (forall ((r_1@@16 T@Ref) ) (! (= (PredicateMaskField_7917 (p2 r_1@@16)) (|p2#sm| r_1@@16))
 :qid |stdinbpl.460:15|
 :skolemid |88|
 :pattern ( (PredicateMaskField_7917 (p2 r_1@@16)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_17@@19 T@Ref) (f_25 T@Field_13206_13207) (Heap@@61 T@PolymorphicMapType_13133) ) (!  (=> (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@61) o_17@@19 $allocated) (select (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@61) (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@61) o_17@@19 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@61) o_17@@19 f_25))
)))
(assert (forall ((p@@4 T@Field_21352_21353) (v_1@@3 T@FrameType) (q T@Field_21352_21353) (w@@3 T@FrameType) (r T@Field_21352_21353) (u T@FrameType) ) (!  (=> (and (InsidePredicate_21352_21352 p@@4 v_1@@3 q w@@3) (InsidePredicate_21352_21352 q w@@3 r u)) (InsidePredicate_21352_21352 p@@4 v_1@@3 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_21352 p@@4 v_1@@3 q w@@3) (InsidePredicate_21352_21352 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_21352_21353) (v_1@@4 T@FrameType) (q@@0 T@Field_21352_21353) (w@@4 T@FrameType) (r@@0 T@Field_20344_20345) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_21352 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_21352_20344 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_21352_20344 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_21352 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_21352_20344 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_21352_21353) (v_1@@5 T@FrameType) (q@@1 T@Field_21352_21353) (w@@5 T@FrameType) (r@@1 T@Field_19424_19425) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_21352 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_21352_19424 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_21352_19424 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_21352 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_21352_19424 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_21352_21353) (v_1@@6 T@FrameType) (q@@2 T@Field_21352_21353) (w@@6 T@FrameType) (r@@2 T@Field_7889_19425) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_21352 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_21352_13193 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_21352_13193 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_21352 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_21352_13193 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_21352_21353) (v_1@@7 T@FrameType) (q@@3 T@Field_20344_20345) (w@@7 T@FrameType) (r@@3 T@Field_21352_21353) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_20344 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20344_21352 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_21352_21352 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_20344 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20344_21352 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_21352_21353) (v_1@@8 T@FrameType) (q@@4 T@Field_20344_20345) (w@@8 T@FrameType) (r@@4 T@Field_20344_20345) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_20344 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20344_20344 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_21352_20344 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_20344 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20344_20344 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_21352_21353) (v_1@@9 T@FrameType) (q@@5 T@Field_20344_20345) (w@@9 T@FrameType) (r@@5 T@Field_19424_19425) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_20344 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20344_19424 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_21352_19424 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_20344 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20344_19424 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_21352_21353) (v_1@@10 T@FrameType) (q@@6 T@Field_20344_20345) (w@@10 T@FrameType) (r@@6 T@Field_7889_19425) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_20344 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20344_13193 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_21352_13193 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_20344 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20344_13193 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_21352_21353) (v_1@@11 T@FrameType) (q@@7 T@Field_19424_19425) (w@@11 T@FrameType) (r@@7 T@Field_21352_21353) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_19424 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_19424_21352 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_21352_21352 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_19424 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_19424_21352 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_21352_21353) (v_1@@12 T@FrameType) (q@@8 T@Field_19424_19425) (w@@12 T@FrameType) (r@@8 T@Field_20344_20345) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_19424 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_19424_20344 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_21352_20344 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_19424 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_19424_20344 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_21352_21353) (v_1@@13 T@FrameType) (q@@9 T@Field_19424_19425) (w@@13 T@FrameType) (r@@9 T@Field_19424_19425) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_19424 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_19424_19424 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_21352_19424 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_19424 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_19424_19424 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_21352_21353) (v_1@@14 T@FrameType) (q@@10 T@Field_19424_19425) (w@@14 T@FrameType) (r@@10 T@Field_7889_19425) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_19424 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_19424_13193 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_21352_13193 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_19424 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_19424_13193 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_21352_21353) (v_1@@15 T@FrameType) (q@@11 T@Field_7889_19425) (w@@15 T@FrameType) (r@@11 T@Field_21352_21353) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_13193 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_13193_21352 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_21352_21352 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_13193 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_13193_21352 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_21352_21353) (v_1@@16 T@FrameType) (q@@12 T@Field_7889_19425) (w@@16 T@FrameType) (r@@12 T@Field_20344_20345) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_13193 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_13193_20344 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_21352_20344 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_13193 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_13193_20344 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_21352_21353) (v_1@@17 T@FrameType) (q@@13 T@Field_7889_19425) (w@@17 T@FrameType) (r@@13 T@Field_19424_19425) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_13193 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_13193_19424 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_21352_19424 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_13193 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_13193_19424 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_21352_21353) (v_1@@18 T@FrameType) (q@@14 T@Field_7889_19425) (w@@18 T@FrameType) (r@@14 T@Field_7889_19425) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_21352_13193 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_13193_13193 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_21352_13193 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_21352_13193 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_13193_13193 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_20344_20345) (v_1@@19 T@FrameType) (q@@15 T@Field_21352_21353) (w@@19 T@FrameType) (r@@15 T@Field_21352_21353) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_21352 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_21352_21352 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_20344_21352 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_21352 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_21352_21352 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_20344_20345) (v_1@@20 T@FrameType) (q@@16 T@Field_21352_21353) (w@@20 T@FrameType) (r@@16 T@Field_20344_20345) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_21352 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_21352_20344 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_20344_20344 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_21352 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_21352_20344 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_20344_20345) (v_1@@21 T@FrameType) (q@@17 T@Field_21352_21353) (w@@21 T@FrameType) (r@@17 T@Field_19424_19425) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_21352 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_21352_19424 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_20344_19424 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_21352 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_21352_19424 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_20344_20345) (v_1@@22 T@FrameType) (q@@18 T@Field_21352_21353) (w@@22 T@FrameType) (r@@18 T@Field_7889_19425) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_21352 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_21352_13193 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_20344_13193 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_21352 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_21352_13193 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_20344_20345) (v_1@@23 T@FrameType) (q@@19 T@Field_20344_20345) (w@@23 T@FrameType) (r@@19 T@Field_21352_21353) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_20344 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20344_21352 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_20344_21352 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_20344 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20344_21352 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_20344_20345) (v_1@@24 T@FrameType) (q@@20 T@Field_20344_20345) (w@@24 T@FrameType) (r@@20 T@Field_20344_20345) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_20344 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20344_20344 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_20344_20344 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_20344 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20344_20344 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_20344_20345) (v_1@@25 T@FrameType) (q@@21 T@Field_20344_20345) (w@@25 T@FrameType) (r@@21 T@Field_19424_19425) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_20344 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20344_19424 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_20344_19424 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_20344 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20344_19424 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_20344_20345) (v_1@@26 T@FrameType) (q@@22 T@Field_20344_20345) (w@@26 T@FrameType) (r@@22 T@Field_7889_19425) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_20344 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20344_13193 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_20344_13193 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_20344 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20344_13193 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_20344_20345) (v_1@@27 T@FrameType) (q@@23 T@Field_19424_19425) (w@@27 T@FrameType) (r@@23 T@Field_21352_21353) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_19424 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_19424_21352 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_20344_21352 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_19424 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_19424_21352 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_20344_20345) (v_1@@28 T@FrameType) (q@@24 T@Field_19424_19425) (w@@28 T@FrameType) (r@@24 T@Field_20344_20345) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_19424 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_19424_20344 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_20344_20344 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_19424 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_19424_20344 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_20344_20345) (v_1@@29 T@FrameType) (q@@25 T@Field_19424_19425) (w@@29 T@FrameType) (r@@25 T@Field_19424_19425) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_19424 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_19424_19424 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_20344_19424 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_19424 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_19424_19424 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_20344_20345) (v_1@@30 T@FrameType) (q@@26 T@Field_19424_19425) (w@@30 T@FrameType) (r@@26 T@Field_7889_19425) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_19424 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_19424_13193 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_20344_13193 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_19424 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_19424_13193 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_20344_20345) (v_1@@31 T@FrameType) (q@@27 T@Field_7889_19425) (w@@31 T@FrameType) (r@@27 T@Field_21352_21353) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_13193 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_13193_21352 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_20344_21352 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_13193 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_13193_21352 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_20344_20345) (v_1@@32 T@FrameType) (q@@28 T@Field_7889_19425) (w@@32 T@FrameType) (r@@28 T@Field_20344_20345) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_13193 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_13193_20344 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_20344_20344 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_13193 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_13193_20344 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_20344_20345) (v_1@@33 T@FrameType) (q@@29 T@Field_7889_19425) (w@@33 T@FrameType) (r@@29 T@Field_19424_19425) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_13193 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_13193_19424 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_20344_19424 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_13193 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_13193_19424 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_20344_20345) (v_1@@34 T@FrameType) (q@@30 T@Field_7889_19425) (w@@34 T@FrameType) (r@@30 T@Field_7889_19425) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_20344_13193 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_13193_13193 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_20344_13193 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20344_13193 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_13193_13193 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_19424_19425) (v_1@@35 T@FrameType) (q@@31 T@Field_21352_21353) (w@@35 T@FrameType) (r@@31 T@Field_21352_21353) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_21352 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_21352_21352 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_19424_21352 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_21352 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_21352_21352 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_19424_19425) (v_1@@36 T@FrameType) (q@@32 T@Field_21352_21353) (w@@36 T@FrameType) (r@@32 T@Field_20344_20345) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_21352 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_21352_20344 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_19424_20344 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_21352 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_21352_20344 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_19424_19425) (v_1@@37 T@FrameType) (q@@33 T@Field_21352_21353) (w@@37 T@FrameType) (r@@33 T@Field_19424_19425) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_21352 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_21352_19424 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_19424_19424 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_21352 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_21352_19424 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_19424_19425) (v_1@@38 T@FrameType) (q@@34 T@Field_21352_21353) (w@@38 T@FrameType) (r@@34 T@Field_7889_19425) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_21352 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_21352_13193 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_19424_13193 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_21352 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_21352_13193 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_19424_19425) (v_1@@39 T@FrameType) (q@@35 T@Field_20344_20345) (w@@39 T@FrameType) (r@@35 T@Field_21352_21353) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_20344 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20344_21352 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_19424_21352 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_20344 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20344_21352 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_19424_19425) (v_1@@40 T@FrameType) (q@@36 T@Field_20344_20345) (w@@40 T@FrameType) (r@@36 T@Field_20344_20345) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_20344 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20344_20344 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_19424_20344 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_20344 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20344_20344 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_19424_19425) (v_1@@41 T@FrameType) (q@@37 T@Field_20344_20345) (w@@41 T@FrameType) (r@@37 T@Field_19424_19425) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_20344 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20344_19424 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_19424_19424 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_20344 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20344_19424 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_19424_19425) (v_1@@42 T@FrameType) (q@@38 T@Field_20344_20345) (w@@42 T@FrameType) (r@@38 T@Field_7889_19425) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_20344 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20344_13193 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_19424_13193 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_20344 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20344_13193 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_19424_19425) (v_1@@43 T@FrameType) (q@@39 T@Field_19424_19425) (w@@43 T@FrameType) (r@@39 T@Field_21352_21353) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_19424 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_19424_21352 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_19424_21352 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_19424 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_19424_21352 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_19424_19425) (v_1@@44 T@FrameType) (q@@40 T@Field_19424_19425) (w@@44 T@FrameType) (r@@40 T@Field_20344_20345) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_19424 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_19424_20344 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_19424_20344 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_19424 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_19424_20344 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_19424_19425) (v_1@@45 T@FrameType) (q@@41 T@Field_19424_19425) (w@@45 T@FrameType) (r@@41 T@Field_19424_19425) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_19424 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_19424_19424 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_19424_19424 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_19424 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_19424_19424 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_19424_19425) (v_1@@46 T@FrameType) (q@@42 T@Field_19424_19425) (w@@46 T@FrameType) (r@@42 T@Field_7889_19425) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_19424 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_19424_13193 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_19424_13193 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_19424 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_19424_13193 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_19424_19425) (v_1@@47 T@FrameType) (q@@43 T@Field_7889_19425) (w@@47 T@FrameType) (r@@43 T@Field_21352_21353) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_13193 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_13193_21352 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_19424_21352 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_13193 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_13193_21352 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_19424_19425) (v_1@@48 T@FrameType) (q@@44 T@Field_7889_19425) (w@@48 T@FrameType) (r@@44 T@Field_20344_20345) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_13193 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_13193_20344 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_19424_20344 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_13193 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_13193_20344 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_19424_19425) (v_1@@49 T@FrameType) (q@@45 T@Field_7889_19425) (w@@49 T@FrameType) (r@@45 T@Field_19424_19425) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_13193 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_13193_19424 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_19424_19424 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_13193 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_13193_19424 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_19424_19425) (v_1@@50 T@FrameType) (q@@46 T@Field_7889_19425) (w@@50 T@FrameType) (r@@46 T@Field_7889_19425) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_19424_13193 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_13193_13193 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_19424_13193 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19424_13193 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_13193_13193 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_7889_19425) (v_1@@51 T@FrameType) (q@@47 T@Field_21352_21353) (w@@51 T@FrameType) (r@@47 T@Field_21352_21353) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_21352 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_21352_21352 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_13193_21352 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_21352 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_21352_21352 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_7889_19425) (v_1@@52 T@FrameType) (q@@48 T@Field_21352_21353) (w@@52 T@FrameType) (r@@48 T@Field_20344_20345) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_21352 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_21352_20344 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_13193_20344 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_21352 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_21352_20344 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_7889_19425) (v_1@@53 T@FrameType) (q@@49 T@Field_21352_21353) (w@@53 T@FrameType) (r@@49 T@Field_19424_19425) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_21352 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_21352_19424 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_13193_19424 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_21352 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_21352_19424 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_7889_19425) (v_1@@54 T@FrameType) (q@@50 T@Field_21352_21353) (w@@54 T@FrameType) (r@@50 T@Field_7889_19425) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_21352 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_21352_13193 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_13193_13193 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_21352 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_21352_13193 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_7889_19425) (v_1@@55 T@FrameType) (q@@51 T@Field_20344_20345) (w@@55 T@FrameType) (r@@51 T@Field_21352_21353) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_20344 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20344_21352 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_13193_21352 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_20344 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20344_21352 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_7889_19425) (v_1@@56 T@FrameType) (q@@52 T@Field_20344_20345) (w@@56 T@FrameType) (r@@52 T@Field_20344_20345) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_20344 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20344_20344 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_13193_20344 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_20344 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20344_20344 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_7889_19425) (v_1@@57 T@FrameType) (q@@53 T@Field_20344_20345) (w@@57 T@FrameType) (r@@53 T@Field_19424_19425) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_20344 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20344_19424 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_13193_19424 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_20344 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20344_19424 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_7889_19425) (v_1@@58 T@FrameType) (q@@54 T@Field_20344_20345) (w@@58 T@FrameType) (r@@54 T@Field_7889_19425) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_20344 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20344_13193 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_13193_13193 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_20344 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20344_13193 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_7889_19425) (v_1@@59 T@FrameType) (q@@55 T@Field_19424_19425) (w@@59 T@FrameType) (r@@55 T@Field_21352_21353) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_19424 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_19424_21352 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_13193_21352 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_19424 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_19424_21352 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_7889_19425) (v_1@@60 T@FrameType) (q@@56 T@Field_19424_19425) (w@@60 T@FrameType) (r@@56 T@Field_20344_20345) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_19424 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_19424_20344 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_13193_20344 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_19424 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_19424_20344 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_7889_19425) (v_1@@61 T@FrameType) (q@@57 T@Field_19424_19425) (w@@61 T@FrameType) (r@@57 T@Field_19424_19425) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_19424 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_19424_19424 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_13193_19424 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_19424 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_19424_19424 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_7889_19425) (v_1@@62 T@FrameType) (q@@58 T@Field_19424_19425) (w@@62 T@FrameType) (r@@58 T@Field_7889_19425) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_19424 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_19424_13193 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_13193_13193 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_19424 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_19424_13193 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_7889_19425) (v_1@@63 T@FrameType) (q@@59 T@Field_7889_19425) (w@@63 T@FrameType) (r@@59 T@Field_21352_21353) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_13193 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_13193_21352 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_13193_21352 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_13193 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_13193_21352 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_7889_19425) (v_1@@64 T@FrameType) (q@@60 T@Field_7889_19425) (w@@64 T@FrameType) (r@@60 T@Field_20344_20345) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_13193 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_13193_20344 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_13193_20344 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_13193 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_13193_20344 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_7889_19425) (v_1@@65 T@FrameType) (q@@61 T@Field_7889_19425) (w@@65 T@FrameType) (r@@61 T@Field_19424_19425) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_13193 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_13193_19424 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_13193_19424 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_13193 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_13193_19424 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_7889_19425) (v_1@@66 T@FrameType) (q@@62 T@Field_7889_19425) (w@@66 T@FrameType) (r@@62 T@Field_7889_19425) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_13193_13193 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_13193_13193 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_13193_13193 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13193_13193 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_13193_13193 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_13154)
(declare-fun QPMask@0 () T@PolymorphicMapType_13154)
(declare-fun r_5_1 () T@Ref)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_13154)
(declare-fun Heap@@62 () T@PolymorphicMapType_13133)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun FrameFragment_3299 (Int) T@FrameType)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_13154)
(declare-fun r_20 () T@Ref)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_13154)
(declare-fun Heap@0 () T@PolymorphicMapType_13133)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun getPredWandId_7889_3299 (T@Field_19377_3299) Int)
(declare-fun getPredWandId_7889_7893 (T@Field_7889_19425) Int)
(declare-fun getPredWandId_7889_53 (T@Field_13193_53) Int)
(declare-fun getPredWandId_7889_13207 (T@Field_13206_13207) Int)
(declare-fun getPredWandId_7889_79840 (T@Field_7889_19442) Int)
(declare-fun getPredWandId_7892_3299 (T@Field_19424_3299) Int)
(declare-fun getPredWandId_7892_53 (T@Field_19424_53) Int)
(declare-fun getPredWandId_7892_13207 (T@Field_19424_13207) Int)
(declare-fun getPredWandId_7892_80649 (T@Field_19437_19442) Int)
(declare-fun getPredWandId_7917_3299 (T@Field_20344_3299) Int)
(declare-fun getPredWandId_7917_53 (T@Field_20344_53) Int)
(declare-fun getPredWandId_7917_13207 (T@Field_20344_13207) Int)
(declare-fun getPredWandId_7917_81458 (T@Field_20357_20362) Int)
(declare-fun getPredWandId_7942_3299 (T@Field_21352_3299) Int)
(declare-fun getPredWandId_7942_53 (T@Field_21352_53) Int)
(declare-fun getPredWandId_7942_13207 (T@Field_21352_13207) Int)
(declare-fun getPredWandId_7942_82267 (T@Field_21365_21370) Int)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon13_correct true))
(let ((anon12_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_13154 (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| QPMask@0) (store (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_5_1) (- (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_5_1)) FullPerm)) (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| QPMask@0))) (not (= r_5_1 null))) (=> (and (and (= UnfoldingMask@1 (PolymorphicMapType_13154 (store (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| UnfoldingMask@0) r_5_1 f_7 (+ (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| UnfoldingMask@0) r_5_1 f_7) FullPerm)) (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| UnfoldingMask@0) (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| UnfoldingMask@0))) (state Heap@@62 UnfoldingMask@1)) (and (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) r_5_1 f_7) 5) (state Heap@@62 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) r_5_1 f_7) 5)) (=> (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) r_5_1 f_7) 5) (=> (= (ControlFlow 0 13) 11) anon13_correct)))))))
(let ((anon21_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 17) 13)) anon12_correct)))
(let ((anon21_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= FullPerm (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_5_1)))) (=> (<= FullPerm (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_5_1))) (=> (= (ControlFlow 0 15) 13) anon12_correct))))))
(let ((anon20_Then_correct  (=> (select xs r_5_1) (=> (and (|p2#trigger_7917| Heap@@62 (p2 r_5_1)) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@62) null (p2 r_5_1)) (FrameFragment_3299 (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) r_5_1 f_7)))) (and (=> (= (ControlFlow 0 18) 15) anon21_Then_correct) (=> (= (ControlFlow 0 18) 17) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (not (select xs r_5_1)) (= (ControlFlow 0 12) 11)) anon13_correct)))
(let ((anon7_correct true))
(let ((anon6_correct  (=> (and (= UnfoldingMask@2 (PolymorphicMapType_13154 (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| QPMask@0) (store (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_20) (- (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_20)) FullPerm)) (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| QPMask@0) (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| QPMask@0))) (not (= r_20 null))) (=> (and (and (= UnfoldingMask@3 (PolymorphicMapType_13154 (store (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| UnfoldingMask@2) r_20 f_7 (+ (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| UnfoldingMask@2) r_20 f_7) FullPerm)) (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| UnfoldingMask@2) (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| UnfoldingMask@2))) (state Heap@@62 UnfoldingMask@3)) (and (= (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) r_20 f_7) 5) (state Heap@@62 UnfoldingMask@3))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_7889_3299 UnfoldingMask@3 r_20 f_7)) (=> (HasDirectPerm_7889_3299 UnfoldingMask@3 r_20 f_7) (=> (= Heap@0 (PolymorphicMapType_13133 (|PolymorphicMapType_13133_7584_53#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7587_7588#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7892_7893#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7896_24302#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@62) (store (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20) (PolymorphicMapType_13682 (store (|PolymorphicMapType_13682_7889_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) r_20 f_7 true) (|PolymorphicMapType_13682_7889_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_7889_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_7889_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_7889_44664#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_19424_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_19424_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_19424_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_19424_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_19424_45712#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_20344_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_20344_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_20344_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_20344_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_20344_46760#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_21352_3299#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_21352_53#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_21352_13207#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_21352_19425#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))) (|PolymorphicMapType_13682_21352_47808#PolymorphicMapType_13682| (select (|PolymorphicMapType_13133_7921_28528#PolymorphicMapType_13133| Heap@@62) null (|p2#sm| r_20))))) (|PolymorphicMapType_13133_7942_7943#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7946_31622#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7889_19425#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_7889_38942#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_19424_3299#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_19424_53#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_19424_13207#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_20344_3299#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_20344_53#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_20344_13207#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_21352_3299#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_21352_53#PolymorphicMapType_13133| Heap@@62) (|PolymorphicMapType_13133_21352_13207#PolymorphicMapType_13133| Heap@@62))) (=> (and (state Heap@0 QPMask@0) (= (ControlFlow 0 5) 3)) anon7_correct))))))))
(let ((anon18_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 5)) anon6_correct)))
(let ((anon18_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_20)))) (=> (<= FullPerm (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_20))) (=> (= (ControlFlow 0 7) 5) anon6_correct))))))
(let ((anon17_Then_correct  (=> (select xs r_20) (=> (and (|p2#trigger_7917| Heap@@62 (p2 r_20)) (= (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@62) null (p2 r_20)) (FrameFragment_3299 (select (|PolymorphicMapType_13133_7889_3299#PolymorphicMapType_13133| Heap@@62) r_20 f_7)))) (and (=> (= (ControlFlow 0 10) 7) anon18_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Else_correct))))))
(let ((anon17_Else_correct  (=> (and (not (select xs r_20)) (= (ControlFlow 0 4) 3)) anon7_correct)))
(let ((anon19_Else_correct true))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (select xs r_1_1)) (select xs r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1 r_1_2)))
 :qid |stdinbpl.786:17|
 :skolemid |108|
 :pattern ( (neverTriggered2 r_1_1) (neverTriggered2 r_1_2))
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (select xs r_1_1@@0)) (select xs r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1@@0 r_1_2@@0)))
 :qid |stdinbpl.786:17|
 :skolemid |108|
 :pattern ( (neverTriggered2 r_1_1@@0) (neverTriggered2 r_1_2@@0))
)) (=> (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (select xs r_1_1@@1) (< NoPerm FullPerm)) (and (= (invRecv2 r_1_1@@1) r_1_1@@1) (qpRange2 r_1_1@@1)))
 :qid |stdinbpl.792:22|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_13133_7917_7918#PolymorphicMapType_13133| Heap@@62) null (p2 r_1_1@@1)))
 :pattern ( (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) null (p2 r_1_1@@1)))
 :pattern ( (select xs r_1_1@@1))
)) (=> (and (forall ((r_2_1 T@Ref) ) (!  (=> (and (and (select xs (invRecv2 r_2_1)) (< NoPerm FullPerm)) (qpRange2 r_2_1)) (= (invRecv2 r_2_1) r_2_1))
 :qid |stdinbpl.796:22|
 :skolemid |110|
 :pattern ( (invRecv2 r_2_1))
)) (forall ((r_2_1@@0 T@Ref) ) (!  (=> (and (and (select xs (invRecv2 r_2_1@@0)) (< NoPerm FullPerm)) (qpRange2 r_2_1@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 r_2_1@@0) r_2_1@@0)) (= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_2_1@@0)) (+ (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) null (p2 r_2_1@@0)) FullPerm))))
 :qid |stdinbpl.802:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_2_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_19377_3299) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_7889_3299 f_5))) (not (= (getPredWandId_7889_3299 f_5) 1))) (= (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_13154_7889_3299#PolymorphicMapType_13154| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_7889_19425) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_7889_42542 f_5@@0))) (not (= (getPredWandId_7889_7893 f_5@@0) 1))) (= (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_13154_7889_7893#PolymorphicMapType_13154| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_13193_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_7889_53 f_5@@1))) (not (= (getPredWandId_7889_53 f_5@@1) 1))) (= (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_13154_7889_53#PolymorphicMapType_13154| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_13206_13207) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_7889_13207 f_5@@2))) (not (= (getPredWandId_7889_13207 f_5@@2) 1))) (= (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_13154_7889_13207#PolymorphicMapType_13154| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_7889_19442) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_7889_61460 f_5@@3))) (not (= (getPredWandId_7889_79840 f_5@@3) 1))) (= (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_13154_7889_58102#PolymorphicMapType_13154| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_19424_3299) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_7892_3299 f_5@@4))) (not (= (getPredWandId_7892_3299 f_5@@4) 1))) (= (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_13154_7892_3299#PolymorphicMapType_13154| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_19424_19425) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_7892_7893 f_5@@5))) (not (= (getPredWandId_7892_7893 f_5@@5) 1))) (= (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_13154_7892_7893#PolymorphicMapType_13154| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_19424_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_7892_53 f_5@@6))) (not (= (getPredWandId_7892_53 f_5@@6) 1))) (= (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_13154_7892_53#PolymorphicMapType_13154| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_19424_13207) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_7892_13207 f_5@@7))) (not (= (getPredWandId_7892_13207 f_5@@7) 1))) (= (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_13154_7892_13207#PolymorphicMapType_13154| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_19437_19442) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_7892_62291 f_5@@8))) (not (= (getPredWandId_7892_80649 f_5@@8) 1))) (= (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_13154_7892_58513#PolymorphicMapType_13154| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_20344_3299) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_7917_3299 f_5@@9))) (not (= (getPredWandId_7917_3299 f_5@@9) 1))) (= (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| ZeroMask) o_9@@9 f_5@@9) (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| QPMask@0) o_9@@9 f_5@@9)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| ZeroMask) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_13154_7917_3299#PolymorphicMapType_13154| QPMask@0) o_9@@9 f_5@@9))
))) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_20344_20345) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_7917_7918 f_5@@10))) (not (= (getPredWandId_7917_7918 f_5@@10) 1))) (= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) o_9@@10 f_5@@10) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) o_9@@10 f_5@@10)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_20344_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_7917_53 f_5@@11))) (not (= (getPredWandId_7917_53 f_5@@11) 1))) (= (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| ZeroMask) o_9@@11 f_5@@11) (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| QPMask@0) o_9@@11 f_5@@11)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| ZeroMask) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_13154_7917_53#PolymorphicMapType_13154| QPMask@0) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_20344_13207) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_7917_13207 f_5@@12))) (not (= (getPredWandId_7917_13207 f_5@@12) 1))) (= (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| ZeroMask) o_9@@12 f_5@@12) (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| QPMask@0) o_9@@12 f_5@@12)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| ZeroMask) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_13154_7917_13207#PolymorphicMapType_13154| QPMask@0) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_20357_20362) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_7917_63122 f_5@@13))) (not (= (getPredWandId_7917_81458 f_5@@13) 1))) (= (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| ZeroMask) o_9@@13 f_5@@13) (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| QPMask@0) o_9@@13 f_5@@13)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| ZeroMask) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_13154_7917_58924#PolymorphicMapType_13154| QPMask@0) o_9@@13 f_5@@13))
))) (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_21352_3299) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_7942_3299 f_5@@14))) (not (= (getPredWandId_7942_3299 f_5@@14) 1))) (= (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| ZeroMask) o_9@@14 f_5@@14) (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| QPMask@0) o_9@@14 f_5@@14)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| ZeroMask) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_13154_7942_3299#PolymorphicMapType_13154| QPMask@0) o_9@@14 f_5@@14))
))) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_21352_21353) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_7942_7943 f_5@@15))) (not (= (getPredWandId_7942_7943 f_5@@15) 1))) (= (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| ZeroMask) o_9@@15 f_5@@15) (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| QPMask@0) o_9@@15 f_5@@15)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| ZeroMask) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_13154_7942_7943#PolymorphicMapType_13154| QPMask@0) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_21352_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_7942_53 f_5@@16))) (not (= (getPredWandId_7942_53 f_5@@16) 1))) (= (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| ZeroMask) o_9@@16 f_5@@16) (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| QPMask@0) o_9@@16 f_5@@16)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| ZeroMask) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_13154_7942_53#PolymorphicMapType_13154| QPMask@0) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_21352_13207) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_7942_13207 f_5@@17))) (not (= (getPredWandId_7942_13207 f_5@@17) 1))) (= (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| ZeroMask) o_9@@17 f_5@@17) (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| QPMask@0) o_9@@17 f_5@@17)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| ZeroMask) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_13154_7942_13207#PolymorphicMapType_13154| QPMask@0) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_21365_21370) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_7942_63953 f_5@@18))) (not (= (getPredWandId_7942_82267 f_5@@18) 1))) (= (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| ZeroMask) o_9@@18 f_5@@18) (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| QPMask@0) o_9@@18 f_5@@18)))
 :qid |stdinbpl.808:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| ZeroMask) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_13154_7942_59335#PolymorphicMapType_13154| QPMask@0) o_9@@18 f_5@@18))
))) (forall ((r_2_1@@1 T@Ref) ) (!  (=> (not (and (and (select xs (invRecv2 r_2_1@@1)) (< NoPerm FullPerm)) (qpRange2 r_2_1@@1))) (= (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_2_1@@1)) (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| ZeroMask) null (p2 r_2_1@@1))))
 :qid |stdinbpl.812:22|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_13154_7917_7918#PolymorphicMapType_13154| QPMask@0) null (p2 r_2_1@@1)))
))) (and (state Heap@@62 QPMask@0) (state Heap@@62 QPMask@0))) (and (and (and (and (=> (= (ControlFlow 0 19) 2) anon19_Else_correct) (=> (= (ControlFlow 0 19) 18) anon20_Then_correct)) (=> (= (ControlFlow 0 19) 12) anon20_Else_correct)) (=> (= (ControlFlow 0 19) 10) anon17_Then_correct)) (=> (= (ControlFlow 0 19) 4) anon17_Else_correct)))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@62 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 21) 1) anon15_Then_correct) (=> (= (ControlFlow 0 21) 19) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
