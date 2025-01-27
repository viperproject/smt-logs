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
(declare-sort T@Field_18954_53 0)
(declare-sort T@Field_18967_18968 0)
(declare-sort T@Field_25246_3539 0)
(declare-sort T@Field_25182_25184 0)
(declare-sort T@Field_25294_25295 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_25308_25313 0)
(declare-sort T@Field_27406_27407 0)
(declare-sort T@Field_27419_27424 0)
(declare-sort T@Field_10980_10991 0)
(declare-sort T@Field_10980_25313 0)
(declare-sort T@Field_10990_28828 0)
(declare-sort T@Field_10990_3539 0)
(declare-sort T@Field_10990_53 0)
(declare-sort T@Field_10990_18968 0)
(declare-sort T@Field_11055_28828 0)
(declare-sort T@Field_11055_3539 0)
(declare-sort T@Field_11055_53 0)
(declare-sort T@Field_11055_18968 0)
(declare-datatypes ((T@PolymorphicMapType_18915 0)) (((PolymorphicMapType_18915 (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| (Array T@Ref T@Field_25246_3539 Real)) (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| (Array T@Ref T@Field_25182_25184 Real)) (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| (Array T@Ref T@Field_25294_25295 Real)) (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| (Array T@Ref T@Field_27406_27407 Real)) (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| (Array T@Ref T@Field_10980_10991 Real)) (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| (Array T@Ref T@Field_18954_53 Real)) (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| (Array T@Ref T@Field_18967_18968 Real)) (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| (Array T@Ref T@Field_10980_25313 Real)) (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| (Array T@Ref T@Field_10990_3539 Real)) (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| (Array T@Ref T@Field_10990_28828 Real)) (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| (Array T@Ref T@Field_10990_53 Real)) (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| (Array T@Ref T@Field_10990_18968 Real)) (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| (Array T@Ref T@Field_25308_25313 Real)) (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| (Array T@Ref T@Field_11055_3539 Real)) (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| (Array T@Ref T@Field_11055_28828 Real)) (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| (Array T@Ref T@Field_11055_53 Real)) (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| (Array T@Ref T@Field_11055_18968 Real)) (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| (Array T@Ref T@Field_27419_27424 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19443 0)) (((PolymorphicMapType_19443 (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (Array T@Ref T@Field_25246_3539 Bool)) (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (Array T@Ref T@Field_25182_25184 Bool)) (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (Array T@Ref T@Field_18954_53 Bool)) (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (Array T@Ref T@Field_18967_18968 Bool)) (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (Array T@Ref T@Field_10980_10991 Bool)) (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (Array T@Ref T@Field_10980_25313 Bool)) (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (Array T@Ref T@Field_10990_3539 Bool)) (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (Array T@Ref T@Field_10990_28828 Bool)) (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (Array T@Ref T@Field_10990_53 Bool)) (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (Array T@Ref T@Field_10990_18968 Bool)) (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (Array T@Ref T@Field_25294_25295 Bool)) (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (Array T@Ref T@Field_25308_25313 Bool)) (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (Array T@Ref T@Field_11055_3539 Bool)) (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (Array T@Ref T@Field_11055_28828 Bool)) (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (Array T@Ref T@Field_11055_53 Bool)) (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (Array T@Ref T@Field_11055_18968 Bool)) (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (Array T@Ref T@Field_27406_27407 Bool)) (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (Array T@Ref T@Field_27419_27424 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18894 0)) (((PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| (Array T@Ref T@Field_18954_53 Bool)) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| (Array T@Ref T@Field_18967_18968 T@Ref)) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| (Array T@Ref T@Field_25246_3539 Int)) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| (Array T@Ref T@Field_25182_25184 (Array T@Ref Bool))) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| (Array T@Ref T@Field_25294_25295 T@FrameType)) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| (Array T@Ref T@Field_25308_25313 T@PolymorphicMapType_19443)) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| (Array T@Ref T@Field_27406_27407 T@FrameType)) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| (Array T@Ref T@Field_27419_27424 T@PolymorphicMapType_19443)) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| (Array T@Ref T@Field_10980_10991 T@FrameType)) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| (Array T@Ref T@Field_10980_25313 T@PolymorphicMapType_19443)) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| (Array T@Ref T@Field_10990_28828 (Array T@Ref Bool))) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| (Array T@Ref T@Field_10990_3539 Int)) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| (Array T@Ref T@Field_10990_53 Bool)) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| (Array T@Ref T@Field_10990_18968 T@Ref)) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| (Array T@Ref T@Field_11055_28828 (Array T@Ref Bool))) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| (Array T@Ref T@Field_11055_3539 Int)) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| (Array T@Ref T@Field_11055_53 Bool)) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| (Array T@Ref T@Field_11055_18968 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_18954_53)
(declare-fun n_85 () T@Field_25182_25184)
(declare-fun f_7 () T@Field_25246_3539)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18894 T@PolymorphicMapType_18894 T@PolymorphicMapType_18915) Bool)
(declare-fun IsPredicateField_11055_11056 (T@Field_27406_27407) Bool)
(declare-fun HasDirectPerm_11055_11056 (T@PolymorphicMapType_18915 T@Ref T@Field_27406_27407) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11055 (T@Field_27406_27407) T@Field_27419_27424)
(declare-fun IsPredicateField_10990_10991 (T@Field_25294_25295) Bool)
(declare-fun HasDirectPerm_10990_10991 (T@PolymorphicMapType_18915 T@Ref T@Field_25294_25295) Bool)
(declare-fun PredicateMaskField_10990 (T@Field_25294_25295) T@Field_25308_25313)
(declare-fun IsPredicateField_10980_64635 (T@Field_10980_10991) Bool)
(declare-fun HasDirectPerm_10980_10991 (T@PolymorphicMapType_18915 T@Ref T@Field_10980_10991) Bool)
(declare-fun PredicateMaskField_10980 (T@Field_10980_10991) T@Field_10980_25313)
(declare-fun IsWandField_11055_70966 (T@Field_27406_27407) Bool)
(declare-fun WandMaskField_11055 (T@Field_27406_27407) T@Field_27419_27424)
(declare-fun IsWandField_10990_70609 (T@Field_25294_25295) Bool)
(declare-fun WandMaskField_10990 (T@Field_25294_25295) T@Field_25308_25313)
(declare-fun IsWandField_10980_70252 (T@Field_10980_10991) Bool)
(declare-fun WandMaskField_10980 (T@Field_10980_10991) T@Field_10980_25313)
(declare-fun succHeap (T@PolymorphicMapType_18894 T@PolymorphicMapType_18894) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18894 T@PolymorphicMapType_18894) Bool)
(declare-fun state (T@PolymorphicMapType_18894 T@PolymorphicMapType_18915) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18915) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19443)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun P ((Array T@Ref Bool)) T@Field_25294_25295)
(declare-fun inv (T@Ref) T@Field_27406_27407)
(declare-fun |P#trigger_10990| (T@PolymorphicMapType_18894 T@Field_25294_25295) Bool)
(declare-fun |P#everUsed_10990| (T@Field_25294_25295) Bool)
(declare-fun |inv#trigger_11055| (T@PolymorphicMapType_18894 T@Field_27406_27407) Bool)
(declare-fun |inv#everUsed_11055| (T@Field_27406_27407) Bool)
(declare-fun |inv#condqp2| (T@PolymorphicMapType_18894 T@Ref) Int)
(declare-fun |sk_inv#condqp2| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |P#sm| ((Array T@Ref Bool)) T@Field_25308_25313)
(declare-fun |inv#sm| (T@Ref) T@Field_27419_27424)
(declare-fun dummyHeap () T@PolymorphicMapType_18894)
(declare-fun ZeroMask () T@PolymorphicMapType_18915)
(declare-fun InsidePredicate_27406_27406 (T@Field_27406_27407 T@FrameType T@Field_27406_27407 T@FrameType) Bool)
(declare-fun InsidePredicate_25294_25294 (T@Field_25294_25295 T@FrameType T@Field_25294_25295 T@FrameType) Bool)
(declare-fun InsidePredicate_18954_18954 (T@Field_10980_10991 T@FrameType T@Field_10980_10991 T@FrameType) Bool)
(declare-fun IsPredicateField_10980_25208 (T@Field_25182_25184) Bool)
(declare-fun IsWandField_10980_25235 (T@Field_25182_25184) Bool)
(declare-fun IsPredicateField_10985_3539 (T@Field_25246_3539) Bool)
(declare-fun IsWandField_10985_3539 (T@Field_25246_3539) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11055_83189 (T@Field_27419_27424) Bool)
(declare-fun IsWandField_11055_83205 (T@Field_27419_27424) Bool)
(declare-fun IsPredicateField_11055_18968 (T@Field_11055_18968) Bool)
(declare-fun IsWandField_11055_18968 (T@Field_11055_18968) Bool)
(declare-fun IsPredicateField_11055_53 (T@Field_11055_53) Bool)
(declare-fun IsWandField_11055_53 (T@Field_11055_53) Bool)
(declare-fun IsPredicateField_11055_82526 (T@Field_11055_28828) Bool)
(declare-fun IsWandField_11055_82542 (T@Field_11055_28828) Bool)
(declare-fun IsPredicateField_11055_3539 (T@Field_11055_3539) Bool)
(declare-fun IsWandField_11055_3539 (T@Field_11055_3539) Bool)
(declare-fun IsPredicateField_10990_82185 (T@Field_25308_25313) Bool)
(declare-fun IsWandField_10990_82201 (T@Field_25308_25313) Bool)
(declare-fun IsPredicateField_10990_18968 (T@Field_10990_18968) Bool)
(declare-fun IsWandField_10990_18968 (T@Field_10990_18968) Bool)
(declare-fun IsPredicateField_10990_53 (T@Field_10990_53) Bool)
(declare-fun IsWandField_10990_53 (T@Field_10990_53) Bool)
(declare-fun IsPredicateField_10990_81522 (T@Field_10990_28828) Bool)
(declare-fun IsWandField_10990_81538 (T@Field_10990_28828) Bool)
(declare-fun IsPredicateField_10990_3539 (T@Field_10990_3539) Bool)
(declare-fun IsWandField_10990_3539 (T@Field_10990_3539) Bool)
(declare-fun IsPredicateField_10985_81181 (T@Field_10980_25313) Bool)
(declare-fun IsWandField_10985_81197 (T@Field_10980_25313) Bool)
(declare-fun IsPredicateField_10985_18968 (T@Field_18967_18968) Bool)
(declare-fun IsWandField_10985_18968 (T@Field_18967_18968) Bool)
(declare-fun IsPredicateField_10985_53 (T@Field_18954_53) Bool)
(declare-fun IsWandField_10985_53 (T@Field_18954_53) Bool)
(declare-fun HasDirectPerm_11055_64390 (T@PolymorphicMapType_18915 T@Ref T@Field_27419_27424) Bool)
(declare-fun HasDirectPerm_11055_18968 (T@PolymorphicMapType_18915 T@Ref T@Field_11055_18968) Bool)
(declare-fun HasDirectPerm_11055_53 (T@PolymorphicMapType_18915 T@Ref T@Field_11055_53) Bool)
(declare-fun HasDirectPerm_11055_3539 (T@PolymorphicMapType_18915 T@Ref T@Field_11055_3539) Bool)
(declare-fun HasDirectPerm_11055_63283 (T@PolymorphicMapType_18915 T@Ref T@Field_11055_28828) Bool)
(declare-fun HasDirectPerm_10990_63046 (T@PolymorphicMapType_18915 T@Ref T@Field_25308_25313) Bool)
(declare-fun HasDirectPerm_10990_18968 (T@PolymorphicMapType_18915 T@Ref T@Field_10990_18968) Bool)
(declare-fun HasDirectPerm_10990_53 (T@PolymorphicMapType_18915 T@Ref T@Field_10990_53) Bool)
(declare-fun HasDirectPerm_10990_3539 (T@PolymorphicMapType_18915 T@Ref T@Field_10990_3539) Bool)
(declare-fun HasDirectPerm_10990_61939 (T@PolymorphicMapType_18915 T@Ref T@Field_10990_28828) Bool)
(declare-fun HasDirectPerm_10980_61659 (T@PolymorphicMapType_18915 T@Ref T@Field_10980_25313) Bool)
(declare-fun HasDirectPerm_10980_18968 (T@PolymorphicMapType_18915 T@Ref T@Field_18967_18968) Bool)
(declare-fun HasDirectPerm_10980_53 (T@PolymorphicMapType_18915 T@Ref T@Field_18954_53) Bool)
(declare-fun HasDirectPerm_10985_3539 (T@PolymorphicMapType_18915 T@Ref T@Field_25246_3539) Bool)
(declare-fun HasDirectPerm_10980_28828 (T@PolymorphicMapType_18915 T@Ref T@Field_25182_25184) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18915 T@PolymorphicMapType_18915 T@PolymorphicMapType_18915) Bool)
(declare-fun getPredWandId_10990_10991 (T@Field_25294_25295) Int)
(declare-fun getPredWandId_11055_11056 (T@Field_27406_27407) Int)
(declare-fun |P#condqp1| (T@PolymorphicMapType_18894 (Array T@Ref Bool)) Int)
(declare-fun |sk_P#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_27406_25294 (T@Field_27406_27407 T@FrameType T@Field_25294_25295 T@FrameType) Bool)
(declare-fun InsidePredicate_27406_18954 (T@Field_27406_27407 T@FrameType T@Field_10980_10991 T@FrameType) Bool)
(declare-fun InsidePredicate_25294_27406 (T@Field_25294_25295 T@FrameType T@Field_27406_27407 T@FrameType) Bool)
(declare-fun InsidePredicate_25294_18954 (T@Field_25294_25295 T@FrameType T@Field_10980_10991 T@FrameType) Bool)
(declare-fun InsidePredicate_18954_27406 (T@Field_10980_10991 T@FrameType T@Field_27406_27407 T@FrameType) Bool)
(declare-fun InsidePredicate_18954_25294 (T@Field_10980_10991 T@FrameType T@Field_25294_25295 T@FrameType) Bool)
(assert (forall ((Heap T@PolymorphicMapType_18894) (ExhaleHeap T@PolymorphicMapType_18894) (Mask T@PolymorphicMapType_18915) (pm_f_45 T@Field_27406_27407) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_11055_11056 Mask null pm_f_45) (IsPredicateField_11055_11056 pm_f_45)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45 T@Ref) (f_66 T@Field_25246_3539) ) (!  (=> (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45 f_66) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap) o2_45 f_66) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap) o2_45 f_66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap) o2_45 f_66))
)) (forall ((o2_45@@0 T@Ref) (f_66@@0 T@Field_25182_25184) ) (!  (=> (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@0 f_66@@0) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap) o2_45@@0 f_66@@0) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap) o2_45@@0 f_66@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap) o2_45@@0 f_66@@0))
))) (forall ((o2_45@@1 T@Ref) (f_66@@1 T@Field_18954_53) ) (!  (=> (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@1 f_66@@1) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap) o2_45@@1 f_66@@1) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap) o2_45@@1 f_66@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap) o2_45@@1 f_66@@1))
))) (forall ((o2_45@@2 T@Ref) (f_66@@2 T@Field_18967_18968) ) (!  (=> (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@2 f_66@@2) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap) o2_45@@2 f_66@@2) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap) o2_45@@2 f_66@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap) o2_45@@2 f_66@@2))
))) (forall ((o2_45@@3 T@Ref) (f_66@@3 T@Field_10980_10991) ) (!  (=> (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@3 f_66@@3) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap) o2_45@@3 f_66@@3) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap) o2_45@@3 f_66@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap) o2_45@@3 f_66@@3))
))) (forall ((o2_45@@4 T@Ref) (f_66@@4 T@Field_10980_25313) ) (!  (=> (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@4 f_66@@4) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap) o2_45@@4 f_66@@4) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap) o2_45@@4 f_66@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap) o2_45@@4 f_66@@4))
))) (forall ((o2_45@@5 T@Ref) (f_66@@5 T@Field_10990_3539) ) (!  (=> (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@5 f_66@@5) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap) o2_45@@5 f_66@@5) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap) o2_45@@5 f_66@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap) o2_45@@5 f_66@@5))
))) (forall ((o2_45@@6 T@Ref) (f_66@@6 T@Field_10990_28828) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@6 f_66@@6) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap) o2_45@@6 f_66@@6) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap) o2_45@@6 f_66@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap) o2_45@@6 f_66@@6))
))) (forall ((o2_45@@7 T@Ref) (f_66@@7 T@Field_10990_53) ) (!  (=> (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@7 f_66@@7) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap) o2_45@@7 f_66@@7) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap) o2_45@@7 f_66@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap) o2_45@@7 f_66@@7))
))) (forall ((o2_45@@8 T@Ref) (f_66@@8 T@Field_10990_18968) ) (!  (=> (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@8 f_66@@8) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap) o2_45@@8 f_66@@8) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap) o2_45@@8 f_66@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap) o2_45@@8 f_66@@8))
))) (forall ((o2_45@@9 T@Ref) (f_66@@9 T@Field_25294_25295) ) (!  (=> (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@9 f_66@@9) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap) o2_45@@9 f_66@@9) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap) o2_45@@9 f_66@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap) o2_45@@9 f_66@@9))
))) (forall ((o2_45@@10 T@Ref) (f_66@@10 T@Field_25308_25313) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@10 f_66@@10) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap) o2_45@@10 f_66@@10) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap) o2_45@@10 f_66@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap) o2_45@@10 f_66@@10))
))) (forall ((o2_45@@11 T@Ref) (f_66@@11 T@Field_11055_3539) ) (!  (=> (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@11 f_66@@11) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap) o2_45@@11 f_66@@11) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap) o2_45@@11 f_66@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap) o2_45@@11 f_66@@11))
))) (forall ((o2_45@@12 T@Ref) (f_66@@12 T@Field_11055_28828) ) (!  (=> (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@12 f_66@@12) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap) o2_45@@12 f_66@@12) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap) o2_45@@12 f_66@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap) o2_45@@12 f_66@@12))
))) (forall ((o2_45@@13 T@Ref) (f_66@@13 T@Field_11055_53) ) (!  (=> (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@13 f_66@@13) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap) o2_45@@13 f_66@@13) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap) o2_45@@13 f_66@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap) o2_45@@13 f_66@@13))
))) (forall ((o2_45@@14 T@Ref) (f_66@@14 T@Field_11055_18968) ) (!  (=> (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@14 f_66@@14) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap) o2_45@@14 f_66@@14) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap) o2_45@@14 f_66@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap) o2_45@@14 f_66@@14))
))) (forall ((o2_45@@15 T@Ref) (f_66@@15 T@Field_27406_27407) ) (!  (=> (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@15 f_66@@15) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap) o2_45@@15 f_66@@15) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap) o2_45@@15 f_66@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap) o2_45@@15 f_66@@15))
))) (forall ((o2_45@@16 T@Ref) (f_66@@16 T@Field_27419_27424) ) (!  (=> (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) null (PredicateMaskField_11055 pm_f_45))) o2_45@@16 f_66@@16) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap) o2_45@@16 f_66@@16) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap) o2_45@@16 f_66@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap) o2_45@@16 f_66@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_11055_11056 pm_f_45))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18894) (ExhaleHeap@@0 T@PolymorphicMapType_18894) (Mask@@0 T@PolymorphicMapType_18915) (pm_f_45@@0 T@Field_25294_25295) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_10990_10991 Mask@@0 null pm_f_45@@0) (IsPredicateField_10990_10991 pm_f_45@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@17 T@Ref) (f_66@@17 T@Field_25246_3539) ) (!  (=> (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@17 f_66@@17) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@0) o2_45@@17 f_66@@17) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@17 f_66@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@17 f_66@@17))
)) (forall ((o2_45@@18 T@Ref) (f_66@@18 T@Field_25182_25184) ) (!  (=> (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@18 f_66@@18) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@0) o2_45@@18 f_66@@18) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@18 f_66@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@18 f_66@@18))
))) (forall ((o2_45@@19 T@Ref) (f_66@@19 T@Field_18954_53) ) (!  (=> (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@19 f_66@@19) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@0) o2_45@@19 f_66@@19) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@19 f_66@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@19 f_66@@19))
))) (forall ((o2_45@@20 T@Ref) (f_66@@20 T@Field_18967_18968) ) (!  (=> (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@20 f_66@@20) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@0) o2_45@@20 f_66@@20) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@20 f_66@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@20 f_66@@20))
))) (forall ((o2_45@@21 T@Ref) (f_66@@21 T@Field_10980_10991) ) (!  (=> (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@21 f_66@@21) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@0) o2_45@@21 f_66@@21) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@21 f_66@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@21 f_66@@21))
))) (forall ((o2_45@@22 T@Ref) (f_66@@22 T@Field_10980_25313) ) (!  (=> (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@22 f_66@@22) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@0) o2_45@@22 f_66@@22) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@22 f_66@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@22 f_66@@22))
))) (forall ((o2_45@@23 T@Ref) (f_66@@23 T@Field_10990_3539) ) (!  (=> (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@23 f_66@@23) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@0) o2_45@@23 f_66@@23) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@23 f_66@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@23 f_66@@23))
))) (forall ((o2_45@@24 T@Ref) (f_66@@24 T@Field_10990_28828) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@24 f_66@@24) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@0) o2_45@@24 f_66@@24) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@24 f_66@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@24 f_66@@24))
))) (forall ((o2_45@@25 T@Ref) (f_66@@25 T@Field_10990_53) ) (!  (=> (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@25 f_66@@25) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@0) o2_45@@25 f_66@@25) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@25 f_66@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@25 f_66@@25))
))) (forall ((o2_45@@26 T@Ref) (f_66@@26 T@Field_10990_18968) ) (!  (=> (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@26 f_66@@26) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@0) o2_45@@26 f_66@@26) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@26 f_66@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@26 f_66@@26))
))) (forall ((o2_45@@27 T@Ref) (f_66@@27 T@Field_25294_25295) ) (!  (=> (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@27 f_66@@27) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@0) o2_45@@27 f_66@@27) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@27 f_66@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@27 f_66@@27))
))) (forall ((o2_45@@28 T@Ref) (f_66@@28 T@Field_25308_25313) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@28 f_66@@28) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) o2_45@@28 f_66@@28) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@28 f_66@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@28 f_66@@28))
))) (forall ((o2_45@@29 T@Ref) (f_66@@29 T@Field_11055_3539) ) (!  (=> (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@29 f_66@@29) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@0) o2_45@@29 f_66@@29) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@29 f_66@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@29 f_66@@29))
))) (forall ((o2_45@@30 T@Ref) (f_66@@30 T@Field_11055_28828) ) (!  (=> (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@30 f_66@@30) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@0) o2_45@@30 f_66@@30) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@30 f_66@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@30 f_66@@30))
))) (forall ((o2_45@@31 T@Ref) (f_66@@31 T@Field_11055_53) ) (!  (=> (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@31 f_66@@31) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@0) o2_45@@31 f_66@@31) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@31 f_66@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@31 f_66@@31))
))) (forall ((o2_45@@32 T@Ref) (f_66@@32 T@Field_11055_18968) ) (!  (=> (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@32 f_66@@32) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@0) o2_45@@32 f_66@@32) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@32 f_66@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@32 f_66@@32))
))) (forall ((o2_45@@33 T@Ref) (f_66@@33 T@Field_27406_27407) ) (!  (=> (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@33 f_66@@33) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@0) o2_45@@33 f_66@@33) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@33 f_66@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@33 f_66@@33))
))) (forall ((o2_45@@34 T@Ref) (f_66@@34 T@Field_27419_27424) ) (!  (=> (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@0) null (PredicateMaskField_10990 pm_f_45@@0))) o2_45@@34 f_66@@34) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@0) o2_45@@34 f_66@@34) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@34 f_66@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@0) o2_45@@34 f_66@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_10990_10991 pm_f_45@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18894) (ExhaleHeap@@1 T@PolymorphicMapType_18894) (Mask@@1 T@PolymorphicMapType_18915) (pm_f_45@@1 T@Field_10980_10991) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_10980_10991 Mask@@1 null pm_f_45@@1) (IsPredicateField_10980_64635 pm_f_45@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@35 T@Ref) (f_66@@35 T@Field_25246_3539) ) (!  (=> (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@35 f_66@@35) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@1) o2_45@@35 f_66@@35) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@35 f_66@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@35 f_66@@35))
)) (forall ((o2_45@@36 T@Ref) (f_66@@36 T@Field_25182_25184) ) (!  (=> (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@36 f_66@@36) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@1) o2_45@@36 f_66@@36) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@36 f_66@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@36 f_66@@36))
))) (forall ((o2_45@@37 T@Ref) (f_66@@37 T@Field_18954_53) ) (!  (=> (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@37 f_66@@37) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@1) o2_45@@37 f_66@@37) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@37 f_66@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@37 f_66@@37))
))) (forall ((o2_45@@38 T@Ref) (f_66@@38 T@Field_18967_18968) ) (!  (=> (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@38 f_66@@38) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@1) o2_45@@38 f_66@@38) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@38 f_66@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@38 f_66@@38))
))) (forall ((o2_45@@39 T@Ref) (f_66@@39 T@Field_10980_10991) ) (!  (=> (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@39 f_66@@39) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@1) o2_45@@39 f_66@@39) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@39 f_66@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@39 f_66@@39))
))) (forall ((o2_45@@40 T@Ref) (f_66@@40 T@Field_10980_25313) ) (!  (=> (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@40 f_66@@40) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) o2_45@@40 f_66@@40) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@40 f_66@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@40 f_66@@40))
))) (forall ((o2_45@@41 T@Ref) (f_66@@41 T@Field_10990_3539) ) (!  (=> (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@41 f_66@@41) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@1) o2_45@@41 f_66@@41) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@41 f_66@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@41 f_66@@41))
))) (forall ((o2_45@@42 T@Ref) (f_66@@42 T@Field_10990_28828) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@42 f_66@@42) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@1) o2_45@@42 f_66@@42) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@42 f_66@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@42 f_66@@42))
))) (forall ((o2_45@@43 T@Ref) (f_66@@43 T@Field_10990_53) ) (!  (=> (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@43 f_66@@43) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@1) o2_45@@43 f_66@@43) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@43 f_66@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@43 f_66@@43))
))) (forall ((o2_45@@44 T@Ref) (f_66@@44 T@Field_10990_18968) ) (!  (=> (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@44 f_66@@44) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@1) o2_45@@44 f_66@@44) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@44 f_66@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@44 f_66@@44))
))) (forall ((o2_45@@45 T@Ref) (f_66@@45 T@Field_25294_25295) ) (!  (=> (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@45 f_66@@45) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@1) o2_45@@45 f_66@@45) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@45 f_66@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@45 f_66@@45))
))) (forall ((o2_45@@46 T@Ref) (f_66@@46 T@Field_25308_25313) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@46 f_66@@46) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@1) o2_45@@46 f_66@@46) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@46 f_66@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@46 f_66@@46))
))) (forall ((o2_45@@47 T@Ref) (f_66@@47 T@Field_11055_3539) ) (!  (=> (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@47 f_66@@47) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@1) o2_45@@47 f_66@@47) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@47 f_66@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@47 f_66@@47))
))) (forall ((o2_45@@48 T@Ref) (f_66@@48 T@Field_11055_28828) ) (!  (=> (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@48 f_66@@48) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@1) o2_45@@48 f_66@@48) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@48 f_66@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@48 f_66@@48))
))) (forall ((o2_45@@49 T@Ref) (f_66@@49 T@Field_11055_53) ) (!  (=> (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@49 f_66@@49) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@1) o2_45@@49 f_66@@49) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@49 f_66@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@49 f_66@@49))
))) (forall ((o2_45@@50 T@Ref) (f_66@@50 T@Field_11055_18968) ) (!  (=> (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@50 f_66@@50) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@1) o2_45@@50 f_66@@50) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@50 f_66@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@50 f_66@@50))
))) (forall ((o2_45@@51 T@Ref) (f_66@@51 T@Field_27406_27407) ) (!  (=> (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@51 f_66@@51) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@1) o2_45@@51 f_66@@51) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@51 f_66@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@51 f_66@@51))
))) (forall ((o2_45@@52 T@Ref) (f_66@@52 T@Field_27419_27424) ) (!  (=> (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@1) null (PredicateMaskField_10980 pm_f_45@@1))) o2_45@@52 f_66@@52) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@1) o2_45@@52 f_66@@52) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@52 f_66@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@1) o2_45@@52 f_66@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_10980_64635 pm_f_45@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18894) (ExhaleHeap@@2 T@PolymorphicMapType_18894) (Mask@@2 T@PolymorphicMapType_18915) (pm_f_45@@2 T@Field_27406_27407) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_11055_11056 Mask@@2 null pm_f_45@@2) (IsWandField_11055_70966 pm_f_45@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@53 T@Ref) (f_66@@53 T@Field_25246_3539) ) (!  (=> (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@53 f_66@@53) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@2) o2_45@@53 f_66@@53) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@53 f_66@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@53 f_66@@53))
)) (forall ((o2_45@@54 T@Ref) (f_66@@54 T@Field_25182_25184) ) (!  (=> (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@54 f_66@@54) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@2) o2_45@@54 f_66@@54) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@54 f_66@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@54 f_66@@54))
))) (forall ((o2_45@@55 T@Ref) (f_66@@55 T@Field_18954_53) ) (!  (=> (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@55 f_66@@55) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@2) o2_45@@55 f_66@@55) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@55 f_66@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@55 f_66@@55))
))) (forall ((o2_45@@56 T@Ref) (f_66@@56 T@Field_18967_18968) ) (!  (=> (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@56 f_66@@56) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@2) o2_45@@56 f_66@@56) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@56 f_66@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@56 f_66@@56))
))) (forall ((o2_45@@57 T@Ref) (f_66@@57 T@Field_10980_10991) ) (!  (=> (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@57 f_66@@57) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@2) o2_45@@57 f_66@@57) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@57 f_66@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@57 f_66@@57))
))) (forall ((o2_45@@58 T@Ref) (f_66@@58 T@Field_10980_25313) ) (!  (=> (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@58 f_66@@58) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@2) o2_45@@58 f_66@@58) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@58 f_66@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@58 f_66@@58))
))) (forall ((o2_45@@59 T@Ref) (f_66@@59 T@Field_10990_3539) ) (!  (=> (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@59 f_66@@59) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@2) o2_45@@59 f_66@@59) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@59 f_66@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@59 f_66@@59))
))) (forall ((o2_45@@60 T@Ref) (f_66@@60 T@Field_10990_28828) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@60 f_66@@60) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@2) o2_45@@60 f_66@@60) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@60 f_66@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@60 f_66@@60))
))) (forall ((o2_45@@61 T@Ref) (f_66@@61 T@Field_10990_53) ) (!  (=> (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@61 f_66@@61) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@2) o2_45@@61 f_66@@61) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@61 f_66@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@61 f_66@@61))
))) (forall ((o2_45@@62 T@Ref) (f_66@@62 T@Field_10990_18968) ) (!  (=> (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@62 f_66@@62) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@2) o2_45@@62 f_66@@62) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@62 f_66@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@62 f_66@@62))
))) (forall ((o2_45@@63 T@Ref) (f_66@@63 T@Field_25294_25295) ) (!  (=> (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@63 f_66@@63) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@2) o2_45@@63 f_66@@63) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@63 f_66@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@63 f_66@@63))
))) (forall ((o2_45@@64 T@Ref) (f_66@@64 T@Field_25308_25313) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@64 f_66@@64) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@2) o2_45@@64 f_66@@64) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@64 f_66@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@64 f_66@@64))
))) (forall ((o2_45@@65 T@Ref) (f_66@@65 T@Field_11055_3539) ) (!  (=> (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@65 f_66@@65) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@2) o2_45@@65 f_66@@65) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@65 f_66@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@65 f_66@@65))
))) (forall ((o2_45@@66 T@Ref) (f_66@@66 T@Field_11055_28828) ) (!  (=> (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@66 f_66@@66) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@2) o2_45@@66 f_66@@66) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@66 f_66@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@66 f_66@@66))
))) (forall ((o2_45@@67 T@Ref) (f_66@@67 T@Field_11055_53) ) (!  (=> (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@67 f_66@@67) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@2) o2_45@@67 f_66@@67) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@67 f_66@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@67 f_66@@67))
))) (forall ((o2_45@@68 T@Ref) (f_66@@68 T@Field_11055_18968) ) (!  (=> (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@68 f_66@@68) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@2) o2_45@@68 f_66@@68) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@68 f_66@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@68 f_66@@68))
))) (forall ((o2_45@@69 T@Ref) (f_66@@69 T@Field_27406_27407) ) (!  (=> (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@69 f_66@@69) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@2) o2_45@@69 f_66@@69) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@69 f_66@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@69 f_66@@69))
))) (forall ((o2_45@@70 T@Ref) (f_66@@70 T@Field_27419_27424) ) (!  (=> (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) null (WandMaskField_11055 pm_f_45@@2))) o2_45@@70 f_66@@70) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@2) o2_45@@70 f_66@@70) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@70 f_66@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@2) o2_45@@70 f_66@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_11055_70966 pm_f_45@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18894) (ExhaleHeap@@3 T@PolymorphicMapType_18894) (Mask@@3 T@PolymorphicMapType_18915) (pm_f_45@@3 T@Field_25294_25295) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_10990_10991 Mask@@3 null pm_f_45@@3) (IsWandField_10990_70609 pm_f_45@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@71 T@Ref) (f_66@@71 T@Field_25246_3539) ) (!  (=> (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@71 f_66@@71) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@3) o2_45@@71 f_66@@71) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@71 f_66@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@71 f_66@@71))
)) (forall ((o2_45@@72 T@Ref) (f_66@@72 T@Field_25182_25184) ) (!  (=> (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@72 f_66@@72) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@3) o2_45@@72 f_66@@72) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@72 f_66@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@72 f_66@@72))
))) (forall ((o2_45@@73 T@Ref) (f_66@@73 T@Field_18954_53) ) (!  (=> (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@73 f_66@@73) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@3) o2_45@@73 f_66@@73) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@73 f_66@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@73 f_66@@73))
))) (forall ((o2_45@@74 T@Ref) (f_66@@74 T@Field_18967_18968) ) (!  (=> (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@74 f_66@@74) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@3) o2_45@@74 f_66@@74) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@74 f_66@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@74 f_66@@74))
))) (forall ((o2_45@@75 T@Ref) (f_66@@75 T@Field_10980_10991) ) (!  (=> (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@75 f_66@@75) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@3) o2_45@@75 f_66@@75) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@75 f_66@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@75 f_66@@75))
))) (forall ((o2_45@@76 T@Ref) (f_66@@76 T@Field_10980_25313) ) (!  (=> (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@76 f_66@@76) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@3) o2_45@@76 f_66@@76) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@76 f_66@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@76 f_66@@76))
))) (forall ((o2_45@@77 T@Ref) (f_66@@77 T@Field_10990_3539) ) (!  (=> (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@77 f_66@@77) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@3) o2_45@@77 f_66@@77) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@77 f_66@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@77 f_66@@77))
))) (forall ((o2_45@@78 T@Ref) (f_66@@78 T@Field_10990_28828) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@78 f_66@@78) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@3) o2_45@@78 f_66@@78) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@78 f_66@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@78 f_66@@78))
))) (forall ((o2_45@@79 T@Ref) (f_66@@79 T@Field_10990_53) ) (!  (=> (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@79 f_66@@79) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@3) o2_45@@79 f_66@@79) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@79 f_66@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@79 f_66@@79))
))) (forall ((o2_45@@80 T@Ref) (f_66@@80 T@Field_10990_18968) ) (!  (=> (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@80 f_66@@80) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@3) o2_45@@80 f_66@@80) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@80 f_66@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@80 f_66@@80))
))) (forall ((o2_45@@81 T@Ref) (f_66@@81 T@Field_25294_25295) ) (!  (=> (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@81 f_66@@81) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@3) o2_45@@81 f_66@@81) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@81 f_66@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@81 f_66@@81))
))) (forall ((o2_45@@82 T@Ref) (f_66@@82 T@Field_25308_25313) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@82 f_66@@82) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) o2_45@@82 f_66@@82) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@82 f_66@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@82 f_66@@82))
))) (forall ((o2_45@@83 T@Ref) (f_66@@83 T@Field_11055_3539) ) (!  (=> (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@83 f_66@@83) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@3) o2_45@@83 f_66@@83) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@83 f_66@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@83 f_66@@83))
))) (forall ((o2_45@@84 T@Ref) (f_66@@84 T@Field_11055_28828) ) (!  (=> (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@84 f_66@@84) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@3) o2_45@@84 f_66@@84) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@84 f_66@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@84 f_66@@84))
))) (forall ((o2_45@@85 T@Ref) (f_66@@85 T@Field_11055_53) ) (!  (=> (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@85 f_66@@85) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@3) o2_45@@85 f_66@@85) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@85 f_66@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@85 f_66@@85))
))) (forall ((o2_45@@86 T@Ref) (f_66@@86 T@Field_11055_18968) ) (!  (=> (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@86 f_66@@86) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@3) o2_45@@86 f_66@@86) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@86 f_66@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@86 f_66@@86))
))) (forall ((o2_45@@87 T@Ref) (f_66@@87 T@Field_27406_27407) ) (!  (=> (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@87 f_66@@87) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@3) o2_45@@87 f_66@@87) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@87 f_66@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@87 f_66@@87))
))) (forall ((o2_45@@88 T@Ref) (f_66@@88 T@Field_27419_27424) ) (!  (=> (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@3) null (WandMaskField_10990 pm_f_45@@3))) o2_45@@88 f_66@@88) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@3) o2_45@@88 f_66@@88) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@88 f_66@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@3) o2_45@@88 f_66@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_10990_70609 pm_f_45@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18894) (ExhaleHeap@@4 T@PolymorphicMapType_18894) (Mask@@4 T@PolymorphicMapType_18915) (pm_f_45@@4 T@Field_10980_10991) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_10980_10991 Mask@@4 null pm_f_45@@4) (IsWandField_10980_70252 pm_f_45@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@89 T@Ref) (f_66@@89 T@Field_25246_3539) ) (!  (=> (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@89 f_66@@89) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@4) o2_45@@89 f_66@@89) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@89 f_66@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@89 f_66@@89))
)) (forall ((o2_45@@90 T@Ref) (f_66@@90 T@Field_25182_25184) ) (!  (=> (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@90 f_66@@90) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@4) o2_45@@90 f_66@@90) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@90 f_66@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@90 f_66@@90))
))) (forall ((o2_45@@91 T@Ref) (f_66@@91 T@Field_18954_53) ) (!  (=> (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@91 f_66@@91) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@4) o2_45@@91 f_66@@91) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@91 f_66@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@91 f_66@@91))
))) (forall ((o2_45@@92 T@Ref) (f_66@@92 T@Field_18967_18968) ) (!  (=> (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@92 f_66@@92) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@4) o2_45@@92 f_66@@92) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@92 f_66@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@92 f_66@@92))
))) (forall ((o2_45@@93 T@Ref) (f_66@@93 T@Field_10980_10991) ) (!  (=> (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@93 f_66@@93) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@4) o2_45@@93 f_66@@93) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@93 f_66@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@93 f_66@@93))
))) (forall ((o2_45@@94 T@Ref) (f_66@@94 T@Field_10980_25313) ) (!  (=> (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@94 f_66@@94) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) o2_45@@94 f_66@@94) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@94 f_66@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@94 f_66@@94))
))) (forall ((o2_45@@95 T@Ref) (f_66@@95 T@Field_10990_3539) ) (!  (=> (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@95 f_66@@95) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@4) o2_45@@95 f_66@@95) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@95 f_66@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@95 f_66@@95))
))) (forall ((o2_45@@96 T@Ref) (f_66@@96 T@Field_10990_28828) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@96 f_66@@96) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@4) o2_45@@96 f_66@@96) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@96 f_66@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@96 f_66@@96))
))) (forall ((o2_45@@97 T@Ref) (f_66@@97 T@Field_10990_53) ) (!  (=> (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@97 f_66@@97) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@4) o2_45@@97 f_66@@97) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@97 f_66@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@97 f_66@@97))
))) (forall ((o2_45@@98 T@Ref) (f_66@@98 T@Field_10990_18968) ) (!  (=> (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@98 f_66@@98) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@4) o2_45@@98 f_66@@98) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@98 f_66@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@98 f_66@@98))
))) (forall ((o2_45@@99 T@Ref) (f_66@@99 T@Field_25294_25295) ) (!  (=> (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@99 f_66@@99) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@4) o2_45@@99 f_66@@99) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@99 f_66@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@99 f_66@@99))
))) (forall ((o2_45@@100 T@Ref) (f_66@@100 T@Field_25308_25313) ) (!  (=> (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@100 f_66@@100) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@4) o2_45@@100 f_66@@100) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@100 f_66@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@100 f_66@@100))
))) (forall ((o2_45@@101 T@Ref) (f_66@@101 T@Field_11055_3539) ) (!  (=> (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@101 f_66@@101) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@4) o2_45@@101 f_66@@101) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@101 f_66@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@101 f_66@@101))
))) (forall ((o2_45@@102 T@Ref) (f_66@@102 T@Field_11055_28828) ) (!  (=> (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@102 f_66@@102) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@4) o2_45@@102 f_66@@102) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@102 f_66@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@102 f_66@@102))
))) (forall ((o2_45@@103 T@Ref) (f_66@@103 T@Field_11055_53) ) (!  (=> (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@103 f_66@@103) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@4) o2_45@@103 f_66@@103) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@103 f_66@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@103 f_66@@103))
))) (forall ((o2_45@@104 T@Ref) (f_66@@104 T@Field_11055_18968) ) (!  (=> (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@104 f_66@@104) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@4) o2_45@@104 f_66@@104) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@104 f_66@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@104 f_66@@104))
))) (forall ((o2_45@@105 T@Ref) (f_66@@105 T@Field_27406_27407) ) (!  (=> (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@105 f_66@@105) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@4) o2_45@@105 f_66@@105) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@105 f_66@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@105 f_66@@105))
))) (forall ((o2_45@@106 T@Ref) (f_66@@106 T@Field_27419_27424) ) (!  (=> (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@4) null (WandMaskField_10980 pm_f_45@@4))) o2_45@@106 f_66@@106) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@4) o2_45@@106 f_66@@106) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@106 f_66@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@4) o2_45@@106 f_66@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_10980_70252 pm_f_45@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_18894) (Heap1 T@PolymorphicMapType_18894) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18894) (Mask@@5 T@PolymorphicMapType_18915) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18894) (Heap1@@0 T@PolymorphicMapType_18894) (Heap2 T@PolymorphicMapType_18894) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27419_27424) ) (!  (not (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_27406_69163#PolymorphicMapType_19443| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27406_27407) ) (!  (not (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_27406_25295#PolymorphicMapType_19443| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11055_18968) ) (!  (not (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_27406_18968#PolymorphicMapType_19443| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11055_53) ) (!  (not (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_27406_53#PolymorphicMapType_19443| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11055_28828) ) (!  (not (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_27406_68339#PolymorphicMapType_19443| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_11055_3539) ) (!  (not (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_27406_3539#PolymorphicMapType_19443| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_25308_25313) ) (!  (not (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_25294_67897#PolymorphicMapType_19443| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_25294_25295) ) (!  (not (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_25294_25295#PolymorphicMapType_19443| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10990_18968) ) (!  (not (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_25294_18968#PolymorphicMapType_19443| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10990_53) ) (!  (not (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_25294_53#PolymorphicMapType_19443| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_10990_28828) ) (!  (not (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_25294_67073#PolymorphicMapType_19443| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_10990_3539) ) (!  (not (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_25294_3539#PolymorphicMapType_19443| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10980_25313) ) (!  (not (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_10985_66631#PolymorphicMapType_19443| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10980_10991) ) (!  (not (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_10985_25295#PolymorphicMapType_19443| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18967_18968) ) (!  (not (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_10985_18968#PolymorphicMapType_19443| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18954_53) ) (!  (not (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_10985_53#PolymorphicMapType_19443| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_25182_25184) ) (!  (not (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_10980_40492#PolymorphicMapType_19443| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_25246_3539) ) (!  (not (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19443_10985_3539#PolymorphicMapType_19443| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.327:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((xs (Array T@Ref Bool)) ) (! (IsPredicateField_10990_10991 (P xs))
 :qid |stdinbpl.443:15|
 :skolemid |83|
 :pattern ( (P xs))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_11055_11056 (inv this))
 :qid |stdinbpl.542:15|
 :skolemid |96|
 :pattern ( (inv this))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18894) (xs@@0 (Array T@Ref Bool)) ) (! (|P#everUsed_10990| (P xs@@0))
 :qid |stdinbpl.462:15|
 :skolemid |87|
 :pattern ( (|P#trigger_10990| Heap@@6 (P xs@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18894) (this@@0 T@Ref) ) (! (|inv#everUsed_11055| (inv this@@0))
 :qid |stdinbpl.561:15|
 :skolemid |100|
 :pattern ( (|inv#trigger_11055| Heap@@7 (inv this@@0)))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_18894) (Heap1Heap T@PolymorphicMapType_18894) (this@@1 T@Ref) ) (!  (=> (and (=  (and (select (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap2Heap) this@@1 n_85) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (< NoPerm FullPerm))  (and (select (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap1Heap) this@@1 n_85) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (< NoPerm FullPerm))) (=> (and (select (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap2Heap) this@@1 n_85) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap2Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) f_7) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap1Heap) (|sk_inv#condqp2| (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)) f_7)))) (= (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1)))
 :qid |stdinbpl.572:15|
 :skolemid |101|
 :pattern ( (|inv#condqp2| Heap2Heap this@@1) (|inv#condqp2| Heap1Heap this@@1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.330:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18894) (ExhaleHeap@@5 T@PolymorphicMapType_18894) (Mask@@6 T@PolymorphicMapType_18915) (pm_f_45@@5 T@Field_27406_27407) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11055_11056 Mask@@6 null pm_f_45@@5) (IsPredicateField_11055_11056 pm_f_45@@5)) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@8) null (PredicateMaskField_11055 pm_f_45@@5)) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@5) null (PredicateMaskField_11055 pm_f_45@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_11055_11056 pm_f_45@@5) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@5) null (PredicateMaskField_11055 pm_f_45@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18894) (ExhaleHeap@@6 T@PolymorphicMapType_18894) (Mask@@7 T@PolymorphicMapType_18915) (pm_f_45@@6 T@Field_25294_25295) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_10990_10991 Mask@@7 null pm_f_45@@6) (IsPredicateField_10990_10991 pm_f_45@@6)) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@9) null (PredicateMaskField_10990 pm_f_45@@6)) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@6) null (PredicateMaskField_10990 pm_f_45@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsPredicateField_10990_10991 pm_f_45@@6) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@6) null (PredicateMaskField_10990 pm_f_45@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18894) (ExhaleHeap@@7 T@PolymorphicMapType_18894) (Mask@@8 T@PolymorphicMapType_18915) (pm_f_45@@7 T@Field_10980_10991) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_10980_10991 Mask@@8 null pm_f_45@@7) (IsPredicateField_10980_64635 pm_f_45@@7)) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@10) null (PredicateMaskField_10980 pm_f_45@@7)) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@7) null (PredicateMaskField_10980 pm_f_45@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_10980_64635 pm_f_45@@7) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@7) null (PredicateMaskField_10980 pm_f_45@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18894) (ExhaleHeap@@8 T@PolymorphicMapType_18894) (Mask@@9 T@PolymorphicMapType_18915) (pm_f_45@@8 T@Field_27406_27407) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_11055_11056 Mask@@9 null pm_f_45@@8) (IsWandField_11055_70966 pm_f_45@@8)) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@11) null (WandMaskField_11055 pm_f_45@@8)) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@8) null (WandMaskField_11055 pm_f_45@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_11055_70966 pm_f_45@@8) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@8) null (WandMaskField_11055 pm_f_45@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18894) (ExhaleHeap@@9 T@PolymorphicMapType_18894) (Mask@@10 T@PolymorphicMapType_18915) (pm_f_45@@9 T@Field_25294_25295) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_10990_10991 Mask@@10 null pm_f_45@@9) (IsWandField_10990_70609 pm_f_45@@9)) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@12) null (WandMaskField_10990 pm_f_45@@9)) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@9) null (WandMaskField_10990 pm_f_45@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_10990_70609 pm_f_45@@9) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@9) null (WandMaskField_10990 pm_f_45@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18894) (ExhaleHeap@@10 T@PolymorphicMapType_18894) (Mask@@11 T@PolymorphicMapType_18915) (pm_f_45@@10 T@Field_10980_10991) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_10980_10991 Mask@@11 null pm_f_45@@10) (IsWandField_10980_70252 pm_f_45@@10)) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@13) null (WandMaskField_10980 pm_f_45@@10)) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@10) null (WandMaskField_10980 pm_f_45@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_10980_70252 pm_f_45@@10) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@10) null (WandMaskField_10980 pm_f_45@@10)))
)))
(assert (forall ((xs@@1 (Array T@Ref Bool)) (xs2 (Array T@Ref Bool)) ) (!  (=> (= (P xs@@1) (P xs2)) (= xs@@1 xs2))
 :qid |stdinbpl.453:15|
 :skolemid |85|
 :pattern ( (P xs@@1) (P xs2))
)))
(assert (forall ((xs@@2 (Array T@Ref Bool)) (xs2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|P#sm| xs@@2) (|P#sm| xs2@@0)) (= xs@@2 xs2@@0))
 :qid |stdinbpl.457:15|
 :skolemid |86|
 :pattern ( (|P#sm| xs@@2) (|P#sm| xs2@@0))
)))
(assert (forall ((this@@2 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@2) (inv this2)) (= this@@2 this2))
 :qid |stdinbpl.552:15|
 :skolemid |98|
 :pattern ( (inv this@@2) (inv this2))
)))
(assert (forall ((this@@3 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@3) (|inv#sm| this2@@0)) (= this@@3 this2@@0))
 :qid |stdinbpl.556:15|
 :skolemid |99|
 :pattern ( (|inv#sm| this@@3) (|inv#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18894) (ExhaleHeap@@11 T@PolymorphicMapType_18894) (Mask@@12 T@PolymorphicMapType_18915) (o_48 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@14) o_48 $allocated) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@11) o_48 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@11) o_48 $allocated))
)))
(assert (forall ((p T@Field_27406_27407) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27406_27406 p v_1 p w))
 :qid |stdinbpl.225:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27406_27406 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_25294_25295) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_25294_25294 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.225:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25294_25294 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_10980_10991) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_18954_18954 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.225:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18954_18954 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_10980_25208 n_85)))
(assert  (not (IsWandField_10980_25235 n_85)))
(assert  (not (IsPredicateField_10985_3539 f_7)))
(assert  (not (IsWandField_10985_3539 f_7)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18894) (ExhaleHeap@@12 T@PolymorphicMapType_18894) (Mask@@13 T@PolymorphicMapType_18915) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_18915) (o_2@@17 T@Ref) (f_4@@17 T@Field_27419_27424) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_11055_83189 f_4@@17))) (not (IsWandField_11055_83205 f_4@@17))) (<= (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_18915) (o_2@@18 T@Ref) (f_4@@18 T@Field_11055_18968) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_11055_18968 f_4@@18))) (not (IsWandField_11055_18968 f_4@@18))) (<= (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_18915) (o_2@@19 T@Ref) (f_4@@19 T@Field_11055_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_11055_53 f_4@@19))) (not (IsWandField_11055_53 f_4@@19))) (<= (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_18915) (o_2@@20 T@Ref) (f_4@@20 T@Field_27406_27407) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_11055_11056 f_4@@20))) (not (IsWandField_11055_70966 f_4@@20))) (<= (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_18915) (o_2@@21 T@Ref) (f_4@@21 T@Field_11055_28828) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_11055_82526 f_4@@21))) (not (IsWandField_11055_82542 f_4@@21))) (<= (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_18915) (o_2@@22 T@Ref) (f_4@@22 T@Field_11055_3539) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_11055_3539 f_4@@22))) (not (IsWandField_11055_3539 f_4@@22))) (<= (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_18915) (o_2@@23 T@Ref) (f_4@@23 T@Field_25308_25313) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_10990_82185 f_4@@23))) (not (IsWandField_10990_82201 f_4@@23))) (<= (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_18915) (o_2@@24 T@Ref) (f_4@@24 T@Field_10990_18968) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_10990_18968 f_4@@24))) (not (IsWandField_10990_18968 f_4@@24))) (<= (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_18915) (o_2@@25 T@Ref) (f_4@@25 T@Field_10990_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_10990_53 f_4@@25))) (not (IsWandField_10990_53 f_4@@25))) (<= (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_18915) (o_2@@26 T@Ref) (f_4@@26 T@Field_25294_25295) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_10990_10991 f_4@@26))) (not (IsWandField_10990_70609 f_4@@26))) (<= (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_18915) (o_2@@27 T@Ref) (f_4@@27 T@Field_10990_28828) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_10990_81522 f_4@@27))) (not (IsWandField_10990_81538 f_4@@27))) (<= (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_18915) (o_2@@28 T@Ref) (f_4@@28 T@Field_10990_3539) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_10990_3539 f_4@@28))) (not (IsWandField_10990_3539 f_4@@28))) (<= (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_18915) (o_2@@29 T@Ref) (f_4@@29 T@Field_10980_25313) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| Mask@@26) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_10985_81181 f_4@@29))) (not (IsWandField_10985_81197 f_4@@29))) (<= (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| Mask@@26) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| Mask@@26) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_18915) (o_2@@30 T@Ref) (f_4@@30 T@Field_18967_18968) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| Mask@@27) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_10985_18968 f_4@@30))) (not (IsWandField_10985_18968 f_4@@30))) (<= (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| Mask@@27) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| Mask@@27) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_18915) (o_2@@31 T@Ref) (f_4@@31 T@Field_18954_53) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| Mask@@28) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_10985_53 f_4@@31))) (not (IsWandField_10985_53 f_4@@31))) (<= (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| Mask@@28) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| Mask@@28) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_18915) (o_2@@32 T@Ref) (f_4@@32 T@Field_10980_10991) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| Mask@@29) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_10980_64635 f_4@@32))) (not (IsWandField_10980_70252 f_4@@32))) (<= (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| Mask@@29) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| Mask@@29) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_18915) (o_2@@33 T@Ref) (f_4@@33 T@Field_25182_25184) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| Mask@@30) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_10980_25208 f_4@@33))) (not (IsWandField_10980_25235 f_4@@33))) (<= (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| Mask@@30) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| Mask@@30) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_18915) (o_2@@34 T@Ref) (f_4@@34 T@Field_25246_3539) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| Mask@@31) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_10985_3539 f_4@@34))) (not (IsWandField_10985_3539 f_4@@34))) (<= (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| Mask@@31) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| Mask@@31) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_18915) (o_2@@35 T@Ref) (f_4@@35 T@Field_27419_27424) ) (! (= (HasDirectPerm_11055_64390 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11055_64390 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_18915) (o_2@@36 T@Ref) (f_4@@36 T@Field_11055_18968) ) (! (= (HasDirectPerm_11055_18968 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11055_18968 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_18915) (o_2@@37 T@Ref) (f_4@@37 T@Field_11055_53) ) (! (= (HasDirectPerm_11055_53 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11055_53 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_18915) (o_2@@38 T@Ref) (f_4@@38 T@Field_27406_27407) ) (! (= (HasDirectPerm_11055_11056 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11055_11056 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_18915) (o_2@@39 T@Ref) (f_4@@39 T@Field_11055_3539) ) (! (= (HasDirectPerm_11055_3539 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11055_3539 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_18915) (o_2@@40 T@Ref) (f_4@@40 T@Field_11055_28828) ) (! (= (HasDirectPerm_11055_63283 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11055_63283 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_18915) (o_2@@41 T@Ref) (f_4@@41 T@Field_25308_25313) ) (! (= (HasDirectPerm_10990_63046 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10990_63046 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_18915) (o_2@@42 T@Ref) (f_4@@42 T@Field_10990_18968) ) (! (= (HasDirectPerm_10990_18968 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10990_18968 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_18915) (o_2@@43 T@Ref) (f_4@@43 T@Field_10990_53) ) (! (= (HasDirectPerm_10990_53 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10990_53 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_18915) (o_2@@44 T@Ref) (f_4@@44 T@Field_25294_25295) ) (! (= (HasDirectPerm_10990_10991 Mask@@41 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| Mask@@41) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10990_10991 Mask@@41 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_18915) (o_2@@45 T@Ref) (f_4@@45 T@Field_10990_3539) ) (! (= (HasDirectPerm_10990_3539 Mask@@42 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| Mask@@42) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10990_3539 Mask@@42 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_18915) (o_2@@46 T@Ref) (f_4@@46 T@Field_10990_28828) ) (! (= (HasDirectPerm_10990_61939 Mask@@43 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| Mask@@43) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10990_61939 Mask@@43 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_18915) (o_2@@47 T@Ref) (f_4@@47 T@Field_10980_25313) ) (! (= (HasDirectPerm_10980_61659 Mask@@44 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| Mask@@44) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10980_61659 Mask@@44 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_18915) (o_2@@48 T@Ref) (f_4@@48 T@Field_18967_18968) ) (! (= (HasDirectPerm_10980_18968 Mask@@45 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| Mask@@45) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10980_18968 Mask@@45 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_18915) (o_2@@49 T@Ref) (f_4@@49 T@Field_18954_53) ) (! (= (HasDirectPerm_10980_53 Mask@@46 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| Mask@@46) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10980_53 Mask@@46 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_18915) (o_2@@50 T@Ref) (f_4@@50 T@Field_10980_10991) ) (! (= (HasDirectPerm_10980_10991 Mask@@47 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| Mask@@47) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10980_10991 Mask@@47 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_18915) (o_2@@51 T@Ref) (f_4@@51 T@Field_25246_3539) ) (! (= (HasDirectPerm_10985_3539 Mask@@48 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| Mask@@48) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10985_3539 Mask@@48 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_18915) (o_2@@52 T@Ref) (f_4@@52 T@Field_25182_25184) ) (! (= (HasDirectPerm_10980_28828 Mask@@49 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| Mask@@49) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10980_28828 Mask@@49 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.213:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18894) (ExhaleHeap@@13 T@PolymorphicMapType_18894) (Mask@@50 T@PolymorphicMapType_18915) (o_48@@0 T@Ref) (f_66@@107 T@Field_27419_27424) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (=> (HasDirectPerm_11055_64390 Mask@@50 o_48@@0 f_66@@107) (= (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@16) o_48@@0 f_66@@107) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@13) o_48@@0 f_66@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (select (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| ExhaleHeap@@13) o_48@@0 f_66@@107))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_18894) (ExhaleHeap@@14 T@PolymorphicMapType_18894) (Mask@@51 T@PolymorphicMapType_18915) (o_48@@1 T@Ref) (f_66@@108 T@Field_11055_18968) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (=> (HasDirectPerm_11055_18968 Mask@@51 o_48@@1 f_66@@108) (= (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@17) o_48@@1 f_66@@108) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@14) o_48@@1 f_66@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (select (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| ExhaleHeap@@14) o_48@@1 f_66@@108))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_18894) (ExhaleHeap@@15 T@PolymorphicMapType_18894) (Mask@@52 T@PolymorphicMapType_18915) (o_48@@2 T@Ref) (f_66@@109 T@Field_11055_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (=> (HasDirectPerm_11055_53 Mask@@52 o_48@@2 f_66@@109) (= (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@18) o_48@@2 f_66@@109) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@15) o_48@@2 f_66@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (select (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| ExhaleHeap@@15) o_48@@2 f_66@@109))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_18894) (ExhaleHeap@@16 T@PolymorphicMapType_18894) (Mask@@53 T@PolymorphicMapType_18915) (o_48@@3 T@Ref) (f_66@@110 T@Field_27406_27407) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (=> (HasDirectPerm_11055_11056 Mask@@53 o_48@@3 f_66@@110) (= (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@19) o_48@@3 f_66@@110) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@16) o_48@@3 f_66@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (select (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| ExhaleHeap@@16) o_48@@3 f_66@@110))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_18894) (ExhaleHeap@@17 T@PolymorphicMapType_18894) (Mask@@54 T@PolymorphicMapType_18915) (o_48@@4 T@Ref) (f_66@@111 T@Field_11055_3539) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (=> (HasDirectPerm_11055_3539 Mask@@54 o_48@@4 f_66@@111) (= (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@20) o_48@@4 f_66@@111) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@17) o_48@@4 f_66@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (select (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| ExhaleHeap@@17) o_48@@4 f_66@@111))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_18894) (ExhaleHeap@@18 T@PolymorphicMapType_18894) (Mask@@55 T@PolymorphicMapType_18915) (o_48@@5 T@Ref) (f_66@@112 T@Field_11055_28828) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (=> (HasDirectPerm_11055_63283 Mask@@55 o_48@@5 f_66@@112) (= (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@21) o_48@@5 f_66@@112) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@18) o_48@@5 f_66@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (select (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| ExhaleHeap@@18) o_48@@5 f_66@@112))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_18894) (ExhaleHeap@@19 T@PolymorphicMapType_18894) (Mask@@56 T@PolymorphicMapType_18915) (o_48@@6 T@Ref) (f_66@@113 T@Field_25308_25313) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (=> (HasDirectPerm_10990_63046 Mask@@56 o_48@@6 f_66@@113) (= (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@22) o_48@@6 f_66@@113) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@19) o_48@@6 f_66@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (select (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| ExhaleHeap@@19) o_48@@6 f_66@@113))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_18894) (ExhaleHeap@@20 T@PolymorphicMapType_18894) (Mask@@57 T@PolymorphicMapType_18915) (o_48@@7 T@Ref) (f_66@@114 T@Field_10990_18968) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (=> (HasDirectPerm_10990_18968 Mask@@57 o_48@@7 f_66@@114) (= (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@23) o_48@@7 f_66@@114) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@20) o_48@@7 f_66@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (select (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| ExhaleHeap@@20) o_48@@7 f_66@@114))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_18894) (ExhaleHeap@@21 T@PolymorphicMapType_18894) (Mask@@58 T@PolymorphicMapType_18915) (o_48@@8 T@Ref) (f_66@@115 T@Field_10990_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (=> (HasDirectPerm_10990_53 Mask@@58 o_48@@8 f_66@@115) (= (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@24) o_48@@8 f_66@@115) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@21) o_48@@8 f_66@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (select (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| ExhaleHeap@@21) o_48@@8 f_66@@115))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_18894) (ExhaleHeap@@22 T@PolymorphicMapType_18894) (Mask@@59 T@PolymorphicMapType_18915) (o_48@@9 T@Ref) (f_66@@116 T@Field_25294_25295) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (=> (HasDirectPerm_10990_10991 Mask@@59 o_48@@9 f_66@@116) (= (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@25) o_48@@9 f_66@@116) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@22) o_48@@9 f_66@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (select (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| ExhaleHeap@@22) o_48@@9 f_66@@116))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_18894) (ExhaleHeap@@23 T@PolymorphicMapType_18894) (Mask@@60 T@PolymorphicMapType_18915) (o_48@@10 T@Ref) (f_66@@117 T@Field_10990_3539) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (=> (HasDirectPerm_10990_3539 Mask@@60 o_48@@10 f_66@@117) (= (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@26) o_48@@10 f_66@@117) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@23) o_48@@10 f_66@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (select (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| ExhaleHeap@@23) o_48@@10 f_66@@117))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_18894) (ExhaleHeap@@24 T@PolymorphicMapType_18894) (Mask@@61 T@PolymorphicMapType_18915) (o_48@@11 T@Ref) (f_66@@118 T@Field_10990_28828) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (=> (HasDirectPerm_10990_61939 Mask@@61 o_48@@11 f_66@@118) (= (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@27) o_48@@11 f_66@@118) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@24) o_48@@11 f_66@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (select (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| ExhaleHeap@@24) o_48@@11 f_66@@118))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_18894) (ExhaleHeap@@25 T@PolymorphicMapType_18894) (Mask@@62 T@PolymorphicMapType_18915) (o_48@@12 T@Ref) (f_66@@119 T@Field_10980_25313) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (=> (HasDirectPerm_10980_61659 Mask@@62 o_48@@12 f_66@@119) (= (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@28) o_48@@12 f_66@@119) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@25) o_48@@12 f_66@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (select (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| ExhaleHeap@@25) o_48@@12 f_66@@119))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_18894) (ExhaleHeap@@26 T@PolymorphicMapType_18894) (Mask@@63 T@PolymorphicMapType_18915) (o_48@@13 T@Ref) (f_66@@120 T@Field_18967_18968) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (=> (HasDirectPerm_10980_18968 Mask@@63 o_48@@13 f_66@@120) (= (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@29) o_48@@13 f_66@@120) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@26) o_48@@13 f_66@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| ExhaleHeap@@26) o_48@@13 f_66@@120))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_18894) (ExhaleHeap@@27 T@PolymorphicMapType_18894) (Mask@@64 T@PolymorphicMapType_18915) (o_48@@14 T@Ref) (f_66@@121 T@Field_18954_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (=> (HasDirectPerm_10980_53 Mask@@64 o_48@@14 f_66@@121) (= (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@30) o_48@@14 f_66@@121) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@27) o_48@@14 f_66@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| ExhaleHeap@@27) o_48@@14 f_66@@121))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_18894) (ExhaleHeap@@28 T@PolymorphicMapType_18894) (Mask@@65 T@PolymorphicMapType_18915) (o_48@@15 T@Ref) (f_66@@122 T@Field_10980_10991) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (=> (HasDirectPerm_10980_10991 Mask@@65 o_48@@15 f_66@@122) (= (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@31) o_48@@15 f_66@@122) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@28) o_48@@15 f_66@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (select (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| ExhaleHeap@@28) o_48@@15 f_66@@122))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_18894) (ExhaleHeap@@29 T@PolymorphicMapType_18894) (Mask@@66 T@PolymorphicMapType_18915) (o_48@@16 T@Ref) (f_66@@123 T@Field_25246_3539) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (=> (HasDirectPerm_10985_3539 Mask@@66 o_48@@16 f_66@@123) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@32) o_48@@16 f_66@@123) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@29) o_48@@16 f_66@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| ExhaleHeap@@29) o_48@@16 f_66@@123))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_18894) (ExhaleHeap@@30 T@PolymorphicMapType_18894) (Mask@@67 T@PolymorphicMapType_18915) (o_48@@17 T@Ref) (f_66@@124 T@Field_25182_25184) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (=> (HasDirectPerm_10980_28828 Mask@@67 o_48@@17 f_66@@124) (= (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@33) o_48@@17 f_66@@124) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@30) o_48@@17 f_66@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| ExhaleHeap@@30) o_48@@17 f_66@@124))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_27419_27424) ) (! (= (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_11055_18968) ) (! (= (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_11055_53) ) (! (= (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_27406_27407) ) (! (= (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_11055_28828) ) (! (= (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_11055_3539) ) (! (= (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_25308_25313) ) (! (= (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_10990_18968) ) (! (= (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_10990_53) ) (! (= (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_25294_25295) ) (! (= (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_10990_28828) ) (! (= (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_10990_3539) ) (! (= (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_10980_25313) ) (! (= (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_18967_18968) ) (! (= (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_18954_53) ) (! (= (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_10980_10991) ) (! (= (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_25182_25184) ) (! (= (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_25246_3539) ) (! (= (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18915) (SummandMask1 T@PolymorphicMapType_18915) (SummandMask2 T@PolymorphicMapType_18915) (o_2@@71 T@Ref) (f_4@@71 T@Field_27419_27424) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18915) (SummandMask1@@0 T@PolymorphicMapType_18915) (SummandMask2@@0 T@PolymorphicMapType_18915) (o_2@@72 T@Ref) (f_4@@72 T@Field_11055_18968) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18915) (SummandMask1@@1 T@PolymorphicMapType_18915) (SummandMask2@@1 T@PolymorphicMapType_18915) (o_2@@73 T@Ref) (f_4@@73 T@Field_11055_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18915) (SummandMask1@@2 T@PolymorphicMapType_18915) (SummandMask2@@2 T@PolymorphicMapType_18915) (o_2@@74 T@Ref) (f_4@@74 T@Field_27406_27407) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18915) (SummandMask1@@3 T@PolymorphicMapType_18915) (SummandMask2@@3 T@PolymorphicMapType_18915) (o_2@@75 T@Ref) (f_4@@75 T@Field_11055_28828) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_18915) (SummandMask1@@4 T@PolymorphicMapType_18915) (SummandMask2@@4 T@PolymorphicMapType_18915) (o_2@@76 T@Ref) (f_4@@76 T@Field_11055_3539) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_18915) (SummandMask1@@5 T@PolymorphicMapType_18915) (SummandMask2@@5 T@PolymorphicMapType_18915) (o_2@@77 T@Ref) (f_4@@77 T@Field_25308_25313) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_18915) (SummandMask1@@6 T@PolymorphicMapType_18915) (SummandMask2@@6 T@PolymorphicMapType_18915) (o_2@@78 T@Ref) (f_4@@78 T@Field_10990_18968) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_18915) (SummandMask1@@7 T@PolymorphicMapType_18915) (SummandMask2@@7 T@PolymorphicMapType_18915) (o_2@@79 T@Ref) (f_4@@79 T@Field_10990_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_18915) (SummandMask1@@8 T@PolymorphicMapType_18915) (SummandMask2@@8 T@PolymorphicMapType_18915) (o_2@@80 T@Ref) (f_4@@80 T@Field_25294_25295) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_18915) (SummandMask1@@9 T@PolymorphicMapType_18915) (SummandMask2@@9 T@PolymorphicMapType_18915) (o_2@@81 T@Ref) (f_4@@81 T@Field_10990_28828) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_18915) (SummandMask1@@10 T@PolymorphicMapType_18915) (SummandMask2@@10 T@PolymorphicMapType_18915) (o_2@@82 T@Ref) (f_4@@82 T@Field_10990_3539) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_18915) (SummandMask1@@11 T@PolymorphicMapType_18915) (SummandMask2@@11 T@PolymorphicMapType_18915) (o_2@@83 T@Ref) (f_4@@83 T@Field_10980_25313) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_18915) (SummandMask1@@12 T@PolymorphicMapType_18915) (SummandMask2@@12 T@PolymorphicMapType_18915) (o_2@@84 T@Ref) (f_4@@84 T@Field_18967_18968) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_18915) (SummandMask1@@13 T@PolymorphicMapType_18915) (SummandMask2@@13 T@PolymorphicMapType_18915) (o_2@@85 T@Ref) (f_4@@85 T@Field_18954_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_18915) (SummandMask1@@14 T@PolymorphicMapType_18915) (SummandMask2@@14 T@PolymorphicMapType_18915) (o_2@@86 T@Ref) (f_4@@86 T@Field_10980_10991) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_18915) (SummandMask1@@15 T@PolymorphicMapType_18915) (SummandMask2@@15 T@PolymorphicMapType_18915) (o_2@@87 T@Ref) (f_4@@87 T@Field_25182_25184) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_18915) (SummandMask1@@16 T@PolymorphicMapType_18915) (SummandMask2@@16 T@PolymorphicMapType_18915) (o_2@@88 T@Ref) (f_4@@88 T@Field_25246_3539) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((xs@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_10990_10991 (P xs@@3)) 0)
 :qid |stdinbpl.447:15|
 :skolemid |84|
 :pattern ( (P xs@@3))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (getPredWandId_11055_11056 (inv this@@4)) 1)
 :qid |stdinbpl.546:15|
 :skolemid |97|
 :pattern ( (inv this@@4))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_18894) (o_39 T@Ref) (f_53 T@Field_27419_27424) (v T@PolymorphicMapType_19443) ) (! (succHeap Heap@@34 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@34) (store (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@34) o_39 f_53 v) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@34) (store (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@34) o_39 f_53 v) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@34) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_18894) (o_39@@0 T@Ref) (f_53@@0 T@Field_27406_27407) (v@@0 T@FrameType) ) (! (succHeap Heap@@35 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@35) (store (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@35) o_39@@0 f_53@@0 v@@0) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@35) (store (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@35) o_39@@0 f_53@@0 v@@0) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@35) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_18894) (o_39@@1 T@Ref) (f_53@@1 T@Field_11055_28828) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@36 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@36) (store (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@36) o_39@@1 f_53@@1 v@@1) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@36) (store (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@36) o_39@@1 f_53@@1 v@@1) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@36) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_18894) (o_39@@2 T@Ref) (f_53@@2 T@Field_11055_3539) (v@@2 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@37) (store (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@37) o_39@@2 f_53@@2 v@@2) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@37) (store (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@37) o_39@@2 f_53@@2 v@@2) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@37) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_18894) (o_39@@3 T@Ref) (f_53@@3 T@Field_11055_18968) (v@@3 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@38) (store (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@38) o_39@@3 f_53@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@38) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@38) (store (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@38) o_39@@3 f_53@@3 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_18894) (o_39@@4 T@Ref) (f_53@@4 T@Field_11055_53) (v@@4 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@39) (store (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@39) o_39@@4 f_53@@4 v@@4) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@39) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@39) (store (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@39) o_39@@4 f_53@@4 v@@4) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_18894) (o_39@@5 T@Ref) (f_53@@5 T@Field_25308_25313) (v@@5 T@PolymorphicMapType_19443) ) (! (succHeap Heap@@40 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@40) (store (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@40) o_39@@5 f_53@@5 v@@5) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@40) (store (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@40) o_39@@5 f_53@@5 v@@5) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@40) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_18894) (o_39@@6 T@Ref) (f_53@@6 T@Field_25294_25295) (v@@6 T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@41) (store (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@41) o_39@@6 f_53@@6 v@@6) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@41) (store (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@41) o_39@@6 f_53@@6 v@@6) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@41) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_18894) (o_39@@7 T@Ref) (f_53@@7 T@Field_10990_28828) (v@@7 (Array T@Ref Bool)) ) (! (succHeap Heap@@42 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@42) (store (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@42) o_39@@7 f_53@@7 v@@7) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@42) (store (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@42) o_39@@7 f_53@@7 v@@7) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@42) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_18894) (o_39@@8 T@Ref) (f_53@@8 T@Field_10990_3539) (v@@8 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@43) (store (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@43) o_39@@8 f_53@@8 v@@8) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@43) (store (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@43) o_39@@8 f_53@@8 v@@8) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@43) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_18894) (o_39@@9 T@Ref) (f_53@@9 T@Field_10990_18968) (v@@9 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@44) (store (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@44) o_39@@9 f_53@@9 v@@9) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@44) (store (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@44) o_39@@9 f_53@@9 v@@9) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@44) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_18894) (o_39@@10 T@Ref) (f_53@@10 T@Field_10990_53) (v@@10 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@45) (store (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@45) o_39@@10 f_53@@10 v@@10) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@45) (store (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@45) o_39@@10 f_53@@10 v@@10) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@45) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_18894) (o_39@@11 T@Ref) (f_53@@11 T@Field_10980_25313) (v@@11 T@PolymorphicMapType_19443) ) (! (succHeap Heap@@46 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@46) (store (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@46) o_39@@11 f_53@@11 v@@11) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@46) (store (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@46) o_39@@11 f_53@@11 v@@11) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@46) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_18894) (o_39@@12 T@Ref) (f_53@@12 T@Field_10980_10991) (v@@12 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@47) (store (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@47) o_39@@12 f_53@@12 v@@12) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@47) (store (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@47) o_39@@12 f_53@@12 v@@12) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@47) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_18894) (o_39@@13 T@Ref) (f_53@@13 T@Field_25182_25184) (v@@13 (Array T@Ref Bool)) ) (! (succHeap Heap@@48 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@48) (store (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@48) o_39@@13 f_53@@13 v@@13) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@48) (store (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@48) o_39@@13 f_53@@13 v@@13) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@48) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_18894) (o_39@@14 T@Ref) (f_53@@14 T@Field_25246_3539) (v@@14 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@49) (store (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@49) o_39@@14 f_53@@14 v@@14) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@49) (store (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@49) o_39@@14 f_53@@14 v@@14) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@49) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_18894) (o_39@@15 T@Ref) (f_53@@15 T@Field_18967_18968) (v@@15 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@50) (store (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@50) o_39@@15 f_53@@15 v@@15) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@50) (store (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@50) o_39@@15 f_53@@15 v@@15) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@50) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_18894) (o_39@@16 T@Ref) (f_53@@16 T@Field_18954_53) (v@@16 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_18894 (store (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@51) o_39@@16 f_53@@16 v@@16) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18894 (store (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@51) o_39@@16 f_53@@16 v@@16) (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_10991#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10996_33081#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_11056#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11059_40153#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10980_10991#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10980_61701#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_61981#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_3539#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_53#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_10990_18968#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_63325#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_3539#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_53#PolymorphicMapType_18894| Heap@@51) (|PolymorphicMapType_18894_11055_18968#PolymorphicMapType_18894| Heap@@51)))
)))
(assert (forall ((xs@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_10990 (P xs@@4)) (|P#sm| xs@@4))
 :qid |stdinbpl.439:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_10990 (P xs@@4)))
)))
(assert (forall ((this@@5 T@Ref) ) (! (= (PredicateMaskField_11055 (inv this@@5)) (|inv#sm| this@@5))
 :qid |stdinbpl.538:15|
 :skolemid |95|
 :pattern ( (PredicateMaskField_11055 (inv this@@5)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.325:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.326:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_18894) (Heap1Heap@@0 T@PolymorphicMapType_18894) (xs@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select xs@@5 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5))) (< NoPerm FullPerm))  (and (select xs@@5 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5))) (< NoPerm FullPerm))) (=> (and (select xs@@5 (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap2Heap@@0) (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5)) f_7) (select (|PolymorphicMapType_18894_10985_3539#PolymorphicMapType_18894| Heap1Heap@@0) (|sk_P#condqp1| (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5)) f_7)))) (= (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5)))
 :qid |stdinbpl.473:15|
 :skolemid |88|
 :pattern ( (|P#condqp1| Heap2Heap@@0 xs@@5) (|P#condqp1| Heap1Heap@@0 xs@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((o_39@@17 T@Ref) (f_21 T@Field_18967_18968) (Heap@@52 T@PolymorphicMapType_18894) ) (!  (=> (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@52) o_39@@17 $allocated) (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@52) (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@52) o_39@@17 f_21) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18894_10638_10639#PolymorphicMapType_18894| Heap@@52) o_39@@17 f_21))
)))
(assert (forall ((p@@3 T@Field_27406_27407) (v_1@@2 T@FrameType) (q T@Field_27406_27407) (w@@2 T@FrameType) (r T@Field_27406_27407) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27406_27406 p@@3 v_1@@2 q w@@2) (InsidePredicate_27406_27406 q w@@2 r u)) (InsidePredicate_27406_27406 p@@3 v_1@@2 r u))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_27406 p@@3 v_1@@2 q w@@2) (InsidePredicate_27406_27406 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_27406_27407) (v_1@@3 T@FrameType) (q@@0 T@Field_27406_27407) (w@@3 T@FrameType) (r@@0 T@Field_25294_25295) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_27406 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_27406_25294 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_27406_25294 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_27406 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_27406_25294 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_27406_27407) (v_1@@4 T@FrameType) (q@@1 T@Field_27406_27407) (w@@4 T@FrameType) (r@@1 T@Field_10980_10991) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_27406 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_27406_18954 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_27406_18954 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_27406 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_27406_18954 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_27406_27407) (v_1@@5 T@FrameType) (q@@2 T@Field_25294_25295) (w@@5 T@FrameType) (r@@2 T@Field_27406_27407) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_25294 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_25294_27406 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_27406_27406 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_25294 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_25294_27406 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_27406_27407) (v_1@@6 T@FrameType) (q@@3 T@Field_25294_25295) (w@@6 T@FrameType) (r@@3 T@Field_25294_25295) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_25294 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_25294_25294 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_27406_25294 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_25294 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_25294_25294 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_27406_27407) (v_1@@7 T@FrameType) (q@@4 T@Field_25294_25295) (w@@7 T@FrameType) (r@@4 T@Field_10980_10991) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_25294 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_25294_18954 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_27406_18954 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_25294 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_25294_18954 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_27406_27407) (v_1@@8 T@FrameType) (q@@5 T@Field_10980_10991) (w@@8 T@FrameType) (r@@5 T@Field_27406_27407) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_18954 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_18954_27406 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_27406_27406 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_18954 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_18954_27406 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_27406_27407) (v_1@@9 T@FrameType) (q@@6 T@Field_10980_10991) (w@@9 T@FrameType) (r@@6 T@Field_25294_25295) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_18954 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_18954_25294 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_27406_25294 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_18954 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_18954_25294 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_27406_27407) (v_1@@10 T@FrameType) (q@@7 T@Field_10980_10991) (w@@10 T@FrameType) (r@@7 T@Field_10980_10991) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_27406_18954 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_18954_18954 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_27406_18954 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27406_18954 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_18954_18954 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_25294_25295) (v_1@@11 T@FrameType) (q@@8 T@Field_27406_27407) (w@@11 T@FrameType) (r@@8 T@Field_27406_27407) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_27406 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_27406_27406 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_25294_27406 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_27406 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_27406_27406 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_25294_25295) (v_1@@12 T@FrameType) (q@@9 T@Field_27406_27407) (w@@12 T@FrameType) (r@@9 T@Field_25294_25295) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_27406 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_27406_25294 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_25294_25294 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_27406 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_27406_25294 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_25294_25295) (v_1@@13 T@FrameType) (q@@10 T@Field_27406_27407) (w@@13 T@FrameType) (r@@10 T@Field_10980_10991) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_27406 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_27406_18954 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_25294_18954 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_27406 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_27406_18954 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_25294_25295) (v_1@@14 T@FrameType) (q@@11 T@Field_25294_25295) (w@@14 T@FrameType) (r@@11 T@Field_27406_27407) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_25294 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_25294_27406 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_25294_27406 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_25294 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_25294_27406 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_25294_25295) (v_1@@15 T@FrameType) (q@@12 T@Field_25294_25295) (w@@15 T@FrameType) (r@@12 T@Field_25294_25295) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_25294 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_25294_25294 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_25294_25294 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_25294 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_25294_25294 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_25294_25295) (v_1@@16 T@FrameType) (q@@13 T@Field_25294_25295) (w@@16 T@FrameType) (r@@13 T@Field_10980_10991) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_25294 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_25294_18954 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_25294_18954 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_25294 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_25294_18954 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_25294_25295) (v_1@@17 T@FrameType) (q@@14 T@Field_10980_10991) (w@@17 T@FrameType) (r@@14 T@Field_27406_27407) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_18954 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_18954_27406 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_25294_27406 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_18954 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_18954_27406 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_25294_25295) (v_1@@18 T@FrameType) (q@@15 T@Field_10980_10991) (w@@18 T@FrameType) (r@@15 T@Field_25294_25295) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_18954 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_18954_25294 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_25294_25294 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_18954 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_18954_25294 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_25294_25295) (v_1@@19 T@FrameType) (q@@16 T@Field_10980_10991) (w@@19 T@FrameType) (r@@16 T@Field_10980_10991) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25294_18954 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_18954_18954 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_25294_18954 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25294_18954 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_18954_18954 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_10980_10991) (v_1@@20 T@FrameType) (q@@17 T@Field_27406_27407) (w@@20 T@FrameType) (r@@17 T@Field_27406_27407) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_27406 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_27406_27406 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_18954_27406 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_27406 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_27406_27406 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_10980_10991) (v_1@@21 T@FrameType) (q@@18 T@Field_27406_27407) (w@@21 T@FrameType) (r@@18 T@Field_25294_25295) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_27406 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_27406_25294 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_18954_25294 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_27406 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_27406_25294 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_10980_10991) (v_1@@22 T@FrameType) (q@@19 T@Field_27406_27407) (w@@22 T@FrameType) (r@@19 T@Field_10980_10991) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_27406 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_27406_18954 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_18954_18954 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_27406 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_27406_18954 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_10980_10991) (v_1@@23 T@FrameType) (q@@20 T@Field_25294_25295) (w@@23 T@FrameType) (r@@20 T@Field_27406_27407) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_25294 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_25294_27406 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_18954_27406 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_25294 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_25294_27406 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_10980_10991) (v_1@@24 T@FrameType) (q@@21 T@Field_25294_25295) (w@@24 T@FrameType) (r@@21 T@Field_25294_25295) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_25294 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_25294_25294 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_18954_25294 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_25294 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_25294_25294 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_10980_10991) (v_1@@25 T@FrameType) (q@@22 T@Field_25294_25295) (w@@25 T@FrameType) (r@@22 T@Field_10980_10991) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_25294 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_25294_18954 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_18954_18954 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_25294 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_25294_18954 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_10980_10991) (v_1@@26 T@FrameType) (q@@23 T@Field_10980_10991) (w@@26 T@FrameType) (r@@23 T@Field_27406_27407) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_18954 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_18954_27406 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_18954_27406 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_18954 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_18954_27406 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_10980_10991) (v_1@@27 T@FrameType) (q@@24 T@Field_10980_10991) (w@@27 T@FrameType) (r@@24 T@Field_25294_25295) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_18954 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_18954_25294 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_18954_25294 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_18954 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_18954_25294 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_10980_10991) (v_1@@28 T@FrameType) (q@@25 T@Field_10980_10991) (w@@28 T@FrameType) (r@@25 T@Field_10980_10991) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_18954_18954 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_18954_18954 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_18954_18954 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18954_18954 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_18954_18954 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.331:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@53 () T@PolymorphicMapType_18894)
(declare-fun this@@6 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_18915)
(set-info :boogie-vc-id |inv#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((x_2_2 T@Ref) (x_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2 x_2_3)) (select (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@53) this@@6 n_85) x_2_2)) (select (select (|PolymorphicMapType_18894_10980_28004#PolymorphicMapType_18894| Heap@@53) this@@6 n_85) x_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_2_2 x_2_3)))
 :qid |stdinbpl.603:15|
 :skolemid |102|
)))))
(let ((anon3_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_10980_28828 Mask@0 this@@6 n_85))))
(let ((anon0_correct  (=> (and (state Heap@@53 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_18894_10635_53#PolymorphicMapType_18894| Heap@@53) this@@6 $allocated) (not (= this@@6 null))) (and (= Mask@0 (PolymorphicMapType_18915 (|PolymorphicMapType_18915_10985_3539#PolymorphicMapType_18915| ZeroMask) (store (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| ZeroMask) this@@6 n_85 (+ (select (|PolymorphicMapType_18915_10980_28710#PolymorphicMapType_18915| ZeroMask) this@@6 n_85) FullPerm)) (|PolymorphicMapType_18915_10990_10991#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_11055_11056#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10985_10991#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10985_53#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10985_18968#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10985_78025#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10990_3539#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10990_78205#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10990_53#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10990_18968#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_10990_78525#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_11055_3539#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_11055_78705#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_11055_53#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_11055_18968#PolymorphicMapType_18915| ZeroMask) (|PolymorphicMapType_18915_11055_79025#PolymorphicMapType_18915| ZeroMask))) (state Heap@@53 Mask@0))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
