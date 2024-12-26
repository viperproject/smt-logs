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
(declare-sort T@Field_9347_53 0)
(declare-sort T@Field_9360_9361 0)
(declare-sort T@Field_13253_13254 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14240_14241 0)
(declare-sort T@Field_12688_12693 0)
(declare-sort T@Field_13266_13271 0)
(declare-sort T@Field_14485_14490 0)
(declare-sort T@Field_5093_5123 0)
(declare-sort T@Field_5093_1195 0)
(declare-sort T@Field_5093_12693 0)
(declare-sort T@Field_5122_5094 0)
(declare-sort T@Field_5122_53 0)
(declare-sort T@Field_5122_1195 0)
(declare-sort T@Field_12675_5094 0)
(declare-sort T@Field_12704_12705 0)
(declare-sort T@Field_12675_53 0)
(declare-sort T@Field_12675_1195 0)
(declare-sort T@Field_13253_5094 0)
(declare-sort T@Field_13253_53 0)
(declare-sort T@Field_13253_1195 0)
(declare-datatypes ((T@PolymorphicMapType_9308 0)) (((PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| (Array T@Ref T@Field_9360_9361 Real)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| (Array T@Ref T@Field_14240_14241 Real)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| (Array T@Ref T@Field_13253_13254 Real)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| (Array T@Ref T@Field_12675_1195 Real)) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| (Array T@Ref T@Field_5093_5123 Real)) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| (Array T@Ref T@Field_5093_1195 Real)) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| (Array T@Ref T@Field_9347_53 Real)) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| (Array T@Ref T@Field_5093_12693 Real)) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| (Array T@Ref T@Field_5122_5094 Real)) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| (Array T@Ref T@Field_5122_1195 Real)) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| (Array T@Ref T@Field_5122_53 Real)) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| (Array T@Ref T@Field_14485_14490 Real)) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| (Array T@Ref T@Field_13253_5094 Real)) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| (Array T@Ref T@Field_13253_1195 Real)) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| (Array T@Ref T@Field_13253_53 Real)) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| (Array T@Ref T@Field_13266_13271 Real)) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| (Array T@Ref T@Field_12675_5094 Real)) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| (Array T@Ref T@Field_12704_12705 Real)) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| (Array T@Ref T@Field_12675_53 Real)) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| (Array T@Ref T@Field_12688_12693 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9836 0)) (((PolymorphicMapType_9836 (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (Array T@Ref T@Field_9360_9361 Bool)) (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (Array T@Ref T@Field_9347_53 Bool)) (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (Array T@Ref T@Field_5093_1195 Bool)) (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (Array T@Ref T@Field_5093_12693 Bool)) (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (Array T@Ref T@Field_5093_5123 Bool)) (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (Array T@Ref T@Field_12675_5094 Bool)) (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (Array T@Ref T@Field_12675_53 Bool)) (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (Array T@Ref T@Field_12675_1195 Bool)) (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (Array T@Ref T@Field_12688_12693 Bool)) (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (Array T@Ref T@Field_12704_12705 Bool)) (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (Array T@Ref T@Field_13253_5094 Bool)) (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (Array T@Ref T@Field_13253_53 Bool)) (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (Array T@Ref T@Field_13253_1195 Bool)) (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (Array T@Ref T@Field_13266_13271 Bool)) (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (Array T@Ref T@Field_13253_13254 Bool)) (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (Array T@Ref T@Field_5122_5094 Bool)) (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (Array T@Ref T@Field_5122_53 Bool)) (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (Array T@Ref T@Field_5122_1195 Bool)) (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (Array T@Ref T@Field_14485_14490 Bool)) (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (Array T@Ref T@Field_14240_14241 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9287 0)) (((PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| (Array T@Ref T@Field_9347_53 Bool)) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| (Array T@Ref T@Field_9360_9361 T@Ref)) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| (Array T@Ref T@Field_13253_13254 T@FrameType)) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| (Array T@Ref T@Field_14240_14241 T@FrameType)) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| (Array T@Ref T@Field_12688_12693 T@PolymorphicMapType_9836)) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| (Array T@Ref T@Field_13266_13271 T@PolymorphicMapType_9836)) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| (Array T@Ref T@Field_14485_14490 T@PolymorphicMapType_9836)) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| (Array T@Ref T@Field_5093_5123 T@FrameType)) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| (Array T@Ref T@Field_5093_1195 Int)) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| (Array T@Ref T@Field_5093_12693 T@PolymorphicMapType_9836)) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| (Array T@Ref T@Field_5122_5094 T@Ref)) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| (Array T@Ref T@Field_5122_53 Bool)) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| (Array T@Ref T@Field_5122_1195 Int)) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| (Array T@Ref T@Field_12675_5094 T@Ref)) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| (Array T@Ref T@Field_12704_12705 T@FrameType)) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| (Array T@Ref T@Field_12675_53 Bool)) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| (Array T@Ref T@Field_12675_1195 Int)) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| (Array T@Ref T@Field_13253_5094 T@Ref)) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| (Array T@Ref T@Field_13253_53 Bool)) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| (Array T@Ref T@Field_13253_1195 Int)) ) ) ))
(declare-fun $allocated () T@Field_9347_53)
(declare-fun next () T@Field_9360_9361)
(declare-fun succHeap (T@PolymorphicMapType_9287 T@PolymorphicMapType_9287) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9287 T@PolymorphicMapType_9287) Bool)
(declare-fun state (T@PolymorphicMapType_9287 T@PolymorphicMapType_9308) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9308) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9836)
(declare-fun wand (T@Ref T@Ref) T@Field_12675_1195)
(declare-fun IsWandField_5065_1195 (T@Field_12675_1195) Bool)
(declare-fun |wand#ft| (T@Ref T@Ref) T@Field_12704_12705)
(declare-fun IsWandField_5074_5075 (T@Field_12704_12705) Bool)
(declare-fun IsPredicateField_5065_1195 (T@Field_12675_1195) Bool)
(declare-fun IsPredicateField_5074_5075 (T@Field_12704_12705) Bool)
(declare-fun P (T@Ref) T@Field_13253_13254)
(declare-fun IsPredicateField_5097_5098 (T@Field_13253_13254) Bool)
(declare-fun Q (T@Ref) T@Field_14240_14241)
(declare-fun IsPredicateField_5122_5123 (T@Field_14240_14241) Bool)
(declare-fun |P#trigger_5097| (T@PolymorphicMapType_9287 T@Field_13253_13254) Bool)
(declare-fun |P#everUsed_5097| (T@Field_13253_13254) Bool)
(declare-fun |Q#trigger_5122| (T@PolymorphicMapType_9287 T@Field_14240_14241) Bool)
(declare-fun |Q#everUsed_5122| (T@Field_14240_14241) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9287 T@PolymorphicMapType_9287 T@PolymorphicMapType_9308) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5097 (T@Field_13253_13254) T@Field_13266_13271)
(declare-fun HasDirectPerm_13253_5123 (T@PolymorphicMapType_9308 T@Ref T@Field_13253_13254) Bool)
(declare-fun PredicateMaskField_12675 (T@Field_12704_12705) T@Field_12688_12693)
(declare-fun HasDirectPerm_12675_5123 (T@PolymorphicMapType_9308 T@Ref T@Field_12704_12705) Bool)
(declare-fun PredicateMaskField_5122 (T@Field_14240_14241) T@Field_14485_14490)
(declare-fun HasDirectPerm_5122_5123 (T@PolymorphicMapType_9308 T@Ref T@Field_14240_14241) Bool)
(declare-fun IsPredicateField_5093_34410 (T@Field_5093_5123) Bool)
(declare-fun PredicateMaskField_5093 (T@Field_5093_5123) T@Field_5093_12693)
(declare-fun HasDirectPerm_5093_5123 (T@PolymorphicMapType_9308 T@Ref T@Field_5093_5123) Bool)
(declare-fun IsWandField_13253_42107 (T@Field_13253_13254) Bool)
(declare-fun WandMaskField_13253 (T@Field_13253_13254) T@Field_13266_13271)
(declare-fun WandMaskField_5074 (T@Field_12704_12705) T@Field_12688_12693)
(declare-fun IsWandField_5122_41425 (T@Field_14240_14241) Bool)
(declare-fun WandMaskField_5122 (T@Field_14240_14241) T@Field_14485_14490)
(declare-fun IsWandField_5093_41068 (T@Field_5093_5123) Bool)
(declare-fun WandMaskField_5093 (T@Field_5093_5123) T@Field_5093_12693)
(declare-fun |P#sm| (T@Ref) T@Field_13266_13271)
(declare-fun |Q#sm| (T@Ref) T@Field_14485_14490)
(declare-fun dummyHeap () T@PolymorphicMapType_9287)
(declare-fun ZeroMask () T@PolymorphicMapType_9308)
(declare-fun InsidePredicate_12675_12675 (T@Field_12704_12705 T@FrameType T@Field_12704_12705 T@FrameType) Bool)
(declare-fun InsidePredicate_9347_9347 (T@Field_5093_5123 T@FrameType T@Field_5093_5123 T@FrameType) Bool)
(declare-fun InsidePredicate_5122_5122 (T@Field_14240_14241 T@FrameType T@Field_14240_14241 T@FrameType) Bool)
(declare-fun InsidePredicate_5097_13253 (T@Field_13253_13254 T@FrameType T@Field_13253_13254 T@FrameType) Bool)
(declare-fun IsPredicateField_5093_5094 (T@Field_9360_9361) Bool)
(declare-fun IsWandField_5093_5094 (T@Field_9360_9361) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5065_55797 (T@Field_12688_12693) Bool)
(declare-fun IsWandField_5065_55813 (T@Field_12688_12693) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5065_53 (T@Field_12675_53) Bool)
(declare-fun IsWandField_5065_53 (T@Field_12675_53) Bool)
(declare-fun IsPredicateField_5065_5094 (T@Field_12675_5094) Bool)
(declare-fun IsWandField_5065_5094 (T@Field_12675_5094) Bool)
(declare-fun IsPredicateField_5097_54980 (T@Field_13266_13271) Bool)
(declare-fun IsWandField_5097_54996 (T@Field_13266_13271) Bool)
(declare-fun IsPredicateField_5097_53 (T@Field_13253_53) Bool)
(declare-fun IsWandField_5097_53 (T@Field_13253_53) Bool)
(declare-fun IsPredicateField_5097_1195 (T@Field_13253_1195) Bool)
(declare-fun IsWandField_5097_1195 (T@Field_13253_1195) Bool)
(declare-fun IsPredicateField_5097_5094 (T@Field_13253_5094) Bool)
(declare-fun IsWandField_5097_5094 (T@Field_13253_5094) Bool)
(declare-fun IsPredicateField_5122_54149 (T@Field_14485_14490) Bool)
(declare-fun IsWandField_5122_54165 (T@Field_14485_14490) Bool)
(declare-fun IsPredicateField_5122_53 (T@Field_5122_53) Bool)
(declare-fun IsWandField_5122_53 (T@Field_5122_53) Bool)
(declare-fun IsPredicateField_5122_1195 (T@Field_5122_1195) Bool)
(declare-fun IsWandField_5122_1195 (T@Field_5122_1195) Bool)
(declare-fun IsPredicateField_5122_5094 (T@Field_5122_5094) Bool)
(declare-fun IsWandField_5122_5094 (T@Field_5122_5094) Bool)
(declare-fun IsPredicateField_5093_53318 (T@Field_5093_12693) Bool)
(declare-fun IsWandField_5093_53334 (T@Field_5093_12693) Bool)
(declare-fun IsPredicateField_5093_53 (T@Field_9347_53) Bool)
(declare-fun IsWandField_5093_53 (T@Field_9347_53) Bool)
(declare-fun IsPredicateField_5093_1195 (T@Field_5093_1195) Bool)
(declare-fun IsWandField_5093_1195 (T@Field_5093_1195) Bool)
(declare-fun HasDirectPerm_13253_34165 (T@PolymorphicMapType_9308 T@Ref T@Field_13266_13271) Bool)
(declare-fun HasDirectPerm_13253_1195 (T@PolymorphicMapType_9308 T@Ref T@Field_13253_1195) Bool)
(declare-fun HasDirectPerm_13253_53 (T@PolymorphicMapType_9308 T@Ref T@Field_13253_53) Bool)
(declare-fun HasDirectPerm_13253_5094 (T@PolymorphicMapType_9308 T@Ref T@Field_13253_5094) Bool)
(declare-fun HasDirectPerm_12675_33047 (T@PolymorphicMapType_9308 T@Ref T@Field_12688_12693) Bool)
(declare-fun HasDirectPerm_12675_1195 (T@PolymorphicMapType_9308 T@Ref T@Field_12675_1195) Bool)
(declare-fun HasDirectPerm_12675_53 (T@PolymorphicMapType_9308 T@Ref T@Field_12675_53) Bool)
(declare-fun HasDirectPerm_12675_5094 (T@PolymorphicMapType_9308 T@Ref T@Field_12675_5094) Bool)
(declare-fun HasDirectPerm_5122_31913 (T@PolymorphicMapType_9308 T@Ref T@Field_14485_14490) Bool)
(declare-fun HasDirectPerm_5122_1195 (T@PolymorphicMapType_9308 T@Ref T@Field_5122_1195) Bool)
(declare-fun HasDirectPerm_5122_53 (T@PolymorphicMapType_9308 T@Ref T@Field_5122_53) Bool)
(declare-fun HasDirectPerm_5122_5094 (T@PolymorphicMapType_9308 T@Ref T@Field_5122_5094) Bool)
(declare-fun HasDirectPerm_5093_30772 (T@PolymorphicMapType_9308 T@Ref T@Field_5093_12693) Bool)
(declare-fun HasDirectPerm_5093_1195 (T@PolymorphicMapType_9308 T@Ref T@Field_5093_1195) Bool)
(declare-fun HasDirectPerm_5093_53 (T@PolymorphicMapType_9308 T@Ref T@Field_9347_53) Bool)
(declare-fun HasDirectPerm_5093_5094 (T@PolymorphicMapType_9308 T@Ref T@Field_9360_9361) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9308 T@PolymorphicMapType_9308 T@PolymorphicMapType_9308) Bool)
(declare-fun getPredWandId_5065_1195 (T@Field_12675_1195) Int)
(declare-fun getPredWandId_5097_5098 (T@Field_13253_13254) Int)
(declare-fun getPredWandId_5122_5123 (T@Field_14240_14241) Int)
(declare-fun |wand#sm| (T@Ref T@Ref) T@Field_12688_12693)
(declare-fun InsidePredicate_12675_13253 (T@Field_12704_12705 T@FrameType T@Field_13253_13254 T@FrameType) Bool)
(declare-fun InsidePredicate_12675_9347 (T@Field_12704_12705 T@FrameType T@Field_5093_5123 T@FrameType) Bool)
(declare-fun InsidePredicate_12675_5122 (T@Field_12704_12705 T@FrameType T@Field_14240_14241 T@FrameType) Bool)
(declare-fun InsidePredicate_9347_13253 (T@Field_5093_5123 T@FrameType T@Field_13253_13254 T@FrameType) Bool)
(declare-fun InsidePredicate_9347_12675 (T@Field_5093_5123 T@FrameType T@Field_12704_12705 T@FrameType) Bool)
(declare-fun InsidePredicate_9347_5122 (T@Field_5093_5123 T@FrameType T@Field_14240_14241 T@FrameType) Bool)
(declare-fun InsidePredicate_5097_12675 (T@Field_13253_13254 T@FrameType T@Field_12704_12705 T@FrameType) Bool)
(declare-fun InsidePredicate_5097_9347 (T@Field_13253_13254 T@FrameType T@Field_5093_5123 T@FrameType) Bool)
(declare-fun InsidePredicate_5097_5122 (T@Field_13253_13254 T@FrameType T@Field_14240_14241 T@FrameType) Bool)
(declare-fun InsidePredicate_5122_13253 (T@Field_14240_14241 T@FrameType T@Field_13253_13254 T@FrameType) Bool)
(declare-fun InsidePredicate_5122_12675 (T@Field_14240_14241 T@FrameType T@Field_12704_12705 T@FrameType) Bool)
(declare-fun InsidePredicate_5122_9347 (T@Field_14240_14241 T@FrameType T@Field_5093_5123 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9287) (Heap1 T@PolymorphicMapType_9287) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9287) (Mask T@PolymorphicMapType_9308) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9287) (Heap1@@0 T@PolymorphicMapType_9287) (Heap2 T@PolymorphicMapType_9287) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14240_14241) ) (!  (not (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14485_14490) ) (!  (not (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5122_1195) ) (!  (not (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5122_53) ) (!  (not (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5122_5094) ) (!  (not (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13253_13254) ) (!  (not (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13266_13271) ) (!  (not (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13253_1195) ) (!  (not (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13253_53) ) (!  (not (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13253_5094) ) (!  (not (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_12704_12705) ) (!  (not (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_12688_12693) ) (!  (not (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_12675_1195) ) (!  (not (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12675_53) ) (!  (not (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_12675_5094) ) (!  (not (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5093_5123) ) (!  (not (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5093_12693) ) (!  (not (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5093_1195) ) (!  (not (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9347_53) ) (!  (not (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9360_9361) ) (!  (not (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) ) (! (IsWandField_5065_1195 (wand arg1 arg2))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1 arg2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) ) (! (IsWandField_5074_5075 (|wand#ft| arg1@@0 arg2@@0))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@0 arg2@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 T@Ref) ) (!  (not (IsPredicateField_5065_1195 (wand arg1@@1 arg2@@1)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 T@Ref) ) (!  (not (IsPredicateField_5074_5075 (|wand#ft| arg1@@2 arg2@@2)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_5097_5098 (P x))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (P x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_5122_5123 (Q x@@0))
 :qid |stdinbpl.293:15|
 :skolemid |36|
 :pattern ( (Q x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9287) (x@@1 T@Ref) ) (! (|P#everUsed_5097| (P x@@1))
 :qid |stdinbpl.251:15|
 :skolemid |34|
 :pattern ( (|P#trigger_5097| Heap@@0 (P x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9287) (x@@2 T@Ref) ) (! (|Q#everUsed_5122| (Q x@@2))
 :qid |stdinbpl.312:15|
 :skolemid |40|
 :pattern ( (|Q#trigger_5122| Heap@@1 (Q x@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9287) (ExhaleHeap T@PolymorphicMapType_9287) (Mask@@0 T@PolymorphicMapType_9308) (pm_f_22 T@Field_13253_13254) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13253_5123 Mask@@0 null pm_f_22) (IsPredicateField_5097_5098 pm_f_22)) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@2) null (PredicateMaskField_5097 pm_f_22)) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap) null (PredicateMaskField_5097 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_5097_5098 pm_f_22) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap) null (PredicateMaskField_5097 pm_f_22)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9287) (ExhaleHeap@@0 T@PolymorphicMapType_9287) (Mask@@1 T@PolymorphicMapType_9308) (pm_f_22@@0 T@Field_12704_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12675_5123 Mask@@1 null pm_f_22@@0) (IsPredicateField_5074_5075 pm_f_22@@0)) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@3) null (PredicateMaskField_12675 pm_f_22@@0)) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@0) null (PredicateMaskField_12675 pm_f_22@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5074_5075 pm_f_22@@0) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@0) null (PredicateMaskField_12675 pm_f_22@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9287) (ExhaleHeap@@1 T@PolymorphicMapType_9287) (Mask@@2 T@PolymorphicMapType_9308) (pm_f_22@@1 T@Field_14240_14241) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5122_5123 Mask@@2 null pm_f_22@@1) (IsPredicateField_5122_5123 pm_f_22@@1)) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@4) null (PredicateMaskField_5122 pm_f_22@@1)) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@1) null (PredicateMaskField_5122 pm_f_22@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5122_5123 pm_f_22@@1) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@1) null (PredicateMaskField_5122 pm_f_22@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9287) (ExhaleHeap@@2 T@PolymorphicMapType_9287) (Mask@@3 T@PolymorphicMapType_9308) (pm_f_22@@2 T@Field_5093_5123) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5093_5123 Mask@@3 null pm_f_22@@2) (IsPredicateField_5093_34410 pm_f_22@@2)) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@5) null (PredicateMaskField_5093 pm_f_22@@2)) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@2) null (PredicateMaskField_5093 pm_f_22@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsPredicateField_5093_34410 pm_f_22@@2) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@2) null (PredicateMaskField_5093 pm_f_22@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9287) (ExhaleHeap@@3 T@PolymorphicMapType_9287) (Mask@@4 T@PolymorphicMapType_9308) (pm_f_22@@3 T@Field_13253_13254) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13253_5123 Mask@@4 null pm_f_22@@3) (IsWandField_13253_42107 pm_f_22@@3)) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@6) null (WandMaskField_13253 pm_f_22@@3)) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@3) null (WandMaskField_13253 pm_f_22@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_13253_42107 pm_f_22@@3) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@3) null (WandMaskField_13253 pm_f_22@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9287) (ExhaleHeap@@4 T@PolymorphicMapType_9287) (Mask@@5 T@PolymorphicMapType_9308) (pm_f_22@@4 T@Field_12704_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_12675_5123 Mask@@5 null pm_f_22@@4) (IsWandField_5074_5075 pm_f_22@@4)) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@7) null (WandMaskField_5074 pm_f_22@@4)) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@4) null (WandMaskField_5074 pm_f_22@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_5074_5075 pm_f_22@@4) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@4) null (WandMaskField_5074 pm_f_22@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9287) (ExhaleHeap@@5 T@PolymorphicMapType_9287) (Mask@@6 T@PolymorphicMapType_9308) (pm_f_22@@5 T@Field_14240_14241) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5122_5123 Mask@@6 null pm_f_22@@5) (IsWandField_5122_41425 pm_f_22@@5)) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@8) null (WandMaskField_5122 pm_f_22@@5)) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@5) null (WandMaskField_5122 pm_f_22@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_5122_41425 pm_f_22@@5) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@5) null (WandMaskField_5122 pm_f_22@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9287) (ExhaleHeap@@6 T@PolymorphicMapType_9287) (Mask@@7 T@PolymorphicMapType_9308) (pm_f_22@@6 T@Field_5093_5123) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5093_5123 Mask@@7 null pm_f_22@@6) (IsWandField_5093_41068 pm_f_22@@6)) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@9) null (WandMaskField_5093 pm_f_22@@6)) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@6) null (WandMaskField_5093 pm_f_22@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_5093_41068 pm_f_22@@6) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@6) null (WandMaskField_5093 pm_f_22@@6)))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 T@Ref) (arg1_2 T@Ref) (arg2_2 T@Ref) ) (!  (=> (= (wand arg1@@3 arg2@@3) (wand arg1_2 arg2_2)) (and (= arg1@@3 arg1_2) (= arg2@@3 arg2_2)))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@3 arg2@@3) (wand arg1_2 arg2_2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9287) (ExhaleHeap@@7 T@PolymorphicMapType_9287) (Mask@@8 T@PolymorphicMapType_9308) (pm_f_22@@7 T@Field_13253_13254) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_13253_5123 Mask@@8 null pm_f_22@@7) (IsPredicateField_5097_5098 pm_f_22@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22 f_37) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@10) o2_22 f_37) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@10) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@10) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@10) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@10) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@10) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@10) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@10) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@10) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@10) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@10) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@10) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@10) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@10) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@10) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@14 f_37@@14))
))) (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@10) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@15 f_37@@15))
))) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@10) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@10) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@10) null (PredicateMaskField_5097 pm_f_22@@7))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@10) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@7) o2_22@@18 f_37@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_5097_5098 pm_f_22@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9287) (ExhaleHeap@@8 T@PolymorphicMapType_9287) (Mask@@9 T@PolymorphicMapType_9308) (pm_f_22@@8 T@Field_12704_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_12675_5123 Mask@@9 null pm_f_22@@8) (IsPredicateField_5074_5075 pm_f_22@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@11) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@19 f_37@@19))
)) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@11) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@11) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@11) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@22 f_37@@22))
))) (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@11) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@23 f_37@@23))
))) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@11) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@11) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@11) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@11) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@28 f_37@@28))
))) (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@11) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@29 f_37@@29))
))) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@11) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@30 f_37@@30))
))) (forall ((o2_22@@31 T@Ref) (f_37@@31 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@31 f_37@@31) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@11) o2_22@@31 f_37@@31) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@31 f_37@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@31 f_37@@31))
))) (forall ((o2_22@@32 T@Ref) (f_37@@32 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@32 f_37@@32) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@11) o2_22@@32 f_37@@32) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@32 f_37@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@32 f_37@@32))
))) (forall ((o2_22@@33 T@Ref) (f_37@@33 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@33 f_37@@33) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@11) o2_22@@33 f_37@@33) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@33 f_37@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@33 f_37@@33))
))) (forall ((o2_22@@34 T@Ref) (f_37@@34 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@34 f_37@@34) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@11) o2_22@@34 f_37@@34) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@34 f_37@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@34 f_37@@34))
))) (forall ((o2_22@@35 T@Ref) (f_37@@35 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@35 f_37@@35) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@11) o2_22@@35 f_37@@35) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@35 f_37@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@35 f_37@@35))
))) (forall ((o2_22@@36 T@Ref) (f_37@@36 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@36 f_37@@36) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@11) o2_22@@36 f_37@@36) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@36 f_37@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@36 f_37@@36))
))) (forall ((o2_22@@37 T@Ref) (f_37@@37 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@37 f_37@@37) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@11) o2_22@@37 f_37@@37) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@37 f_37@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@37 f_37@@37))
))) (forall ((o2_22@@38 T@Ref) (f_37@@38 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@11) null (PredicateMaskField_12675 pm_f_22@@8))) o2_22@@38 f_37@@38) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@11) o2_22@@38 f_37@@38) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@38 f_37@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@8) o2_22@@38 f_37@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsPredicateField_5074_5075 pm_f_22@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9287) (ExhaleHeap@@9 T@PolymorphicMapType_9287) (Mask@@10 T@PolymorphicMapType_9308) (pm_f_22@@9 T@Field_14240_14241) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_5122_5123 Mask@@10 null pm_f_22@@9) (IsPredicateField_5122_5123 pm_f_22@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@39 T@Ref) (f_37@@39 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@39 f_37@@39) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@12) o2_22@@39 f_37@@39) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@39 f_37@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@39 f_37@@39))
)) (forall ((o2_22@@40 T@Ref) (f_37@@40 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@40 f_37@@40) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@12) o2_22@@40 f_37@@40) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@40 f_37@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@40 f_37@@40))
))) (forall ((o2_22@@41 T@Ref) (f_37@@41 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@41 f_37@@41) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@12) o2_22@@41 f_37@@41) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@41 f_37@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@41 f_37@@41))
))) (forall ((o2_22@@42 T@Ref) (f_37@@42 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@42 f_37@@42) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@12) o2_22@@42 f_37@@42) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@42 f_37@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@42 f_37@@42))
))) (forall ((o2_22@@43 T@Ref) (f_37@@43 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@43 f_37@@43) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@12) o2_22@@43 f_37@@43) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@43 f_37@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@43 f_37@@43))
))) (forall ((o2_22@@44 T@Ref) (f_37@@44 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@44 f_37@@44) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@12) o2_22@@44 f_37@@44) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@44 f_37@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@44 f_37@@44))
))) (forall ((o2_22@@45 T@Ref) (f_37@@45 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@45 f_37@@45) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@12) o2_22@@45 f_37@@45) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@45 f_37@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@45 f_37@@45))
))) (forall ((o2_22@@46 T@Ref) (f_37@@46 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@46 f_37@@46) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@12) o2_22@@46 f_37@@46) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@46 f_37@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@46 f_37@@46))
))) (forall ((o2_22@@47 T@Ref) (f_37@@47 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@47 f_37@@47) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@12) o2_22@@47 f_37@@47) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@47 f_37@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@47 f_37@@47))
))) (forall ((o2_22@@48 T@Ref) (f_37@@48 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@48 f_37@@48) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@12) o2_22@@48 f_37@@48) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@48 f_37@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@48 f_37@@48))
))) (forall ((o2_22@@49 T@Ref) (f_37@@49 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@49 f_37@@49) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@12) o2_22@@49 f_37@@49) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@49 f_37@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@49 f_37@@49))
))) (forall ((o2_22@@50 T@Ref) (f_37@@50 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@50 f_37@@50) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@12) o2_22@@50 f_37@@50) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@50 f_37@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@50 f_37@@50))
))) (forall ((o2_22@@51 T@Ref) (f_37@@51 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@51 f_37@@51) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@12) o2_22@@51 f_37@@51) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@51 f_37@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@51 f_37@@51))
))) (forall ((o2_22@@52 T@Ref) (f_37@@52 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@52 f_37@@52) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@12) o2_22@@52 f_37@@52) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@52 f_37@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@52 f_37@@52))
))) (forall ((o2_22@@53 T@Ref) (f_37@@53 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@53 f_37@@53) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@12) o2_22@@53 f_37@@53) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@53 f_37@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@53 f_37@@53))
))) (forall ((o2_22@@54 T@Ref) (f_37@@54 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@54 f_37@@54) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@12) o2_22@@54 f_37@@54) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@54 f_37@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@54 f_37@@54))
))) (forall ((o2_22@@55 T@Ref) (f_37@@55 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@55 f_37@@55) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@12) o2_22@@55 f_37@@55) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@55 f_37@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@55 f_37@@55))
))) (forall ((o2_22@@56 T@Ref) (f_37@@56 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@56 f_37@@56) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@12) o2_22@@56 f_37@@56) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@56 f_37@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@56 f_37@@56))
))) (forall ((o2_22@@57 T@Ref) (f_37@@57 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@57 f_37@@57) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) o2_22@@57 f_37@@57) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@57 f_37@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@57 f_37@@57))
))) (forall ((o2_22@@58 T@Ref) (f_37@@58 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@12) null (PredicateMaskField_5122 pm_f_22@@9))) o2_22@@58 f_37@@58) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@12) o2_22@@58 f_37@@58) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@58 f_37@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@9) o2_22@@58 f_37@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsPredicateField_5122_5123 pm_f_22@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9287) (ExhaleHeap@@10 T@PolymorphicMapType_9287) (Mask@@11 T@PolymorphicMapType_9308) (pm_f_22@@10 T@Field_5093_5123) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5093_5123 Mask@@11 null pm_f_22@@10) (IsPredicateField_5093_34410 pm_f_22@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@59 T@Ref) (f_37@@59 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@59 f_37@@59) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@13) o2_22@@59 f_37@@59) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@59 f_37@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@59 f_37@@59))
)) (forall ((o2_22@@60 T@Ref) (f_37@@60 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@60 f_37@@60) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@13) o2_22@@60 f_37@@60) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@60 f_37@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@60 f_37@@60))
))) (forall ((o2_22@@61 T@Ref) (f_37@@61 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@61 f_37@@61) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@13) o2_22@@61 f_37@@61) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@61 f_37@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@61 f_37@@61))
))) (forall ((o2_22@@62 T@Ref) (f_37@@62 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@62 f_37@@62) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) o2_22@@62 f_37@@62) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@62 f_37@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@62 f_37@@62))
))) (forall ((o2_22@@63 T@Ref) (f_37@@63 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@63 f_37@@63) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@13) o2_22@@63 f_37@@63) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@63 f_37@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@63 f_37@@63))
))) (forall ((o2_22@@64 T@Ref) (f_37@@64 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@64 f_37@@64) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@13) o2_22@@64 f_37@@64) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@64 f_37@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@64 f_37@@64))
))) (forall ((o2_22@@65 T@Ref) (f_37@@65 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@65 f_37@@65) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@13) o2_22@@65 f_37@@65) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@65 f_37@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@65 f_37@@65))
))) (forall ((o2_22@@66 T@Ref) (f_37@@66 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@66 f_37@@66) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@13) o2_22@@66 f_37@@66) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@66 f_37@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@66 f_37@@66))
))) (forall ((o2_22@@67 T@Ref) (f_37@@67 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@67 f_37@@67) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@13) o2_22@@67 f_37@@67) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@67 f_37@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@67 f_37@@67))
))) (forall ((o2_22@@68 T@Ref) (f_37@@68 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@68 f_37@@68) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@13) o2_22@@68 f_37@@68) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@68 f_37@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@68 f_37@@68))
))) (forall ((o2_22@@69 T@Ref) (f_37@@69 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@69 f_37@@69) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@13) o2_22@@69 f_37@@69) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@69 f_37@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@69 f_37@@69))
))) (forall ((o2_22@@70 T@Ref) (f_37@@70 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@70 f_37@@70) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@13) o2_22@@70 f_37@@70) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@70 f_37@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@70 f_37@@70))
))) (forall ((o2_22@@71 T@Ref) (f_37@@71 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@71 f_37@@71) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@13) o2_22@@71 f_37@@71) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@71 f_37@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@71 f_37@@71))
))) (forall ((o2_22@@72 T@Ref) (f_37@@72 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@72 f_37@@72) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@13) o2_22@@72 f_37@@72) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@72 f_37@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@72 f_37@@72))
))) (forall ((o2_22@@73 T@Ref) (f_37@@73 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@73 f_37@@73) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@13) o2_22@@73 f_37@@73) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@73 f_37@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@73 f_37@@73))
))) (forall ((o2_22@@74 T@Ref) (f_37@@74 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@74 f_37@@74) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@13) o2_22@@74 f_37@@74) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@74 f_37@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@74 f_37@@74))
))) (forall ((o2_22@@75 T@Ref) (f_37@@75 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@75 f_37@@75) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@13) o2_22@@75 f_37@@75) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@75 f_37@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@75 f_37@@75))
))) (forall ((o2_22@@76 T@Ref) (f_37@@76 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@76 f_37@@76) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@13) o2_22@@76 f_37@@76) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@76 f_37@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@76 f_37@@76))
))) (forall ((o2_22@@77 T@Ref) (f_37@@77 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@77 f_37@@77) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@13) o2_22@@77 f_37@@77) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@77 f_37@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@77 f_37@@77))
))) (forall ((o2_22@@78 T@Ref) (f_37@@78 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@13) null (PredicateMaskField_5093 pm_f_22@@10))) o2_22@@78 f_37@@78) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@13) o2_22@@78 f_37@@78) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@78 f_37@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@10) o2_22@@78 f_37@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsPredicateField_5093_34410 pm_f_22@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9287) (ExhaleHeap@@11 T@PolymorphicMapType_9287) (Mask@@12 T@PolymorphicMapType_9308) (pm_f_22@@11 T@Field_13253_13254) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (and (HasDirectPerm_13253_5123 Mask@@12 null pm_f_22@@11) (IsWandField_13253_42107 pm_f_22@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@79 T@Ref) (f_37@@79 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@79 f_37@@79) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@14) o2_22@@79 f_37@@79) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@79 f_37@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@79 f_37@@79))
)) (forall ((o2_22@@80 T@Ref) (f_37@@80 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@80 f_37@@80) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@14) o2_22@@80 f_37@@80) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@80 f_37@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@80 f_37@@80))
))) (forall ((o2_22@@81 T@Ref) (f_37@@81 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@81 f_37@@81) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@14) o2_22@@81 f_37@@81) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@81 f_37@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@81 f_37@@81))
))) (forall ((o2_22@@82 T@Ref) (f_37@@82 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@82 f_37@@82) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@14) o2_22@@82 f_37@@82) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@82 f_37@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@82 f_37@@82))
))) (forall ((o2_22@@83 T@Ref) (f_37@@83 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@83 f_37@@83) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@14) o2_22@@83 f_37@@83) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@83 f_37@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@83 f_37@@83))
))) (forall ((o2_22@@84 T@Ref) (f_37@@84 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@84 f_37@@84) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@14) o2_22@@84 f_37@@84) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@84 f_37@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@84 f_37@@84))
))) (forall ((o2_22@@85 T@Ref) (f_37@@85 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@85 f_37@@85) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@14) o2_22@@85 f_37@@85) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@85 f_37@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@85 f_37@@85))
))) (forall ((o2_22@@86 T@Ref) (f_37@@86 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@86 f_37@@86) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@14) o2_22@@86 f_37@@86) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@86 f_37@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@86 f_37@@86))
))) (forall ((o2_22@@87 T@Ref) (f_37@@87 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@87 f_37@@87) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@14) o2_22@@87 f_37@@87) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@87 f_37@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@87 f_37@@87))
))) (forall ((o2_22@@88 T@Ref) (f_37@@88 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@88 f_37@@88) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@14) o2_22@@88 f_37@@88) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@88 f_37@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@88 f_37@@88))
))) (forall ((o2_22@@89 T@Ref) (f_37@@89 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@89 f_37@@89) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@14) o2_22@@89 f_37@@89) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@89 f_37@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@89 f_37@@89))
))) (forall ((o2_22@@90 T@Ref) (f_37@@90 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@90 f_37@@90) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@14) o2_22@@90 f_37@@90) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@90 f_37@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@90 f_37@@90))
))) (forall ((o2_22@@91 T@Ref) (f_37@@91 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@91 f_37@@91) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@14) o2_22@@91 f_37@@91) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@91 f_37@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@91 f_37@@91))
))) (forall ((o2_22@@92 T@Ref) (f_37@@92 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@92 f_37@@92) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) o2_22@@92 f_37@@92) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@92 f_37@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@92 f_37@@92))
))) (forall ((o2_22@@93 T@Ref) (f_37@@93 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@93 f_37@@93) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@14) o2_22@@93 f_37@@93) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@93 f_37@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@93 f_37@@93))
))) (forall ((o2_22@@94 T@Ref) (f_37@@94 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@94 f_37@@94) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@14) o2_22@@94 f_37@@94) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@94 f_37@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@94 f_37@@94))
))) (forall ((o2_22@@95 T@Ref) (f_37@@95 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@95 f_37@@95) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@14) o2_22@@95 f_37@@95) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@95 f_37@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@95 f_37@@95))
))) (forall ((o2_22@@96 T@Ref) (f_37@@96 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@96 f_37@@96) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@14) o2_22@@96 f_37@@96) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@96 f_37@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@96 f_37@@96))
))) (forall ((o2_22@@97 T@Ref) (f_37@@97 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@97 f_37@@97) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@14) o2_22@@97 f_37@@97) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@97 f_37@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@97 f_37@@97))
))) (forall ((o2_22@@98 T@Ref) (f_37@@98 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@14) null (WandMaskField_13253 pm_f_22@@11))) o2_22@@98 f_37@@98) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@14) o2_22@@98 f_37@@98) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@98 f_37@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@11) o2_22@@98 f_37@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (IsWandField_13253_42107 pm_f_22@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9287) (ExhaleHeap@@12 T@PolymorphicMapType_9287) (Mask@@13 T@PolymorphicMapType_9308) (pm_f_22@@12 T@Field_12704_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (=> (and (HasDirectPerm_12675_5123 Mask@@13 null pm_f_22@@12) (IsWandField_5074_5075 pm_f_22@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@99 T@Ref) (f_37@@99 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@99 f_37@@99) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@15) o2_22@@99 f_37@@99) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@99 f_37@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@99 f_37@@99))
)) (forall ((o2_22@@100 T@Ref) (f_37@@100 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@100 f_37@@100) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@15) o2_22@@100 f_37@@100) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@100 f_37@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@100 f_37@@100))
))) (forall ((o2_22@@101 T@Ref) (f_37@@101 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@101 f_37@@101) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@15) o2_22@@101 f_37@@101) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@101 f_37@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@101 f_37@@101))
))) (forall ((o2_22@@102 T@Ref) (f_37@@102 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@102 f_37@@102) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@15) o2_22@@102 f_37@@102) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@102 f_37@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@102 f_37@@102))
))) (forall ((o2_22@@103 T@Ref) (f_37@@103 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@103 f_37@@103) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@15) o2_22@@103 f_37@@103) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@103 f_37@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@103 f_37@@103))
))) (forall ((o2_22@@104 T@Ref) (f_37@@104 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@104 f_37@@104) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@15) o2_22@@104 f_37@@104) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@104 f_37@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@104 f_37@@104))
))) (forall ((o2_22@@105 T@Ref) (f_37@@105 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@105 f_37@@105) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@15) o2_22@@105 f_37@@105) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@105 f_37@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@105 f_37@@105))
))) (forall ((o2_22@@106 T@Ref) (f_37@@106 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@106 f_37@@106) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@15) o2_22@@106 f_37@@106) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@106 f_37@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@106 f_37@@106))
))) (forall ((o2_22@@107 T@Ref) (f_37@@107 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@107 f_37@@107) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) o2_22@@107 f_37@@107) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@107 f_37@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@107 f_37@@107))
))) (forall ((o2_22@@108 T@Ref) (f_37@@108 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@108 f_37@@108) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@15) o2_22@@108 f_37@@108) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@108 f_37@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@108 f_37@@108))
))) (forall ((o2_22@@109 T@Ref) (f_37@@109 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@109 f_37@@109) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@15) o2_22@@109 f_37@@109) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@109 f_37@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@109 f_37@@109))
))) (forall ((o2_22@@110 T@Ref) (f_37@@110 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@110 f_37@@110) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@15) o2_22@@110 f_37@@110) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@110 f_37@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@110 f_37@@110))
))) (forall ((o2_22@@111 T@Ref) (f_37@@111 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@111 f_37@@111) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@15) o2_22@@111 f_37@@111) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@111 f_37@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@111 f_37@@111))
))) (forall ((o2_22@@112 T@Ref) (f_37@@112 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@112 f_37@@112) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@15) o2_22@@112 f_37@@112) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@112 f_37@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@112 f_37@@112))
))) (forall ((o2_22@@113 T@Ref) (f_37@@113 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@113 f_37@@113) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@15) o2_22@@113 f_37@@113) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@113 f_37@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@113 f_37@@113))
))) (forall ((o2_22@@114 T@Ref) (f_37@@114 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@114 f_37@@114) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@15) o2_22@@114 f_37@@114) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@114 f_37@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@114 f_37@@114))
))) (forall ((o2_22@@115 T@Ref) (f_37@@115 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@115 f_37@@115) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@15) o2_22@@115 f_37@@115) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@115 f_37@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@115 f_37@@115))
))) (forall ((o2_22@@116 T@Ref) (f_37@@116 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@116 f_37@@116) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@15) o2_22@@116 f_37@@116) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@116 f_37@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@116 f_37@@116))
))) (forall ((o2_22@@117 T@Ref) (f_37@@117 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@117 f_37@@117) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@15) o2_22@@117 f_37@@117) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@117 f_37@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@117 f_37@@117))
))) (forall ((o2_22@@118 T@Ref) (f_37@@118 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@15) null (WandMaskField_5074 pm_f_22@@12))) o2_22@@118 f_37@@118) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@15) o2_22@@118 f_37@@118) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@118 f_37@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@12) o2_22@@118 f_37@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (IsWandField_5074_5075 pm_f_22@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9287) (ExhaleHeap@@13 T@PolymorphicMapType_9287) (Mask@@14 T@PolymorphicMapType_9308) (pm_f_22@@13 T@Field_14240_14241) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (=> (and (HasDirectPerm_5122_5123 Mask@@14 null pm_f_22@@13) (IsWandField_5122_41425 pm_f_22@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@119 T@Ref) (f_37@@119 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@119 f_37@@119) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@16) o2_22@@119 f_37@@119) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@119 f_37@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@119 f_37@@119))
)) (forall ((o2_22@@120 T@Ref) (f_37@@120 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@120 f_37@@120) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@16) o2_22@@120 f_37@@120) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@120 f_37@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@120 f_37@@120))
))) (forall ((o2_22@@121 T@Ref) (f_37@@121 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@121 f_37@@121) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@16) o2_22@@121 f_37@@121) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@121 f_37@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@121 f_37@@121))
))) (forall ((o2_22@@122 T@Ref) (f_37@@122 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@122 f_37@@122) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@16) o2_22@@122 f_37@@122) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@122 f_37@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@122 f_37@@122))
))) (forall ((o2_22@@123 T@Ref) (f_37@@123 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@123 f_37@@123) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@16) o2_22@@123 f_37@@123) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@123 f_37@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@123 f_37@@123))
))) (forall ((o2_22@@124 T@Ref) (f_37@@124 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@124 f_37@@124) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@16) o2_22@@124 f_37@@124) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@124 f_37@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@124 f_37@@124))
))) (forall ((o2_22@@125 T@Ref) (f_37@@125 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@125 f_37@@125) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@16) o2_22@@125 f_37@@125) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@125 f_37@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@125 f_37@@125))
))) (forall ((o2_22@@126 T@Ref) (f_37@@126 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@126 f_37@@126) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@16) o2_22@@126 f_37@@126) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@126 f_37@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@126 f_37@@126))
))) (forall ((o2_22@@127 T@Ref) (f_37@@127 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@127 f_37@@127) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@16) o2_22@@127 f_37@@127) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@127 f_37@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@127 f_37@@127))
))) (forall ((o2_22@@128 T@Ref) (f_37@@128 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@128 f_37@@128) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@16) o2_22@@128 f_37@@128) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@128 f_37@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@128 f_37@@128))
))) (forall ((o2_22@@129 T@Ref) (f_37@@129 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@129 f_37@@129) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@16) o2_22@@129 f_37@@129) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@129 f_37@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@129 f_37@@129))
))) (forall ((o2_22@@130 T@Ref) (f_37@@130 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@130 f_37@@130) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@16) o2_22@@130 f_37@@130) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@130 f_37@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@130 f_37@@130))
))) (forall ((o2_22@@131 T@Ref) (f_37@@131 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@131 f_37@@131) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@16) o2_22@@131 f_37@@131) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@131 f_37@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@131 f_37@@131))
))) (forall ((o2_22@@132 T@Ref) (f_37@@132 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@132 f_37@@132) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@16) o2_22@@132 f_37@@132) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@132 f_37@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@132 f_37@@132))
))) (forall ((o2_22@@133 T@Ref) (f_37@@133 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@133 f_37@@133) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@16) o2_22@@133 f_37@@133) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@133 f_37@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@133 f_37@@133))
))) (forall ((o2_22@@134 T@Ref) (f_37@@134 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@134 f_37@@134) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@16) o2_22@@134 f_37@@134) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@134 f_37@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@134 f_37@@134))
))) (forall ((o2_22@@135 T@Ref) (f_37@@135 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@135 f_37@@135) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@16) o2_22@@135 f_37@@135) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@135 f_37@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@135 f_37@@135))
))) (forall ((o2_22@@136 T@Ref) (f_37@@136 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@136 f_37@@136) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@16) o2_22@@136 f_37@@136) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@136 f_37@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@136 f_37@@136))
))) (forall ((o2_22@@137 T@Ref) (f_37@@137 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@137 f_37@@137) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) o2_22@@137 f_37@@137) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@137 f_37@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@137 f_37@@137))
))) (forall ((o2_22@@138 T@Ref) (f_37@@138 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@16) null (WandMaskField_5122 pm_f_22@@13))) o2_22@@138 f_37@@138) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@16) o2_22@@138 f_37@@138) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@138 f_37@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@13) o2_22@@138 f_37@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@14) (IsWandField_5122_41425 pm_f_22@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9287) (ExhaleHeap@@14 T@PolymorphicMapType_9287) (Mask@@15 T@PolymorphicMapType_9308) (pm_f_22@@14 T@Field_5093_5123) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (=> (and (HasDirectPerm_5093_5123 Mask@@15 null pm_f_22@@14) (IsWandField_5093_41068 pm_f_22@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_22@@139 T@Ref) (f_37@@139 T@Field_9360_9361) ) (!  (=> (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@139 f_37@@139) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@17) o2_22@@139 f_37@@139) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@139 f_37@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@139 f_37@@139))
)) (forall ((o2_22@@140 T@Ref) (f_37@@140 T@Field_9347_53) ) (!  (=> (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@140 f_37@@140) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@17) o2_22@@140 f_37@@140) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@140 f_37@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@140 f_37@@140))
))) (forall ((o2_22@@141 T@Ref) (f_37@@141 T@Field_5093_1195) ) (!  (=> (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@141 f_37@@141) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@17) o2_22@@141 f_37@@141) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@141 f_37@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@141 f_37@@141))
))) (forall ((o2_22@@142 T@Ref) (f_37@@142 T@Field_5093_12693) ) (!  (=> (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@142 f_37@@142) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) o2_22@@142 f_37@@142) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@142 f_37@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@142 f_37@@142))
))) (forall ((o2_22@@143 T@Ref) (f_37@@143 T@Field_5093_5123) ) (!  (=> (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@143 f_37@@143) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@17) o2_22@@143 f_37@@143) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@143 f_37@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@143 f_37@@143))
))) (forall ((o2_22@@144 T@Ref) (f_37@@144 T@Field_12675_5094) ) (!  (=> (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@144 f_37@@144) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@17) o2_22@@144 f_37@@144) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@144 f_37@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@144 f_37@@144))
))) (forall ((o2_22@@145 T@Ref) (f_37@@145 T@Field_12675_53) ) (!  (=> (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@145 f_37@@145) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@17) o2_22@@145 f_37@@145) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@145 f_37@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@145 f_37@@145))
))) (forall ((o2_22@@146 T@Ref) (f_37@@146 T@Field_12675_1195) ) (!  (=> (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@146 f_37@@146) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@17) o2_22@@146 f_37@@146) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@146 f_37@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@146 f_37@@146))
))) (forall ((o2_22@@147 T@Ref) (f_37@@147 T@Field_12688_12693) ) (!  (=> (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@147 f_37@@147) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@17) o2_22@@147 f_37@@147) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@147 f_37@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@147 f_37@@147))
))) (forall ((o2_22@@148 T@Ref) (f_37@@148 T@Field_12704_12705) ) (!  (=> (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@148 f_37@@148) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@17) o2_22@@148 f_37@@148) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@148 f_37@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@148 f_37@@148))
))) (forall ((o2_22@@149 T@Ref) (f_37@@149 T@Field_13253_5094) ) (!  (=> (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@149 f_37@@149) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@17) o2_22@@149 f_37@@149) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@149 f_37@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@149 f_37@@149))
))) (forall ((o2_22@@150 T@Ref) (f_37@@150 T@Field_13253_53) ) (!  (=> (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@150 f_37@@150) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@17) o2_22@@150 f_37@@150) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@150 f_37@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@150 f_37@@150))
))) (forall ((o2_22@@151 T@Ref) (f_37@@151 T@Field_13253_1195) ) (!  (=> (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@151 f_37@@151) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@17) o2_22@@151 f_37@@151) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@151 f_37@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@151 f_37@@151))
))) (forall ((o2_22@@152 T@Ref) (f_37@@152 T@Field_13266_13271) ) (!  (=> (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@152 f_37@@152) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@17) o2_22@@152 f_37@@152) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@152 f_37@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@152 f_37@@152))
))) (forall ((o2_22@@153 T@Ref) (f_37@@153 T@Field_13253_13254) ) (!  (=> (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@153 f_37@@153) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@17) o2_22@@153 f_37@@153) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@153 f_37@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@153 f_37@@153))
))) (forall ((o2_22@@154 T@Ref) (f_37@@154 T@Field_5122_5094) ) (!  (=> (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@154 f_37@@154) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@17) o2_22@@154 f_37@@154) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@154 f_37@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@154 f_37@@154))
))) (forall ((o2_22@@155 T@Ref) (f_37@@155 T@Field_5122_53) ) (!  (=> (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@155 f_37@@155) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@17) o2_22@@155 f_37@@155) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@155 f_37@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@155 f_37@@155))
))) (forall ((o2_22@@156 T@Ref) (f_37@@156 T@Field_5122_1195) ) (!  (=> (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@156 f_37@@156) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@17) o2_22@@156 f_37@@156) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@156 f_37@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@156 f_37@@156))
))) (forall ((o2_22@@157 T@Ref) (f_37@@157 T@Field_14485_14490) ) (!  (=> (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@157 f_37@@157) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@17) o2_22@@157 f_37@@157) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@157 f_37@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@157 f_37@@157))
))) (forall ((o2_22@@158 T@Ref) (f_37@@158 T@Field_14240_14241) ) (!  (=> (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@17) null (WandMaskField_5093 pm_f_22@@14))) o2_22@@158 f_37@@158) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@17) o2_22@@158 f_37@@158) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@158 f_37@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@14) o2_22@@158 f_37@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@15) (IsWandField_5093_41068 pm_f_22@@14))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@3) (P x2)) (= x@@3 x2))
 :qid |stdinbpl.242:15|
 :skolemid |32|
 :pattern ( (P x@@3) (P x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@4) (|P#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.246:15|
 :skolemid |33|
 :pattern ( (|P#sm| x@@4) (|P#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (Q x@@5) (Q x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.303:15|
 :skolemid |38|
 :pattern ( (Q x@@5) (Q x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|Q#sm| x@@6) (|Q#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.307:15|
 :skolemid |39|
 :pattern ( (|Q#sm| x@@6) (|Q#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9287) (ExhaleHeap@@15 T@PolymorphicMapType_9287) (Mask@@16 T@PolymorphicMapType_9308) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (=> (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@18) o_46 $allocated) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@15) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@16) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@15) o_46 $allocated))
)))
(assert (forall ((p T@Field_12704_12705) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12675_12675 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12675_12675 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5093_5123) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9347_9347 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9347_9347 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_14240_14241) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5122_5122 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5122_5122 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_13253_13254) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_5097_13253 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5097_13253 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_5093_5094 next)))
(assert  (not (IsWandField_5093_5094 next)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9287) (ExhaleHeap@@16 T@PolymorphicMapType_9287) (Mask@@17 T@PolymorphicMapType_9308) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17) (succHeap Heap@@19 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9308) (o_2@@19 T@Ref) (f_4@@19 T@Field_12688_12693) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5065_55797 f_4@@19))) (not (IsWandField_5065_55813 f_4@@19))) (<= (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9308) (o_2@@20 T@Ref) (f_4@@20 T@Field_12675_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5065_53 f_4@@20))) (not (IsWandField_5065_53 f_4@@20))) (<= (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9308) (o_2@@21 T@Ref) (f_4@@21 T@Field_12675_1195) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5065_1195 f_4@@21))) (not (IsWandField_5065_1195 f_4@@21))) (<= (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9308) (o_2@@22 T@Ref) (f_4@@22 T@Field_12704_12705) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5074_5075 f_4@@22))) (not (IsWandField_5074_5075 f_4@@22))) (<= (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9308) (o_2@@23 T@Ref) (f_4@@23 T@Field_12675_5094) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@@22) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5065_5094 f_4@@23))) (not (IsWandField_5065_5094 f_4@@23))) (<= (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@@22) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@@22) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9308) (o_2@@24 T@Ref) (f_4@@24 T@Field_13266_13271) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@@23) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5097_54980 f_4@@24))) (not (IsWandField_5097_54996 f_4@@24))) (<= (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@@23) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@@23) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9308) (o_2@@25 T@Ref) (f_4@@25 T@Field_13253_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@@24) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5097_53 f_4@@25))) (not (IsWandField_5097_53 f_4@@25))) (<= (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@@24) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@@24) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9308) (o_2@@26 T@Ref) (f_4@@26 T@Field_13253_1195) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@@25) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5097_1195 f_4@@26))) (not (IsWandField_5097_1195 f_4@@26))) (<= (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@@25) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@@25) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_9308) (o_2@@27 T@Ref) (f_4@@27 T@Field_13253_13254) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@@26) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5097_5098 f_4@@27))) (not (IsWandField_13253_42107 f_4@@27))) (<= (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@@26) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@@26) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_9308) (o_2@@28 T@Ref) (f_4@@28 T@Field_13253_5094) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@@27) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5097_5094 f_4@@28))) (not (IsWandField_5097_5094 f_4@@28))) (<= (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@@27) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@@27) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_9308) (o_2@@29 T@Ref) (f_4@@29 T@Field_14485_14490) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@@28) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5122_54149 f_4@@29))) (not (IsWandField_5122_54165 f_4@@29))) (<= (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@@28) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@@28) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_9308) (o_2@@30 T@Ref) (f_4@@30 T@Field_5122_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@@29) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_5122_53 f_4@@30))) (not (IsWandField_5122_53 f_4@@30))) (<= (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@@29) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@@29) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_9308) (o_2@@31 T@Ref) (f_4@@31 T@Field_5122_1195) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@@30) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_5122_1195 f_4@@31))) (not (IsWandField_5122_1195 f_4@@31))) (<= (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@@30) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@@30) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_9308) (o_2@@32 T@Ref) (f_4@@32 T@Field_14240_14241) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@@31) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_5122_5123 f_4@@32))) (not (IsWandField_5122_41425 f_4@@32))) (<= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@@31) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@@31) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_9308) (o_2@@33 T@Ref) (f_4@@33 T@Field_5122_5094) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@@32) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_5122_5094 f_4@@33))) (not (IsWandField_5122_5094 f_4@@33))) (<= (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@@32) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@@32) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_9308) (o_2@@34 T@Ref) (f_4@@34 T@Field_5093_12693) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@@33) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_5093_53318 f_4@@34))) (not (IsWandField_5093_53334 f_4@@34))) (<= (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@@33) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@@33) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_9308) (o_2@@35 T@Ref) (f_4@@35 T@Field_9347_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@@34) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_5093_53 f_4@@35))) (not (IsWandField_5093_53 f_4@@35))) (<= (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@@34) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@@34) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_9308) (o_2@@36 T@Ref) (f_4@@36 T@Field_5093_1195) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@@35) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_5093_1195 f_4@@36))) (not (IsWandField_5093_1195 f_4@@36))) (<= (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@@35) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@@35) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_9308) (o_2@@37 T@Ref) (f_4@@37 T@Field_5093_5123) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@@36) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_5093_34410 f_4@@37))) (not (IsWandField_5093_41068 f_4@@37))) (<= (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@@36) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@@36) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_9308) (o_2@@38 T@Ref) (f_4@@38 T@Field_9360_9361) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@@37) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_5093_5094 f_4@@38))) (not (IsWandField_5093_5094 f_4@@38))) (<= (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@@37) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@@37) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_9308) (o_2@@39 T@Ref) (f_4@@39 T@Field_13266_13271) ) (! (= (HasDirectPerm_13253_34165 Mask@@38 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@@38) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13253_34165 Mask@@38 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_9308) (o_2@@40 T@Ref) (f_4@@40 T@Field_13253_1195) ) (! (= (HasDirectPerm_13253_1195 Mask@@39 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@@39) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13253_1195 Mask@@39 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_9308) (o_2@@41 T@Ref) (f_4@@41 T@Field_13253_53) ) (! (= (HasDirectPerm_13253_53 Mask@@40 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@@40) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13253_53 Mask@@40 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_9308) (o_2@@42 T@Ref) (f_4@@42 T@Field_13253_13254) ) (! (= (HasDirectPerm_13253_5123 Mask@@41 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@@41) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13253_5123 Mask@@41 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_9308) (o_2@@43 T@Ref) (f_4@@43 T@Field_13253_5094) ) (! (= (HasDirectPerm_13253_5094 Mask@@42 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@@42) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13253_5094 Mask@@42 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_9308) (o_2@@44 T@Ref) (f_4@@44 T@Field_12688_12693) ) (! (= (HasDirectPerm_12675_33047 Mask@@43 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@@43) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12675_33047 Mask@@43 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_9308) (o_2@@45 T@Ref) (f_4@@45 T@Field_12675_1195) ) (! (= (HasDirectPerm_12675_1195 Mask@@44 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@@44) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12675_1195 Mask@@44 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_9308) (o_2@@46 T@Ref) (f_4@@46 T@Field_12675_53) ) (! (= (HasDirectPerm_12675_53 Mask@@45 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@@45) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12675_53 Mask@@45 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_9308) (o_2@@47 T@Ref) (f_4@@47 T@Field_12704_12705) ) (! (= (HasDirectPerm_12675_5123 Mask@@46 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@@46) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12675_5123 Mask@@46 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_9308) (o_2@@48 T@Ref) (f_4@@48 T@Field_12675_5094) ) (! (= (HasDirectPerm_12675_5094 Mask@@47 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@@47) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12675_5094 Mask@@47 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_9308) (o_2@@49 T@Ref) (f_4@@49 T@Field_14485_14490) ) (! (= (HasDirectPerm_5122_31913 Mask@@48 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@@48) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5122_31913 Mask@@48 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_9308) (o_2@@50 T@Ref) (f_4@@50 T@Field_5122_1195) ) (! (= (HasDirectPerm_5122_1195 Mask@@49 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@@49) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5122_1195 Mask@@49 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_9308) (o_2@@51 T@Ref) (f_4@@51 T@Field_5122_53) ) (! (= (HasDirectPerm_5122_53 Mask@@50 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@@50) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5122_53 Mask@@50 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_9308) (o_2@@52 T@Ref) (f_4@@52 T@Field_14240_14241) ) (! (= (HasDirectPerm_5122_5123 Mask@@51 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@@51) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5122_5123 Mask@@51 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_9308) (o_2@@53 T@Ref) (f_4@@53 T@Field_5122_5094) ) (! (= (HasDirectPerm_5122_5094 Mask@@52 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@@52) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5122_5094 Mask@@52 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_9308) (o_2@@54 T@Ref) (f_4@@54 T@Field_5093_12693) ) (! (= (HasDirectPerm_5093_30772 Mask@@53 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@@53) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5093_30772 Mask@@53 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_9308) (o_2@@55 T@Ref) (f_4@@55 T@Field_5093_1195) ) (! (= (HasDirectPerm_5093_1195 Mask@@54 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@@54) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5093_1195 Mask@@54 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_9308) (o_2@@56 T@Ref) (f_4@@56 T@Field_9347_53) ) (! (= (HasDirectPerm_5093_53 Mask@@55 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@@55) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5093_53 Mask@@55 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_9308) (o_2@@57 T@Ref) (f_4@@57 T@Field_5093_5123) ) (! (= (HasDirectPerm_5093_5123 Mask@@56 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@@56) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5093_5123 Mask@@56 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_9308) (o_2@@58 T@Ref) (f_4@@58 T@Field_9360_9361) ) (! (= (HasDirectPerm_5093_5094 Mask@@57 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@@57) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5093_5094 Mask@@57 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9287) (ExhaleHeap@@17 T@PolymorphicMapType_9287) (Mask@@58 T@PolymorphicMapType_9308) (o_46@@0 T@Ref) (f_37@@159 T@Field_13266_13271) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_13253_34165 Mask@@58 o_46@@0 f_37@@159) (= (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@20) o_46@@0 f_37@@159) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@17) o_46@@0 f_37@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@@17) o_46@@0 f_37@@159))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9287) (ExhaleHeap@@18 T@PolymorphicMapType_9287) (Mask@@59 T@PolymorphicMapType_9308) (o_46@@1 T@Ref) (f_37@@160 T@Field_13253_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_13253_1195 Mask@@59 o_46@@1 f_37@@160) (= (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@21) o_46@@1 f_37@@160) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@18) o_46@@1 f_37@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@@18) o_46@@1 f_37@@160))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9287) (ExhaleHeap@@19 T@PolymorphicMapType_9287) (Mask@@60 T@PolymorphicMapType_9308) (o_46@@2 T@Ref) (f_37@@161 T@Field_13253_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_13253_53 Mask@@60 o_46@@2 f_37@@161) (= (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@22) o_46@@2 f_37@@161) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@19) o_46@@2 f_37@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@@19) o_46@@2 f_37@@161))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9287) (ExhaleHeap@@20 T@PolymorphicMapType_9287) (Mask@@61 T@PolymorphicMapType_9308) (o_46@@3 T@Ref) (f_37@@162 T@Field_13253_13254) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_13253_5123 Mask@@61 o_46@@3 f_37@@162) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@23) o_46@@3 f_37@@162) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@20) o_46@@3 f_37@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@@20) o_46@@3 f_37@@162))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9287) (ExhaleHeap@@21 T@PolymorphicMapType_9287) (Mask@@62 T@PolymorphicMapType_9308) (o_46@@4 T@Ref) (f_37@@163 T@Field_13253_5094) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_13253_5094 Mask@@62 o_46@@4 f_37@@163) (= (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@24) o_46@@4 f_37@@163) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@21) o_46@@4 f_37@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@@21) o_46@@4 f_37@@163))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9287) (ExhaleHeap@@22 T@PolymorphicMapType_9287) (Mask@@63 T@PolymorphicMapType_9308) (o_46@@5 T@Ref) (f_37@@164 T@Field_12688_12693) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_12675_33047 Mask@@63 o_46@@5 f_37@@164) (= (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@25) o_46@@5 f_37@@164) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@22) o_46@@5 f_37@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@@22) o_46@@5 f_37@@164))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9287) (ExhaleHeap@@23 T@PolymorphicMapType_9287) (Mask@@64 T@PolymorphicMapType_9308) (o_46@@6 T@Ref) (f_37@@165 T@Field_12675_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_12675_1195 Mask@@64 o_46@@6 f_37@@165) (= (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@26) o_46@@6 f_37@@165) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@23) o_46@@6 f_37@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@@23) o_46@@6 f_37@@165))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9287) (ExhaleHeap@@24 T@PolymorphicMapType_9287) (Mask@@65 T@PolymorphicMapType_9308) (o_46@@7 T@Ref) (f_37@@166 T@Field_12675_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_12675_53 Mask@@65 o_46@@7 f_37@@166) (= (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@27) o_46@@7 f_37@@166) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@24) o_46@@7 f_37@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@@24) o_46@@7 f_37@@166))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9287) (ExhaleHeap@@25 T@PolymorphicMapType_9287) (Mask@@66 T@PolymorphicMapType_9308) (o_46@@8 T@Ref) (f_37@@167 T@Field_12704_12705) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_12675_5123 Mask@@66 o_46@@8 f_37@@167) (= (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@28) o_46@@8 f_37@@167) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@25) o_46@@8 f_37@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@@25) o_46@@8 f_37@@167))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9287) (ExhaleHeap@@26 T@PolymorphicMapType_9287) (Mask@@67 T@PolymorphicMapType_9308) (o_46@@9 T@Ref) (f_37@@168 T@Field_12675_5094) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_12675_5094 Mask@@67 o_46@@9 f_37@@168) (= (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@29) o_46@@9 f_37@@168) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@26) o_46@@9 f_37@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@@26) o_46@@9 f_37@@168))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9287) (ExhaleHeap@@27 T@PolymorphicMapType_9287) (Mask@@68 T@PolymorphicMapType_9308) (o_46@@10 T@Ref) (f_37@@169 T@Field_14485_14490) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_5122_31913 Mask@@68 o_46@@10 f_37@@169) (= (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@30) o_46@@10 f_37@@169) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@27) o_46@@10 f_37@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@@27) o_46@@10 f_37@@169))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9287) (ExhaleHeap@@28 T@PolymorphicMapType_9287) (Mask@@69 T@PolymorphicMapType_9308) (o_46@@11 T@Ref) (f_37@@170 T@Field_5122_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_5122_1195 Mask@@69 o_46@@11 f_37@@170) (= (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@31) o_46@@11 f_37@@170) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@28) o_46@@11 f_37@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@@28) o_46@@11 f_37@@170))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9287) (ExhaleHeap@@29 T@PolymorphicMapType_9287) (Mask@@70 T@PolymorphicMapType_9308) (o_46@@12 T@Ref) (f_37@@171 T@Field_5122_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_5122_53 Mask@@70 o_46@@12 f_37@@171) (= (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@32) o_46@@12 f_37@@171) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@29) o_46@@12 f_37@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@@29) o_46@@12 f_37@@171))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9287) (ExhaleHeap@@30 T@PolymorphicMapType_9287) (Mask@@71 T@PolymorphicMapType_9308) (o_46@@13 T@Ref) (f_37@@172 T@Field_14240_14241) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_5122_5123 Mask@@71 o_46@@13 f_37@@172) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@33) o_46@@13 f_37@@172) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@30) o_46@@13 f_37@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@@30) o_46@@13 f_37@@172))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9287) (ExhaleHeap@@31 T@PolymorphicMapType_9287) (Mask@@72 T@PolymorphicMapType_9308) (o_46@@14 T@Ref) (f_37@@173 T@Field_5122_5094) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (=> (HasDirectPerm_5122_5094 Mask@@72 o_46@@14 f_37@@173) (= (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@34) o_46@@14 f_37@@173) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@31) o_46@@14 f_37@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@31 Mask@@72) (select (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@@31) o_46@@14 f_37@@173))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9287) (ExhaleHeap@@32 T@PolymorphicMapType_9287) (Mask@@73 T@PolymorphicMapType_9308) (o_46@@15 T@Ref) (f_37@@174 T@Field_5093_12693) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (=> (HasDirectPerm_5093_30772 Mask@@73 o_46@@15 f_37@@174) (= (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@35) o_46@@15 f_37@@174) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@32) o_46@@15 f_37@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@32 Mask@@73) (select (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@@32) o_46@@15 f_37@@174))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9287) (ExhaleHeap@@33 T@PolymorphicMapType_9287) (Mask@@74 T@PolymorphicMapType_9308) (o_46@@16 T@Ref) (f_37@@175 T@Field_5093_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (=> (HasDirectPerm_5093_1195 Mask@@74 o_46@@16 f_37@@175) (= (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@36) o_46@@16 f_37@@175) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@33) o_46@@16 f_37@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@33 Mask@@74) (select (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@@33) o_46@@16 f_37@@175))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9287) (ExhaleHeap@@34 T@PolymorphicMapType_9287) (Mask@@75 T@PolymorphicMapType_9308) (o_46@@17 T@Ref) (f_37@@176 T@Field_9347_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (=> (HasDirectPerm_5093_53 Mask@@75 o_46@@17 f_37@@176) (= (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@37) o_46@@17 f_37@@176) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@34) o_46@@17 f_37@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@34 Mask@@75) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@@34) o_46@@17 f_37@@176))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9287) (ExhaleHeap@@35 T@PolymorphicMapType_9287) (Mask@@76 T@PolymorphicMapType_9308) (o_46@@18 T@Ref) (f_37@@177 T@Field_5093_5123) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (=> (HasDirectPerm_5093_5123 Mask@@76 o_46@@18 f_37@@177) (= (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@38) o_46@@18 f_37@@177) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@35) o_46@@18 f_37@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@35 Mask@@76) (select (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@@35) o_46@@18 f_37@@177))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9287) (ExhaleHeap@@36 T@PolymorphicMapType_9287) (Mask@@77 T@PolymorphicMapType_9308) (o_46@@19 T@Ref) (f_37@@178 T@Field_9360_9361) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (=> (HasDirectPerm_5093_5094 Mask@@77 o_46@@19 f_37@@178) (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@39) o_46@@19 f_37@@178) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@36) o_46@@19 f_37@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@36 Mask@@77) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@@36) o_46@@19 f_37@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_12688_12693) ) (! (= (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_12675_53) ) (! (= (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_12675_1195) ) (! (= (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_12704_12705) ) (! (= (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_12675_5094) ) (! (= (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_13266_13271) ) (! (= (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_13253_53) ) (! (= (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_13253_1195) ) (! (= (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_13253_13254) ) (! (= (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_13253_5094) ) (! (= (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_14485_14490) ) (! (= (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_5122_53) ) (! (= (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_5122_1195) ) (! (= (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_14240_14241) ) (! (= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_5122_5094) ) (! (= (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_5093_12693) ) (! (= (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_9347_53) ) (! (= (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_5093_1195) ) (! (= (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_5093_5123) ) (! (= (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_9360_9361) ) (! (= (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9308) (SummandMask1 T@PolymorphicMapType_9308) (SummandMask2 T@PolymorphicMapType_9308) (o_2@@79 T@Ref) (f_4@@79 T@Field_12688_12693) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9308) (SummandMask1@@0 T@PolymorphicMapType_9308) (SummandMask2@@0 T@PolymorphicMapType_9308) (o_2@@80 T@Ref) (f_4@@80 T@Field_12675_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9308) (SummandMask1@@1 T@PolymorphicMapType_9308) (SummandMask2@@1 T@PolymorphicMapType_9308) (o_2@@81 T@Ref) (f_4@@81 T@Field_12675_1195) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9308) (SummandMask1@@2 T@PolymorphicMapType_9308) (SummandMask2@@2 T@PolymorphicMapType_9308) (o_2@@82 T@Ref) (f_4@@82 T@Field_12704_12705) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9308) (SummandMask1@@3 T@PolymorphicMapType_9308) (SummandMask2@@3 T@PolymorphicMapType_9308) (o_2@@83 T@Ref) (f_4@@83 T@Field_12675_5094) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9308) (SummandMask1@@4 T@PolymorphicMapType_9308) (SummandMask2@@4 T@PolymorphicMapType_9308) (o_2@@84 T@Ref) (f_4@@84 T@Field_13266_13271) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9308) (SummandMask1@@5 T@PolymorphicMapType_9308) (SummandMask2@@5 T@PolymorphicMapType_9308) (o_2@@85 T@Ref) (f_4@@85 T@Field_13253_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9308) (SummandMask1@@6 T@PolymorphicMapType_9308) (SummandMask2@@6 T@PolymorphicMapType_9308) (o_2@@86 T@Ref) (f_4@@86 T@Field_13253_1195) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_9308) (SummandMask1@@7 T@PolymorphicMapType_9308) (SummandMask2@@7 T@PolymorphicMapType_9308) (o_2@@87 T@Ref) (f_4@@87 T@Field_13253_13254) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_9308) (SummandMask1@@8 T@PolymorphicMapType_9308) (SummandMask2@@8 T@PolymorphicMapType_9308) (o_2@@88 T@Ref) (f_4@@88 T@Field_13253_5094) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_9308) (SummandMask1@@9 T@PolymorphicMapType_9308) (SummandMask2@@9 T@PolymorphicMapType_9308) (o_2@@89 T@Ref) (f_4@@89 T@Field_14485_14490) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_9308) (SummandMask1@@10 T@PolymorphicMapType_9308) (SummandMask2@@10 T@PolymorphicMapType_9308) (o_2@@90 T@Ref) (f_4@@90 T@Field_5122_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_9308) (SummandMask1@@11 T@PolymorphicMapType_9308) (SummandMask2@@11 T@PolymorphicMapType_9308) (o_2@@91 T@Ref) (f_4@@91 T@Field_5122_1195) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_9308) (SummandMask1@@12 T@PolymorphicMapType_9308) (SummandMask2@@12 T@PolymorphicMapType_9308) (o_2@@92 T@Ref) (f_4@@92 T@Field_14240_14241) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_9308) (SummandMask1@@13 T@PolymorphicMapType_9308) (SummandMask2@@13 T@PolymorphicMapType_9308) (o_2@@93 T@Ref) (f_4@@93 T@Field_5122_5094) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_9308) (SummandMask1@@14 T@PolymorphicMapType_9308) (SummandMask2@@14 T@PolymorphicMapType_9308) (o_2@@94 T@Ref) (f_4@@94 T@Field_5093_12693) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_9308) (SummandMask1@@15 T@PolymorphicMapType_9308) (SummandMask2@@15 T@PolymorphicMapType_9308) (o_2@@95 T@Ref) (f_4@@95 T@Field_9347_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_9308) (SummandMask1@@16 T@PolymorphicMapType_9308) (SummandMask2@@16 T@PolymorphicMapType_9308) (o_2@@96 T@Ref) (f_4@@96 T@Field_5093_1195) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_9308) (SummandMask1@@17 T@PolymorphicMapType_9308) (SummandMask2@@17 T@PolymorphicMapType_9308) (o_2@@97 T@Ref) (f_4@@97 T@Field_5093_5123) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_9308) (SummandMask1@@18 T@PolymorphicMapType_9308) (SummandMask2@@18 T@PolymorphicMapType_9308) (o_2@@98 T@Ref) (f_4@@98 T@Field_9360_9361) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 T@Ref) ) (! (= (getPredWandId_5065_1195 (wand arg1@@4 arg2@@4)) 2)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@4 arg2@@4))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_5097_5098 (P x@@7)) 0)
 :qid |stdinbpl.236:15|
 :skolemid |31|
 :pattern ( (P x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_5122_5123 (Q x@@8)) 1)
 :qid |stdinbpl.297:15|
 :skolemid |37|
 :pattern ( (Q x@@8))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 T@Ref) ) (! (= (|wand#sm| arg1@@5 arg2@@5) (WandMaskField_5074 (|wand#ft| arg1@@5 arg2@@5)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_5074 (|wand#ft| arg1@@5 arg2@@5)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9287) (o_12 T@Ref) (f_24 T@Field_12675_1195) (v Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@40) (store (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@40) o_12 f_24 v) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@40) (store (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@40) o_12 f_24 v) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@40) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9287) (o_12@@0 T@Ref) (f_24@@0 T@Field_12688_12693) (v@@0 T@PolymorphicMapType_9836) ) (! (succHeap Heap@@41 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@41) (store (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@41) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@41) (store (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@41) o_12@@0 f_24@@0 v@@0) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@41) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9287) (o_12@@1 T@Ref) (f_24@@1 T@Field_12704_12705) (v@@1 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@42) (store (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@42) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@42) (store (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@42) o_12@@1 f_24@@1 v@@1) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@42) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9287) (o_12@@2 T@Ref) (f_24@@2 T@Field_12675_5094) (v@@2 T@Ref) ) (! (succHeap Heap@@43 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@43) (store (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@43) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@43) (store (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@43) o_12@@2 f_24@@2 v@@2) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@43) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9287) (o_12@@3 T@Ref) (f_24@@3 T@Field_12675_53) (v@@3 Bool) ) (! (succHeap Heap@@44 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@44) (store (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@44) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@44) (store (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@44) o_12@@3 f_24@@3 v@@3) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@44) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9287) (o_12@@4 T@Ref) (f_24@@4 T@Field_5122_1195) (v@@4 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@45) (store (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@45) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@45) (store (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@45) o_12@@4 f_24@@4 v@@4) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@45) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9287) (o_12@@5 T@Ref) (f_24@@5 T@Field_14485_14490) (v@@5 T@PolymorphicMapType_9836) ) (! (succHeap Heap@@46 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@46) (store (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@46) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@46) (store (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@46) o_12@@5 f_24@@5 v@@5) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@46) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9287) (o_12@@6 T@Ref) (f_24@@6 T@Field_14240_14241) (v@@6 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@47) (store (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@47) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@47) (store (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@47) o_12@@6 f_24@@6 v@@6) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@47) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9287) (o_12@@7 T@Ref) (f_24@@7 T@Field_5122_5094) (v@@7 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@48) (store (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@48) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@48) (store (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@48) o_12@@7 f_24@@7 v@@7) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@48) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9287) (o_12@@8 T@Ref) (f_24@@8 T@Field_5122_53) (v@@8 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@49) (store (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@49) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@49) (store (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@49) o_12@@8 f_24@@8 v@@8) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@49) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9287) (o_12@@9 T@Ref) (f_24@@9 T@Field_13253_1195) (v@@9 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@50) (store (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@50) o_12@@9 f_24@@9 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@50) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@50) (store (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@50) o_12@@9 f_24@@9 v@@9)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9287) (o_12@@10 T@Ref) (f_24@@10 T@Field_13266_13271) (v@@10 T@PolymorphicMapType_9836) ) (! (succHeap Heap@@51 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@51) (store (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@51) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@51) (store (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@51) o_12@@10 f_24@@10 v@@10) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@51) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9287) (o_12@@11 T@Ref) (f_24@@11 T@Field_13253_13254) (v@@11 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@52) (store (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@52) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@52) (store (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@52) o_12@@11 f_24@@11 v@@11) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@52) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9287) (o_12@@12 T@Ref) (f_24@@12 T@Field_13253_5094) (v@@12 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@53) (store (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@53) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@53) (store (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@53) o_12@@12 f_24@@12 v@@12) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@53) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9287) (o_12@@13 T@Ref) (f_24@@13 T@Field_13253_53) (v@@13 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@54) (store (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@54) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@54) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@54) (store (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@54) o_12@@13 f_24@@13 v@@13) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9287) (o_12@@14 T@Ref) (f_24@@14 T@Field_5093_1195) (v@@14 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@55) (store (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@55) o_12@@14 f_24@@14 v@@14) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@55) (store (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@55) o_12@@14 f_24@@14 v@@14) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@55) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9287) (o_12@@15 T@Ref) (f_24@@15 T@Field_5093_12693) (v@@15 T@PolymorphicMapType_9836) ) (! (succHeap Heap@@56 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@56) (store (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@56) o_12@@15 f_24@@15 v@@15) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@56) (store (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@56) o_12@@15 f_24@@15 v@@15) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@56) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9287) (o_12@@16 T@Ref) (f_24@@16 T@Field_5093_5123) (v@@16 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@57) (store (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@57) o_12@@16 f_24@@16 v@@16) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@57) (store (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@57) o_12@@16 f_24@@16 v@@16) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@57) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9287) (o_12@@17 T@Ref) (f_24@@17 T@Field_9360_9361) (v@@17 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@58) (store (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@58) o_12@@17 f_24@@17 v@@17) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@58) (store (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@58) o_12@@17 f_24@@17 v@@17) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@58) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9287) (o_12@@18 T@Ref) (f_24@@18 T@Field_9347_53) (v@@18 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_9287 (store (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@59) o_12@@18 f_24@@18 v@@18) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9287 (store (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@59) o_12@@18 f_24@@18 v@@18) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@59) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@59)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_5097 (P x@@9)) (|P#sm| x@@9))
 :qid |stdinbpl.228:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_5097 (P x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_5122 (Q x@@10)) (|Q#sm| x@@10))
 :qid |stdinbpl.289:15|
 :skolemid |35|
 :pattern ( (PredicateMaskField_5122 (Q x@@10)))
)))
(assert (forall ((o_12@@19 T@Ref) (f_16 T@Field_9360_9361) (Heap@@60 T@PolymorphicMapType_9287) ) (!  (=> (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@60) o_12@@19 $allocated) (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@60) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@60) o_12@@19 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@60) o_12@@19 f_16))
)))
(assert (forall ((p@@4 T@Field_12704_12705) (v_1@@3 T@FrameType) (q T@Field_12704_12705) (w@@3 T@FrameType) (r T@Field_13253_13254) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12675_12675 p@@4 v_1@@3 q w@@3) (InsidePredicate_12675_13253 q w@@3 r u)) (InsidePredicate_12675_13253 p@@4 v_1@@3 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_12675 p@@4 v_1@@3 q w@@3) (InsidePredicate_12675_13253 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_12704_12705) (v_1@@4 T@FrameType) (q@@0 T@Field_12704_12705) (w@@4 T@FrameType) (r@@0 T@Field_12704_12705) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_12675 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_12675_12675 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_12675_12675 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_12675 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_12675_12675 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_12704_12705) (v_1@@5 T@FrameType) (q@@1 T@Field_12704_12705) (w@@5 T@FrameType) (r@@1 T@Field_5093_5123) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_12675 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_12675_9347 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_12675_9347 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_12675 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_12675_9347 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_12704_12705) (v_1@@6 T@FrameType) (q@@2 T@Field_12704_12705) (w@@6 T@FrameType) (r@@2 T@Field_14240_14241) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_12675 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_12675_5122 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_12675_5122 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_12675 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_12675_5122 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_12704_12705) (v_1@@7 T@FrameType) (q@@3 T@Field_5093_5123) (w@@7 T@FrameType) (r@@3 T@Field_13253_13254) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_9347 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9347_13253 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_12675_13253 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_9347 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_9347_13253 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_12704_12705) (v_1@@8 T@FrameType) (q@@4 T@Field_5093_5123) (w@@8 T@FrameType) (r@@4 T@Field_12704_12705) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_9347 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9347_12675 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_12675_12675 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_9347 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_9347_12675 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_12704_12705) (v_1@@9 T@FrameType) (q@@5 T@Field_5093_5123) (w@@9 T@FrameType) (r@@5 T@Field_5093_5123) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_9347 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9347_9347 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_12675_9347 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_9347 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_9347_9347 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_12704_12705) (v_1@@10 T@FrameType) (q@@6 T@Field_5093_5123) (w@@10 T@FrameType) (r@@6 T@Field_14240_14241) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_9347 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9347_5122 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_12675_5122 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_9347 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_9347_5122 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_12704_12705) (v_1@@11 T@FrameType) (q@@7 T@Field_13253_13254) (w@@11 T@FrameType) (r@@7 T@Field_13253_13254) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_13253 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_5097_13253 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_12675_13253 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_13253 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_5097_13253 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_12704_12705) (v_1@@12 T@FrameType) (q@@8 T@Field_13253_13254) (w@@12 T@FrameType) (r@@8 T@Field_12704_12705) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_13253 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_5097_12675 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_12675_12675 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_13253 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_5097_12675 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_12704_12705) (v_1@@13 T@FrameType) (q@@9 T@Field_13253_13254) (w@@13 T@FrameType) (r@@9 T@Field_5093_5123) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_13253 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_5097_9347 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_12675_9347 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_13253 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_5097_9347 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_12704_12705) (v_1@@14 T@FrameType) (q@@10 T@Field_13253_13254) (w@@14 T@FrameType) (r@@10 T@Field_14240_14241) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_13253 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_5097_5122 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_12675_5122 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_13253 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_5097_5122 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_12704_12705) (v_1@@15 T@FrameType) (q@@11 T@Field_14240_14241) (w@@15 T@FrameType) (r@@11 T@Field_13253_13254) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_5122 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5122_13253 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_12675_13253 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_5122 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_5122_13253 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_12704_12705) (v_1@@16 T@FrameType) (q@@12 T@Field_14240_14241) (w@@16 T@FrameType) (r@@12 T@Field_12704_12705) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_5122 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5122_12675 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_12675_12675 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_5122 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_5122_12675 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_12704_12705) (v_1@@17 T@FrameType) (q@@13 T@Field_14240_14241) (w@@17 T@FrameType) (r@@13 T@Field_5093_5123) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_5122 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5122_9347 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_12675_9347 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_5122 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_5122_9347 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_12704_12705) (v_1@@18 T@FrameType) (q@@14 T@Field_14240_14241) (w@@18 T@FrameType) (r@@14 T@Field_14240_14241) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_12675_5122 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5122_5122 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_12675_5122 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12675_5122 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_5122_5122 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_5093_5123) (v_1@@19 T@FrameType) (q@@15 T@Field_12704_12705) (w@@19 T@FrameType) (r@@15 T@Field_13253_13254) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_12675 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_12675_13253 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_9347_13253 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_12675 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_12675_13253 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_5093_5123) (v_1@@20 T@FrameType) (q@@16 T@Field_12704_12705) (w@@20 T@FrameType) (r@@16 T@Field_12704_12705) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_12675 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_12675_12675 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_9347_12675 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_12675 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_12675_12675 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_5093_5123) (v_1@@21 T@FrameType) (q@@17 T@Field_12704_12705) (w@@21 T@FrameType) (r@@17 T@Field_5093_5123) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_12675 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_12675_9347 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_9347_9347 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_12675 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_12675_9347 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_5093_5123) (v_1@@22 T@FrameType) (q@@18 T@Field_12704_12705) (w@@22 T@FrameType) (r@@18 T@Field_14240_14241) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_12675 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_12675_5122 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_9347_5122 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_12675 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_12675_5122 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_5093_5123) (v_1@@23 T@FrameType) (q@@19 T@Field_5093_5123) (w@@23 T@FrameType) (r@@19 T@Field_13253_13254) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_9347 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9347_13253 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_9347_13253 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_9347 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_9347_13253 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_5093_5123) (v_1@@24 T@FrameType) (q@@20 T@Field_5093_5123) (w@@24 T@FrameType) (r@@20 T@Field_12704_12705) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_9347 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9347_12675 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_9347_12675 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_9347 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_9347_12675 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_5093_5123) (v_1@@25 T@FrameType) (q@@21 T@Field_5093_5123) (w@@25 T@FrameType) (r@@21 T@Field_5093_5123) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_9347 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9347_9347 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_9347_9347 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_9347 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_9347_9347 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_5093_5123) (v_1@@26 T@FrameType) (q@@22 T@Field_5093_5123) (w@@26 T@FrameType) (r@@22 T@Field_14240_14241) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_9347 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9347_5122 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_9347_5122 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_9347 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_9347_5122 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_5093_5123) (v_1@@27 T@FrameType) (q@@23 T@Field_13253_13254) (w@@27 T@FrameType) (r@@23 T@Field_13253_13254) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_13253 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_5097_13253 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_9347_13253 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_13253 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_5097_13253 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_5093_5123) (v_1@@28 T@FrameType) (q@@24 T@Field_13253_13254) (w@@28 T@FrameType) (r@@24 T@Field_12704_12705) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_13253 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_5097_12675 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_9347_12675 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_13253 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_5097_12675 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_5093_5123) (v_1@@29 T@FrameType) (q@@25 T@Field_13253_13254) (w@@29 T@FrameType) (r@@25 T@Field_5093_5123) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_13253 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_5097_9347 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_9347_9347 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_13253 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_5097_9347 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_5093_5123) (v_1@@30 T@FrameType) (q@@26 T@Field_13253_13254) (w@@30 T@FrameType) (r@@26 T@Field_14240_14241) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_13253 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_5097_5122 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_9347_5122 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_13253 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_5097_5122 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_5093_5123) (v_1@@31 T@FrameType) (q@@27 T@Field_14240_14241) (w@@31 T@FrameType) (r@@27 T@Field_13253_13254) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_5122 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5122_13253 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_9347_13253 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_5122 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_5122_13253 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_5093_5123) (v_1@@32 T@FrameType) (q@@28 T@Field_14240_14241) (w@@32 T@FrameType) (r@@28 T@Field_12704_12705) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_5122 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5122_12675 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_9347_12675 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_5122 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_5122_12675 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_5093_5123) (v_1@@33 T@FrameType) (q@@29 T@Field_14240_14241) (w@@33 T@FrameType) (r@@29 T@Field_5093_5123) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_5122 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5122_9347 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_9347_9347 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_5122 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_5122_9347 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_5093_5123) (v_1@@34 T@FrameType) (q@@30 T@Field_14240_14241) (w@@34 T@FrameType) (r@@30 T@Field_14240_14241) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_9347_5122 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5122_5122 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_9347_5122 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9347_5122 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_5122_5122 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_14240_14241) (v_1@@35 T@FrameType) (q@@31 T@Field_12704_12705) (w@@35 T@FrameType) (r@@31 T@Field_13253_13254) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_12675 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_12675_13253 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_5122_13253 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_12675 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_12675_13253 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_14240_14241) (v_1@@36 T@FrameType) (q@@32 T@Field_12704_12705) (w@@36 T@FrameType) (r@@32 T@Field_12704_12705) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_12675 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_12675_12675 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_5122_12675 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_12675 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_12675_12675 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_14240_14241) (v_1@@37 T@FrameType) (q@@33 T@Field_12704_12705) (w@@37 T@FrameType) (r@@33 T@Field_5093_5123) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_12675 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_12675_9347 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_5122_9347 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_12675 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_12675_9347 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_14240_14241) (v_1@@38 T@FrameType) (q@@34 T@Field_12704_12705) (w@@38 T@FrameType) (r@@34 T@Field_14240_14241) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_12675 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_12675_5122 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_5122_5122 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_12675 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_12675_5122 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_14240_14241) (v_1@@39 T@FrameType) (q@@35 T@Field_5093_5123) (w@@39 T@FrameType) (r@@35 T@Field_13253_13254) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_9347 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9347_13253 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_5122_13253 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_9347 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_9347_13253 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_14240_14241) (v_1@@40 T@FrameType) (q@@36 T@Field_5093_5123) (w@@40 T@FrameType) (r@@36 T@Field_12704_12705) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_9347 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9347_12675 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_5122_12675 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_9347 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_9347_12675 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_14240_14241) (v_1@@41 T@FrameType) (q@@37 T@Field_5093_5123) (w@@41 T@FrameType) (r@@37 T@Field_5093_5123) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_9347 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9347_9347 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_5122_9347 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_9347 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_9347_9347 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_14240_14241) (v_1@@42 T@FrameType) (q@@38 T@Field_5093_5123) (w@@42 T@FrameType) (r@@38 T@Field_14240_14241) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_9347 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9347_5122 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_5122_5122 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_9347 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_9347_5122 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_14240_14241) (v_1@@43 T@FrameType) (q@@39 T@Field_13253_13254) (w@@43 T@FrameType) (r@@39 T@Field_13253_13254) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_13253 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_5097_13253 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_5122_13253 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_13253 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_5097_13253 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_14240_14241) (v_1@@44 T@FrameType) (q@@40 T@Field_13253_13254) (w@@44 T@FrameType) (r@@40 T@Field_12704_12705) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_13253 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_5097_12675 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_5122_12675 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_13253 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_5097_12675 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_14240_14241) (v_1@@45 T@FrameType) (q@@41 T@Field_13253_13254) (w@@45 T@FrameType) (r@@41 T@Field_5093_5123) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_13253 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_5097_9347 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_5122_9347 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_13253 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_5097_9347 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_14240_14241) (v_1@@46 T@FrameType) (q@@42 T@Field_13253_13254) (w@@46 T@FrameType) (r@@42 T@Field_14240_14241) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_13253 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_5097_5122 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_5122_5122 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_13253 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_5097_5122 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_14240_14241) (v_1@@47 T@FrameType) (q@@43 T@Field_14240_14241) (w@@47 T@FrameType) (r@@43 T@Field_13253_13254) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_5122 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5122_13253 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_5122_13253 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_5122 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_5122_13253 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_14240_14241) (v_1@@48 T@FrameType) (q@@44 T@Field_14240_14241) (w@@48 T@FrameType) (r@@44 T@Field_12704_12705) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_5122 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5122_12675 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_5122_12675 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_5122 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_5122_12675 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_14240_14241) (v_1@@49 T@FrameType) (q@@45 T@Field_14240_14241) (w@@49 T@FrameType) (r@@45 T@Field_5093_5123) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_5122 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5122_9347 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_5122_9347 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_5122 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_5122_9347 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_14240_14241) (v_1@@50 T@FrameType) (q@@46 T@Field_14240_14241) (w@@50 T@FrameType) (r@@46 T@Field_14240_14241) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_5122_5122 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5122_5122 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_5122_5122 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5122_5122 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_5122_5122 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_13253_13254) (v_1@@51 T@FrameType) (q@@47 T@Field_12704_12705) (w@@51 T@FrameType) (r@@47 T@Field_13253_13254) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_12675 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_12675_13253 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_5097_13253 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_12675 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_12675_13253 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_13253_13254) (v_1@@52 T@FrameType) (q@@48 T@Field_12704_12705) (w@@52 T@FrameType) (r@@48 T@Field_12704_12705) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_12675 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_12675_12675 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_5097_12675 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_12675 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_12675_12675 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_13253_13254) (v_1@@53 T@FrameType) (q@@49 T@Field_12704_12705) (w@@53 T@FrameType) (r@@49 T@Field_5093_5123) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_12675 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_12675_9347 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_5097_9347 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_12675 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_12675_9347 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_13253_13254) (v_1@@54 T@FrameType) (q@@50 T@Field_12704_12705) (w@@54 T@FrameType) (r@@50 T@Field_14240_14241) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_12675 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_12675_5122 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_5097_5122 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_12675 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_12675_5122 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_13253_13254) (v_1@@55 T@FrameType) (q@@51 T@Field_5093_5123) (w@@55 T@FrameType) (r@@51 T@Field_13253_13254) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_9347 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9347_13253 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_5097_13253 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_9347 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_9347_13253 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_13253_13254) (v_1@@56 T@FrameType) (q@@52 T@Field_5093_5123) (w@@56 T@FrameType) (r@@52 T@Field_12704_12705) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_9347 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9347_12675 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_5097_12675 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_9347 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_9347_12675 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_13253_13254) (v_1@@57 T@FrameType) (q@@53 T@Field_5093_5123) (w@@57 T@FrameType) (r@@53 T@Field_5093_5123) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_9347 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9347_9347 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_5097_9347 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_9347 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_9347_9347 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_13253_13254) (v_1@@58 T@FrameType) (q@@54 T@Field_5093_5123) (w@@58 T@FrameType) (r@@54 T@Field_14240_14241) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_9347 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9347_5122 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_5097_5122 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_9347 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_9347_5122 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_13253_13254) (v_1@@59 T@FrameType) (q@@55 T@Field_13253_13254) (w@@59 T@FrameType) (r@@55 T@Field_13253_13254) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_13253 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_5097_13253 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_5097_13253 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_13253 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_5097_13253 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_13253_13254) (v_1@@60 T@FrameType) (q@@56 T@Field_13253_13254) (w@@60 T@FrameType) (r@@56 T@Field_12704_12705) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_13253 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_5097_12675 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_5097_12675 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_13253 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_5097_12675 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_13253_13254) (v_1@@61 T@FrameType) (q@@57 T@Field_13253_13254) (w@@61 T@FrameType) (r@@57 T@Field_5093_5123) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_13253 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_5097_9347 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_5097_9347 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_13253 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_5097_9347 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_13253_13254) (v_1@@62 T@FrameType) (q@@58 T@Field_13253_13254) (w@@62 T@FrameType) (r@@58 T@Field_14240_14241) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_13253 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_5097_5122 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_5097_5122 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_13253 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_5097_5122 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_13253_13254) (v_1@@63 T@FrameType) (q@@59 T@Field_14240_14241) (w@@63 T@FrameType) (r@@59 T@Field_13253_13254) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_5122 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5122_13253 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_5097_13253 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_5122 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_5122_13253 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_13253_13254) (v_1@@64 T@FrameType) (q@@60 T@Field_14240_14241) (w@@64 T@FrameType) (r@@60 T@Field_12704_12705) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_5122 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5122_12675 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_5097_12675 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_5122 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_5122_12675 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_13253_13254) (v_1@@65 T@FrameType) (q@@61 T@Field_14240_14241) (w@@65 T@FrameType) (r@@61 T@Field_5093_5123) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_5122 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5122_9347 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_5097_9347 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_5122 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_5122_9347 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_13253_13254) (v_1@@66 T@FrameType) (q@@62 T@Field_14240_14241) (w@@66 T@FrameType) (r@@62 T@Field_14240_14241) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_5097_5122 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5122_5122 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_5097_5122 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5097_5122 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_5122_5122 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l_2 () T@Ref)
(declare-fun Mask@16 () T@PolymorphicMapType_9308)
(declare-fun Mask@15 () T@PolymorphicMapType_9308)
(declare-fun Heap@11 () T@PolymorphicMapType_9287)
(declare-fun perm@0 () Real)
(declare-fun Mask@17 () T@PolymorphicMapType_9308)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_9287)
(declare-fun Heap@10 () T@PolymorphicMapType_9287)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@14 () T@PolymorphicMapType_9308)
(declare-fun Mask@13 () T@PolymorphicMapType_9308)
(declare-fun Mask@12 () T@PolymorphicMapType_9308)
(declare-fun Heap@9 () T@PolymorphicMapType_9287)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5094 (T@Ref) T@FrameType)
(declare-fun b_1_1@24 () Bool)
(declare-fun b_7@6 () Bool)
(declare-fun neededTransfer@16 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_9308)
(declare-fun initNeededTransfer@3 () Real)
(declare-fun b_8@0 () Bool)
(declare-fun b_8@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_9287)
(declare-fun Result_3Mask () T@PolymorphicMapType_9308)
(declare-fun b_8@2 () Bool)
(declare-fun Ops_1Mask () T@PolymorphicMapType_9308)
(declare-fun b_8@3 () Bool)
(declare-fun Ops_1Heap@6 () T@PolymorphicMapType_9287)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_9287)
(declare-fun b_8@4 () Bool)
(declare-fun b_1_1@25 () Bool)
(declare-fun Mask@10 () T@PolymorphicMapType_9308)
(declare-fun Mask@9 () T@PolymorphicMapType_9308)
(declare-fun Mask@11 () T@PolymorphicMapType_9308)
(declare-fun takeTransfer@7 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_9308)
(declare-fun Heap@7 () T@PolymorphicMapType_9287)
(declare-fun neededTransfer@14 () Real)
(declare-fun b_7@3 () Bool)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_9308)
(declare-fun neededTransfer@15 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_9308)
(declare-fun b_7@4 () Bool)
(declare-fun TempMask@5 () T@PolymorphicMapType_9308)
(declare-fun b_7@5 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_9308)
(declare-fun newPMask@3 () T@PolymorphicMapType_9836)
(declare-fun Heap@8 () T@PolymorphicMapType_9287)
(declare-fun maskTransfer@7 () Real)
(declare-fun takeTransfer@6 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun neededTransfer@13 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_9308)
(declare-fun b_7@1 () Bool)
(declare-fun TempMask@4 () T@PolymorphicMapType_9308)
(declare-fun b_7@2 () Bool)
(declare-fun Ops_1Mask@13 () T@PolymorphicMapType_9308)
(declare-fun Ops_1Mask@12 () T@PolymorphicMapType_9308)
(declare-fun maskTransfer@6 () Real)
(declare-fun b_7 () Bool)
(declare-fun Ops_1Heap@4 () T@PolymorphicMapType_9287)
(declare-fun Ops_1Heap@3 () T@PolymorphicMapType_9287)
(declare-fun newPMask@2 () T@PolymorphicMapType_9836)
(declare-fun Ops_1Heap@5 () T@PolymorphicMapType_9287)
(declare-fun Ops_1Mask@11 () T@PolymorphicMapType_9308)
(declare-fun b_1_1@23 () Bool)
(declare-fun b_1_1@22 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_9308)
(declare-fun Heap@6 () T@PolymorphicMapType_9287)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_9287)
(declare-fun Ops_1Heap@1 () T@PolymorphicMapType_9287)
(declare-fun Ops_1Heap@2 () T@PolymorphicMapType_9287)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun b_1_1@17 () Bool)
(declare-fun b_4@12 () Bool)
(declare-fun neededTransfer@12 () Real)
(declare-fun Used_2Mask@7 () T@PolymorphicMapType_9308)
(declare-fun arg_1_1@0 () T@Ref)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_6@0 () Bool)
(declare-fun b_6@1 () Bool)
(declare-fun Result_2Heap () T@PolymorphicMapType_9287)
(declare-fun Result_2Mask () T@PolymorphicMapType_9308)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_1Mask@10 () T@PolymorphicMapType_9308)
(declare-fun b_6@3 () Bool)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_9287)
(declare-fun b_6@4 () Bool)
(declare-fun b_1_1@18 () Bool)
(declare-fun b_1_1@19 () Bool)
(declare-fun b_1_1@20 () Bool)
(declare-fun b_1_1@21 () Bool)
(declare-fun takeTransfer@5 () Real)
(declare-fun neededTransfer@10 () Real)
(declare-fun Heap@4 () T@PolymorphicMapType_9287)
(declare-fun b_4@9 () Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_9308)
(declare-fun Used_2Mask@5 () T@PolymorphicMapType_9308)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_2Mask@6 () T@PolymorphicMapType_9308)
(declare-fun b_4@10 () Bool)
(declare-fun TempMask@3 () T@PolymorphicMapType_9308)
(declare-fun b_4@11 () Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_9308)
(declare-fun newPMask@1 () T@PolymorphicMapType_9836)
(declare-fun Heap@5 () T@PolymorphicMapType_9287)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_9308)
(declare-fun b_4@6 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Ops_1Mask@8 () T@PolymorphicMapType_9308)
(declare-fun neededTransfer@9 () Real)
(declare-fun Used_2Mask@4 () T@PolymorphicMapType_9308)
(declare-fun b_4@7 () Bool)
(declare-fun TempMask@2 () T@PolymorphicMapType_9308)
(declare-fun b_4@8 () Bool)
(declare-fun Ops_1Mask@9 () T@PolymorphicMapType_9308)
(declare-fun maskTransfer@4 () Real)
(declare-fun Result_1Heap () T@PolymorphicMapType_9287)
(declare-fun Result_1Mask () T@PolymorphicMapType_9308)
(declare-fun b_1_1@14 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun b_5@2 () Bool)
(declare-fun b_5@3 () Bool)
(declare-fun b_5@4 () Bool)
(declare-fun b_1_1@15 () Bool)
(declare-fun b_1_1@16 () Bool)
(declare-fun takeTransfer@3 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_9308)
(declare-fun neededTransfer@5 () Real)
(declare-fun Heap@2 () T@PolymorphicMapType_9287)
(declare-fun b_4@3 () Bool)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_9308)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_9308)
(declare-fun b_4@4 () Bool)
(declare-fun b_4@5 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_9308)
(declare-fun Heap@3 () T@PolymorphicMapType_9287)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_1Mask@6 () T@PolymorphicMapType_9308)
(declare-fun b_4@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_9308)
(declare-fun b_4@1 () Bool)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_1Mask@7 () T@PolymorphicMapType_9308)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_4 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_9308)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_9287)
(declare-fun ResultMask@@19 () T@PolymorphicMapType_9308)
(declare-fun b_3@2 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_9308)
(declare-fun b_3@3 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_9287)
(declare-fun b_3@4 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_1_1@8 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_9308)
(declare-fun b_1_1@9 () Bool)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_9308)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_1_1@11 () Bool)
(declare-fun b_1_1@12 () Bool)
(declare-fun b_1_1@13 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_9308)
(declare-fun Heap@1 () T@PolymorphicMapType_9287)
(declare-fun takeTransfer@1 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_9308)
(declare-fun Heap@@61 () T@PolymorphicMapType_9287)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_9308)
(declare-fun b_2_1@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_9308)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_9308)
(declare-fun newPMask@0 () T@PolymorphicMapType_9836)
(declare-fun Heap@0 () T@PolymorphicMapType_9287)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_9308)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_9308)
(declare-fun b_2_1@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_9308)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_9308)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_9308)
(declare-fun b_1_1@1 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_9287)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 94) (let ((anon65_correct  (=> (and (and (not (= l_2 null)) (= Mask@16 (PolymorphicMapType_9308 (store (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@15) l_2 next (+ (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@15) l_2 next) FullPerm)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@15) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@15)))) (and (state Heap@11 Mask@16) (= perm@0 (ite (not (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@11) l_2 next) null)) FullPerm NoPerm)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (= Mask@17 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@16) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@16) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@11) l_2 next)) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@16) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@11) l_2 next))) perm@0)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@16) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@16))) (InsidePredicate_5122_5122 (Q l_2) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@11) null (Q l_2)) (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@11) l_2 next)) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@11) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@11) l_2 next))))) (=> (and (and (state Heap@11 Mask@17) (state Heap@11 Mask@17)) (and (state Heap@11 Mask@17) (= (ControlFlow 0 2) (- 0 1)))) false)))))))
(let ((anon98_Else_correct  (=> (HasDirectPerm_5122_5123 Mask@15 null (Q l_2)) (=> (and (= Heap@11 ExhaleHeap@0) (= (ControlFlow 0 5) 2)) anon65_correct))))
(let ((anon98_Then_correct  (=> (and (and (not (HasDirectPerm_5122_5123 Mask@15 null (Q l_2))) (= Heap@10 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| ExhaleHeap@0) (store (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@0) null (Q l_2) newVersion@0) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| ExhaleHeap@0) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| ExhaleHeap@0)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 4) 2))) anon65_correct)))
(let ((anon63_correct  (=> (= Mask@15 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@14) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@14) null (Q l_2) (- (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@14) null (Q l_2)) FullPerm)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@14) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@14))) (and (=> (= (ControlFlow 0 6) 4) anon98_Then_correct) (=> (= (ControlFlow 0 6) 5) anon98_Else_correct)))))
(let ((anon97_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 9) 6)) anon63_correct)))
(let ((anon97_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= FullPerm (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@14) null (Q l_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@14) null (Q l_2))) (=> (= (ControlFlow 0 7) 6) anon63_correct))))))
(let ((anon61_correct  (=> (and (= Mask@13 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@12) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@12) null (P l_2) (- (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@12) null (P l_2)) FullPerm)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@12) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@12))) (state Heap@9 Mask@13)) (=> (and (and (and (= Mask@14 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@13) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@13) null (Q l_2) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@13) null (Q l_2)) FullPerm)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@13) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@13))) (state Heap@9 Mask@14)) (and (state Heap@9 Mask@14) (IdenticalOnKnownLocations Heap@9 ExhaleHeap@0 Mask@14))) (and (and (state ExhaleHeap@0 Mask@14) (state ExhaleHeap@0 Mask@14)) (and (|Q#trigger_5122| ExhaleHeap@0 (Q l_2)) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@0) null (Q l_2)) (CombineFrames (FrameFragment_5094 (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@0) l_2 next)) (ConditionalFrame (ite (not (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@0) l_2 next) null)) FullPerm NoPerm) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| ExhaleHeap@0) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| ExhaleHeap@0) l_2 next))))))))) (and (=> (= (ControlFlow 0 10) 7) anon97_Then_correct) (=> (= (ControlFlow 0 10) 9) anon97_Else_correct))))))
(let ((anon96_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 10)) anon61_correct)))
(let ((anon96_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@12) null (P l_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@12) null (P l_2))) (=> (= (ControlFlow 0 11) 10) anon61_correct))))))
(let ((anon59_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> (and (and b_1_1@24 b_1_1@24) b_7@6) (and (= neededTransfer@16 0.0) (= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_3Mask@3) null (Q l_2)) initNeededTransfer@3)))) (=> (=> (and (and b_1_1@24 b_1_1@24) b_7@6) (and (= neededTransfer@16 0.0) (= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_3Mask@3) null (Q l_2)) initNeededTransfer@3))) (=> (and (= b_8@0  (and b_1_1@24 b_7@6)) (= b_8@1  (and b_8@0 (state Result_3Heap Result_3Mask)))) (=> (and (and (= b_8@2  (and b_8@1 (sumMask Result_3Mask Ops_1Mask Used_3Mask@3))) (= b_8@3  (and (and b_8@2 (IdenticalOnKnownLocations Ops_1Heap@6 Result_3Heap Ops_1Mask)) (IdenticalOnKnownLocations Used_3Heap@0 Result_3Heap Used_3Mask@3)))) (and (= b_8@4  (and b_8@3 (state Result_3Heap Result_3Mask))) (= b_1_1@25  (and b_1_1@24 b_8@4)))) (=> (and (and (and (= Mask@10 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@9) (store (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@9) null (wand l_2 l_2) (+ (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@9) null (wand l_2 l_2)) FullPerm)) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@9) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@9))) (state Heap@9 Mask@10)) (and (state Heap@9 Mask@10) (state Heap@9 Mask@10))) (and (and (= Mask@11 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@10) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@10) null (P l_2) (+ (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@10) null (P l_2)) FullPerm)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@10) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@10))) (state Heap@9 Mask@11)) (and (state Heap@9 Mask@11) (state Heap@9 Mask@11)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@11) null (wand l_2 l_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@11) null (wand l_2 l_2))) (=> (and (= Mask@12 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@11) (store (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@11) null (wand l_2 l_2) (- (select (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@11) null (wand l_2 l_2)) FullPerm)) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@11) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@11))) (state Heap@9 Mask@12)) (and (=> (= (ControlFlow 0 14) 11) anon96_Then_correct) (=> (= (ControlFlow 0 14) 13) anon96_Else_correct))))))))))))
(let ((anon95_Else_correct  (=> (>= 0.0 takeTransfer@7) (=> (and (= Mask@9 Mask@7) (= Heap@9 Heap@7)) (=> (and (and (= neededTransfer@16 neededTransfer@14) (= b_7@6 b_7@3)) (and (= Used_3Mask@3 Used_3Mask@1) (= (ControlFlow 0 19) 14))) anon59_correct)))))
(let ((anon95_Then_correct  (=> (> takeTransfer@7 0.0) (=> (and (= neededTransfer@15 (- neededTransfer@14 takeTransfer@7)) (= Used_3Mask@2 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_3Mask@1) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_3Mask@1) null (Q l_2) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_3Mask@1) null (Q l_2)) takeTransfer@7)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Used_3Mask@1) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Used_3Mask@1)))) (=> (and (and (= b_7@4  (and b_7@3 (state Used_3Heap@0 Used_3Mask@2))) (= TempMask@5 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q l_2) FullPerm) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (and (= b_7@5  (and b_7@4 (IdenticalOnKnownLocations Heap@7 Used_3Heap@0 TempMask@5))) (= Mask@8 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@7) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@7) null (Q l_2) (- (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@7) null (Q l_2)) takeTransfer@7)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@7) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@7))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_9360_9361) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53 f_56) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53 f_56)) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@3) o_53 f_56))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@3) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_9347_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@0 f_56@@0)) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@3) o_53@@0 f_56@@0))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@3) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_5093_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@1 f_56@@1)) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@3) o_53@@1 f_56@@1))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@3) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_5093_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@2 f_56@@2)) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@3) o_53@@2 f_56@@2))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@3) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_5093_5123) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@3 f_56@@3)) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@3) o_53@@3 f_56@@3))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@3) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_12675_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@4 f_56@@4)) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@3) o_53@@4 f_56@@4))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@3) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_12675_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@5 f_56@@5)) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@3) o_53@@5 f_56@@5))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@3) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_12675_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@6 f_56@@6)) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@3) o_53@@6 f_56@@6))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@3) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_12688_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@7 f_56@@7)) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@3) o_53@@7 f_56@@7))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@3) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_12704_12705) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@8 f_56@@8)) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@3) o_53@@8 f_56@@8))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@3) o_53@@8 f_56@@8))
))) (forall ((o_53@@9 T@Ref) (f_56@@9 T@Field_13253_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@9 f_56@@9) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@9 f_56@@9)) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@3) o_53@@9 f_56@@9))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@3) o_53@@9 f_56@@9))
))) (forall ((o_53@@10 T@Ref) (f_56@@10 T@Field_13253_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@10 f_56@@10) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@10 f_56@@10)) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@3) o_53@@10 f_56@@10))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@3) o_53@@10 f_56@@10))
))) (forall ((o_53@@11 T@Ref) (f_56@@11 T@Field_13253_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@11 f_56@@11) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@11 f_56@@11)) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@3) o_53@@11 f_56@@11))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@3) o_53@@11 f_56@@11))
))) (forall ((o_53@@12 T@Ref) (f_56@@12 T@Field_13266_13271) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@12 f_56@@12) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@12 f_56@@12)) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@3) o_53@@12 f_56@@12))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@3) o_53@@12 f_56@@12))
))) (forall ((o_53@@13 T@Ref) (f_56@@13 T@Field_13253_13254) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@13 f_56@@13) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@13 f_56@@13)) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@3) o_53@@13 f_56@@13))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@3) o_53@@13 f_56@@13))
))) (forall ((o_53@@14 T@Ref) (f_56@@14 T@Field_5122_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@14 f_56@@14) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@14 f_56@@14)) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@3) o_53@@14 f_56@@14))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@3) o_53@@14 f_56@@14))
))) (forall ((o_53@@15 T@Ref) (f_56@@15 T@Field_5122_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@15 f_56@@15) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@15 f_56@@15)) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@3) o_53@@15 f_56@@15))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@3) o_53@@15 f_56@@15))
))) (forall ((o_53@@16 T@Ref) (f_56@@16 T@Field_5122_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@16 f_56@@16) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@16 f_56@@16)) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@3) o_53@@16 f_56@@16))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@3) o_53@@16 f_56@@16))
))) (forall ((o_53@@17 T@Ref) (f_56@@17 T@Field_14485_14490) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@17 f_56@@17) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@17 f_56@@17)) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@3) o_53@@17 f_56@@17))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@3) o_53@@17 f_56@@17))
))) (forall ((o_53@@18 T@Ref) (f_56@@18 T@Field_14240_14241) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2))) o_53@@18 f_56@@18) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) null (|Q#sm| l_2))) o_53@@18 f_56@@18)) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@3) o_53@@18 f_56@@18))
 :qid |stdinbpl.755:35|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@3) o_53@@18 f_56@@18))
))) (= Heap@8 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@7) (store (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@7) null (|wand#sm| l_2 l_2) newPMask@3) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@7) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@7)))) (and (= Mask@9 Mask@8) (= Heap@9 Heap@8))) (and (and (= neededTransfer@16 neededTransfer@15) (= b_7@6 b_7@5)) (and (= Used_3Mask@3 Used_3Mask@2) (= (ControlFlow 0 18) 14)))) anon59_correct))))))
(let ((anon94_Else_correct  (=> (and (< maskTransfer@7 neededTransfer@14) (= takeTransfer@7 maskTransfer@7)) (and (=> (= (ControlFlow 0 21) 18) anon95_Then_correct) (=> (= (ControlFlow 0 21) 19) anon95_Else_correct)))))
(let ((anon94_Then_correct  (=> (and (<= neededTransfer@14 maskTransfer@7) (= takeTransfer@7 neededTransfer@14)) (and (=> (= (ControlFlow 0 20) 18) anon95_Then_correct) (=> (= (ControlFlow 0 20) 19) anon95_Else_correct)))))
(let ((anon93_Then_correct  (=> (and (and (and (and (and b_1_1@24 b_1_1@24) b_7@3) true) (> neededTransfer@14 0.0)) (= maskTransfer@7 (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@7) null (Q l_2)))) (and (=> (= (ControlFlow 0 22) 20) anon94_Then_correct) (=> (= (ControlFlow 0 22) 21) anon94_Else_correct)))))
(let ((anon93_Else_correct  (=> (not (and (and (and (and b_1_1@24 b_1_1@24) b_7@3) true) (> neededTransfer@14 0.0))) (=> (and (= Mask@9 Mask@7) (= Heap@9 Heap@7)) (=> (and (and (= neededTransfer@16 neededTransfer@14) (= b_7@6 b_7@3)) (and (= Used_3Mask@3 Used_3Mask@1) (= (ControlFlow 0 17) 14))) anon59_correct)))))
(let ((anon92_Else_correct  (=> (and (and (>= 0.0 takeTransfer@6) (= Used_3Mask@1 ZeroMask)) (and (= b_7@3 b_7@0) (= neededTransfer@14 FullPerm))) (and (=> (= (ControlFlow 0 25) 22) anon93_Then_correct) (=> (= (ControlFlow 0 25) 17) anon93_Else_correct)))))
(let ((anon92_Then_correct  (=> (and (> takeTransfer@6 0.0) (= neededTransfer@13 (- FullPerm takeTransfer@6))) (=> (and (and (and (= Used_3Mask@0 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q l_2) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q l_2)) takeTransfer@6)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask))) (= b_7@1  (and b_7@0 (state Used_3Heap@0 Used_3Mask@0)))) (and (= TempMask@4 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q l_2) FullPerm) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask))) (= b_7@2  (and b_7@1 (IdenticalOnKnownLocations Ops_1Heap@6 Used_3Heap@0 TempMask@4))))) (and (and (= Ops_1Mask@13 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@12) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@12) null (Q l_2) (- (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@12) null (Q l_2)) takeTransfer@6)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@12) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@12))) (= Used_3Mask@1 Used_3Mask@0)) (and (= b_7@3 b_7@2) (= neededTransfer@14 neededTransfer@13)))) (and (=> (= (ControlFlow 0 24) 22) anon93_Then_correct) (=> (= (ControlFlow 0 24) 17) anon93_Else_correct))))))
(let ((anon91_Else_correct  (=> (and (< maskTransfer@6 FullPerm) (= takeTransfer@6 maskTransfer@6)) (and (=> (= (ControlFlow 0 27) 24) anon92_Then_correct) (=> (= (ControlFlow 0 27) 25) anon92_Else_correct)))))
(let ((anon91_Then_correct  (=> (and (<= FullPerm maskTransfer@6) (= takeTransfer@6 FullPerm)) (and (=> (= (ControlFlow 0 26) 24) anon92_Then_correct) (=> (= (ControlFlow 0 26) 25) anon92_Else_correct)))))
(let ((anon90_Then_correct  (=> (and (and (and (and (and b_1_1@24 b_1_1@24) b_7@0) true) (> FullPerm 0.0)) (= maskTransfer@6 (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@12) null (Q l_2)))) (and (=> (= (ControlFlow 0 28) 26) anon91_Then_correct) (=> (= (ControlFlow 0 28) 27) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (and (not (and (and (and (and b_1_1@24 b_1_1@24) b_7@0) true) (> FullPerm 0.0))) (= Used_3Mask@1 ZeroMask)) (and (= b_7@3 b_7@0) (= neededTransfer@14 FullPerm))) (and (=> (= (ControlFlow 0 23) 22) anon93_Then_correct) (=> (= (ControlFlow 0 23) 17) anon93_Else_correct)))))
(let ((anon47_correct  (=> (and (= b_7@0  (and b_7 (state Used_3Heap@0 ZeroMask))) (= initNeededTransfer@3 (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q l_2)) FullPerm))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 29) 28) anon90_Then_correct) (=> (= (ControlFlow 0 29) 23) anon90_Else_correct)))))))
(let ((anon46_correct  (=> (= Ops_1Heap@4 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Ops_1Heap@3) (store (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2) (PolymorphicMapType_9836 (store (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) l_2 next true) (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))) (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@3) null (|Q#sm| l_2))))) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Ops_1Heap@3) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Ops_1Heap@3))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_9360_9361) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52 f_55) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52 f_55)) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@2) o_52 f_55))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@2) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_9347_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@2) o_52@@0 f_55@@0))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@2) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_5093_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@2) o_52@@1 f_55@@1))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@2) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_5093_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@2) o_52@@2 f_55@@2))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@2) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_5093_5123) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@2) o_52@@3 f_55@@3))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@2) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_12675_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@2) o_52@@4 f_55@@4))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@2) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_12675_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@2) o_52@@5 f_55@@5))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@2) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_12675_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@2) o_52@@6 f_55@@6))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@2) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_12688_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@7 f_55@@7)) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@2) o_52@@7 f_55@@7))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@2) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_12704_12705) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@8 f_55@@8)) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@2) o_52@@8 f_55@@8))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@2) o_52@@8 f_55@@8))
))) (forall ((o_52@@9 T@Ref) (f_55@@9 T@Field_13253_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@9 f_55@@9) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@9 f_55@@9)) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@2) o_52@@9 f_55@@9))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@2) o_52@@9 f_55@@9))
))) (forall ((o_52@@10 T@Ref) (f_55@@10 T@Field_13253_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@10 f_55@@10) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@10 f_55@@10)) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@2) o_52@@10 f_55@@10))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@2) o_52@@10 f_55@@10))
))) (forall ((o_52@@11 T@Ref) (f_55@@11 T@Field_13253_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@11 f_55@@11) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@11 f_55@@11)) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@2) o_52@@11 f_55@@11))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@2) o_52@@11 f_55@@11))
))) (forall ((o_52@@12 T@Ref) (f_55@@12 T@Field_13266_13271) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@12 f_55@@12) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@12 f_55@@12)) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@2) o_52@@12 f_55@@12))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@2) o_52@@12 f_55@@12))
))) (forall ((o_52@@13 T@Ref) (f_55@@13 T@Field_13253_13254) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@13 f_55@@13) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@13 f_55@@13)) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@2) o_52@@13 f_55@@13))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@2) o_52@@13 f_55@@13))
))) (forall ((o_52@@14 T@Ref) (f_55@@14 T@Field_5122_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@14 f_55@@14) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@14 f_55@@14)) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@2) o_52@@14 f_55@@14))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@2) o_52@@14 f_55@@14))
))) (forall ((o_52@@15 T@Ref) (f_55@@15 T@Field_5122_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@15 f_55@@15) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@15 f_55@@15)) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@2) o_52@@15 f_55@@15))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@2) o_52@@15 f_55@@15))
))) (forall ((o_52@@16 T@Ref) (f_55@@16 T@Field_5122_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@16 f_55@@16) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@16 f_55@@16)) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@2) o_52@@16 f_55@@16))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@2) o_52@@16 f_55@@16))
))) (forall ((o_52@@17 T@Ref) (f_55@@17 T@Field_14485_14490) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@17 f_55@@17) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@17 f_55@@17)) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@2) o_52@@17 f_55@@17))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@2) o_52@@17 f_55@@17))
))) (forall ((o_52@@18 T@Ref) (f_55@@18 T@Field_14240_14241) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2))) o_52@@18 f_55@@18) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) l_2 next)))) o_52@@18 f_55@@18)) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@2) o_52@@18 f_55@@18))
 :qid |stdinbpl.695:31|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@2) o_52@@18 f_55@@18))
))) (= Ops_1Heap@5 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Ops_1Heap@4) (store (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@4) null (|Q#sm| l_2) newPMask@2) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Ops_1Heap@4) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Ops_1Heap@4)))) (and (and (and (state Ops_1Heap@5 Ops_1Mask@11) (= b_1_1@23  (and b_1_1@22 (state Ops_1Heap@5 Ops_1Mask@11)))) (and (= Ops_1Mask@12 Ops_1Mask@11) (= Ops_1Heap@6 Ops_1Heap@5))) (and (and (= b_1_1@24 b_1_1@23) (= Mask@7 Mask@6)) (and (= Heap@7 Heap@6) (= (ControlFlow 0 32) 29))))) anon47_correct))))
(let ((anon89_Else_correct  (=> (HasDirectPerm_5122_5123 Ops_1Mask@11 null (Q l_2)) (=> (and (= Ops_1Heap@3 Ops_1Heap@0) (= (ControlFlow 0 34) 32)) anon46_correct))))
(let ((anon89_Then_correct  (=> (not (HasDirectPerm_5122_5123 Ops_1Mask@11 null (Q l_2))) (=> (and (and (= Ops_1Heap@1 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Ops_1Heap@0) (store (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@0) null (|Q#sm| l_2) ZeroPMask) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Ops_1Heap@0) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Ops_1Heap@0))) (= Ops_1Heap@2 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Ops_1Heap@1) (store (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@1) null (Q l_2) freshVersion@0) (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Ops_1Heap@1) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Ops_1Heap@1)))) (and (= Ops_1Heap@3 Ops_1Heap@2) (= (ControlFlow 0 33) 32))) anon46_correct))))
(let ((anon44_correct  (and (=> (= (ControlFlow 0 35) (- 0 36)) (=> (and b_1_1@17 b_4@12) (and (= neededTransfer@12 0.0) (= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@7) null (Q arg_1_1@0)) initNeededTransfer@2)))) (=> (=> (and b_1_1@17 b_4@12) (and (= neededTransfer@12 0.0) (= (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@7) null (Q arg_1_1@0)) initNeededTransfer@2))) (=> (= b_6@0  (and b_1_1@17 b_4@12)) (=> (and (and (= b_6@1  (and b_6@0 (state Result_2Heap Result_2Mask))) (= b_6@2  (and b_6@1 (sumMask Result_2Mask Ops_1Mask@10 Used_2Mask@7)))) (and (= b_6@3  (and (and b_6@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_2Heap Ops_1Mask@10)) (IdenticalOnKnownLocations Used_2Heap@0 Result_2Heap Used_2Mask@7))) (= b_6@4  (and b_6@3 (state Result_2Heap Result_2Mask))))) (=> (and (and (and (= b_1_1@18  (and b_1_1@17 b_6@4)) (= b_1_1@19  (and b_1_1@18 b_4@12))) (and (= b_1_1@20  (and b_1_1@19 (= Used_2Heap@0 Ops_1Heap@0))) (= Ops_1Mask@11 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@10) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@10) null (Q l_2) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@10) null (Q l_2)) FullPerm)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@10) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@10))))) (and (and (= b_1_1@21  (and b_1_1@20 (state Ops_1Heap@0 Ops_1Mask@11))) (= b_1_1@22  (and b_1_1@21 (state Ops_1Heap@0 Ops_1Mask@11)))) (and (|Q#trigger_5122| Ops_1Heap@0 (Q l_2)) (= (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@0) null (Q l_2)) (CombineFrames (FrameFragment_5094 (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next)) (ConditionalFrame (ite (not (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next) null)) FullPerm NoPerm) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@0) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next))))))))) (and (=> (= (ControlFlow 0 35) 33) anon89_Then_correct) (=> (= (ControlFlow 0 35) 34) anon89_Else_correct)))))))))
(let ((anon88_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= neededTransfer@12 neededTransfer@10) (= Heap@6 Heap@4)) (=> (and (and (= b_4@12 b_4@9) (= Mask@6 Mask@4)) (and (= Used_2Mask@7 Used_2Mask@5) (= (ControlFlow 0 39) 35))) anon44_correct)))))
(let ((anon88_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (= neededTransfer@11 (- neededTransfer@10 takeTransfer@5)) (= Used_2Mask@6 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_2Mask@5) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@5) null (Q arg_1_1@0) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@5) null (Q arg_1_1@0)) takeTransfer@5)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Used_2Mask@5) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Used_2Mask@5)))) (=> (and (and (= b_4@10  (and b_4@9 (state Used_2Heap@0 Used_2Mask@6))) (= TempMask@3 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q arg_1_1@0) FullPerm) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (and (= b_4@11  (and b_4@10 (IdenticalOnKnownLocations Heap@4 Used_2Heap@0 TempMask@3))) (= Mask@5 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@4) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@4) null (Q arg_1_1@0) (- (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@4) null (Q arg_1_1@0)) takeTransfer@5)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@4) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@4))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_9360_9361) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16 f_21) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16 f_21)) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@1) o_16 f_21))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@1) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_9347_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@1) o_16@@0 f_21@@0))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@1) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_5093_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@1) o_16@@1 f_21@@1))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@1) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_5093_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@1) o_16@@2 f_21@@2))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@1) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_5093_5123) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@1) o_16@@3 f_21@@3))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@1) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_12675_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@1) o_16@@4 f_21@@4))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@1) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_12675_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@1) o_16@@5 f_21@@5))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@1) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_12675_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@1) o_16@@6 f_21@@6))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@1) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_12688_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@1) o_16@@7 f_21@@7))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@1) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_12704_12705) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@1) o_16@@8 f_21@@8))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@1) o_16@@8 f_21@@8))
))) (forall ((o_16@@9 T@Ref) (f_21@@9 T@Field_13253_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@9 f_21@@9) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@9 f_21@@9)) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@1) o_16@@9 f_21@@9))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@1) o_16@@9 f_21@@9))
))) (forall ((o_16@@10 T@Ref) (f_21@@10 T@Field_13253_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@10 f_21@@10) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@10 f_21@@10)) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@1) o_16@@10 f_21@@10))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@1) o_16@@10 f_21@@10))
))) (forall ((o_16@@11 T@Ref) (f_21@@11 T@Field_13253_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@11 f_21@@11) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@11 f_21@@11)) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@1) o_16@@11 f_21@@11))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@1) o_16@@11 f_21@@11))
))) (forall ((o_16@@12 T@Ref) (f_21@@12 T@Field_13266_13271) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@12 f_21@@12) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@12 f_21@@12)) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@1) o_16@@12 f_21@@12))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@1) o_16@@12 f_21@@12))
))) (forall ((o_16@@13 T@Ref) (f_21@@13 T@Field_13253_13254) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@13 f_21@@13) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@13 f_21@@13)) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@1) o_16@@13 f_21@@13))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@1) o_16@@13 f_21@@13))
))) (forall ((o_16@@14 T@Ref) (f_21@@14 T@Field_5122_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@14 f_21@@14) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@14 f_21@@14)) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@1) o_16@@14 f_21@@14))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@1) o_16@@14 f_21@@14))
))) (forall ((o_16@@15 T@Ref) (f_21@@15 T@Field_5122_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@15 f_21@@15) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@15 f_21@@15)) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@1) o_16@@15 f_21@@15))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@1) o_16@@15 f_21@@15))
))) (forall ((o_16@@16 T@Ref) (f_21@@16 T@Field_5122_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@16 f_21@@16) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@16 f_21@@16)) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@1) o_16@@16 f_21@@16))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@1) o_16@@16 f_21@@16))
))) (forall ((o_16@@17 T@Ref) (f_21@@17 T@Field_14485_14490) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@17 f_21@@17) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@17 f_21@@17)) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@1) o_16@@17 f_21@@17))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@1) o_16@@17 f_21@@17))
))) (forall ((o_16@@18 T@Ref) (f_21@@18 T@Field_14240_14241) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2))) o_16@@18 f_21@@18) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) null (|Q#sm| (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) l_2 next)))) o_16@@18 f_21@@18)) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@1) o_16@@18 f_21@@18))
 :qid |stdinbpl.662:39|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@1) o_16@@18 f_21@@18))
))) (= Heap@5 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@4) (store (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@4) null (|wand#sm| l_2 l_2) newPMask@1) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@4) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@4)))) (and (= neededTransfer@12 neededTransfer@11) (= Heap@6 Heap@5))) (and (and (= b_4@12 b_4@11) (= Mask@6 Mask@5)) (and (= Used_2Mask@7 Used_2Mask@6) (= (ControlFlow 0 38) 35)))) anon44_correct))))))
(let ((anon87_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@10) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 41) 38) anon88_Then_correct) (=> (= (ControlFlow 0 41) 39) anon88_Else_correct)))))
(let ((anon87_Then_correct  (=> (and (<= neededTransfer@10 maskTransfer@5) (= takeTransfer@5 neededTransfer@10)) (and (=> (= (ControlFlow 0 40) 38) anon88_Then_correct) (=> (= (ControlFlow 0 40) 39) anon88_Else_correct)))))
(let ((anon86_Then_correct  (=> (and (and (and (and b_1_1@17 b_4@9) true) (> neededTransfer@10 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@4) null (Q arg_1_1@0)))) (and (=> (= (ControlFlow 0 42) 40) anon87_Then_correct) (=> (= (ControlFlow 0 42) 41) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (not (and (and (and b_1_1@17 b_4@9) true) (> neededTransfer@10 0.0))) (=> (and (= neededTransfer@12 neededTransfer@10) (= Heap@6 Heap@4)) (=> (and (and (= b_4@12 b_4@9) (= Mask@6 Mask@4)) (and (= Used_2Mask@7 Used_2Mask@5) (= (ControlFlow 0 37) 35))) anon44_correct)))))
(let ((anon85_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= Used_2Mask@5 Used_2Mask@3) (= b_4@9 b_4@6)) (and (= neededTransfer@10 neededTransfer@8) (= Ops_1Mask@10 Ops_1Mask@8))) (and (=> (= (ControlFlow 0 45) 42) anon86_Then_correct) (=> (= (ControlFlow 0 45) 37) anon86_Else_correct))))))
(let ((anon85_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (= neededTransfer@9 (- neededTransfer@8 takeTransfer@4)) (= Used_2Mask@4 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_2Mask@3) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@3) null (Q arg_1_1@0) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@3) null (Q arg_1_1@0)) takeTransfer@4)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Used_2Mask@3) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Used_2Mask@3)))) (=> (and (and (and (= b_4@7  (and b_4@6 (state Used_2Heap@0 Used_2Mask@4))) (= TempMask@2 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) null (Q arg_1_1@0) FullPerm) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (and (= b_4@8  (and b_4@7 (IdenticalOnKnownLocations Ops_1Heap@0 Used_2Heap@0 TempMask@2))) (= Ops_1Mask@9 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@8) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@8) null (Q arg_1_1@0) (- (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@8) null (Q arg_1_1@0)) takeTransfer@4)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@8) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@8))))) (and (and (= Used_2Mask@5 Used_2Mask@4) (= b_4@9 b_4@8)) (and (= neededTransfer@10 neededTransfer@9) (= Ops_1Mask@10 Ops_1Mask@9)))) (and (=> (= (ControlFlow 0 44) 42) anon86_Then_correct) (=> (= (ControlFlow 0 44) 37) anon86_Else_correct)))))))
(let ((anon84_Else_correct  (=> (and (< maskTransfer@4 neededTransfer@8) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 47) 44) anon85_Then_correct) (=> (= (ControlFlow 0 47) 45) anon85_Else_correct)))))
(let ((anon84_Then_correct  (=> (and (<= neededTransfer@8 maskTransfer@4) (= takeTransfer@4 neededTransfer@8)) (and (=> (= (ControlFlow 0 46) 44) anon85_Then_correct) (=> (= (ControlFlow 0 46) 45) anon85_Else_correct)))))
(let ((anon83_Then_correct  (=> (and (and (and (and b_1_1@17 b_4@6) true) (> neededTransfer@8 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@8) null (Q arg_1_1@0)))) (and (=> (= (ControlFlow 0 48) 46) anon84_Then_correct) (=> (= (ControlFlow 0 48) 47) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (not (and (and (and b_1_1@17 b_4@6) true) (> neededTransfer@8 0.0))) (=> (and (and (= Used_2Mask@5 Used_2Mask@3) (= b_4@9 b_4@6)) (and (= neededTransfer@10 neededTransfer@8) (= Ops_1Mask@10 Ops_1Mask@8))) (and (=> (= (ControlFlow 0 43) 42) anon86_Then_correct) (=> (= (ControlFlow 0 43) 37) anon86_Else_correct))))))
(let ((anon32_correct  (=> (= arg_1_1@0 (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Result_1Heap) l_2 next)) (=> (and (= neededTransfer@8 (ite (not (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Used_2Heap@0) l_2 next) null)) FullPerm NoPerm)) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@3) null (Q arg_1_1@0)) neededTransfer@8))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (>= neededTransfer@8 0.0)) (=> (>= neededTransfer@8 0.0) (and (=> (= (ControlFlow 0 49) 48) anon83_Then_correct) (=> (= (ControlFlow 0 49) 43) anon83_Else_correct))))))))
(let ((anon82_Else_correct  (=> (and (not b_1_1@17) (= (ControlFlow 0 55) 49)) anon32_correct)))
(let ((anon82_Then_correct  (=> b_1_1@17 (and (=> (= (ControlFlow 0 52) (- 0 54)) (HasDirectPerm_5093_5094 Result_1Mask l_2 next)) (=> (HasDirectPerm_5093_5094 Result_1Mask l_2 next) (and (=> (= (ControlFlow 0 52) (- 0 53)) (HasDirectPerm_5093_5094 Result_1Mask l_2 next)) (=> (HasDirectPerm_5093_5094 Result_1Mask l_2 next) (=> (= (ControlFlow 0 52) 49) anon32_correct))))))))
(let ((anon81_Then_correct  (=> (and b_1_1@17 b_4@6) (and (=> (= (ControlFlow 0 56) 52) anon82_Then_correct) (=> (= (ControlFlow 0 56) 55) anon82_Else_correct)))))
(let ((anon81_Else_correct  (=> (and (not (and b_1_1@17 b_4@6)) (= (ControlFlow 0 51) 49)) anon32_correct)))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 57) (- 0 58)) (=> (and b_1_1@14 b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_2Mask@3) l_2 next) initNeededTransfer@1)))) (=> (=> (and b_1_1@14 b_4@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_2Mask@3) l_2 next) initNeededTransfer@1))) (=> (and (and (and (= b_5@0  (and b_1_1@14 b_4@6)) (= b_5@1  (and b_5@0 (state Result_1Heap Result_1Mask)))) (and (= b_5@2  (and b_5@1 (sumMask Result_1Mask Ops_1Mask@8 Used_2Mask@3))) (= b_5@3  (and (and b_5@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_1Heap Ops_1Mask@8)) (IdenticalOnKnownLocations Used_2Heap@0 Result_1Heap Used_2Mask@3))))) (and (and (= b_5@4  (and b_5@3 (state Result_1Heap Result_1Mask))) (= b_1_1@15  (and b_1_1@14 b_5@4))) (and (= b_1_1@16  (and b_1_1@15 b_4@6)) (= b_1_1@17  (and b_1_1@16 (= Used_2Heap@0 Ops_1Heap@0)))))) (and (=> (= (ControlFlow 0 57) 56) anon81_Then_correct) (=> (= (ControlFlow 0 57) 51) anon81_Else_correct)))))))
(let ((anon80_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= Mask@4 Mask@2) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 61) 57))) anon29_correct)))))
(let ((anon80_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_2Mask@2 (PolymorphicMapType_9308 (store (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_2Mask@1) l_2 next (+ (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_2Mask@1) l_2 next) takeTransfer@3)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Used_2Mask@1) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Used_2Mask@1)))) (and (= b_4@4  (and b_4@3 (state Used_2Heap@0 Used_2Mask@2))) (= b_4@5  (and b_4@4 (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@2) l_2 next) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Used_2Heap@0) l_2 next)))))) (=> (and (and (and (= Mask@3 (PolymorphicMapType_9308 (store (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@2) l_2 next (- (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@2) l_2 next) takeTransfer@3)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Mask@2) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Mask@2))) (= Heap@3 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@2) (store (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2) (PolymorphicMapType_9836 (store (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) l_2 next true) (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))) (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@2) null (|wand#sm| l_2 l_2))))) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@2) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@2)))) (and (= Mask@4 Mask@3) (= neededTransfer@7 neededTransfer@6))) (and (and (= Heap@4 Heap@3) (= b_4@6 b_4@5)) (and (= Used_2Mask@3 Used_2Mask@2) (= (ControlFlow 0 60) 57)))) anon29_correct)))))
(let ((anon79_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 63) 60) anon80_Then_correct) (=> (= (ControlFlow 0 63) 61) anon80_Else_correct)))))
(let ((anon79_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 62) 60) anon80_Then_correct) (=> (= (ControlFlow 0 62) 61) anon80_Else_correct)))))
(let ((anon78_Then_correct  (=> (and (and (and (and b_1_1@14 b_4@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Mask@2) l_2 next))) (and (=> (= (ControlFlow 0 64) 62) anon79_Then_correct) (=> (= (ControlFlow 0 64) 63) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (not (and (and (and b_1_1@14 b_4@3) true) (> neededTransfer@5 0.0))) (=> (and (= Mask@4 Mask@2) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_4@6 b_4@3)) (and (= Used_2Mask@3 Used_2Mask@1) (= (ControlFlow 0 59) 57))) anon29_correct)))))
(let ((anon77_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_1Mask@8 Ops_1Mask@6) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 67) 64) anon78_Then_correct) (=> (= (ControlFlow 0 67) 59) anon78_Else_correct))))))
(let ((anon77_Then_correct  (=> (and (> takeTransfer@2 0.0) (= neededTransfer@4 (- FullPerm takeTransfer@2))) (=> (and (and (and (= Used_2Mask@0 (PolymorphicMapType_9308 (store (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) l_2 next (+ (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) l_2 next) takeTransfer@2)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask))) (= b_4@1  (and b_4@0 (state Used_2Heap@0 Used_2Mask@0)))) (and (= b_4@2  (and b_4@1 (= (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next) (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Used_2Heap@0) l_2 next)))) (= Ops_1Mask@7 (PolymorphicMapType_9308 (store (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@6) l_2 next (- (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@6) l_2 next) takeTransfer@2)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@6) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@6))))) (and (and (= Ops_1Mask@8 Ops_1Mask@7) (= Used_2Mask@1 Used_2Mask@0)) (and (= b_4@3 b_4@2) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 66) 64) anon78_Then_correct) (=> (= (ControlFlow 0 66) 59) anon78_Else_correct))))))
(let ((anon76_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 69) 66) anon77_Then_correct) (=> (= (ControlFlow 0 69) 67) anon77_Else_correct)))))
(let ((anon76_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 68) 66) anon77_Then_correct) (=> (= (ControlFlow 0 68) 67) anon77_Else_correct)))))
(let ((anon75_Then_correct  (=> (and (and (and (and b_1_1@14 b_4@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@6) l_2 next))) (and (=> (= (ControlFlow 0 70) 68) anon76_Then_correct) (=> (= (ControlFlow 0 70) 69) anon76_Else_correct)))))
(let ((anon75_Else_correct  (=> (not (and (and (and b_1_1@14 b_4@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@8 Ops_1Mask@6) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 65) 64) anon78_Then_correct) (=> (= (ControlFlow 0 65) 59) anon78_Else_correct))))))
(let ((anon74_Then_correct  (=> b_1_1@14 (=> (and (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) l_2 next) FullPerm))) (and (=> (= (ControlFlow 0 71) (- 0 72)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 71) 70) anon75_Then_correct) (=> (= (ControlFlow 0 71) 65) anon75_Else_correct))))))))
(let ((anon74_Else_correct  (=> (not b_1_1@14) (=> (and (= Ops_1Mask@12 Ops_1Mask@6) (= Ops_1Heap@6 Ops_1Heap@0)) (=> (and (and (= b_1_1@24 b_1_1@14) (= Mask@7 Mask@2)) (and (= Heap@7 Heap@2) (= (ControlFlow 0 31) 29))) anon47_correct)))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 74) (- 0 75)) (=> (and b_1_1@4 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_1Mask@3) null (P l_2)) initNeededTransfer@0)))) (=> (=> (and b_1_1@4 b_2_1@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_1Mask@3) null (P l_2)) initNeededTransfer@0))) (=> (and (and (= b_3@0  (and b_1_1@4 b_2_1@6)) (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@19)))) (and (= b_3@2  (and b_3@1 (sumMask ResultMask@@19 Ops_1Mask@3 Used_1Mask@3))) (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@3)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3))))) (=> (and (and (and (and (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@19))) (= b_1_1@5  (and b_1_1@4 b_3@4))) (and (= b_1_1@6  (and b_1_1@5 b_2_1@6)) (= b_1_1@7  (and b_1_1@6 (= Used_1Heap@0 Ops_1Heap@0))))) (and (and (= b_1_1@8  (and b_1_1@7 (not (= l_2 null)))) (= Ops_1Mask@4 (PolymorphicMapType_9308 (store (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@3) l_2 next (+ (select (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@3) l_2 next) FullPerm)) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@3) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@3)))) (and (= b_1_1@9  (and b_1_1@8 (state Ops_1Heap@0 Ops_1Mask@4))) (= Ops_1Mask@5 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@4) (store (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@4) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next)) (+ (select (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@4) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next))) FullPerm)) (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@4) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@4)))))) (and (and (and (= b_1_1@10  (and b_1_1@9 (InsidePredicate_5097_5122 (P l_2) (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Ops_1Heap@0) null (P l_2)) (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next)) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@0) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next)))))) (= b_1_1@11  (and b_1_1@10 (state Ops_1Heap@0 Ops_1Mask@5)))) (and (= b_1_1@12  (and b_1_1@11 (state Ops_1Heap@0 Ops_1Mask@5))) (= b_1_1@13  (and b_1_1@12 (state Ops_1Heap@0 Ops_1Mask@5))))) (and (and (= b_1_1@14 b_1_1@13) (= Mask@2 Mask@1)) (and (= Ops_1Mask@6 Ops_1Mask@5) (= Heap@2 Heap@1))))) (and (=> (= (ControlFlow 0 74) 71) anon74_Then_correct) (=> (= (ControlFlow 0 74) 31) anon74_Else_correct))))))))
(let ((anon73_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@61) (= (ControlFlow 0 78) 74))) anon15_correct)))))
(let ((anon73_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Used_1Mask@1) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_1Mask@1) null (P l_2) (+ (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Used_1Mask@1) null (P l_2)) takeTransfer@1)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Used_1Mask@1) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Used_1Mask@1)))) (=> (and (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= TempMask@1 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2) FullPerm) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (and (= b_2_1@5  (and b_2_1@4 (IdenticalOnKnownLocations Heap@@61 Used_1Heap@0 TempMask@1))) (= Mask@0 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2) (- (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2)) takeTransfer@1)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_9360_9361) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15 f_20) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15 f_20)) (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@0) o_15 f_20))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_5093_5094#PolymorphicMapType_9836| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_9347_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_5093_53#PolymorphicMapType_9836| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_5093_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_5093_1195#PolymorphicMapType_9836| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_5093_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_5093_36350#PolymorphicMapType_9836| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_5093_5123) ) (!  (=> (or (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_5093_12705#PolymorphicMapType_9836| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_12675_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_12675_5094#PolymorphicMapType_9836| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_12675_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_12675_53#PolymorphicMapType_9836| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_12675_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_12675_1195#PolymorphicMapType_9836| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_12688_12693) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_12675_37398#PolymorphicMapType_9836| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_12704_12705) ) (!  (=> (or (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_12675_12705#PolymorphicMapType_9836| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_13253_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_13253_5094#PolymorphicMapType_9836| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_13253_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_13253_53#PolymorphicMapType_9836| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_13253_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_13253_1195#PolymorphicMapType_9836| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_13266_13271) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_13253_38446#PolymorphicMapType_9836| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_13253_13254) ) (!  (=> (or (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_13253_12705#PolymorphicMapType_9836| newPMask@0) o_15@@13 f_20@@13))
))) (forall ((o_15@@14 T@Ref) (f_20@@14 T@Field_5122_5094) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@14 f_20@@14) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@14 f_20@@14)) (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@0) o_15@@14 f_20@@14))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_14240_5094#PolymorphicMapType_9836| newPMask@0) o_15@@14 f_20@@14))
))) (forall ((o_15@@15 T@Ref) (f_20@@15 T@Field_5122_53) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@15 f_20@@15) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@15 f_20@@15)) (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@0) o_15@@15 f_20@@15))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_14240_53#PolymorphicMapType_9836| newPMask@0) o_15@@15 f_20@@15))
))) (forall ((o_15@@16 T@Ref) (f_20@@16 T@Field_5122_1195) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@16 f_20@@16) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@16 f_20@@16)) (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@0) o_15@@16 f_20@@16))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_14240_1195#PolymorphicMapType_9836| newPMask@0) o_15@@16 f_20@@16))
))) (forall ((o_15@@17 T@Ref) (f_20@@17 T@Field_14485_14490) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@17 f_20@@17) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@17 f_20@@17)) (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@0) o_15@@17 f_20@@17))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_14240_39494#PolymorphicMapType_9836| newPMask@0) o_15@@17 f_20@@17))
))) (forall ((o_15@@18 T@Ref) (f_20@@18 T@Field_14240_14241) ) (!  (=> (or (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2))) o_15@@18 f_20@@18) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| (select (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) null (|P#sm| l_2))) o_15@@18 f_20@@18)) (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@0) o_15@@18 f_20@@18))
 :qid |stdinbpl.501:39|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_9836_14240_12705#PolymorphicMapType_9836| newPMask@0) o_15@@18 f_20@@18))
))) (= Heap@0 (PolymorphicMapType_9287 (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Heap@@61) (store (|PolymorphicMapType_9287_5069_18173#PolymorphicMapType_9287| Heap@@61) null (|wand#sm| l_2 l_2) newPMask@0) (|PolymorphicMapType_9287_5101_18292#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5126_22873#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5093_5123#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5093_1195#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5093_30814#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5122_5094#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5122_53#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_5122_1195#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_12675_5094#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_12675_5123#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_12675_53#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_12675_1195#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_13253_5094#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_13253_53#PolymorphicMapType_9287| Heap@@61) (|PolymorphicMapType_9287_13253_1195#PolymorphicMapType_9287| Heap@@61)))) (and (= Mask@1 Mask@0) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_2_1@6 b_2_1@5) (= Used_1Mask@3 Used_1Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 77) 74)))) anon15_correct))))))
(let ((anon72_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 80) 77) anon73_Then_correct) (=> (= (ControlFlow 0 80) 78) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 79) 77) anon73_Then_correct) (=> (= (ControlFlow 0 79) 78) anon73_Else_correct)))))
(let ((anon71_Then_correct  (=> (and (and (and (and b_1_1@4 b_2_1@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2)))) (and (=> (= (ControlFlow 0 81) 79) anon72_Then_correct) (=> (= (ControlFlow 0 81) 80) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (not (and (and (and b_1_1@4 b_2_1@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@1 ZeroMask) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_2_1@6 b_2_1@3) (= Used_1Mask@3 Used_1Mask@1)) (and (= Heap@1 Heap@@61) (= (ControlFlow 0 76) 74))) anon15_correct)))))
(let ((anon70_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 84) 81) anon71_Then_correct) (=> (= (ControlFlow 0 84) 76) anon71_Else_correct))))))
(let ((anon70_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_1Mask@0 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2) (+ (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2)) takeTransfer@0)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (=> (and (and (and (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0))) (= TempMask@0 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2) FullPerm) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (and (= b_2_1@2  (and b_2_1@1 (IdenticalOnKnownLocations Ops_1Heap@0 Used_1Heap@0 TempMask@0))) (= Ops_1Mask@2 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| Ops_1Mask@1) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@1) null (P l_2) (- (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@1) null (P l_2)) takeTransfer@0)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| Ops_1Mask@1) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| Ops_1Mask@1))))) (and (and (= Ops_1Mask@3 Ops_1Mask@2) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 83) 81) anon71_Then_correct) (=> (= (ControlFlow 0 83) 76) anon71_Else_correct)))))))
(let ((anon69_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 86) 83) anon70_Then_correct) (=> (= (ControlFlow 0 86) 84) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 85) 83) anon70_Then_correct) (=> (= (ControlFlow 0 85) 84) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (and (and (and (and b_1_1@4 b_2_1@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| Ops_1Mask@1) null (P l_2)))) (and (=> (= (ControlFlow 0 87) 85) anon69_Then_correct) (=> (= (ControlFlow 0 87) 86) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (not (and (and (and b_1_1@4 b_2_1@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 82) 81) anon71_Then_correct) (=> (= (ControlFlow 0 82) 76) anon71_Else_correct))))))
(let ((anon67_Then_correct  (=> b_1_1@4 (=> (and (and (|P#trigger_5097| Ops_1Heap@0 (P l_2)) (= (select (|PolymorphicMapType_9287_5097_5098#PolymorphicMapType_9287| Ops_1Heap@0) null (P l_2)) (CombineFrames (FrameFragment_5094 (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next)) (select (|PolymorphicMapType_9287_5122_5123#PolymorphicMapType_9287| Ops_1Heap@0) null (Q (select (|PolymorphicMapType_9287_4938_4939#PolymorphicMapType_9287| Ops_1Heap@0) l_2 next)))))) (and (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2)) FullPerm)))) (and (=> (= (ControlFlow 0 88) (- 0 89)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 88) 87) anon68_Then_correct) (=> (= (ControlFlow 0 88) 82) anon68_Else_correct))))))))
(let ((anon67_Else_correct  (=> (not b_1_1@4) (=> (and (and (= b_1_1@14 b_1_1@4) (= Mask@2 ZeroMask)) (and (= Ops_1Mask@6 Ops_1Mask@1) (= Heap@2 Heap@@61))) (and (=> (= (ControlFlow 0 73) 71) anon74_Then_correct) (=> (= (ControlFlow 0 73) 31) anon74_Else_correct))))))
(let ((anon2_correct  (=> (and (= b_1_1@3  (and b_1_1@2 (state Ops_1Heap@0 Ops_1Mask@1))) (= b_1_1@4  (and b_1_1@3 (state Ops_1Heap@0 Ops_1Mask@1)))) (and (=> (= (ControlFlow 0 90) 88) anon67_Then_correct) (=> (= (ControlFlow 0 90) 73) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (and (not b_1_1@0) (= Ops_1Mask@1 ZeroMask)) (and (= b_1_1@2 b_1_1@0) (= (ControlFlow 0 92) 90))) anon2_correct)))
(let ((anon66_Then_correct  (=> (and b_1_1@0 (= Ops_1Mask@0 (PolymorphicMapType_9308 (|PolymorphicMapType_9308_5093_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5123#PolymorphicMapType_9308| ZeroMask) (store (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2) (+ (select (|PolymorphicMapType_9308_5097_5098#PolymorphicMapType_9308| ZeroMask) null (P l_2)) FullPerm)) (|PolymorphicMapType_9308_5065_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5093_49957#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5122_50368#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_1195#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5097_50779#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5094#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_5123#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_53#PolymorphicMapType_9308| ZeroMask) (|PolymorphicMapType_9308_5065_51193#PolymorphicMapType_9308| ZeroMask)))) (=> (and (and (= b_1_1@1  (and b_1_1@0 (state Ops_1Heap@0 Ops_1Mask@0))) (= Ops_1Mask@1 Ops_1Mask@0)) (and (= b_1_1@2 b_1_1@1) (= (ControlFlow 0 91) 90))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@61 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_9287_4935_53#PolymorphicMapType_9287| Heap@@61) l_2 $allocated)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 93) 91) anon66_Then_correct) (=> (= (ControlFlow 0 93) 92) anon66_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 94) 93) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
