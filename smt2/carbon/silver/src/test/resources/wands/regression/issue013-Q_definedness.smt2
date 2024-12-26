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
(declare-sort T@Field_5199_53 0)
(declare-sort T@Field_5212_5213 0)
(declare-sort T@Field_9025_9026 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_8538_8543 0)
(declare-sort T@Field_9038_9043 0)
(declare-sort T@Field_9788_9789 0)
(declare-sort T@Field_9801_9806 0)
(declare-sort T@Field_2979_53 0)
(declare-sort T@Field_2979_5213 0)
(declare-sort T@Field_2979_1195 0)
(declare-sort T@Field_5199_2980 0)
(declare-sort T@Field_5199_1195 0)
(declare-sort T@Field_5199_8543 0)
(declare-sort T@Field_8553_8554 0)
(declare-sort T@Field_8526_53 0)
(declare-sort T@Field_8526_5213 0)
(declare-sort T@Field_8526_1195 0)
(declare-sort T@Field_9025_53 0)
(declare-sort T@Field_9025_5213 0)
(declare-sort T@Field_9025_1195 0)
(declare-datatypes ((T@PolymorphicMapType_5160 0)) (((PolymorphicMapType_5160 (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| (Array T@Ref T@Field_9025_9026 Real)) (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| (Array T@Ref T@Field_9788_9789 Real)) (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| (Array T@Ref T@Field_8526_1195 Real)) (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| (Array T@Ref T@Field_9025_1195 Real)) (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| (Array T@Ref T@Field_9025_53 Real)) (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| (Array T@Ref T@Field_9025_5213 Real)) (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| (Array T@Ref T@Field_9038_9043 Real)) (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| (Array T@Ref T@Field_2979_1195 Real)) (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| (Array T@Ref T@Field_2979_53 Real)) (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| (Array T@Ref T@Field_2979_5213 Real)) (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| (Array T@Ref T@Field_9801_9806 Real)) (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| (Array T@Ref T@Field_8553_8554 Real)) (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| (Array T@Ref T@Field_8526_53 Real)) (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| (Array T@Ref T@Field_8526_5213 Real)) (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| (Array T@Ref T@Field_8538_8543 Real)) (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| (Array T@Ref T@Field_5199_2980 Real)) (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| (Array T@Ref T@Field_5199_1195 Real)) (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| (Array T@Ref T@Field_5199_53 Real)) (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| (Array T@Ref T@Field_5212_5213 Real)) (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| (Array T@Ref T@Field_5199_8543 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5688 0)) (((PolymorphicMapType_5688 (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (Array T@Ref T@Field_5199_53 Bool)) (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (Array T@Ref T@Field_5212_5213 Bool)) (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (Array T@Ref T@Field_5199_1195 Bool)) (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (Array T@Ref T@Field_5199_8543 Bool)) (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (Array T@Ref T@Field_5199_2980 Bool)) (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (Array T@Ref T@Field_8526_53 Bool)) (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (Array T@Ref T@Field_8526_5213 Bool)) (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (Array T@Ref T@Field_8526_1195 Bool)) (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (Array T@Ref T@Field_8538_8543 Bool)) (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (Array T@Ref T@Field_8553_8554 Bool)) (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (Array T@Ref T@Field_9025_53 Bool)) (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (Array T@Ref T@Field_9025_5213 Bool)) (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (Array T@Ref T@Field_9025_1195 Bool)) (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (Array T@Ref T@Field_9038_9043 Bool)) (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (Array T@Ref T@Field_9025_9026 Bool)) (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (Array T@Ref T@Field_2979_53 Bool)) (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (Array T@Ref T@Field_2979_5213 Bool)) (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (Array T@Ref T@Field_2979_1195 Bool)) (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (Array T@Ref T@Field_9801_9806 Bool)) (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (Array T@Ref T@Field_9788_9789 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5139 0)) (((PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| (Array T@Ref T@Field_5199_53 Bool)) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| (Array T@Ref T@Field_5212_5213 T@Ref)) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| (Array T@Ref T@Field_9025_9026 T@FrameType)) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| (Array T@Ref T@Field_8538_8543 T@PolymorphicMapType_5688)) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| (Array T@Ref T@Field_9038_9043 T@PolymorphicMapType_5688)) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| (Array T@Ref T@Field_9788_9789 T@FrameType)) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| (Array T@Ref T@Field_9801_9806 T@PolymorphicMapType_5688)) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| (Array T@Ref T@Field_2979_53 Bool)) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| (Array T@Ref T@Field_2979_5213 T@Ref)) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| (Array T@Ref T@Field_2979_1195 Int)) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| (Array T@Ref T@Field_5199_2980 T@FrameType)) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| (Array T@Ref T@Field_5199_1195 Int)) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| (Array T@Ref T@Field_5199_8543 T@PolymorphicMapType_5688)) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| (Array T@Ref T@Field_8553_8554 T@FrameType)) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| (Array T@Ref T@Field_8526_53 Bool)) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| (Array T@Ref T@Field_8526_5213 T@Ref)) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| (Array T@Ref T@Field_8526_1195 Int)) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| (Array T@Ref T@Field_9025_53 Bool)) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| (Array T@Ref T@Field_9025_5213 T@Ref)) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| (Array T@Ref T@Field_9025_1195 Int)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5139 T@PolymorphicMapType_5139) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5139 T@PolymorphicMapType_5139) Bool)
(declare-fun state (T@PolymorphicMapType_5139 T@PolymorphicMapType_5160) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5160) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5688)
(declare-fun wand (T@Ref Bool) T@Field_8526_1195)
(declare-fun IsWandField_2936_1195 (T@Field_8526_1195) Bool)
(declare-fun |wand#ft| (T@Ref Bool) T@Field_8553_8554)
(declare-fun IsWandField_2943_2944 (T@Field_8553_8554) Bool)
(declare-fun IsPredicateField_2936_1195 (T@Field_8526_1195) Bool)
(declare-fun IsPredicateField_2943_2944 (T@Field_8553_8554) Bool)
(declare-fun P (T@Ref) T@Field_9025_9026)
(declare-fun IsPredicateField_2955_2956 (T@Field_9025_9026) Bool)
(declare-fun Q (T@Ref) T@Field_9788_9789)
(declare-fun IsPredicateField_2979_2980 (T@Field_9788_9789) Bool)
(declare-fun |P#trigger_2955| (T@PolymorphicMapType_5139 T@Field_9025_9026) Bool)
(declare-fun |P#everUsed_2955| (T@Field_9025_9026) Bool)
(declare-fun |Q#trigger_2979| (T@PolymorphicMapType_5139 T@Field_9788_9789) Bool)
(declare-fun |Q#everUsed_2979| (T@Field_9788_9789) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5139 T@PolymorphicMapType_5139 T@PolymorphicMapType_5160) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2955 (T@Field_9025_9026) T@Field_9038_9043)
(declare-fun HasDirectPerm_9025_2980 (T@PolymorphicMapType_5160 T@Ref T@Field_9025_9026) Bool)
(declare-fun PredicateMaskField_8526 (T@Field_8553_8554) T@Field_8538_8543)
(declare-fun HasDirectPerm_8526_2980 (T@PolymorphicMapType_5160 T@Ref T@Field_8553_8554) Bool)
(declare-fun IsPredicateField_5199_20010 (T@Field_5199_2980) Bool)
(declare-fun PredicateMaskField_5199 (T@Field_5199_2980) T@Field_5199_8543)
(declare-fun HasDirectPerm_5199_2980 (T@PolymorphicMapType_5160 T@Ref T@Field_5199_2980) Bool)
(declare-fun PredicateMaskField_2979 (T@Field_9788_9789) T@Field_9801_9806)
(declare-fun HasDirectPerm_2979_2980 (T@PolymorphicMapType_5160 T@Ref T@Field_9788_9789) Bool)
(declare-fun IsWandField_9025_27397 (T@Field_9025_9026) Bool)
(declare-fun WandMaskField_9025 (T@Field_9025_9026) T@Field_9038_9043)
(declare-fun WandMaskField_2943 (T@Field_8553_8554) T@Field_8538_8543)
(declare-fun IsWandField_5199_26715 (T@Field_5199_2980) Bool)
(declare-fun WandMaskField_5199 (T@Field_5199_2980) T@Field_5199_8543)
(declare-fun IsWandField_2979_26358 (T@Field_9788_9789) Bool)
(declare-fun WandMaskField_2979 (T@Field_9788_9789) T@Field_9801_9806)
(declare-fun |P#sm| (T@Ref) T@Field_9038_9043)
(declare-fun |Q#sm| (T@Ref) T@Field_9801_9806)
(declare-fun dummyHeap () T@PolymorphicMapType_5139)
(declare-fun ZeroMask () T@PolymorphicMapType_5160)
(declare-fun $allocated () T@Field_5199_53)
(declare-fun InsidePredicate_9788_9788 (T@Field_9788_9789 T@FrameType T@Field_9788_9789 T@FrameType) Bool)
(declare-fun InsidePredicate_9025_9025 (T@Field_9025_9026 T@FrameType T@Field_9025_9026 T@FrameType) Bool)
(declare-fun InsidePredicate_8526_8526 (T@Field_8553_8554 T@FrameType T@Field_8553_8554 T@FrameType) Bool)
(declare-fun InsidePredicate_5199_5199 (T@Field_5199_2980 T@FrameType T@Field_5199_2980 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5199_41116 (T@Field_5199_8543) Bool)
(declare-fun IsWandField_5199_41132 (T@Field_5199_8543) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5199_5213 (T@Field_5212_5213) Bool)
(declare-fun IsWandField_5199_5213 (T@Field_5212_5213) Bool)
(declare-fun IsPredicateField_5199_53 (T@Field_5199_53) Bool)
(declare-fun IsWandField_5199_53 (T@Field_5199_53) Bool)
(declare-fun IsPredicateField_5199_1195 (T@Field_5199_1195) Bool)
(declare-fun IsWandField_5199_1195 (T@Field_5199_1195) Bool)
(declare-fun IsPredicateField_2936_40285 (T@Field_8538_8543) Bool)
(declare-fun IsWandField_2936_40301 (T@Field_8538_8543) Bool)
(declare-fun IsPredicateField_2936_5213 (T@Field_8526_5213) Bool)
(declare-fun IsWandField_2936_5213 (T@Field_8526_5213) Bool)
(declare-fun IsPredicateField_2936_53 (T@Field_8526_53) Bool)
(declare-fun IsWandField_2936_53 (T@Field_8526_53) Bool)
(declare-fun IsPredicateField_2979_39468 (T@Field_9801_9806) Bool)
(declare-fun IsWandField_2979_39484 (T@Field_9801_9806) Bool)
(declare-fun IsPredicateField_2979_5213 (T@Field_2979_5213) Bool)
(declare-fun IsWandField_2979_5213 (T@Field_2979_5213) Bool)
(declare-fun IsPredicateField_2979_53 (T@Field_2979_53) Bool)
(declare-fun IsWandField_2979_53 (T@Field_2979_53) Bool)
(declare-fun IsPredicateField_2979_1195 (T@Field_2979_1195) Bool)
(declare-fun IsWandField_2979_1195 (T@Field_2979_1195) Bool)
(declare-fun IsPredicateField_2955_38637 (T@Field_9038_9043) Bool)
(declare-fun IsWandField_2955_38653 (T@Field_9038_9043) Bool)
(declare-fun IsPredicateField_2955_5213 (T@Field_9025_5213) Bool)
(declare-fun IsWandField_2955_5213 (T@Field_9025_5213) Bool)
(declare-fun IsPredicateField_2955_53 (T@Field_9025_53) Bool)
(declare-fun IsWandField_2955_53 (T@Field_9025_53) Bool)
(declare-fun IsPredicateField_2955_1195 (T@Field_9025_1195) Bool)
(declare-fun IsWandField_2955_1195 (T@Field_9025_1195) Bool)
(declare-fun HasDirectPerm_9025_19440 (T@PolymorphicMapType_5160 T@Ref T@Field_9038_9043) Bool)
(declare-fun HasDirectPerm_9025_1195 (T@PolymorphicMapType_5160 T@Ref T@Field_9025_1195) Bool)
(declare-fun HasDirectPerm_9025_5213 (T@PolymorphicMapType_5160 T@Ref T@Field_9025_5213) Bool)
(declare-fun HasDirectPerm_9025_53 (T@PolymorphicMapType_5160 T@Ref T@Field_9025_53) Bool)
(declare-fun HasDirectPerm_8526_18322 (T@PolymorphicMapType_5160 T@Ref T@Field_8538_8543) Bool)
(declare-fun HasDirectPerm_8526_1195 (T@PolymorphicMapType_5160 T@Ref T@Field_8526_1195) Bool)
(declare-fun HasDirectPerm_8526_5213 (T@PolymorphicMapType_5160 T@Ref T@Field_8526_5213) Bool)
(declare-fun HasDirectPerm_8526_53 (T@PolymorphicMapType_5160 T@Ref T@Field_8526_53) Bool)
(declare-fun HasDirectPerm_5199_17145 (T@PolymorphicMapType_5160 T@Ref T@Field_5199_8543) Bool)
(declare-fun HasDirectPerm_5199_1195 (T@PolymorphicMapType_5160 T@Ref T@Field_5199_1195) Bool)
(declare-fun HasDirectPerm_5199_5213 (T@PolymorphicMapType_5160 T@Ref T@Field_5212_5213) Bool)
(declare-fun HasDirectPerm_5199_53 (T@PolymorphicMapType_5160 T@Ref T@Field_5199_53) Bool)
(declare-fun HasDirectPerm_2979_16039 (T@PolymorphicMapType_5160 T@Ref T@Field_9801_9806) Bool)
(declare-fun HasDirectPerm_2979_1195 (T@PolymorphicMapType_5160 T@Ref T@Field_2979_1195) Bool)
(declare-fun HasDirectPerm_2979_5213 (T@PolymorphicMapType_5160 T@Ref T@Field_2979_5213) Bool)
(declare-fun HasDirectPerm_2979_53 (T@PolymorphicMapType_5160 T@Ref T@Field_2979_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5160 T@PolymorphicMapType_5160 T@PolymorphicMapType_5160) Bool)
(declare-fun getPredWandId_2936_1195 (T@Field_8526_1195) Int)
(declare-fun getPredWandId_2955_2956 (T@Field_9025_9026) Int)
(declare-fun getPredWandId_2979_2980 (T@Field_9788_9789) Int)
(declare-fun |wand#sm| (T@Ref Bool) T@Field_8538_8543)
(declare-fun InsidePredicate_9788_9025 (T@Field_9788_9789 T@FrameType T@Field_9025_9026 T@FrameType) Bool)
(declare-fun InsidePredicate_9788_8526 (T@Field_9788_9789 T@FrameType T@Field_8553_8554 T@FrameType) Bool)
(declare-fun InsidePredicate_9788_5199 (T@Field_9788_9789 T@FrameType T@Field_5199_2980 T@FrameType) Bool)
(declare-fun InsidePredicate_9025_9788 (T@Field_9025_9026 T@FrameType T@Field_9788_9789 T@FrameType) Bool)
(declare-fun InsidePredicate_9025_8526 (T@Field_9025_9026 T@FrameType T@Field_8553_8554 T@FrameType) Bool)
(declare-fun InsidePredicate_9025_5199 (T@Field_9025_9026 T@FrameType T@Field_5199_2980 T@FrameType) Bool)
(declare-fun InsidePredicate_8526_9788 (T@Field_8553_8554 T@FrameType T@Field_9788_9789 T@FrameType) Bool)
(declare-fun InsidePredicate_8526_9025 (T@Field_8553_8554 T@FrameType T@Field_9025_9026 T@FrameType) Bool)
(declare-fun InsidePredicate_8526_5199 (T@Field_8553_8554 T@FrameType T@Field_5199_2980 T@FrameType) Bool)
(declare-fun InsidePredicate_5199_9788 (T@Field_5199_2980 T@FrameType T@Field_9788_9789 T@FrameType) Bool)
(declare-fun InsidePredicate_5199_9025 (T@Field_5199_2980 T@FrameType T@Field_9025_9026 T@FrameType) Bool)
(declare-fun InsidePredicate_5199_8526 (T@Field_5199_2980 T@FrameType T@Field_8553_8554 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5139) (Heap1 T@PolymorphicMapType_5139) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5139) (Mask T@PolymorphicMapType_5160) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5139) (Heap1@@0 T@PolymorphicMapType_5139) (Heap2 T@PolymorphicMapType_5139) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9788_9789) ) (!  (not (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9801_9806) ) (!  (not (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2979_1195) ) (!  (not (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2979_5213) ) (!  (not (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2979_53) ) (!  (not (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9025_9026) ) (!  (not (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9038_9043) ) (!  (not (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9025_1195) ) (!  (not (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9025_5213) ) (!  (not (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9025_53) ) (!  (not (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8553_8554) ) (!  (not (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8538_8543) ) (!  (not (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_8526_1195) ) (!  (not (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8526_5213) ) (!  (not (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8526_53) ) (!  (not (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5199_2980) ) (!  (not (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5199_8543) ) (!  (not (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5199_1195) ) (!  (not (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5212_5213) ) (!  (not (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_5199_53) ) (!  (not (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((arg1 T@Ref) (arg2 Bool) ) (! (IsWandField_2936_1195 (wand arg1 arg2))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Bool) ) (! (IsWandField_2943_2944 (|wand#ft| arg1@@0 arg2@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Bool) ) (!  (not (IsPredicateField_2936_1195 (wand arg1@@1 arg2@@1)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Bool) ) (!  (not (IsPredicateField_2943_2944 (|wand#ft| arg1@@2 arg2@@2)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_2955_2956 (P x))
 :qid |stdinbpl.224:15|
 :skolemid |30|
 :pattern ( (P x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_2979_2980 (Q x@@0))
 :qid |stdinbpl.274:15|
 :skolemid |36|
 :pattern ( (Q x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5139) (x@@1 T@Ref) ) (! (|P#everUsed_2955| (P x@@1))
 :qid |stdinbpl.243:15|
 :skolemid |34|
 :pattern ( (|P#trigger_2955| Heap@@0 (P x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5139) (x@@2 T@Ref) ) (! (|Q#everUsed_2979| (Q x@@2))
 :qid |stdinbpl.293:15|
 :skolemid |40|
 :pattern ( (|Q#trigger_2979| Heap@@1 (Q x@@2)))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Bool) (arg1_2 T@Ref) (arg2_2 Bool) ) (!  (=> (= (wand arg1@@3 arg2@@3) (wand arg1_2 arg2_2)) (and (= arg1@@3 arg1_2) (= arg2@@3 arg2_2)))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@3 arg2@@3) (wand arg1_2 arg2_2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5139) (ExhaleHeap T@PolymorphicMapType_5139) (Mask@@0 T@PolymorphicMapType_5160) (pm_f_5 T@Field_9025_9026) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9025_2980 Mask@@0 null pm_f_5) (IsPredicateField_2955_2956 pm_f_5)) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@2) null (PredicateMaskField_2955 pm_f_5)) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap) null (PredicateMaskField_2955 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_2955_2956 pm_f_5) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap) null (PredicateMaskField_2955 pm_f_5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5139) (ExhaleHeap@@0 T@PolymorphicMapType_5139) (Mask@@1 T@PolymorphicMapType_5160) (pm_f_5@@0 T@Field_8553_8554) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8526_2980 Mask@@1 null pm_f_5@@0) (IsPredicateField_2943_2944 pm_f_5@@0)) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@3) null (PredicateMaskField_8526 pm_f_5@@0)) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@0) null (PredicateMaskField_8526 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2943_2944 pm_f_5@@0) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@0) null (PredicateMaskField_8526 pm_f_5@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5139) (ExhaleHeap@@1 T@PolymorphicMapType_5139) (Mask@@2 T@PolymorphicMapType_5160) (pm_f_5@@1 T@Field_5199_2980) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5199_2980 Mask@@2 null pm_f_5@@1) (IsPredicateField_5199_20010 pm_f_5@@1)) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@4) null (PredicateMaskField_5199 pm_f_5@@1)) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@1) null (PredicateMaskField_5199 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5199_20010 pm_f_5@@1) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@1) null (PredicateMaskField_5199 pm_f_5@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5139) (ExhaleHeap@@2 T@PolymorphicMapType_5139) (Mask@@3 T@PolymorphicMapType_5160) (pm_f_5@@2 T@Field_9788_9789) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2979_2980 Mask@@3 null pm_f_5@@2) (IsPredicateField_2979_2980 pm_f_5@@2)) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@5) null (PredicateMaskField_2979 pm_f_5@@2)) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@2) null (PredicateMaskField_2979 pm_f_5@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_2979_2980 pm_f_5@@2) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@2) null (PredicateMaskField_2979 pm_f_5@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5139) (ExhaleHeap@@3 T@PolymorphicMapType_5139) (Mask@@4 T@PolymorphicMapType_5160) (pm_f_5@@3 T@Field_9025_9026) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9025_2980 Mask@@4 null pm_f_5@@3) (IsWandField_9025_27397 pm_f_5@@3)) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@6) null (WandMaskField_9025 pm_f_5@@3)) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@3) null (WandMaskField_9025 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_9025_27397 pm_f_5@@3) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@3) null (WandMaskField_9025 pm_f_5@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5139) (ExhaleHeap@@4 T@PolymorphicMapType_5139) (Mask@@5 T@PolymorphicMapType_5160) (pm_f_5@@4 T@Field_8553_8554) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8526_2980 Mask@@5 null pm_f_5@@4) (IsWandField_2943_2944 pm_f_5@@4)) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@7) null (WandMaskField_2943 pm_f_5@@4)) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@4) null (WandMaskField_2943 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_2943_2944 pm_f_5@@4) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@4) null (WandMaskField_2943 pm_f_5@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5139) (ExhaleHeap@@5 T@PolymorphicMapType_5139) (Mask@@6 T@PolymorphicMapType_5160) (pm_f_5@@5 T@Field_5199_2980) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5199_2980 Mask@@6 null pm_f_5@@5) (IsWandField_5199_26715 pm_f_5@@5)) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@8) null (WandMaskField_5199 pm_f_5@@5)) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@5) null (WandMaskField_5199 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_5199_26715 pm_f_5@@5) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@5) null (WandMaskField_5199 pm_f_5@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5139) (ExhaleHeap@@6 T@PolymorphicMapType_5139) (Mask@@7 T@PolymorphicMapType_5160) (pm_f_5@@6 T@Field_9788_9789) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2979_2980 Mask@@7 null pm_f_5@@6) (IsWandField_2979_26358 pm_f_5@@6)) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@9) null (WandMaskField_2979 pm_f_5@@6)) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@6) null (WandMaskField_2979 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_2979_26358 pm_f_5@@6) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@6) null (WandMaskField_2979 pm_f_5@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5139) (ExhaleHeap@@7 T@PolymorphicMapType_5139) (Mask@@8 T@PolymorphicMapType_5160) (pm_f_5@@7 T@Field_9025_9026) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_9025_2980 Mask@@8 null pm_f_5@@7) (IsPredicateField_2955_2956 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5 f_16) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@10) o2_5 f_16) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@10) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@10) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@10) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@10) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@10) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@10) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@10) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@10) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@10) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@8 f_16@@8))
))) (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@10) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@9 f_16@@9))
))) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@10) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@10) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@10) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@10) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@10) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@10) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@10) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@10) null (PredicateMaskField_2955 pm_f_5@@7))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@10) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@7) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_2955_2956 pm_f_5@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5139) (ExhaleHeap@@8 T@PolymorphicMapType_5139) (Mask@@9 T@PolymorphicMapType_5160) (pm_f_5@@8 T@Field_8553_8554) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_8526_2980 Mask@@9 null pm_f_5@@8) (IsPredicateField_2943_2944 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@11) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@11) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@11) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@11) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@11) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@11) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@11) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@11) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@11) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@28 f_16@@28))
))) (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@11) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@29 f_16@@29))
))) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@11) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@11) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@11) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@11) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@11) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@11) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@11) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@11) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@11) null (PredicateMaskField_8526 pm_f_5@@8))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@11) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@8) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_2943_2944 pm_f_5@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5139) (ExhaleHeap@@9 T@PolymorphicMapType_5139) (Mask@@10 T@PolymorphicMapType_5160) (pm_f_5@@9 T@Field_5199_2980) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_5199_2980 Mask@@10 null pm_f_5@@9) (IsPredicateField_5199_20010 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@39 T@Ref) (f_16@@39 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@39 f_16@@39) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@12) o2_5@@39 f_16@@39) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@39 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@39 f_16@@39))
)) (forall ((o2_5@@40 T@Ref) (f_16@@40 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@40 f_16@@40) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@12) o2_5@@40 f_16@@40) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@40 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@40 f_16@@40))
))) (forall ((o2_5@@41 T@Ref) (f_16@@41 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@41 f_16@@41) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@12) o2_5@@41 f_16@@41) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@41 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@41 f_16@@41))
))) (forall ((o2_5@@42 T@Ref) (f_16@@42 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@42 f_16@@42) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) o2_5@@42 f_16@@42) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@42 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@42 f_16@@42))
))) (forall ((o2_5@@43 T@Ref) (f_16@@43 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@43 f_16@@43) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@12) o2_5@@43 f_16@@43) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@43 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@43 f_16@@43))
))) (forall ((o2_5@@44 T@Ref) (f_16@@44 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@44 f_16@@44) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@12) o2_5@@44 f_16@@44) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@44 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@44 f_16@@44))
))) (forall ((o2_5@@45 T@Ref) (f_16@@45 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@45 f_16@@45) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@12) o2_5@@45 f_16@@45) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@45 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@45 f_16@@45))
))) (forall ((o2_5@@46 T@Ref) (f_16@@46 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@46 f_16@@46) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@12) o2_5@@46 f_16@@46) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@46 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@46 f_16@@46))
))) (forall ((o2_5@@47 T@Ref) (f_16@@47 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@47 f_16@@47) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@12) o2_5@@47 f_16@@47) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@47 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@47 f_16@@47))
))) (forall ((o2_5@@48 T@Ref) (f_16@@48 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@48 f_16@@48) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@12) o2_5@@48 f_16@@48) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@48 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@48 f_16@@48))
))) (forall ((o2_5@@49 T@Ref) (f_16@@49 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@49 f_16@@49) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@12) o2_5@@49 f_16@@49) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@49 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@49 f_16@@49))
))) (forall ((o2_5@@50 T@Ref) (f_16@@50 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@50 f_16@@50) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@12) o2_5@@50 f_16@@50) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@50 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@50 f_16@@50))
))) (forall ((o2_5@@51 T@Ref) (f_16@@51 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@51 f_16@@51) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@12) o2_5@@51 f_16@@51) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@51 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@51 f_16@@51))
))) (forall ((o2_5@@52 T@Ref) (f_16@@52 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@52 f_16@@52) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@12) o2_5@@52 f_16@@52) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@52 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@52 f_16@@52))
))) (forall ((o2_5@@53 T@Ref) (f_16@@53 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@53 f_16@@53) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@12) o2_5@@53 f_16@@53) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@53 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@53 f_16@@53))
))) (forall ((o2_5@@54 T@Ref) (f_16@@54 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@54 f_16@@54) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@12) o2_5@@54 f_16@@54) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@54 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@54 f_16@@54))
))) (forall ((o2_5@@55 T@Ref) (f_16@@55 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@55 f_16@@55) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@12) o2_5@@55 f_16@@55) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@55 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@55 f_16@@55))
))) (forall ((o2_5@@56 T@Ref) (f_16@@56 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@56 f_16@@56) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@12) o2_5@@56 f_16@@56) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@56 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@56 f_16@@56))
))) (forall ((o2_5@@57 T@Ref) (f_16@@57 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@57 f_16@@57) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@12) o2_5@@57 f_16@@57) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@57 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@57 f_16@@57))
))) (forall ((o2_5@@58 T@Ref) (f_16@@58 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@12) null (PredicateMaskField_5199 pm_f_5@@9))) o2_5@@58 f_16@@58) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@12) o2_5@@58 f_16@@58) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@58 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@9) o2_5@@58 f_16@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_5199_20010 pm_f_5@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5139) (ExhaleHeap@@10 T@PolymorphicMapType_5139) (Mask@@11 T@PolymorphicMapType_5160) (pm_f_5@@10 T@Field_9788_9789) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_2979_2980 Mask@@11 null pm_f_5@@10) (IsPredicateField_2979_2980 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_16@@59 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@59 f_16@@59) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@13) o2_5@@59 f_16@@59) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@59 f_16@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@59 f_16@@59))
)) (forall ((o2_5@@60 T@Ref) (f_16@@60 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@60 f_16@@60) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@13) o2_5@@60 f_16@@60) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@60 f_16@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@60 f_16@@60))
))) (forall ((o2_5@@61 T@Ref) (f_16@@61 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@61 f_16@@61) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@13) o2_5@@61 f_16@@61) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@61 f_16@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@61 f_16@@61))
))) (forall ((o2_5@@62 T@Ref) (f_16@@62 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@62 f_16@@62) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@13) o2_5@@62 f_16@@62) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@62 f_16@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@62 f_16@@62))
))) (forall ((o2_5@@63 T@Ref) (f_16@@63 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@63 f_16@@63) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@13) o2_5@@63 f_16@@63) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@63 f_16@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@63 f_16@@63))
))) (forall ((o2_5@@64 T@Ref) (f_16@@64 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@64 f_16@@64) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@13) o2_5@@64 f_16@@64) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@64 f_16@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@64 f_16@@64))
))) (forall ((o2_5@@65 T@Ref) (f_16@@65 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@65 f_16@@65) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@13) o2_5@@65 f_16@@65) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@65 f_16@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@65 f_16@@65))
))) (forall ((o2_5@@66 T@Ref) (f_16@@66 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@66 f_16@@66) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@13) o2_5@@66 f_16@@66) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@66 f_16@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@66 f_16@@66))
))) (forall ((o2_5@@67 T@Ref) (f_16@@67 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@67 f_16@@67) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@13) o2_5@@67 f_16@@67) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@67 f_16@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@67 f_16@@67))
))) (forall ((o2_5@@68 T@Ref) (f_16@@68 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@68 f_16@@68) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@13) o2_5@@68 f_16@@68) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@68 f_16@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@68 f_16@@68))
))) (forall ((o2_5@@69 T@Ref) (f_16@@69 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@69 f_16@@69) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@13) o2_5@@69 f_16@@69) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@69 f_16@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@69 f_16@@69))
))) (forall ((o2_5@@70 T@Ref) (f_16@@70 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@70 f_16@@70) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@13) o2_5@@70 f_16@@70) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@70 f_16@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@70 f_16@@70))
))) (forall ((o2_5@@71 T@Ref) (f_16@@71 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@71 f_16@@71) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@13) o2_5@@71 f_16@@71) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@71 f_16@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@71 f_16@@71))
))) (forall ((o2_5@@72 T@Ref) (f_16@@72 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@72 f_16@@72) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@13) o2_5@@72 f_16@@72) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@72 f_16@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@72 f_16@@72))
))) (forall ((o2_5@@73 T@Ref) (f_16@@73 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@73 f_16@@73) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@13) o2_5@@73 f_16@@73) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@73 f_16@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@73 f_16@@73))
))) (forall ((o2_5@@74 T@Ref) (f_16@@74 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@74 f_16@@74) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@13) o2_5@@74 f_16@@74) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@74 f_16@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@74 f_16@@74))
))) (forall ((o2_5@@75 T@Ref) (f_16@@75 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@75 f_16@@75) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@13) o2_5@@75 f_16@@75) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@75 f_16@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@75 f_16@@75))
))) (forall ((o2_5@@76 T@Ref) (f_16@@76 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@76 f_16@@76) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@13) o2_5@@76 f_16@@76) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@76 f_16@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@76 f_16@@76))
))) (forall ((o2_5@@77 T@Ref) (f_16@@77 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@77 f_16@@77) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) o2_5@@77 f_16@@77) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@77 f_16@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@77 f_16@@77))
))) (forall ((o2_5@@78 T@Ref) (f_16@@78 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@13) null (PredicateMaskField_2979 pm_f_5@@10))) o2_5@@78 f_16@@78) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@13) o2_5@@78 f_16@@78) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@78 f_16@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@10) o2_5@@78 f_16@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_2979_2980 pm_f_5@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5139) (ExhaleHeap@@11 T@PolymorphicMapType_5139) (Mask@@12 T@PolymorphicMapType_5160) (pm_f_5@@11 T@Field_9025_9026) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_9025_2980 Mask@@12 null pm_f_5@@11) (IsWandField_9025_27397 pm_f_5@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@79 T@Ref) (f_16@@79 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@79 f_16@@79) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@14) o2_5@@79 f_16@@79) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@79 f_16@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@79 f_16@@79))
)) (forall ((o2_5@@80 T@Ref) (f_16@@80 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@80 f_16@@80) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@14) o2_5@@80 f_16@@80) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@80 f_16@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@80 f_16@@80))
))) (forall ((o2_5@@81 T@Ref) (f_16@@81 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@81 f_16@@81) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@14) o2_5@@81 f_16@@81) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@81 f_16@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@81 f_16@@81))
))) (forall ((o2_5@@82 T@Ref) (f_16@@82 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@82 f_16@@82) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@14) o2_5@@82 f_16@@82) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@82 f_16@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@82 f_16@@82))
))) (forall ((o2_5@@83 T@Ref) (f_16@@83 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@83 f_16@@83) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@14) o2_5@@83 f_16@@83) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@83 f_16@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@83 f_16@@83))
))) (forall ((o2_5@@84 T@Ref) (f_16@@84 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@84 f_16@@84) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@14) o2_5@@84 f_16@@84) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@84 f_16@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@84 f_16@@84))
))) (forall ((o2_5@@85 T@Ref) (f_16@@85 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@85 f_16@@85) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@14) o2_5@@85 f_16@@85) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@85 f_16@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@85 f_16@@85))
))) (forall ((o2_5@@86 T@Ref) (f_16@@86 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@86 f_16@@86) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@14) o2_5@@86 f_16@@86) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@86 f_16@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@86 f_16@@86))
))) (forall ((o2_5@@87 T@Ref) (f_16@@87 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@87 f_16@@87) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@14) o2_5@@87 f_16@@87) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@87 f_16@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@87 f_16@@87))
))) (forall ((o2_5@@88 T@Ref) (f_16@@88 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@88 f_16@@88) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@14) o2_5@@88 f_16@@88) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@88 f_16@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@88 f_16@@88))
))) (forall ((o2_5@@89 T@Ref) (f_16@@89 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@89 f_16@@89) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@14) o2_5@@89 f_16@@89) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@89 f_16@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@89 f_16@@89))
))) (forall ((o2_5@@90 T@Ref) (f_16@@90 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@90 f_16@@90) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@14) o2_5@@90 f_16@@90) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@90 f_16@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@90 f_16@@90))
))) (forall ((o2_5@@91 T@Ref) (f_16@@91 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@91 f_16@@91) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@14) o2_5@@91 f_16@@91) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@91 f_16@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@91 f_16@@91))
))) (forall ((o2_5@@92 T@Ref) (f_16@@92 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@92 f_16@@92) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) o2_5@@92 f_16@@92) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@92 f_16@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@92 f_16@@92))
))) (forall ((o2_5@@93 T@Ref) (f_16@@93 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@93 f_16@@93) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@14) o2_5@@93 f_16@@93) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@93 f_16@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@93 f_16@@93))
))) (forall ((o2_5@@94 T@Ref) (f_16@@94 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@94 f_16@@94) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@14) o2_5@@94 f_16@@94) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@94 f_16@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@94 f_16@@94))
))) (forall ((o2_5@@95 T@Ref) (f_16@@95 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@95 f_16@@95) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@14) o2_5@@95 f_16@@95) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@95 f_16@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@95 f_16@@95))
))) (forall ((o2_5@@96 T@Ref) (f_16@@96 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@96 f_16@@96) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@14) o2_5@@96 f_16@@96) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@96 f_16@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@96 f_16@@96))
))) (forall ((o2_5@@97 T@Ref) (f_16@@97 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@97 f_16@@97) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@14) o2_5@@97 f_16@@97) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@97 f_16@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@97 f_16@@97))
))) (forall ((o2_5@@98 T@Ref) (f_16@@98 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@14) null (WandMaskField_9025 pm_f_5@@11))) o2_5@@98 f_16@@98) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@14) o2_5@@98 f_16@@98) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@98 f_16@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@11) o2_5@@98 f_16@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_9025_27397 pm_f_5@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5139) (ExhaleHeap@@12 T@PolymorphicMapType_5139) (Mask@@13 T@PolymorphicMapType_5160) (pm_f_5@@12 T@Field_8553_8554) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_8526_2980 Mask@@13 null pm_f_5@@12) (IsWandField_2943_2944 pm_f_5@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@99 T@Ref) (f_16@@99 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@99 f_16@@99) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@15) o2_5@@99 f_16@@99) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@99 f_16@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@99 f_16@@99))
)) (forall ((o2_5@@100 T@Ref) (f_16@@100 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@100 f_16@@100) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@15) o2_5@@100 f_16@@100) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@100 f_16@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@100 f_16@@100))
))) (forall ((o2_5@@101 T@Ref) (f_16@@101 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@101 f_16@@101) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@15) o2_5@@101 f_16@@101) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@101 f_16@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@101 f_16@@101))
))) (forall ((o2_5@@102 T@Ref) (f_16@@102 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@102 f_16@@102) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@15) o2_5@@102 f_16@@102) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@102 f_16@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@102 f_16@@102))
))) (forall ((o2_5@@103 T@Ref) (f_16@@103 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@103 f_16@@103) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@15) o2_5@@103 f_16@@103) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@103 f_16@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@103 f_16@@103))
))) (forall ((o2_5@@104 T@Ref) (f_16@@104 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@104 f_16@@104) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@15) o2_5@@104 f_16@@104) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@104 f_16@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@104 f_16@@104))
))) (forall ((o2_5@@105 T@Ref) (f_16@@105 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@105 f_16@@105) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@15) o2_5@@105 f_16@@105) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@105 f_16@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@105 f_16@@105))
))) (forall ((o2_5@@106 T@Ref) (f_16@@106 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@106 f_16@@106) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@15) o2_5@@106 f_16@@106) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@106 f_16@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@106 f_16@@106))
))) (forall ((o2_5@@107 T@Ref) (f_16@@107 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@107 f_16@@107) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) o2_5@@107 f_16@@107) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@107 f_16@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@107 f_16@@107))
))) (forall ((o2_5@@108 T@Ref) (f_16@@108 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@108 f_16@@108) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@15) o2_5@@108 f_16@@108) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@108 f_16@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@108 f_16@@108))
))) (forall ((o2_5@@109 T@Ref) (f_16@@109 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@109 f_16@@109) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@15) o2_5@@109 f_16@@109) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@109 f_16@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@109 f_16@@109))
))) (forall ((o2_5@@110 T@Ref) (f_16@@110 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@110 f_16@@110) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@15) o2_5@@110 f_16@@110) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@110 f_16@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@110 f_16@@110))
))) (forall ((o2_5@@111 T@Ref) (f_16@@111 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@111 f_16@@111) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@15) o2_5@@111 f_16@@111) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@111 f_16@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@111 f_16@@111))
))) (forall ((o2_5@@112 T@Ref) (f_16@@112 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@112 f_16@@112) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@15) o2_5@@112 f_16@@112) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@112 f_16@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@112 f_16@@112))
))) (forall ((o2_5@@113 T@Ref) (f_16@@113 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@113 f_16@@113) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@15) o2_5@@113 f_16@@113) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@113 f_16@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@113 f_16@@113))
))) (forall ((o2_5@@114 T@Ref) (f_16@@114 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@114 f_16@@114) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@15) o2_5@@114 f_16@@114) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@114 f_16@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@114 f_16@@114))
))) (forall ((o2_5@@115 T@Ref) (f_16@@115 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@115 f_16@@115) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@15) o2_5@@115 f_16@@115) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@115 f_16@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@115 f_16@@115))
))) (forall ((o2_5@@116 T@Ref) (f_16@@116 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@116 f_16@@116) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@15) o2_5@@116 f_16@@116) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@116 f_16@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@116 f_16@@116))
))) (forall ((o2_5@@117 T@Ref) (f_16@@117 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@117 f_16@@117) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@15) o2_5@@117 f_16@@117) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@117 f_16@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@117 f_16@@117))
))) (forall ((o2_5@@118 T@Ref) (f_16@@118 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@15) null (WandMaskField_2943 pm_f_5@@12))) o2_5@@118 f_16@@118) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@15) o2_5@@118 f_16@@118) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@118 f_16@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@12) o2_5@@118 f_16@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_2943_2944 pm_f_5@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5139) (ExhaleHeap@@13 T@PolymorphicMapType_5139) (Mask@@14 T@PolymorphicMapType_5160) (pm_f_5@@13 T@Field_5199_2980) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_5199_2980 Mask@@14 null pm_f_5@@13) (IsWandField_5199_26715 pm_f_5@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@119 T@Ref) (f_16@@119 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@119 f_16@@119) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@16) o2_5@@119 f_16@@119) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@119 f_16@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@119 f_16@@119))
)) (forall ((o2_5@@120 T@Ref) (f_16@@120 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@120 f_16@@120) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@16) o2_5@@120 f_16@@120) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@120 f_16@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@120 f_16@@120))
))) (forall ((o2_5@@121 T@Ref) (f_16@@121 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@121 f_16@@121) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@16) o2_5@@121 f_16@@121) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@121 f_16@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@121 f_16@@121))
))) (forall ((o2_5@@122 T@Ref) (f_16@@122 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@122 f_16@@122) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) o2_5@@122 f_16@@122) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@122 f_16@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@122 f_16@@122))
))) (forall ((o2_5@@123 T@Ref) (f_16@@123 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@123 f_16@@123) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@16) o2_5@@123 f_16@@123) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@123 f_16@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@123 f_16@@123))
))) (forall ((o2_5@@124 T@Ref) (f_16@@124 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@124 f_16@@124) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@16) o2_5@@124 f_16@@124) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@124 f_16@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@124 f_16@@124))
))) (forall ((o2_5@@125 T@Ref) (f_16@@125 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@125 f_16@@125) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@16) o2_5@@125 f_16@@125) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@125 f_16@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@125 f_16@@125))
))) (forall ((o2_5@@126 T@Ref) (f_16@@126 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@126 f_16@@126) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@16) o2_5@@126 f_16@@126) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@126 f_16@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@126 f_16@@126))
))) (forall ((o2_5@@127 T@Ref) (f_16@@127 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@127 f_16@@127) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@16) o2_5@@127 f_16@@127) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@127 f_16@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@127 f_16@@127))
))) (forall ((o2_5@@128 T@Ref) (f_16@@128 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@128 f_16@@128) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@16) o2_5@@128 f_16@@128) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@128 f_16@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@128 f_16@@128))
))) (forall ((o2_5@@129 T@Ref) (f_16@@129 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@129 f_16@@129) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@16) o2_5@@129 f_16@@129) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@129 f_16@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@129 f_16@@129))
))) (forall ((o2_5@@130 T@Ref) (f_16@@130 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@130 f_16@@130) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@16) o2_5@@130 f_16@@130) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@130 f_16@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@130 f_16@@130))
))) (forall ((o2_5@@131 T@Ref) (f_16@@131 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@131 f_16@@131) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@16) o2_5@@131 f_16@@131) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@131 f_16@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@131 f_16@@131))
))) (forall ((o2_5@@132 T@Ref) (f_16@@132 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@132 f_16@@132) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@16) o2_5@@132 f_16@@132) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@132 f_16@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@132 f_16@@132))
))) (forall ((o2_5@@133 T@Ref) (f_16@@133 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@133 f_16@@133) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@16) o2_5@@133 f_16@@133) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@133 f_16@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@133 f_16@@133))
))) (forall ((o2_5@@134 T@Ref) (f_16@@134 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@134 f_16@@134) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@16) o2_5@@134 f_16@@134) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@134 f_16@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@134 f_16@@134))
))) (forall ((o2_5@@135 T@Ref) (f_16@@135 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@135 f_16@@135) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@16) o2_5@@135 f_16@@135) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@135 f_16@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@135 f_16@@135))
))) (forall ((o2_5@@136 T@Ref) (f_16@@136 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@136 f_16@@136) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@16) o2_5@@136 f_16@@136) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@136 f_16@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@136 f_16@@136))
))) (forall ((o2_5@@137 T@Ref) (f_16@@137 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@137 f_16@@137) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@16) o2_5@@137 f_16@@137) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@137 f_16@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@137 f_16@@137))
))) (forall ((o2_5@@138 T@Ref) (f_16@@138 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@16) null (WandMaskField_5199 pm_f_5@@13))) o2_5@@138 f_16@@138) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@16) o2_5@@138 f_16@@138) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@138 f_16@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@13) o2_5@@138 f_16@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_5199_26715 pm_f_5@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5139) (ExhaleHeap@@14 T@PolymorphicMapType_5139) (Mask@@15 T@PolymorphicMapType_5160) (pm_f_5@@14 T@Field_9788_9789) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_2979_2980 Mask@@15 null pm_f_5@@14) (IsWandField_2979_26358 pm_f_5@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@139 T@Ref) (f_16@@139 T@Field_5199_53) ) (!  (=> (select (|PolymorphicMapType_5688_5199_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@139 f_16@@139) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@17) o2_5@@139 f_16@@139) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@139 f_16@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@139 f_16@@139))
)) (forall ((o2_5@@140 T@Ref) (f_16@@140 T@Field_5212_5213) ) (!  (=> (select (|PolymorphicMapType_5688_5199_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@140 f_16@@140) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@17) o2_5@@140 f_16@@140) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@140 f_16@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@140 f_16@@140))
))) (forall ((o2_5@@141 T@Ref) (f_16@@141 T@Field_5199_1195) ) (!  (=> (select (|PolymorphicMapType_5688_5199_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@141 f_16@@141) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@17) o2_5@@141 f_16@@141) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@141 f_16@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@141 f_16@@141))
))) (forall ((o2_5@@142 T@Ref) (f_16@@142 T@Field_5199_8543) ) (!  (=> (select (|PolymorphicMapType_5688_5199_21640#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@142 f_16@@142) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@17) o2_5@@142 f_16@@142) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@142 f_16@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@142 f_16@@142))
))) (forall ((o2_5@@143 T@Ref) (f_16@@143 T@Field_5199_2980) ) (!  (=> (select (|PolymorphicMapType_5688_5199_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@143 f_16@@143) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@17) o2_5@@143 f_16@@143) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@143 f_16@@143)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@143 f_16@@143))
))) (forall ((o2_5@@144 T@Ref) (f_16@@144 T@Field_8526_53) ) (!  (=> (select (|PolymorphicMapType_5688_8526_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@144 f_16@@144) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@17) o2_5@@144 f_16@@144) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@144 f_16@@144)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@144 f_16@@144))
))) (forall ((o2_5@@145 T@Ref) (f_16@@145 T@Field_8526_5213) ) (!  (=> (select (|PolymorphicMapType_5688_8526_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@145 f_16@@145) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@17) o2_5@@145 f_16@@145) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@145 f_16@@145)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@145 f_16@@145))
))) (forall ((o2_5@@146 T@Ref) (f_16@@146 T@Field_8526_1195) ) (!  (=> (select (|PolymorphicMapType_5688_8526_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@146 f_16@@146) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@17) o2_5@@146 f_16@@146) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@146 f_16@@146)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@146 f_16@@146))
))) (forall ((o2_5@@147 T@Ref) (f_16@@147 T@Field_8538_8543) ) (!  (=> (select (|PolymorphicMapType_5688_8526_22688#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@147 f_16@@147) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@17) o2_5@@147 f_16@@147) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@147 f_16@@147)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@147 f_16@@147))
))) (forall ((o2_5@@148 T@Ref) (f_16@@148 T@Field_8553_8554) ) (!  (=> (select (|PolymorphicMapType_5688_8526_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@148 f_16@@148) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@17) o2_5@@148 f_16@@148) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@148 f_16@@148)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@148 f_16@@148))
))) (forall ((o2_5@@149 T@Ref) (f_16@@149 T@Field_9025_53) ) (!  (=> (select (|PolymorphicMapType_5688_9025_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@149 f_16@@149) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@17) o2_5@@149 f_16@@149) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@149 f_16@@149)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@149 f_16@@149))
))) (forall ((o2_5@@150 T@Ref) (f_16@@150 T@Field_9025_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9025_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@150 f_16@@150) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@17) o2_5@@150 f_16@@150) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@150 f_16@@150)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@150 f_16@@150))
))) (forall ((o2_5@@151 T@Ref) (f_16@@151 T@Field_9025_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9025_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@151 f_16@@151) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@17) o2_5@@151 f_16@@151) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@151 f_16@@151)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@151 f_16@@151))
))) (forall ((o2_5@@152 T@Ref) (f_16@@152 T@Field_9038_9043) ) (!  (=> (select (|PolymorphicMapType_5688_9025_23736#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@152 f_16@@152) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@17) o2_5@@152 f_16@@152) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@152 f_16@@152)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@152 f_16@@152))
))) (forall ((o2_5@@153 T@Ref) (f_16@@153 T@Field_9025_9026) ) (!  (=> (select (|PolymorphicMapType_5688_9025_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@153 f_16@@153) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@17) o2_5@@153 f_16@@153) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@153 f_16@@153)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@153 f_16@@153))
))) (forall ((o2_5@@154 T@Ref) (f_16@@154 T@Field_2979_53) ) (!  (=> (select (|PolymorphicMapType_5688_9788_53#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@154 f_16@@154) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@17) o2_5@@154 f_16@@154) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@154 f_16@@154)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@154 f_16@@154))
))) (forall ((o2_5@@155 T@Ref) (f_16@@155 T@Field_2979_5213) ) (!  (=> (select (|PolymorphicMapType_5688_9788_5213#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@155 f_16@@155) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@17) o2_5@@155 f_16@@155) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@155 f_16@@155)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@155 f_16@@155))
))) (forall ((o2_5@@156 T@Ref) (f_16@@156 T@Field_2979_1195) ) (!  (=> (select (|PolymorphicMapType_5688_9788_1195#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@156 f_16@@156) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@17) o2_5@@156 f_16@@156) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@156 f_16@@156)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@156 f_16@@156))
))) (forall ((o2_5@@157 T@Ref) (f_16@@157 T@Field_9801_9806) ) (!  (=> (select (|PolymorphicMapType_5688_9788_24784#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@157 f_16@@157) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) o2_5@@157 f_16@@157) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@157 f_16@@157)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@157 f_16@@157))
))) (forall ((o2_5@@158 T@Ref) (f_16@@158 T@Field_9788_9789) ) (!  (=> (select (|PolymorphicMapType_5688_9788_8554#PolymorphicMapType_5688| (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@17) null (WandMaskField_2979 pm_f_5@@14))) o2_5@@158 f_16@@158) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@17) o2_5@@158 f_16@@158) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@158 f_16@@158)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@14) o2_5@@158 f_16@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_2979_26358 pm_f_5@@14))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@3) (P x2)) (= x@@3 x2))
 :qid |stdinbpl.234:15|
 :skolemid |32|
 :pattern ( (P x@@3) (P x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@4) (|P#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.238:15|
 :skolemid |33|
 :pattern ( (|P#sm| x@@4) (|P#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@5) (Q x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.284:15|
 :skolemid |38|
 :pattern ( (Q x@@5) (Q x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@6) (|Q#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.288:15|
 :skolemid |39|
 :pattern ( (|Q#sm| x@@6) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5139) (ExhaleHeap@@15 T@PolymorphicMapType_5139) (Mask@@16 T@PolymorphicMapType_5160) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@18) o_12 $allocated) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@15) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@15) o_12 $allocated))
)))
(assert (forall ((p T@Field_9788_9789) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9788_9788 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9788_9788 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9025_9026) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9025_9025 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9025_9025 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8553_8554) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8526_8526 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8526_8526 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_5199_2980) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_5199_5199 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5199_5199 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5139) (ExhaleHeap@@16 T@PolymorphicMapType_5139) (Mask@@17 T@PolymorphicMapType_5160) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5160) (o_2@@19 T@Ref) (f_4@@19 T@Field_5199_8543) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5199_41116 f_4@@19))) (not (IsWandField_5199_41132 f_4@@19))) (<= (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5160) (o_2@@20 T@Ref) (f_4@@20 T@Field_5212_5213) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5199_5213 f_4@@20))) (not (IsWandField_5199_5213 f_4@@20))) (<= (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5160) (o_2@@21 T@Ref) (f_4@@21 T@Field_5199_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5199_53 f_4@@21))) (not (IsWandField_5199_53 f_4@@21))) (<= (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5160) (o_2@@22 T@Ref) (f_4@@22 T@Field_5199_1195) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5199_1195 f_4@@22))) (not (IsWandField_5199_1195 f_4@@22))) (<= (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5160) (o_2@@23 T@Ref) (f_4@@23 T@Field_5199_2980) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5199_20010 f_4@@23))) (not (IsWandField_5199_26715 f_4@@23))) (<= (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5160) (o_2@@24 T@Ref) (f_4@@24 T@Field_8538_8543) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_2936_40285 f_4@@24))) (not (IsWandField_2936_40301 f_4@@24))) (<= (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5160) (o_2@@25 T@Ref) (f_4@@25 T@Field_8526_5213) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_2936_5213 f_4@@25))) (not (IsWandField_2936_5213 f_4@@25))) (<= (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5160) (o_2@@26 T@Ref) (f_4@@26 T@Field_8526_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_2936_53 f_4@@26))) (not (IsWandField_2936_53 f_4@@26))) (<= (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5160) (o_2@@27 T@Ref) (f_4@@27 T@Field_8526_1195) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_2936_1195 f_4@@27))) (not (IsWandField_2936_1195 f_4@@27))) (<= (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5160) (o_2@@28 T@Ref) (f_4@@28 T@Field_8553_8554) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_2943_2944 f_4@@28))) (not (IsWandField_2943_2944 f_4@@28))) (<= (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5160) (o_2@@29 T@Ref) (f_4@@29 T@Field_9801_9806) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_2979_39468 f_4@@29))) (not (IsWandField_2979_39484 f_4@@29))) (<= (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5160) (o_2@@30 T@Ref) (f_4@@30 T@Field_2979_5213) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_2979_5213 f_4@@30))) (not (IsWandField_2979_5213 f_4@@30))) (<= (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5160) (o_2@@31 T@Ref) (f_4@@31 T@Field_2979_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_2979_53 f_4@@31))) (not (IsWandField_2979_53 f_4@@31))) (<= (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5160) (o_2@@32 T@Ref) (f_4@@32 T@Field_2979_1195) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_2979_1195 f_4@@32))) (not (IsWandField_2979_1195 f_4@@32))) (<= (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5160) (o_2@@33 T@Ref) (f_4@@33 T@Field_9788_9789) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_2979_2980 f_4@@33))) (not (IsWandField_2979_26358 f_4@@33))) (<= (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5160) (o_2@@34 T@Ref) (f_4@@34 T@Field_9038_9043) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_2955_38637 f_4@@34))) (not (IsWandField_2955_38653 f_4@@34))) (<= (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5160) (o_2@@35 T@Ref) (f_4@@35 T@Field_9025_5213) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_2955_5213 f_4@@35))) (not (IsWandField_2955_5213 f_4@@35))) (<= (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5160) (o_2@@36 T@Ref) (f_4@@36 T@Field_9025_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_2955_53 f_4@@36))) (not (IsWandField_2955_53 f_4@@36))) (<= (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5160) (o_2@@37 T@Ref) (f_4@@37 T@Field_9025_1195) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_2955_1195 f_4@@37))) (not (IsWandField_2955_1195 f_4@@37))) (<= (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5160) (o_2@@38 T@Ref) (f_4@@38 T@Field_9025_9026) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_2955_2956 f_4@@38))) (not (IsWandField_9025_27397 f_4@@38))) (<= (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_5160) (o_2@@39 T@Ref) (f_4@@39 T@Field_9038_9043) ) (! (= (HasDirectPerm_9025_19440 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9025_19440 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_5160) (o_2@@40 T@Ref) (f_4@@40 T@Field_9025_1195) ) (! (= (HasDirectPerm_9025_1195 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9025_1195 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_5160) (o_2@@41 T@Ref) (f_4@@41 T@Field_9025_5213) ) (! (= (HasDirectPerm_9025_5213 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9025_5213 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_5160) (o_2@@42 T@Ref) (f_4@@42 T@Field_9025_53) ) (! (= (HasDirectPerm_9025_53 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9025_53 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_5160) (o_2@@43 T@Ref) (f_4@@43 T@Field_9025_9026) ) (! (= (HasDirectPerm_9025_2980 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9025_2980 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_5160) (o_2@@44 T@Ref) (f_4@@44 T@Field_8538_8543) ) (! (= (HasDirectPerm_8526_18322 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8526_18322 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_5160) (o_2@@45 T@Ref) (f_4@@45 T@Field_8526_1195) ) (! (= (HasDirectPerm_8526_1195 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8526_1195 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_5160) (o_2@@46 T@Ref) (f_4@@46 T@Field_8526_5213) ) (! (= (HasDirectPerm_8526_5213 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8526_5213 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_5160) (o_2@@47 T@Ref) (f_4@@47 T@Field_8526_53) ) (! (= (HasDirectPerm_8526_53 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8526_53 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_5160) (o_2@@48 T@Ref) (f_4@@48 T@Field_8553_8554) ) (! (= (HasDirectPerm_8526_2980 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8526_2980 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_5160) (o_2@@49 T@Ref) (f_4@@49 T@Field_5199_8543) ) (! (= (HasDirectPerm_5199_17145 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5199_17145 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_5160) (o_2@@50 T@Ref) (f_4@@50 T@Field_5199_1195) ) (! (= (HasDirectPerm_5199_1195 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5199_1195 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_5160) (o_2@@51 T@Ref) (f_4@@51 T@Field_5212_5213) ) (! (= (HasDirectPerm_5199_5213 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5199_5213 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_5160) (o_2@@52 T@Ref) (f_4@@52 T@Field_5199_53) ) (! (= (HasDirectPerm_5199_53 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5199_53 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_5160) (o_2@@53 T@Ref) (f_4@@53 T@Field_5199_2980) ) (! (= (HasDirectPerm_5199_2980 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5199_2980 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_5160) (o_2@@54 T@Ref) (f_4@@54 T@Field_9801_9806) ) (! (= (HasDirectPerm_2979_16039 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2979_16039 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_5160) (o_2@@55 T@Ref) (f_4@@55 T@Field_2979_1195) ) (! (= (HasDirectPerm_2979_1195 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2979_1195 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_5160) (o_2@@56 T@Ref) (f_4@@56 T@Field_2979_5213) ) (! (= (HasDirectPerm_2979_5213 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2979_5213 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_5160) (o_2@@57 T@Ref) (f_4@@57 T@Field_2979_53) ) (! (= (HasDirectPerm_2979_53 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2979_53 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_5160) (o_2@@58 T@Ref) (f_4@@58 T@Field_9788_9789) ) (! (= (HasDirectPerm_2979_2980 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2979_2980 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5139) (ExhaleHeap@@17 T@PolymorphicMapType_5139) (Mask@@58 T@PolymorphicMapType_5160) (o_12@@0 T@Ref) (f_16@@159 T@Field_9038_9043) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_9025_19440 Mask@@58 o_12@@0 f_16@@159) (= (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@20) o_12@@0 f_16@@159) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@17) o_12@@0 f_16@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| ExhaleHeap@@17) o_12@@0 f_16@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5139) (ExhaleHeap@@18 T@PolymorphicMapType_5139) (Mask@@59 T@PolymorphicMapType_5160) (o_12@@1 T@Ref) (f_16@@160 T@Field_9025_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_9025_1195 Mask@@59 o_12@@1 f_16@@160) (= (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@21) o_12@@1 f_16@@160) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@18) o_12@@1 f_16@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| ExhaleHeap@@18) o_12@@1 f_16@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5139) (ExhaleHeap@@19 T@PolymorphicMapType_5139) (Mask@@60 T@PolymorphicMapType_5160) (o_12@@2 T@Ref) (f_16@@161 T@Field_9025_5213) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_9025_5213 Mask@@60 o_12@@2 f_16@@161) (= (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@22) o_12@@2 f_16@@161) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@19) o_12@@2 f_16@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| ExhaleHeap@@19) o_12@@2 f_16@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5139) (ExhaleHeap@@20 T@PolymorphicMapType_5139) (Mask@@61 T@PolymorphicMapType_5160) (o_12@@3 T@Ref) (f_16@@162 T@Field_9025_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_9025_53 Mask@@61 o_12@@3 f_16@@162) (= (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@23) o_12@@3 f_16@@162) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@20) o_12@@3 f_16@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| ExhaleHeap@@20) o_12@@3 f_16@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5139) (ExhaleHeap@@21 T@PolymorphicMapType_5139) (Mask@@62 T@PolymorphicMapType_5160) (o_12@@4 T@Ref) (f_16@@163 T@Field_9025_9026) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_9025_2980 Mask@@62 o_12@@4 f_16@@163) (= (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@24) o_12@@4 f_16@@163) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@21) o_12@@4 f_16@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| ExhaleHeap@@21) o_12@@4 f_16@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5139) (ExhaleHeap@@22 T@PolymorphicMapType_5139) (Mask@@63 T@PolymorphicMapType_5160) (o_12@@5 T@Ref) (f_16@@164 T@Field_8538_8543) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_8526_18322 Mask@@63 o_12@@5 f_16@@164) (= (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@25) o_12@@5 f_16@@164) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@22) o_12@@5 f_16@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| ExhaleHeap@@22) o_12@@5 f_16@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5139) (ExhaleHeap@@23 T@PolymorphicMapType_5139) (Mask@@64 T@PolymorphicMapType_5160) (o_12@@6 T@Ref) (f_16@@165 T@Field_8526_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_8526_1195 Mask@@64 o_12@@6 f_16@@165) (= (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@26) o_12@@6 f_16@@165) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@23) o_12@@6 f_16@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| ExhaleHeap@@23) o_12@@6 f_16@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5139) (ExhaleHeap@@24 T@PolymorphicMapType_5139) (Mask@@65 T@PolymorphicMapType_5160) (o_12@@7 T@Ref) (f_16@@166 T@Field_8526_5213) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_8526_5213 Mask@@65 o_12@@7 f_16@@166) (= (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@27) o_12@@7 f_16@@166) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@24) o_12@@7 f_16@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| ExhaleHeap@@24) o_12@@7 f_16@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5139) (ExhaleHeap@@25 T@PolymorphicMapType_5139) (Mask@@66 T@PolymorphicMapType_5160) (o_12@@8 T@Ref) (f_16@@167 T@Field_8526_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_8526_53 Mask@@66 o_12@@8 f_16@@167) (= (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@28) o_12@@8 f_16@@167) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@25) o_12@@8 f_16@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| ExhaleHeap@@25) o_12@@8 f_16@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5139) (ExhaleHeap@@26 T@PolymorphicMapType_5139) (Mask@@67 T@PolymorphicMapType_5160) (o_12@@9 T@Ref) (f_16@@168 T@Field_8553_8554) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_8526_2980 Mask@@67 o_12@@9 f_16@@168) (= (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@29) o_12@@9 f_16@@168) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@26) o_12@@9 f_16@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| ExhaleHeap@@26) o_12@@9 f_16@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5139) (ExhaleHeap@@27 T@PolymorphicMapType_5139) (Mask@@68 T@PolymorphicMapType_5160) (o_12@@10 T@Ref) (f_16@@169 T@Field_5199_8543) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_5199_17145 Mask@@68 o_12@@10 f_16@@169) (= (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@30) o_12@@10 f_16@@169) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@27) o_12@@10 f_16@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| ExhaleHeap@@27) o_12@@10 f_16@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5139) (ExhaleHeap@@28 T@PolymorphicMapType_5139) (Mask@@69 T@PolymorphicMapType_5160) (o_12@@11 T@Ref) (f_16@@170 T@Field_5199_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_5199_1195 Mask@@69 o_12@@11 f_16@@170) (= (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@31) o_12@@11 f_16@@170) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@28) o_12@@11 f_16@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| ExhaleHeap@@28) o_12@@11 f_16@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5139) (ExhaleHeap@@29 T@PolymorphicMapType_5139) (Mask@@70 T@PolymorphicMapType_5160) (o_12@@12 T@Ref) (f_16@@171 T@Field_5212_5213) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_5199_5213 Mask@@70 o_12@@12 f_16@@171) (= (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@32) o_12@@12 f_16@@171) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@29) o_12@@12 f_16@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| ExhaleHeap@@29) o_12@@12 f_16@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5139) (ExhaleHeap@@30 T@PolymorphicMapType_5139) (Mask@@71 T@PolymorphicMapType_5160) (o_12@@13 T@Ref) (f_16@@172 T@Field_5199_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_5199_53 Mask@@71 o_12@@13 f_16@@172) (= (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@33) o_12@@13 f_16@@172) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@30) o_12@@13 f_16@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| ExhaleHeap@@30) o_12@@13 f_16@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5139) (ExhaleHeap@@31 T@PolymorphicMapType_5139) (Mask@@72 T@PolymorphicMapType_5160) (o_12@@14 T@Ref) (f_16@@173 T@Field_5199_2980) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_5199_2980 Mask@@72 o_12@@14 f_16@@173) (= (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@34) o_12@@14 f_16@@173) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@31) o_12@@14 f_16@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| ExhaleHeap@@31) o_12@@14 f_16@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5139) (ExhaleHeap@@32 T@PolymorphicMapType_5139) (Mask@@73 T@PolymorphicMapType_5160) (o_12@@15 T@Ref) (f_16@@174 T@Field_9801_9806) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_2979_16039 Mask@@73 o_12@@15 f_16@@174) (= (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@35) o_12@@15 f_16@@174) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@32) o_12@@15 f_16@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| ExhaleHeap@@32) o_12@@15 f_16@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5139) (ExhaleHeap@@33 T@PolymorphicMapType_5139) (Mask@@74 T@PolymorphicMapType_5160) (o_12@@16 T@Ref) (f_16@@175 T@Field_2979_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_2979_1195 Mask@@74 o_12@@16 f_16@@175) (= (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@36) o_12@@16 f_16@@175) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@33) o_12@@16 f_16@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| ExhaleHeap@@33) o_12@@16 f_16@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5139) (ExhaleHeap@@34 T@PolymorphicMapType_5139) (Mask@@75 T@PolymorphicMapType_5160) (o_12@@17 T@Ref) (f_16@@176 T@Field_2979_5213) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_2979_5213 Mask@@75 o_12@@17 f_16@@176) (= (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@37) o_12@@17 f_16@@176) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@34) o_12@@17 f_16@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| ExhaleHeap@@34) o_12@@17 f_16@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5139) (ExhaleHeap@@35 T@PolymorphicMapType_5139) (Mask@@76 T@PolymorphicMapType_5160) (o_12@@18 T@Ref) (f_16@@177 T@Field_2979_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_2979_53 Mask@@76 o_12@@18 f_16@@177) (= (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@38) o_12@@18 f_16@@177) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@35) o_12@@18 f_16@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| ExhaleHeap@@35) o_12@@18 f_16@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5139) (ExhaleHeap@@36 T@PolymorphicMapType_5139) (Mask@@77 T@PolymorphicMapType_5160) (o_12@@19 T@Ref) (f_16@@178 T@Field_9788_9789) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_2979_2980 Mask@@77 o_12@@19 f_16@@178) (= (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@39) o_12@@19 f_16@@178) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@36) o_12@@19 f_16@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| ExhaleHeap@@36) o_12@@19 f_16@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_5199_8543) ) (! (= (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_5212_5213) ) (! (= (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_5199_53) ) (! (= (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_5199_1195) ) (! (= (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_5199_2980) ) (! (= (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_8538_8543) ) (! (= (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_8526_5213) ) (! (= (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_8526_53) ) (! (= (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_8526_1195) ) (! (= (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_8553_8554) ) (! (= (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_9801_9806) ) (! (= (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_2979_5213) ) (! (= (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_2979_53) ) (! (= (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_2979_1195) ) (! (= (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_9788_9789) ) (! (= (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_9038_9043) ) (! (= (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_9025_5213) ) (! (= (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_9025_53) ) (! (= (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_9025_1195) ) (! (= (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_9025_9026) ) (! (= (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5160) (SummandMask1 T@PolymorphicMapType_5160) (SummandMask2 T@PolymorphicMapType_5160) (o_2@@79 T@Ref) (f_4@@79 T@Field_5199_8543) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5160_5199_36498#PolymorphicMapType_5160| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5160) (SummandMask1@@0 T@PolymorphicMapType_5160) (SummandMask2@@0 T@PolymorphicMapType_5160) (o_2@@80 T@Ref) (f_4@@80 T@Field_5212_5213) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5160_5199_5213#PolymorphicMapType_5160| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5160) (SummandMask1@@1 T@PolymorphicMapType_5160) (SummandMask2@@1 T@PolymorphicMapType_5160) (o_2@@81 T@Ref) (f_4@@81 T@Field_5199_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5160_5199_53#PolymorphicMapType_5160| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5160) (SummandMask1@@2 T@PolymorphicMapType_5160) (SummandMask2@@2 T@PolymorphicMapType_5160) (o_2@@82 T@Ref) (f_4@@82 T@Field_5199_1195) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5160_5199_1195#PolymorphicMapType_5160| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5160) (SummandMask1@@3 T@PolymorphicMapType_5160) (SummandMask2@@3 T@PolymorphicMapType_5160) (o_2@@83 T@Ref) (f_4@@83 T@Field_5199_2980) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5160_5199_2956#PolymorphicMapType_5160| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5160) (SummandMask1@@4 T@PolymorphicMapType_5160) (SummandMask2@@4 T@PolymorphicMapType_5160) (o_2@@84 T@Ref) (f_4@@84 T@Field_8538_8543) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5160_2936_36072#PolymorphicMapType_5160| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5160) (SummandMask1@@5 T@PolymorphicMapType_5160) (SummandMask2@@5 T@PolymorphicMapType_5160) (o_2@@85 T@Ref) (f_4@@85 T@Field_8526_5213) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5160_2936_5213#PolymorphicMapType_5160| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5160) (SummandMask1@@6 T@PolymorphicMapType_5160) (SummandMask2@@6 T@PolymorphicMapType_5160) (o_2@@86 T@Ref) (f_4@@86 T@Field_8526_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5160_2936_53#PolymorphicMapType_5160| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5160) (SummandMask1@@7 T@PolymorphicMapType_5160) (SummandMask2@@7 T@PolymorphicMapType_5160) (o_2@@87 T@Ref) (f_4@@87 T@Field_8526_1195) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5160_2936_1195#PolymorphicMapType_5160| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5160) (SummandMask1@@8 T@PolymorphicMapType_5160) (SummandMask2@@8 T@PolymorphicMapType_5160) (o_2@@88 T@Ref) (f_4@@88 T@Field_8553_8554) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5160_2936_2956#PolymorphicMapType_5160| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5160) (SummandMask1@@9 T@PolymorphicMapType_5160) (SummandMask2@@9 T@PolymorphicMapType_5160) (o_2@@89 T@Ref) (f_4@@89 T@Field_9801_9806) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5160_2979_35658#PolymorphicMapType_5160| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5160) (SummandMask1@@10 T@PolymorphicMapType_5160) (SummandMask2@@10 T@PolymorphicMapType_5160) (o_2@@90 T@Ref) (f_4@@90 T@Field_2979_5213) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5160_2979_5213#PolymorphicMapType_5160| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5160) (SummandMask1@@11 T@PolymorphicMapType_5160) (SummandMask2@@11 T@PolymorphicMapType_5160) (o_2@@91 T@Ref) (f_4@@91 T@Field_2979_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5160_2979_53#PolymorphicMapType_5160| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5160) (SummandMask1@@12 T@PolymorphicMapType_5160) (SummandMask2@@12 T@PolymorphicMapType_5160) (o_2@@92 T@Ref) (f_4@@92 T@Field_2979_1195) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5160_2979_1195#PolymorphicMapType_5160| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5160) (SummandMask1@@13 T@PolymorphicMapType_5160) (SummandMask2@@13 T@PolymorphicMapType_5160) (o_2@@93 T@Ref) (f_4@@93 T@Field_9788_9789) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5160_2979_2980#PolymorphicMapType_5160| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_5160) (SummandMask1@@14 T@PolymorphicMapType_5160) (SummandMask2@@14 T@PolymorphicMapType_5160) (o_2@@94 T@Ref) (f_4@@94 T@Field_9038_9043) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_5160_2955_35247#PolymorphicMapType_5160| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_5160) (SummandMask1@@15 T@PolymorphicMapType_5160) (SummandMask2@@15 T@PolymorphicMapType_5160) (o_2@@95 T@Ref) (f_4@@95 T@Field_9025_5213) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_5160_2955_5213#PolymorphicMapType_5160| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_5160) (SummandMask1@@16 T@PolymorphicMapType_5160) (SummandMask2@@16 T@PolymorphicMapType_5160) (o_2@@96 T@Ref) (f_4@@96 T@Field_9025_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_5160_2955_53#PolymorphicMapType_5160| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_5160) (SummandMask1@@17 T@PolymorphicMapType_5160) (SummandMask2@@17 T@PolymorphicMapType_5160) (o_2@@97 T@Ref) (f_4@@97 T@Field_9025_1195) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_5160_2955_1195#PolymorphicMapType_5160| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_5160) (SummandMask1@@18 T@PolymorphicMapType_5160) (SummandMask2@@18 T@PolymorphicMapType_5160) (o_2@@98 T@Ref) (f_4@@98 T@Field_9025_9026) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_5160_2955_2956#PolymorphicMapType_5160| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Bool) ) (! (= (getPredWandId_2936_1195 (wand arg1@@4 arg2@@4)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@4 arg2@@4))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_2955_2956 (P x@@7)) 0)
 :qid |stdinbpl.228:15|
 :skolemid |31|
 :pattern ( (P x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_2979_2980 (Q x@@8)) 1)
 :qid |stdinbpl.278:15|
 :skolemid |37|
 :pattern ( (Q x@@8))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Bool) ) (! (= (|wand#sm| arg1@@5 arg2@@5) (WandMaskField_2943 (|wand#ft| arg1@@5 arg2@@5)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_2943 (|wand#ft| arg1@@5 arg2@@5)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5139) (o_11 T@Ref) (f_17 T@Field_2979_1195) (v Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@40) (store (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@40) o_11 f_17 v) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@40) (store (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@40) o_11 f_17 v) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@40) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5139) (o_11@@0 T@Ref) (f_17@@0 T@Field_9801_9806) (v@@0 T@PolymorphicMapType_5688) ) (! (succHeap Heap@@41 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@41) (store (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@41) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@41) (store (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@41) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@41) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5139) (o_11@@1 T@Ref) (f_17@@1 T@Field_9788_9789) (v@@1 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@42) (store (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@42) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@42) (store (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@42) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@42) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5139) (o_11@@2 T@Ref) (f_17@@2 T@Field_2979_5213) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@43) (store (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@43) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@43) (store (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@43) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@43) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5139) (o_11@@3 T@Ref) (f_17@@3 T@Field_2979_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@44) (store (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@44) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@44) (store (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@44) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@44) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5139) (o_11@@4 T@Ref) (f_17@@4 T@Field_8526_1195) (v@@4 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@45) (store (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@45) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@45) (store (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@45) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@45) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_5139) (o_11@@5 T@Ref) (f_17@@5 T@Field_8538_8543) (v@@5 T@PolymorphicMapType_5688) ) (! (succHeap Heap@@46 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@46) (store (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@46) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@46) (store (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@46) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@46) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5139) (o_11@@6 T@Ref) (f_17@@6 T@Field_8553_8554) (v@@6 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@47) (store (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@47) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@47) (store (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@47) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@47) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5139) (o_11@@7 T@Ref) (f_17@@7 T@Field_8526_5213) (v@@7 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@48) (store (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@48) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@48) (store (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@48) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@48) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_5139) (o_11@@8 T@Ref) (f_17@@8 T@Field_8526_53) (v@@8 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@49) (store (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@49) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@49) (store (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@49) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@49) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_5139) (o_11@@9 T@Ref) (f_17@@9 T@Field_9025_1195) (v@@9 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@50) (store (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@50) o_11@@9 f_17@@9 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@50) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@50) (store (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@50) o_11@@9 f_17@@9 v@@9)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_5139) (o_11@@10 T@Ref) (f_17@@10 T@Field_9038_9043) (v@@10 T@PolymorphicMapType_5688) ) (! (succHeap Heap@@51 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@51) (store (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@51) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@51) (store (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@51) o_11@@10 f_17@@10 v@@10) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@51) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_5139) (o_11@@11 T@Ref) (f_17@@11 T@Field_9025_9026) (v@@11 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@52) (store (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@52) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@52) (store (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@52) o_11@@11 f_17@@11 v@@11) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@52) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_5139) (o_11@@12 T@Ref) (f_17@@12 T@Field_9025_5213) (v@@12 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@53) (store (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@53) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@53) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@53) (store (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@53) o_11@@12 f_17@@12 v@@12) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_5139) (o_11@@13 T@Ref) (f_17@@13 T@Field_9025_53) (v@@13 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@54) (store (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@54) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@54) (store (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@54) o_11@@13 f_17@@13 v@@13) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@54) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_5139) (o_11@@14 T@Ref) (f_17@@14 T@Field_5199_1195) (v@@14 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@55) (store (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@55) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@55) (store (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@55) o_11@@14 f_17@@14 v@@14) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@55) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_5139) (o_11@@15 T@Ref) (f_17@@15 T@Field_5199_8543) (v@@15 T@PolymorphicMapType_5688) ) (! (succHeap Heap@@56 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@56) (store (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@56) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@56) (store (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@56) o_11@@15 f_17@@15 v@@15) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@56) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_5139) (o_11@@16 T@Ref) (f_17@@16 T@Field_5199_2980) (v@@16 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@57) (store (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@57) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@57) (store (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@57) o_11@@16 f_17@@16 v@@16) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@57) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_5139) (o_11@@17 T@Ref) (f_17@@17 T@Field_5212_5213) (v@@17 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@58) (store (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@58) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@58) (store (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@58) o_11@@17 f_17@@17 v@@17) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@58) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_5139) (o_11@@18 T@Ref) (f_17@@18 T@Field_5199_53) (v@@18 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_5139 (store (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@59) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5139 (store (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@59) o_11@@18 f_17@@18 v@@18) (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2955_2956#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2939_12839#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2959_12958#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_2980#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2983_14440#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_53#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_5213#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_2979_1195#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_5199_2980#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_5199_1195#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_5199_17187#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_2980#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_53#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_5213#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_8526_1195#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_9025_53#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_9025_5213#PolymorphicMapType_5139| Heap@@59) (|PolymorphicMapType_5139_9025_1195#PolymorphicMapType_5139| Heap@@59)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_2955 (P x@@9)) (|P#sm| x@@9))
 :qid |stdinbpl.220:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_2955 (P x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_2979 (Q x@@10)) (|Q#sm| x@@10))
 :qid |stdinbpl.270:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_2979 (Q x@@10)))
)))
(assert (forall ((o_11@@19 T@Ref) (f_10 T@Field_5212_5213) (Heap@@60 T@PolymorphicMapType_5139) ) (!  (=> (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@60) o_11@@19 $allocated) (select (|PolymorphicMapType_5139_2807_53#PolymorphicMapType_5139| Heap@@60) (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@60) o_11@@19 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5139_2810_2811#PolymorphicMapType_5139| Heap@@60) o_11@@19 f_10))
)))
(assert (forall ((p@@4 T@Field_9788_9789) (v_1@@3 T@FrameType) (q T@Field_9788_9789) (w@@3 T@FrameType) (r T@Field_9788_9789) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9788 p@@4 v_1@@3 q w@@3) (InsidePredicate_9788_9788 q w@@3 r u)) (InsidePredicate_9788_9788 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9788 p@@4 v_1@@3 q w@@3) (InsidePredicate_9788_9788 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_9788_9789) (v_1@@4 T@FrameType) (q@@0 T@Field_9788_9789) (w@@4 T@FrameType) (r@@0 T@Field_9025_9026) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9788 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_9788_9025 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_9788_9025 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9788 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_9788_9025 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_9788_9789) (v_1@@5 T@FrameType) (q@@1 T@Field_9788_9789) (w@@5 T@FrameType) (r@@1 T@Field_8553_8554) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9788 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_9788_8526 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_9788_8526 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9788 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_9788_8526 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_9788_9789) (v_1@@6 T@FrameType) (q@@2 T@Field_9788_9789) (w@@6 T@FrameType) (r@@2 T@Field_5199_2980) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9788 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_9788_5199 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_9788_5199 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9788 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_9788_5199 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_9788_9789) (v_1@@7 T@FrameType) (q@@3 T@Field_9025_9026) (w@@7 T@FrameType) (r@@3 T@Field_9788_9789) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9025 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9025_9788 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_9788_9788 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9025 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9025_9788 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_9788_9789) (v_1@@8 T@FrameType) (q@@4 T@Field_9025_9026) (w@@8 T@FrameType) (r@@4 T@Field_9025_9026) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9025 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9025_9025 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_9788_9025 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9025 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9025_9025 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_9788_9789) (v_1@@9 T@FrameType) (q@@5 T@Field_9025_9026) (w@@9 T@FrameType) (r@@5 T@Field_8553_8554) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9025 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9025_8526 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_9788_8526 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9025 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9025_8526 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_9788_9789) (v_1@@10 T@FrameType) (q@@6 T@Field_9025_9026) (w@@10 T@FrameType) (r@@6 T@Field_5199_2980) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_9025 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9025_5199 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_9788_5199 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_9025 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9025_5199 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_9788_9789) (v_1@@11 T@FrameType) (q@@7 T@Field_8553_8554) (w@@11 T@FrameType) (r@@7 T@Field_9788_9789) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_8526 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_8526_9788 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_9788_9788 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_8526 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_8526_9788 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_9788_9789) (v_1@@12 T@FrameType) (q@@8 T@Field_8553_8554) (w@@12 T@FrameType) (r@@8 T@Field_9025_9026) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_8526 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_8526_9025 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_9788_9025 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_8526 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_8526_9025 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_9788_9789) (v_1@@13 T@FrameType) (q@@9 T@Field_8553_8554) (w@@13 T@FrameType) (r@@9 T@Field_8553_8554) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_8526 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_8526_8526 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_9788_8526 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_8526 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_8526_8526 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_9788_9789) (v_1@@14 T@FrameType) (q@@10 T@Field_8553_8554) (w@@14 T@FrameType) (r@@10 T@Field_5199_2980) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_8526 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_8526_5199 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_9788_5199 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_8526 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_8526_5199 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_9788_9789) (v_1@@15 T@FrameType) (q@@11 T@Field_5199_2980) (w@@15 T@FrameType) (r@@11 T@Field_9788_9789) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_5199 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5199_9788 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_9788_9788 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_5199 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5199_9788 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_9788_9789) (v_1@@16 T@FrameType) (q@@12 T@Field_5199_2980) (w@@16 T@FrameType) (r@@12 T@Field_9025_9026) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_5199 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5199_9025 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_9788_9025 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_5199 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5199_9025 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_9788_9789) (v_1@@17 T@FrameType) (q@@13 T@Field_5199_2980) (w@@17 T@FrameType) (r@@13 T@Field_8553_8554) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_5199 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5199_8526 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_9788_8526 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_5199 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5199_8526 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_9788_9789) (v_1@@18 T@FrameType) (q@@14 T@Field_5199_2980) (w@@18 T@FrameType) (r@@14 T@Field_5199_2980) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9788_5199 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5199_5199 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_9788_5199 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9788_5199 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5199_5199 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_9025_9026) (v_1@@19 T@FrameType) (q@@15 T@Field_9788_9789) (w@@19 T@FrameType) (r@@15 T@Field_9788_9789) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9788 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_9788_9788 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_9025_9788 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9788 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_9788_9788 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_9025_9026) (v_1@@20 T@FrameType) (q@@16 T@Field_9788_9789) (w@@20 T@FrameType) (r@@16 T@Field_9025_9026) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9788 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_9788_9025 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_9025_9025 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9788 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_9788_9025 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_9025_9026) (v_1@@21 T@FrameType) (q@@17 T@Field_9788_9789) (w@@21 T@FrameType) (r@@17 T@Field_8553_8554) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9788 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_9788_8526 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_9025_8526 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9788 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_9788_8526 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_9025_9026) (v_1@@22 T@FrameType) (q@@18 T@Field_9788_9789) (w@@22 T@FrameType) (r@@18 T@Field_5199_2980) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9788 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_9788_5199 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_9025_5199 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9788 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_9788_5199 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_9025_9026) (v_1@@23 T@FrameType) (q@@19 T@Field_9025_9026) (w@@23 T@FrameType) (r@@19 T@Field_9788_9789) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9025 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9025_9788 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_9025_9788 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9025 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9025_9788 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_9025_9026) (v_1@@24 T@FrameType) (q@@20 T@Field_9025_9026) (w@@24 T@FrameType) (r@@20 T@Field_9025_9026) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9025 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9025_9025 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_9025_9025 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9025 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9025_9025 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_9025_9026) (v_1@@25 T@FrameType) (q@@21 T@Field_9025_9026) (w@@25 T@FrameType) (r@@21 T@Field_8553_8554) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9025 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9025_8526 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_9025_8526 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9025 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9025_8526 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_9025_9026) (v_1@@26 T@FrameType) (q@@22 T@Field_9025_9026) (w@@26 T@FrameType) (r@@22 T@Field_5199_2980) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_9025 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9025_5199 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_9025_5199 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_9025 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9025_5199 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_9025_9026) (v_1@@27 T@FrameType) (q@@23 T@Field_8553_8554) (w@@27 T@FrameType) (r@@23 T@Field_9788_9789) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_8526 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_8526_9788 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_9025_9788 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_8526 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_8526_9788 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_9025_9026) (v_1@@28 T@FrameType) (q@@24 T@Field_8553_8554) (w@@28 T@FrameType) (r@@24 T@Field_9025_9026) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_8526 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_8526_9025 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_9025_9025 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_8526 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_8526_9025 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_9025_9026) (v_1@@29 T@FrameType) (q@@25 T@Field_8553_8554) (w@@29 T@FrameType) (r@@25 T@Field_8553_8554) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_8526 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_8526_8526 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_9025_8526 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_8526 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_8526_8526 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_9025_9026) (v_1@@30 T@FrameType) (q@@26 T@Field_8553_8554) (w@@30 T@FrameType) (r@@26 T@Field_5199_2980) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_8526 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_8526_5199 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_9025_5199 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_8526 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_8526_5199 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_9025_9026) (v_1@@31 T@FrameType) (q@@27 T@Field_5199_2980) (w@@31 T@FrameType) (r@@27 T@Field_9788_9789) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_5199 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5199_9788 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_9025_9788 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_5199 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5199_9788 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_9025_9026) (v_1@@32 T@FrameType) (q@@28 T@Field_5199_2980) (w@@32 T@FrameType) (r@@28 T@Field_9025_9026) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_5199 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5199_9025 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_9025_9025 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_5199 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5199_9025 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_9025_9026) (v_1@@33 T@FrameType) (q@@29 T@Field_5199_2980) (w@@33 T@FrameType) (r@@29 T@Field_8553_8554) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_5199 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5199_8526 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_9025_8526 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_5199 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5199_8526 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_9025_9026) (v_1@@34 T@FrameType) (q@@30 T@Field_5199_2980) (w@@34 T@FrameType) (r@@30 T@Field_5199_2980) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_9025_5199 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5199_5199 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_9025_5199 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9025_5199 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5199_5199 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_8553_8554) (v_1@@35 T@FrameType) (q@@31 T@Field_9788_9789) (w@@35 T@FrameType) (r@@31 T@Field_9788_9789) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9788 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_9788_9788 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_8526_9788 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9788 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_9788_9788 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_8553_8554) (v_1@@36 T@FrameType) (q@@32 T@Field_9788_9789) (w@@36 T@FrameType) (r@@32 T@Field_9025_9026) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9788 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_9788_9025 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_8526_9025 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9788 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_9788_9025 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_8553_8554) (v_1@@37 T@FrameType) (q@@33 T@Field_9788_9789) (w@@37 T@FrameType) (r@@33 T@Field_8553_8554) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9788 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_9788_8526 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_8526_8526 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9788 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_9788_8526 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_8553_8554) (v_1@@38 T@FrameType) (q@@34 T@Field_9788_9789) (w@@38 T@FrameType) (r@@34 T@Field_5199_2980) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9788 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_9788_5199 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_8526_5199 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9788 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_9788_5199 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_8553_8554) (v_1@@39 T@FrameType) (q@@35 T@Field_9025_9026) (w@@39 T@FrameType) (r@@35 T@Field_9788_9789) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9025 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9025_9788 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_8526_9788 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9025 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9025_9788 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_8553_8554) (v_1@@40 T@FrameType) (q@@36 T@Field_9025_9026) (w@@40 T@FrameType) (r@@36 T@Field_9025_9026) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9025 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9025_9025 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_8526_9025 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9025 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9025_9025 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_8553_8554) (v_1@@41 T@FrameType) (q@@37 T@Field_9025_9026) (w@@41 T@FrameType) (r@@37 T@Field_8553_8554) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9025 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9025_8526 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_8526_8526 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9025 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9025_8526 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_8553_8554) (v_1@@42 T@FrameType) (q@@38 T@Field_9025_9026) (w@@42 T@FrameType) (r@@38 T@Field_5199_2980) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_9025 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9025_5199 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_8526_5199 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_9025 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9025_5199 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_8553_8554) (v_1@@43 T@FrameType) (q@@39 T@Field_8553_8554) (w@@43 T@FrameType) (r@@39 T@Field_9788_9789) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_8526 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_8526_9788 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_8526_9788 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_8526 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_8526_9788 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_8553_8554) (v_1@@44 T@FrameType) (q@@40 T@Field_8553_8554) (w@@44 T@FrameType) (r@@40 T@Field_9025_9026) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_8526 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_8526_9025 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_8526_9025 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_8526 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_8526_9025 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_8553_8554) (v_1@@45 T@FrameType) (q@@41 T@Field_8553_8554) (w@@45 T@FrameType) (r@@41 T@Field_8553_8554) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_8526 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_8526_8526 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_8526_8526 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_8526 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_8526_8526 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_8553_8554) (v_1@@46 T@FrameType) (q@@42 T@Field_8553_8554) (w@@46 T@FrameType) (r@@42 T@Field_5199_2980) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_8526 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_8526_5199 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_8526_5199 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_8526 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_8526_5199 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_8553_8554) (v_1@@47 T@FrameType) (q@@43 T@Field_5199_2980) (w@@47 T@FrameType) (r@@43 T@Field_9788_9789) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_5199 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5199_9788 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_8526_9788 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_5199 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5199_9788 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_8553_8554) (v_1@@48 T@FrameType) (q@@44 T@Field_5199_2980) (w@@48 T@FrameType) (r@@44 T@Field_9025_9026) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_5199 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5199_9025 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_8526_9025 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_5199 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5199_9025 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_8553_8554) (v_1@@49 T@FrameType) (q@@45 T@Field_5199_2980) (w@@49 T@FrameType) (r@@45 T@Field_8553_8554) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_5199 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5199_8526 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_8526_8526 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_5199 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5199_8526 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_8553_8554) (v_1@@50 T@FrameType) (q@@46 T@Field_5199_2980) (w@@50 T@FrameType) (r@@46 T@Field_5199_2980) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_8526_5199 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5199_5199 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_8526_5199 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8526_5199 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5199_5199 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_5199_2980) (v_1@@51 T@FrameType) (q@@47 T@Field_9788_9789) (w@@51 T@FrameType) (r@@47 T@Field_9788_9789) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9788 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_9788_9788 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_5199_9788 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9788 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_9788_9788 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_5199_2980) (v_1@@52 T@FrameType) (q@@48 T@Field_9788_9789) (w@@52 T@FrameType) (r@@48 T@Field_9025_9026) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9788 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_9788_9025 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_5199_9025 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9788 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_9788_9025 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_5199_2980) (v_1@@53 T@FrameType) (q@@49 T@Field_9788_9789) (w@@53 T@FrameType) (r@@49 T@Field_8553_8554) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9788 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_9788_8526 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_5199_8526 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9788 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_9788_8526 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_5199_2980) (v_1@@54 T@FrameType) (q@@50 T@Field_9788_9789) (w@@54 T@FrameType) (r@@50 T@Field_5199_2980) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9788 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_9788_5199 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_5199_5199 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9788 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_9788_5199 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_5199_2980) (v_1@@55 T@FrameType) (q@@51 T@Field_9025_9026) (w@@55 T@FrameType) (r@@51 T@Field_9788_9789) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9025 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9025_9788 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_5199_9788 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9025 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9025_9788 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_5199_2980) (v_1@@56 T@FrameType) (q@@52 T@Field_9025_9026) (w@@56 T@FrameType) (r@@52 T@Field_9025_9026) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9025 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9025_9025 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_5199_9025 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9025 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9025_9025 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_5199_2980) (v_1@@57 T@FrameType) (q@@53 T@Field_9025_9026) (w@@57 T@FrameType) (r@@53 T@Field_8553_8554) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9025 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9025_8526 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_5199_8526 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9025 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9025_8526 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_5199_2980) (v_1@@58 T@FrameType) (q@@54 T@Field_9025_9026) (w@@58 T@FrameType) (r@@54 T@Field_5199_2980) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_9025 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9025_5199 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_5199_5199 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_9025 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9025_5199 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_5199_2980) (v_1@@59 T@FrameType) (q@@55 T@Field_8553_8554) (w@@59 T@FrameType) (r@@55 T@Field_9788_9789) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_8526 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_8526_9788 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_5199_9788 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_8526 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_8526_9788 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_5199_2980) (v_1@@60 T@FrameType) (q@@56 T@Field_8553_8554) (w@@60 T@FrameType) (r@@56 T@Field_9025_9026) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_8526 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_8526_9025 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_5199_9025 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_8526 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_8526_9025 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_5199_2980) (v_1@@61 T@FrameType) (q@@57 T@Field_8553_8554) (w@@61 T@FrameType) (r@@57 T@Field_8553_8554) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_8526 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_8526_8526 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_5199_8526 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_8526 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_8526_8526 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_5199_2980) (v_1@@62 T@FrameType) (q@@58 T@Field_8553_8554) (w@@62 T@FrameType) (r@@58 T@Field_5199_2980) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_8526 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_8526_5199 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_5199_5199 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_8526 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_8526_5199 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_5199_2980) (v_1@@63 T@FrameType) (q@@59 T@Field_5199_2980) (w@@63 T@FrameType) (r@@59 T@Field_9788_9789) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_5199 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5199_9788 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_5199_9788 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_5199 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5199_9788 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_5199_2980) (v_1@@64 T@FrameType) (q@@60 T@Field_5199_2980) (w@@64 T@FrameType) (r@@60 T@Field_9025_9026) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_5199 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5199_9025 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_5199_9025 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_5199 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5199_9025 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_5199_2980) (v_1@@65 T@FrameType) (q@@61 T@Field_5199_2980) (w@@65 T@FrameType) (r@@61 T@Field_8553_8554) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_5199 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5199_8526 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_5199_8526 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_5199 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5199_8526 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_5199_2980) (v_1@@66 T@FrameType) (q@@62 T@Field_5199_2980) (w@@66 T@FrameType) (r@@62 T@Field_5199_2980) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_5199_5199 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5199_5199 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_5199_5199 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5199_5199 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5199_5199 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |Q#definedness|)
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
