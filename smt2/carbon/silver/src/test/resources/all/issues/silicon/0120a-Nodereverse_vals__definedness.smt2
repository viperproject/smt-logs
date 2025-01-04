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
(declare-sort T@Field_17119_53 0)
(declare-sort T@Field_17132_17133 0)
(declare-sort T@Field_23294_3046 0)
(declare-sort T@Field_23942_23943 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_26835_26840 0)
(declare-sort T@Field_9344_9456 0)
(declare-sort T@Field_23153_645 0)
(declare-sort T@Field_23340_23342 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_9344_26840 0)
(declare-sort T@Field_9455_9345 0)
(declare-sort T@Field_9455_3046 0)
(declare-sort T@Field_9455_53 0)
(declare-sort T@Field_9455_645 0)
(declare-sort T@Field_9455_23342 0)
(declare-sort T@Field_32196_9345 0)
(declare-sort T@Field_32196_3046 0)
(declare-sort T@Field_32196_32197 0)
(declare-sort T@Field_32196_53 0)
(declare-sort T@Field_32196_645 0)
(declare-sort T@Field_32196_23342 0)
(declare-sort T@Field_32209_32214 0)
(declare-datatypes ((T@PolymorphicMapType_17080 0)) (((PolymorphicMapType_17080 (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| (Array T@Ref T@Field_23942_23943 Real)) (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| (Array T@Ref T@Field_17132_17133 Real)) (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| (Array T@Ref T@Field_23294_3046 Real)) (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| (Array T@Ref T@Field_9455_9345 Real)) (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| (Array T@Ref T@Field_9455_3046 Real)) (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| (Array T@Ref T@Field_9455_53 Real)) (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| (Array T@Ref T@Field_9455_645 Real)) (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| (Array T@Ref T@Field_9455_23342 Real)) (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| (Array T@Ref T@Field_26835_26840 Real)) (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| (Array T@Ref T@Field_9344_9456 Real)) (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| (Array T@Ref T@Field_17119_53 Real)) (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| (Array T@Ref T@Field_23153_645 Real)) (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| (Array T@Ref T@Field_23340_23342 Real)) (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| (Array T@Ref T@Field_9344_26840 Real)) (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| (Array T@Ref T@Field_32196_32197 Real)) (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| (Array T@Ref T@Field_32196_9345 Real)) (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| (Array T@Ref T@Field_32196_3046 Real)) (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| (Array T@Ref T@Field_32196_53 Real)) (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| (Array T@Ref T@Field_32196_645 Real)) (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| (Array T@Ref T@Field_32196_23342 Real)) (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| (Array T@Ref T@Field_32209_32214 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17608 0)) (((PolymorphicMapType_17608 (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (Array T@Ref T@Field_17132_17133 Bool)) (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (Array T@Ref T@Field_23294_3046 Bool)) (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (Array T@Ref T@Field_17119_53 Bool)) (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (Array T@Ref T@Field_23153_645 Bool)) (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (Array T@Ref T@Field_23340_23342 Bool)) (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (Array T@Ref T@Field_9344_9456 Bool)) (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (Array T@Ref T@Field_9344_26840 Bool)) (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (Array T@Ref T@Field_9455_9345 Bool)) (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (Array T@Ref T@Field_9455_3046 Bool)) (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (Array T@Ref T@Field_9455_53 Bool)) (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (Array T@Ref T@Field_9455_645 Bool)) (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (Array T@Ref T@Field_9455_23342 Bool)) (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (Array T@Ref T@Field_23942_23943 Bool)) (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (Array T@Ref T@Field_26835_26840 Bool)) (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (Array T@Ref T@Field_32196_9345 Bool)) (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (Array T@Ref T@Field_32196_3046 Bool)) (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (Array T@Ref T@Field_32196_53 Bool)) (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (Array T@Ref T@Field_32196_645 Bool)) (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (Array T@Ref T@Field_32196_23342 Bool)) (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (Array T@Ref T@Field_32196_32197 Bool)) (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (Array T@Ref T@Field_32209_32214 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17059 0)) (((PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| (Array T@Ref T@Field_17119_53 Bool)) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| (Array T@Ref T@Field_17132_17133 T@Ref)) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| (Array T@Ref T@Field_23294_3046 Int)) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| (Array T@Ref T@Field_23942_23943 T@FrameType)) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| (Array T@Ref T@Field_26835_26840 T@PolymorphicMapType_17608)) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| (Array T@Ref T@Field_9344_9456 T@FrameType)) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| (Array T@Ref T@Field_23153_645 Real)) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| (Array T@Ref T@Field_23340_23342 T@Seq_2867)) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| (Array T@Ref T@Field_9344_26840 T@PolymorphicMapType_17608)) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| (Array T@Ref T@Field_9455_9345 T@Ref)) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| (Array T@Ref T@Field_9455_3046 Int)) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| (Array T@Ref T@Field_9455_53 Bool)) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| (Array T@Ref T@Field_9455_645 Real)) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| (Array T@Ref T@Field_9455_23342 T@Seq_2867)) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| (Array T@Ref T@Field_32196_9345 T@Ref)) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| (Array T@Ref T@Field_32196_3046 Int)) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| (Array T@Ref T@Field_32196_32197 T@FrameType)) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| (Array T@Ref T@Field_32196_53 Bool)) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| (Array T@Ref T@Field_32196_645 Real)) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| (Array T@Ref T@Field_32196_23342 T@Seq_2867)) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| (Array T@Ref T@Field_32209_32214 T@PolymorphicMapType_17608)) ) ) ))
(declare-fun $allocated () T@Field_17119_53)
(declare-fun globalK$ () Real)
(declare-fun old$methodPermission () T@Field_23153_645)
(declare-fun joinable$ () T@Field_17119_53)
(declare-fun Nodenext$ () T@Field_17132_17133)
(declare-fun Nodeval$ () T@Field_23294_3046)
(declare-fun old$Nodereverse_in_place$0 () T@Field_23340_23342)
(declare-fun par$Nodereverse_in_place$this$_4 () T@Field_17132_17133)
(declare-fun par$Nodereverse_in_place$k$ () T@Field_23153_645)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_17059 T@PolymorphicMapType_17059) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17059 T@PolymorphicMapType_17059) Bool)
(declare-fun state (T@PolymorphicMapType_17059 T@PolymorphicMapType_17080) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_17080) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17608)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_5754| () T@Seq_2867)
(declare-fun Node$MonitorInvariant (T@Ref) T@Field_32196_32197)
(declare-fun IsPredicateField_9431_9432 (T@Field_32196_32197) Bool)
(declare-fun Nodelist$ (T@Ref) T@Field_23942_23943)
(declare-fun IsPredicateField_9455_9456 (T@Field_23942_23943) Bool)
(declare-fun |Nodevals$'| (T@PolymorphicMapType_17059 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_23544 (T@Seq_2867) Bool)
(declare-fun |Nodevals$#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Nodereverse_vals$'| (T@PolymorphicMapType_17059 T@Ref) T@Seq_2867)
(declare-fun |Nodereverse_vals$#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Node$MonitorInvariant#trigger_9431| (T@PolymorphicMapType_17059 T@Field_32196_32197) Bool)
(declare-fun |Node$MonitorInvariant#everUsed_9431| (T@Field_32196_32197) Bool)
(declare-fun |Nodelist$#trigger_9455| (T@PolymorphicMapType_17059 T@Field_23942_23943) Bool)
(declare-fun |Nodelist$#everUsed_9455| (T@Field_23942_23943) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun Nodevals$ (T@PolymorphicMapType_17059 T@Ref) T@Seq_2867)
(declare-fun Nodereverse_vals$ (T@PolymorphicMapType_17059 T@Ref) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17059 T@PolymorphicMapType_17059 T@PolymorphicMapType_17080) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9431 (T@Field_32196_32197) T@Field_32209_32214)
(declare-fun HasDirectPerm_32196_9456 (T@PolymorphicMapType_17080 T@Ref T@Field_32196_32197) Bool)
(declare-fun PredicateMaskField_9455 (T@Field_23942_23943) T@Field_26835_26840)
(declare-fun HasDirectPerm_9455_9456 (T@PolymorphicMapType_17080 T@Ref T@Field_23942_23943) Bool)
(declare-fun IsPredicateField_9344_60894 (T@Field_9344_9456) Bool)
(declare-fun PredicateMaskField_9344 (T@Field_9344_9456) T@Field_9344_26840)
(declare-fun HasDirectPerm_9344_9456 (T@PolymorphicMapType_17080 T@Ref T@Field_9344_9456) Bool)
(declare-fun IsWandField_32196_67781 (T@Field_32196_32197) Bool)
(declare-fun WandMaskField_32196 (T@Field_32196_32197) T@Field_32209_32214)
(declare-fun IsWandField_9455_67424 (T@Field_23942_23943) Bool)
(declare-fun WandMaskField_9455 (T@Field_23942_23943) T@Field_26835_26840)
(declare-fun IsWandField_9344_67067 (T@Field_9344_9456) Bool)
(declare-fun WandMaskField_9344 (T@Field_9344_9456) T@Field_9344_26840)
(declare-fun |Seq#Singleton_3046| (Int) T@Seq_2867)
(declare-fun |Node$MonitorInvariant#sm| (T@Ref) T@Field_32209_32214)
(declare-fun |Nodelist$#sm| (T@Ref) T@Field_26835_26840)
(declare-fun |Seq#Append_3046| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_17059)
(declare-fun ZeroMask () T@PolymorphicMapType_17080)
(declare-fun InsidePredicate_32196_32196 (T@Field_32196_32197 T@FrameType T@Field_32196_32197 T@FrameType) Bool)
(declare-fun InsidePredicate_17119_17119 (T@Field_9344_9456 T@FrameType T@Field_9344_9456 T@FrameType) Bool)
(declare-fun InsidePredicate_9455_9455 (T@Field_23942_23943 T@FrameType T@Field_23942_23943 T@FrameType) Bool)
(declare-fun IsPredicateField_9339_645 (T@Field_23153_645) Bool)
(declare-fun IsWandField_9339_645 (T@Field_23153_645) Bool)
(declare-fun IsPredicateField_9342_3016 (T@Field_17119_53) Bool)
(declare-fun IsWandField_9342_3016 (T@Field_17119_53) Bool)
(declare-fun IsPredicateField_9344_9345 (T@Field_17132_17133) Bool)
(declare-fun IsWandField_9344_9345 (T@Field_17132_17133) Bool)
(declare-fun IsPredicateField_9347_3046 (T@Field_23294_3046) Bool)
(declare-fun IsWandField_9347_3046 (T@Field_23294_3046) Bool)
(declare-fun IsPredicateField_9349_23361 (T@Field_23340_23342) Bool)
(declare-fun IsWandField_9349_23384 (T@Field_23340_23342) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_32196_81721 (T@Field_32209_32214) Bool)
(declare-fun IsWandField_32196_81737 (T@Field_32209_32214) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_32196_23342 (T@Field_32196_23342) Bool)
(declare-fun IsWandField_32196_23342 (T@Field_32196_23342) Bool)
(declare-fun IsPredicateField_32196_645 (T@Field_32196_645) Bool)
(declare-fun IsWandField_32196_645 (T@Field_32196_645) Bool)
(declare-fun IsPredicateField_32196_53 (T@Field_32196_53) Bool)
(declare-fun IsWandField_32196_53 (T@Field_32196_53) Bool)
(declare-fun IsPredicateField_32196_3046 (T@Field_32196_3046) Bool)
(declare-fun IsWandField_32196_3046 (T@Field_32196_3046) Bool)
(declare-fun IsPredicateField_32196_9345 (T@Field_32196_9345) Bool)
(declare-fun IsWandField_32196_9345 (T@Field_32196_9345) Bool)
(declare-fun IsPredicateField_9344_80554 (T@Field_9344_26840) Bool)
(declare-fun IsWandField_9344_80570 (T@Field_9344_26840) Bool)
(declare-fun IsPredicateField_9455_79457 (T@Field_26835_26840) Bool)
(declare-fun IsWandField_9455_79473 (T@Field_26835_26840) Bool)
(declare-fun IsPredicateField_9455_23342 (T@Field_9455_23342) Bool)
(declare-fun IsWandField_9455_23342 (T@Field_9455_23342) Bool)
(declare-fun IsPredicateField_9455_645 (T@Field_9455_645) Bool)
(declare-fun IsWandField_9455_645 (T@Field_9455_645) Bool)
(declare-fun IsPredicateField_9455_53 (T@Field_9455_53) Bool)
(declare-fun IsWandField_9455_53 (T@Field_9455_53) Bool)
(declare-fun IsPredicateField_9455_3046 (T@Field_9455_3046) Bool)
(declare-fun IsWandField_9455_3046 (T@Field_9455_3046) Bool)
(declare-fun IsPredicateField_9455_9345 (T@Field_9455_9345) Bool)
(declare-fun IsWandField_9455_9345 (T@Field_9455_9345) Bool)
(declare-fun HasDirectPerm_32196_60606 (T@PolymorphicMapType_17080 T@Ref T@Field_32209_32214) Bool)
(declare-fun HasDirectPerm_32196_23342 (T@PolymorphicMapType_17080 T@Ref T@Field_32196_23342) Bool)
(declare-fun HasDirectPerm_32196_645 (T@PolymorphicMapType_17080 T@Ref T@Field_32196_645) Bool)
(declare-fun HasDirectPerm_32196_53 (T@PolymorphicMapType_17080 T@Ref T@Field_32196_53) Bool)
(declare-fun HasDirectPerm_32196_3046 (T@PolymorphicMapType_17080 T@Ref T@Field_32196_3046) Bool)
(declare-fun HasDirectPerm_32196_9345 (T@PolymorphicMapType_17080 T@Ref T@Field_32196_9345) Bool)
(declare-fun HasDirectPerm_9455_59021 (T@PolymorphicMapType_17080 T@Ref T@Field_26835_26840) Bool)
(declare-fun HasDirectPerm_9455_23342 (T@PolymorphicMapType_17080 T@Ref T@Field_9455_23342) Bool)
(declare-fun HasDirectPerm_9455_645 (T@PolymorphicMapType_17080 T@Ref T@Field_9455_645) Bool)
(declare-fun HasDirectPerm_9455_53 (T@PolymorphicMapType_17080 T@Ref T@Field_9455_53) Bool)
(declare-fun HasDirectPerm_9455_3046 (T@PolymorphicMapType_17080 T@Ref T@Field_9455_3046) Bool)
(declare-fun HasDirectPerm_9455_9345 (T@PolymorphicMapType_17080 T@Ref T@Field_9455_9345) Bool)
(declare-fun HasDirectPerm_9344_57430 (T@PolymorphicMapType_17080 T@Ref T@Field_9344_26840) Bool)
(declare-fun HasDirectPerm_9344_23342 (T@PolymorphicMapType_17080 T@Ref T@Field_23340_23342) Bool)
(declare-fun HasDirectPerm_9344_645 (T@PolymorphicMapType_17080 T@Ref T@Field_23153_645) Bool)
(declare-fun HasDirectPerm_9344_53 (T@PolymorphicMapType_17080 T@Ref T@Field_17119_53) Bool)
(declare-fun HasDirectPerm_9347_3046 (T@PolymorphicMapType_17080 T@Ref T@Field_23294_3046) Bool)
(declare-fun HasDirectPerm_9344_9345 (T@PolymorphicMapType_17080 T@Ref T@Field_17132_17133) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_17080 T@PolymorphicMapType_17080 T@PolymorphicMapType_17080) Bool)
(declare-fun |Seq#Equal_3114| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Nodevals$#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Nodereverse_vals$#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_9431_9432 (T@Field_32196_32197) Int)
(declare-fun getPredWandId_9455_9456 (T@Field_23942_23943) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_32196_17119 (T@Field_32196_32197 T@FrameType T@Field_9344_9456 T@FrameType) Bool)
(declare-fun InsidePredicate_32196_9455 (T@Field_32196_32197 T@FrameType T@Field_23942_23943 T@FrameType) Bool)
(declare-fun InsidePredicate_17119_32196 (T@Field_9344_9456 T@FrameType T@Field_32196_32197 T@FrameType) Bool)
(declare-fun InsidePredicate_17119_9455 (T@Field_9344_9456 T@FrameType T@Field_23942_23943 T@FrameType) Bool)
(declare-fun InsidePredicate_9455_32196 (T@Field_23942_23943 T@FrameType T@Field_32196_32197 T@FrameType) Bool)
(declare-fun InsidePredicate_9455_17119 (T@Field_23942_23943 T@FrameType T@Field_9344_9456 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$)(distinct old$methodPermission par$Nodereverse_in_place$k$)(distinct Nodenext$ par$Nodereverse_in_place$this$_4))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_17059) (Heap1 T@PolymorphicMapType_17059) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17059) (Mask T@PolymorphicMapType_17080) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17059) (Heap1@@0 T@PolymorphicMapType_17059) (Heap2 T@PolymorphicMapType_17059) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_32209_32214) ) (!  (not (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_32196_32197) ) (!  (not (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_32196_23342) ) (!  (not (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_32196_645) ) (!  (not (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_32196_53) ) (!  (not (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_32196_3046) ) (!  (not (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_32196_9345) ) (!  (not (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_26835_26840) ) (!  (not (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_23942_23943) ) (!  (not (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9455_23342) ) (!  (not (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_9455_645) ) (!  (not (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_9455_53) ) (!  (not (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9455_3046) ) (!  (not (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9455_9345) ) (!  (not (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9344_26840) ) (!  (not (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9344_9456) ) (!  (not (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_23340_23342) ) (!  (not (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_23153_645) ) (!  (not (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17119_53) ) (!  (not (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_23294_3046) ) (!  (not (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_17132_17133) ) (!  (not (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_5754|) 0))
(assert (forall ((this$ T@Ref) ) (! (IsPredicateField_9431_9432 (Node$MonitorInvariant this$))
 :qid |stdinbpl.882:15|
 :skolemid |69|
 :pattern ( (Node$MonitorInvariant this$))
)))
(assert (forall ((this$_1 T@Ref) ) (! (IsPredicateField_9455_9456 (Nodelist$ this$_1))
 :qid |stdinbpl.932:15|
 :skolemid |75|
 :pattern ( (Nodelist$ this$_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17059) (this$_2 T@Ref) ) (! (dummyFunction_23544 (|Nodevals$#triggerStateless| this$_2))
 :qid |stdinbpl.594:15|
 :skolemid |59|
 :pattern ( (|Nodevals$'| Heap@@0 this$_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17059) (this$_3 T@Ref) ) (! (dummyFunction_23544 (|Nodereverse_vals$#triggerStateless| this$_3))
 :qid |stdinbpl.738:15|
 :skolemid |64|
 :pattern ( (|Nodereverse_vals$'| Heap@@1 this$_3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17059) (this$@@0 T@Ref) ) (! (|Node$MonitorInvariant#everUsed_9431| (Node$MonitorInvariant this$@@0))
 :qid |stdinbpl.901:15|
 :skolemid |73|
 :pattern ( (|Node$MonitorInvariant#trigger_9431| Heap@@2 (Node$MonitorInvariant this$@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17059) (this$_1@@0 T@Ref) ) (! (|Nodelist$#everUsed_9455| (Nodelist$ this$_1@@0))
 :qid |stdinbpl.951:15|
 :skolemid |79|
 :pattern ( (|Nodelist$#trigger_9455| Heap@@3 (Nodelist$ this$_1@@0)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.538:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17059) (this$_2@@0 T@Ref) ) (!  (and (= (Nodevals$ Heap@@4 this$_2@@0) (|Nodevals$'| Heap@@4 this$_2@@0)) (dummyFunction_23544 (|Nodevals$#triggerStateless| this$_2@@0)))
 :qid |stdinbpl.590:15|
 :skolemid |58|
 :pattern ( (Nodevals$ Heap@@4 this$_2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17059) (this$_3@@0 T@Ref) ) (!  (and (= (Nodereverse_vals$ Heap@@5 this$_3@@0) (|Nodereverse_vals$'| Heap@@5 this$_3@@0)) (dummyFunction_23544 (|Nodereverse_vals$#triggerStateless| this$_3@@0)))
 :qid |stdinbpl.734:15|
 :skolemid |63|
 :pattern ( (Nodereverse_vals$ Heap@@5 this$_3@@0))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.233:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17059) (ExhaleHeap T@PolymorphicMapType_17059) (Mask@@0 T@PolymorphicMapType_17080) (pm_f_28 T@Field_32196_32197) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_32196_9456 Mask@@0 null pm_f_28) (IsPredicateField_9431_9432 pm_f_28)) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@6) null (PredicateMaskField_9431 pm_f_28)) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap) null (PredicateMaskField_9431 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@0) (IsPredicateField_9431_9432 pm_f_28) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap) null (PredicateMaskField_9431 pm_f_28)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17059) (ExhaleHeap@@0 T@PolymorphicMapType_17059) (Mask@@1 T@PolymorphicMapType_17080) (pm_f_28@@0 T@Field_23942_23943) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9455_9456 Mask@@1 null pm_f_28@@0) (IsPredicateField_9455_9456 pm_f_28@@0)) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@7) null (PredicateMaskField_9455 pm_f_28@@0)) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@0) null (PredicateMaskField_9455 pm_f_28@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9455_9456 pm_f_28@@0) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@0) null (PredicateMaskField_9455 pm_f_28@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17059) (ExhaleHeap@@1 T@PolymorphicMapType_17059) (Mask@@2 T@PolymorphicMapType_17080) (pm_f_28@@1 T@Field_9344_9456) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9344_9456 Mask@@2 null pm_f_28@@1) (IsPredicateField_9344_60894 pm_f_28@@1)) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@8) null (PredicateMaskField_9344 pm_f_28@@1)) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@1) null (PredicateMaskField_9344 pm_f_28@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9344_60894 pm_f_28@@1) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@1) null (PredicateMaskField_9344 pm_f_28@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17059) (ExhaleHeap@@2 T@PolymorphicMapType_17059) (Mask@@3 T@PolymorphicMapType_17080) (pm_f_28@@2 T@Field_32196_32197) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_32196_9456 Mask@@3 null pm_f_28@@2) (IsWandField_32196_67781 pm_f_28@@2)) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@9) null (WandMaskField_32196 pm_f_28@@2)) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@2) null (WandMaskField_32196 pm_f_28@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@3) (IsWandField_32196_67781 pm_f_28@@2) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@2) null (WandMaskField_32196 pm_f_28@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17059) (ExhaleHeap@@3 T@PolymorphicMapType_17059) (Mask@@4 T@PolymorphicMapType_17080) (pm_f_28@@3 T@Field_23942_23943) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9455_9456 Mask@@4 null pm_f_28@@3) (IsWandField_9455_67424 pm_f_28@@3)) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@10) null (WandMaskField_9455 pm_f_28@@3)) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@3) null (WandMaskField_9455 pm_f_28@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@4) (IsWandField_9455_67424 pm_f_28@@3) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@3) null (WandMaskField_9455 pm_f_28@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17059) (ExhaleHeap@@4 T@PolymorphicMapType_17059) (Mask@@5 T@PolymorphicMapType_17080) (pm_f_28@@4 T@Field_9344_9456) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9344_9456 Mask@@5 null pm_f_28@@4) (IsWandField_9344_67067 pm_f_28@@4)) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@11) null (WandMaskField_9344 pm_f_28@@4)) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@4) null (WandMaskField_9344 pm_f_28@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@5) (IsWandField_9344_67067 pm_f_28@@4) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@4) null (WandMaskField_9344 pm_f_28@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17059) (ExhaleHeap@@5 T@PolymorphicMapType_17059) (Mask@@6 T@PolymorphicMapType_17080) (pm_f_28@@5 T@Field_32196_32197) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_32196_9456 Mask@@6 null pm_f_28@@5) (IsPredicateField_9431_9432 pm_f_28@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28 T@Ref) (f_27 T@Field_17132_17133) ) (!  (=> (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28 f_27) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@12) o2_28 f_27) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28 f_27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28 f_27))
)) (forall ((o2_28@@0 T@Ref) (f_27@@0 T@Field_23294_3046) ) (!  (=> (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@0 f_27@@0) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@12) o2_28@@0 f_27@@0) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@0 f_27@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@0 f_27@@0))
))) (forall ((o2_28@@1 T@Ref) (f_27@@1 T@Field_17119_53) ) (!  (=> (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@1 f_27@@1) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@12) o2_28@@1 f_27@@1) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@1 f_27@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@1 f_27@@1))
))) (forall ((o2_28@@2 T@Ref) (f_27@@2 T@Field_23153_645) ) (!  (=> (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@2 f_27@@2) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@12) o2_28@@2 f_27@@2) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@2 f_27@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@2 f_27@@2))
))) (forall ((o2_28@@3 T@Ref) (f_27@@3 T@Field_23340_23342) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@3 f_27@@3) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@12) o2_28@@3 f_27@@3) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@3 f_27@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@3 f_27@@3))
))) (forall ((o2_28@@4 T@Ref) (f_27@@4 T@Field_9344_9456) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@4 f_27@@4) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@12) o2_28@@4 f_27@@4) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@4 f_27@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@4 f_27@@4))
))) (forall ((o2_28@@5 T@Ref) (f_27@@5 T@Field_9344_26840) ) (!  (=> (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@5 f_27@@5) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@12) o2_28@@5 f_27@@5) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@5 f_27@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@5 f_27@@5))
))) (forall ((o2_28@@6 T@Ref) (f_27@@6 T@Field_9455_9345) ) (!  (=> (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@6 f_27@@6) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@12) o2_28@@6 f_27@@6) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@6 f_27@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@6 f_27@@6))
))) (forall ((o2_28@@7 T@Ref) (f_27@@7 T@Field_9455_3046) ) (!  (=> (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@7 f_27@@7) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@12) o2_28@@7 f_27@@7) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@7 f_27@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@7 f_27@@7))
))) (forall ((o2_28@@8 T@Ref) (f_27@@8 T@Field_9455_53) ) (!  (=> (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@8 f_27@@8) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@12) o2_28@@8 f_27@@8) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@8 f_27@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@8 f_27@@8))
))) (forall ((o2_28@@9 T@Ref) (f_27@@9 T@Field_9455_645) ) (!  (=> (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@9 f_27@@9) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@12) o2_28@@9 f_27@@9) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@9 f_27@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@9 f_27@@9))
))) (forall ((o2_28@@10 T@Ref) (f_27@@10 T@Field_9455_23342) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@10 f_27@@10) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@12) o2_28@@10 f_27@@10) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@10 f_27@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@10 f_27@@10))
))) (forall ((o2_28@@11 T@Ref) (f_27@@11 T@Field_23942_23943) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@11 f_27@@11) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@12) o2_28@@11 f_27@@11) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@11 f_27@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@11 f_27@@11))
))) (forall ((o2_28@@12 T@Ref) (f_27@@12 T@Field_26835_26840) ) (!  (=> (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@12 f_27@@12) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@12) o2_28@@12 f_27@@12) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@12 f_27@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@12 f_27@@12))
))) (forall ((o2_28@@13 T@Ref) (f_27@@13 T@Field_32196_9345) ) (!  (=> (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@13 f_27@@13) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@12) o2_28@@13 f_27@@13) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@13 f_27@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@13 f_27@@13))
))) (forall ((o2_28@@14 T@Ref) (f_27@@14 T@Field_32196_3046) ) (!  (=> (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@14 f_27@@14) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@12) o2_28@@14 f_27@@14) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@14 f_27@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@14 f_27@@14))
))) (forall ((o2_28@@15 T@Ref) (f_27@@15 T@Field_32196_53) ) (!  (=> (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@15 f_27@@15) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@12) o2_28@@15 f_27@@15) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@15 f_27@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@15 f_27@@15))
))) (forall ((o2_28@@16 T@Ref) (f_27@@16 T@Field_32196_645) ) (!  (=> (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@16 f_27@@16) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@12) o2_28@@16 f_27@@16) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@16 f_27@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@16 f_27@@16))
))) (forall ((o2_28@@17 T@Ref) (f_27@@17 T@Field_32196_23342) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@17 f_27@@17) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@12) o2_28@@17 f_27@@17) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@17 f_27@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@17 f_27@@17))
))) (forall ((o2_28@@18 T@Ref) (f_27@@18 T@Field_32196_32197) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@18 f_27@@18) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@12) o2_28@@18 f_27@@18) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@18 f_27@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@18 f_27@@18))
))) (forall ((o2_28@@19 T@Ref) (f_27@@19 T@Field_32209_32214) ) (!  (=> (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) null (PredicateMaskField_9431 pm_f_28@@5))) o2_28@@19 f_27@@19) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@12) o2_28@@19 f_27@@19) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@19 f_27@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@5) o2_28@@19 f_27@@19))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@6) (IsPredicateField_9431_9432 pm_f_28@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17059) (ExhaleHeap@@6 T@PolymorphicMapType_17059) (Mask@@7 T@PolymorphicMapType_17080) (pm_f_28@@6 T@Field_23942_23943) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_9455_9456 Mask@@7 null pm_f_28@@6) (IsPredicateField_9455_9456 pm_f_28@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@20 T@Ref) (f_27@@20 T@Field_17132_17133) ) (!  (=> (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@20 f_27@@20) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@13) o2_28@@20 f_27@@20) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@20 f_27@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@20 f_27@@20))
)) (forall ((o2_28@@21 T@Ref) (f_27@@21 T@Field_23294_3046) ) (!  (=> (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@21 f_27@@21) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@13) o2_28@@21 f_27@@21) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@21 f_27@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@21 f_27@@21))
))) (forall ((o2_28@@22 T@Ref) (f_27@@22 T@Field_17119_53) ) (!  (=> (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@22 f_27@@22) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@13) o2_28@@22 f_27@@22) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@22 f_27@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@22 f_27@@22))
))) (forall ((o2_28@@23 T@Ref) (f_27@@23 T@Field_23153_645) ) (!  (=> (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@23 f_27@@23) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@13) o2_28@@23 f_27@@23) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@23 f_27@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@23 f_27@@23))
))) (forall ((o2_28@@24 T@Ref) (f_27@@24 T@Field_23340_23342) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@24 f_27@@24) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@13) o2_28@@24 f_27@@24) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@24 f_27@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@24 f_27@@24))
))) (forall ((o2_28@@25 T@Ref) (f_27@@25 T@Field_9344_9456) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@25 f_27@@25) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@13) o2_28@@25 f_27@@25) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@25 f_27@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@25 f_27@@25))
))) (forall ((o2_28@@26 T@Ref) (f_27@@26 T@Field_9344_26840) ) (!  (=> (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@26 f_27@@26) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@13) o2_28@@26 f_27@@26) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@26 f_27@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@26 f_27@@26))
))) (forall ((o2_28@@27 T@Ref) (f_27@@27 T@Field_9455_9345) ) (!  (=> (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@27 f_27@@27) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@13) o2_28@@27 f_27@@27) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@27 f_27@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@27 f_27@@27))
))) (forall ((o2_28@@28 T@Ref) (f_27@@28 T@Field_9455_3046) ) (!  (=> (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@28 f_27@@28) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@13) o2_28@@28 f_27@@28) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@28 f_27@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@28 f_27@@28))
))) (forall ((o2_28@@29 T@Ref) (f_27@@29 T@Field_9455_53) ) (!  (=> (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@29 f_27@@29) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@13) o2_28@@29 f_27@@29) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@29 f_27@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@29 f_27@@29))
))) (forall ((o2_28@@30 T@Ref) (f_27@@30 T@Field_9455_645) ) (!  (=> (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@30 f_27@@30) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@13) o2_28@@30 f_27@@30) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@30 f_27@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@30 f_27@@30))
))) (forall ((o2_28@@31 T@Ref) (f_27@@31 T@Field_9455_23342) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@31 f_27@@31) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@13) o2_28@@31 f_27@@31) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@31 f_27@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@31 f_27@@31))
))) (forall ((o2_28@@32 T@Ref) (f_27@@32 T@Field_23942_23943) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@32 f_27@@32) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@13) o2_28@@32 f_27@@32) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@32 f_27@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@32 f_27@@32))
))) (forall ((o2_28@@33 T@Ref) (f_27@@33 T@Field_26835_26840) ) (!  (=> (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@33 f_27@@33) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) o2_28@@33 f_27@@33) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@33 f_27@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@33 f_27@@33))
))) (forall ((o2_28@@34 T@Ref) (f_27@@34 T@Field_32196_9345) ) (!  (=> (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@34 f_27@@34) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@13) o2_28@@34 f_27@@34) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@34 f_27@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@34 f_27@@34))
))) (forall ((o2_28@@35 T@Ref) (f_27@@35 T@Field_32196_3046) ) (!  (=> (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@35 f_27@@35) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@13) o2_28@@35 f_27@@35) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@35 f_27@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@35 f_27@@35))
))) (forall ((o2_28@@36 T@Ref) (f_27@@36 T@Field_32196_53) ) (!  (=> (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@36 f_27@@36) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@13) o2_28@@36 f_27@@36) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@36 f_27@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@36 f_27@@36))
))) (forall ((o2_28@@37 T@Ref) (f_27@@37 T@Field_32196_645) ) (!  (=> (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@37 f_27@@37) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@13) o2_28@@37 f_27@@37) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@37 f_27@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@37 f_27@@37))
))) (forall ((o2_28@@38 T@Ref) (f_27@@38 T@Field_32196_23342) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@38 f_27@@38) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@13) o2_28@@38 f_27@@38) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@38 f_27@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@38 f_27@@38))
))) (forall ((o2_28@@39 T@Ref) (f_27@@39 T@Field_32196_32197) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@39 f_27@@39) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@13) o2_28@@39 f_27@@39) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@39 f_27@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@39 f_27@@39))
))) (forall ((o2_28@@40 T@Ref) (f_27@@40 T@Field_32209_32214) ) (!  (=> (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@13) null (PredicateMaskField_9455 pm_f_28@@6))) o2_28@@40 f_27@@40) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@13) o2_28@@40 f_27@@40) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@40 f_27@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@6) o2_28@@40 f_27@@40))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@7) (IsPredicateField_9455_9456 pm_f_28@@6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17059) (ExhaleHeap@@7 T@PolymorphicMapType_17059) (Mask@@8 T@PolymorphicMapType_17080) (pm_f_28@@7 T@Field_9344_9456) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_9344_9456 Mask@@8 null pm_f_28@@7) (IsPredicateField_9344_60894 pm_f_28@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@41 T@Ref) (f_27@@41 T@Field_17132_17133) ) (!  (=> (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@41 f_27@@41) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@14) o2_28@@41 f_27@@41) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@41 f_27@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@41 f_27@@41))
)) (forall ((o2_28@@42 T@Ref) (f_27@@42 T@Field_23294_3046) ) (!  (=> (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@42 f_27@@42) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@14) o2_28@@42 f_27@@42) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@42 f_27@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@42 f_27@@42))
))) (forall ((o2_28@@43 T@Ref) (f_27@@43 T@Field_17119_53) ) (!  (=> (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@43 f_27@@43) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@14) o2_28@@43 f_27@@43) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@43 f_27@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@43 f_27@@43))
))) (forall ((o2_28@@44 T@Ref) (f_27@@44 T@Field_23153_645) ) (!  (=> (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@44 f_27@@44) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@14) o2_28@@44 f_27@@44) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@44 f_27@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@44 f_27@@44))
))) (forall ((o2_28@@45 T@Ref) (f_27@@45 T@Field_23340_23342) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@45 f_27@@45) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@14) o2_28@@45 f_27@@45) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@45 f_27@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@45 f_27@@45))
))) (forall ((o2_28@@46 T@Ref) (f_27@@46 T@Field_9344_9456) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@46 f_27@@46) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@14) o2_28@@46 f_27@@46) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@46 f_27@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@46 f_27@@46))
))) (forall ((o2_28@@47 T@Ref) (f_27@@47 T@Field_9344_26840) ) (!  (=> (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@47 f_27@@47) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) o2_28@@47 f_27@@47) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@47 f_27@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@47 f_27@@47))
))) (forall ((o2_28@@48 T@Ref) (f_27@@48 T@Field_9455_9345) ) (!  (=> (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@48 f_27@@48) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@14) o2_28@@48 f_27@@48) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@48 f_27@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@48 f_27@@48))
))) (forall ((o2_28@@49 T@Ref) (f_27@@49 T@Field_9455_3046) ) (!  (=> (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@49 f_27@@49) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@14) o2_28@@49 f_27@@49) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@49 f_27@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@49 f_27@@49))
))) (forall ((o2_28@@50 T@Ref) (f_27@@50 T@Field_9455_53) ) (!  (=> (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@50 f_27@@50) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@14) o2_28@@50 f_27@@50) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@50 f_27@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@50 f_27@@50))
))) (forall ((o2_28@@51 T@Ref) (f_27@@51 T@Field_9455_645) ) (!  (=> (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@51 f_27@@51) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@14) o2_28@@51 f_27@@51) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@51 f_27@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@51 f_27@@51))
))) (forall ((o2_28@@52 T@Ref) (f_27@@52 T@Field_9455_23342) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@52 f_27@@52) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@14) o2_28@@52 f_27@@52) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@52 f_27@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@52 f_27@@52))
))) (forall ((o2_28@@53 T@Ref) (f_27@@53 T@Field_23942_23943) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@53 f_27@@53) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@14) o2_28@@53 f_27@@53) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@53 f_27@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@53 f_27@@53))
))) (forall ((o2_28@@54 T@Ref) (f_27@@54 T@Field_26835_26840) ) (!  (=> (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@54 f_27@@54) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@14) o2_28@@54 f_27@@54) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@54 f_27@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@54 f_27@@54))
))) (forall ((o2_28@@55 T@Ref) (f_27@@55 T@Field_32196_9345) ) (!  (=> (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@55 f_27@@55) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@14) o2_28@@55 f_27@@55) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@55 f_27@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@55 f_27@@55))
))) (forall ((o2_28@@56 T@Ref) (f_27@@56 T@Field_32196_3046) ) (!  (=> (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@56 f_27@@56) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@14) o2_28@@56 f_27@@56) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@56 f_27@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@56 f_27@@56))
))) (forall ((o2_28@@57 T@Ref) (f_27@@57 T@Field_32196_53) ) (!  (=> (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@57 f_27@@57) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@14) o2_28@@57 f_27@@57) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@57 f_27@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@57 f_27@@57))
))) (forall ((o2_28@@58 T@Ref) (f_27@@58 T@Field_32196_645) ) (!  (=> (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@58 f_27@@58) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@14) o2_28@@58 f_27@@58) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@58 f_27@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@58 f_27@@58))
))) (forall ((o2_28@@59 T@Ref) (f_27@@59 T@Field_32196_23342) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@59 f_27@@59) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@14) o2_28@@59 f_27@@59) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@59 f_27@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@59 f_27@@59))
))) (forall ((o2_28@@60 T@Ref) (f_27@@60 T@Field_32196_32197) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@60 f_27@@60) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@14) o2_28@@60 f_27@@60) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@60 f_27@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@60 f_27@@60))
))) (forall ((o2_28@@61 T@Ref) (f_27@@61 T@Field_32209_32214) ) (!  (=> (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@14) null (PredicateMaskField_9344 pm_f_28@@7))) o2_28@@61 f_27@@61) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@14) o2_28@@61 f_27@@61) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@61 f_27@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@7) o2_28@@61 f_27@@61))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@8) (IsPredicateField_9344_60894 pm_f_28@@7))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17059) (ExhaleHeap@@8 T@PolymorphicMapType_17059) (Mask@@9 T@PolymorphicMapType_17080) (pm_f_28@@8 T@Field_32196_32197) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_32196_9456 Mask@@9 null pm_f_28@@8) (IsWandField_32196_67781 pm_f_28@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@62 T@Ref) (f_27@@62 T@Field_17132_17133) ) (!  (=> (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@62 f_27@@62) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@15) o2_28@@62 f_27@@62) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@62 f_27@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@62 f_27@@62))
)) (forall ((o2_28@@63 T@Ref) (f_27@@63 T@Field_23294_3046) ) (!  (=> (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@63 f_27@@63) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@15) o2_28@@63 f_27@@63) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@63 f_27@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@63 f_27@@63))
))) (forall ((o2_28@@64 T@Ref) (f_27@@64 T@Field_17119_53) ) (!  (=> (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@64 f_27@@64) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@15) o2_28@@64 f_27@@64) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@64 f_27@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@64 f_27@@64))
))) (forall ((o2_28@@65 T@Ref) (f_27@@65 T@Field_23153_645) ) (!  (=> (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@65 f_27@@65) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@15) o2_28@@65 f_27@@65) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@65 f_27@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@65 f_27@@65))
))) (forall ((o2_28@@66 T@Ref) (f_27@@66 T@Field_23340_23342) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@66 f_27@@66) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@15) o2_28@@66 f_27@@66) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@66 f_27@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@66 f_27@@66))
))) (forall ((o2_28@@67 T@Ref) (f_27@@67 T@Field_9344_9456) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@67 f_27@@67) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@15) o2_28@@67 f_27@@67) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@67 f_27@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@67 f_27@@67))
))) (forall ((o2_28@@68 T@Ref) (f_27@@68 T@Field_9344_26840) ) (!  (=> (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@68 f_27@@68) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@15) o2_28@@68 f_27@@68) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@68 f_27@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@68 f_27@@68))
))) (forall ((o2_28@@69 T@Ref) (f_27@@69 T@Field_9455_9345) ) (!  (=> (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@69 f_27@@69) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@15) o2_28@@69 f_27@@69) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@69 f_27@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@69 f_27@@69))
))) (forall ((o2_28@@70 T@Ref) (f_27@@70 T@Field_9455_3046) ) (!  (=> (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@70 f_27@@70) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@15) o2_28@@70 f_27@@70) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@70 f_27@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@70 f_27@@70))
))) (forall ((o2_28@@71 T@Ref) (f_27@@71 T@Field_9455_53) ) (!  (=> (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@71 f_27@@71) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@15) o2_28@@71 f_27@@71) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@71 f_27@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@71 f_27@@71))
))) (forall ((o2_28@@72 T@Ref) (f_27@@72 T@Field_9455_645) ) (!  (=> (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@72 f_27@@72) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@15) o2_28@@72 f_27@@72) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@72 f_27@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@72 f_27@@72))
))) (forall ((o2_28@@73 T@Ref) (f_27@@73 T@Field_9455_23342) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@73 f_27@@73) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@15) o2_28@@73 f_27@@73) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@73 f_27@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@73 f_27@@73))
))) (forall ((o2_28@@74 T@Ref) (f_27@@74 T@Field_23942_23943) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@74 f_27@@74) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@15) o2_28@@74 f_27@@74) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@74 f_27@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@74 f_27@@74))
))) (forall ((o2_28@@75 T@Ref) (f_27@@75 T@Field_26835_26840) ) (!  (=> (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@75 f_27@@75) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@15) o2_28@@75 f_27@@75) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@75 f_27@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@75 f_27@@75))
))) (forall ((o2_28@@76 T@Ref) (f_27@@76 T@Field_32196_9345) ) (!  (=> (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@76 f_27@@76) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@15) o2_28@@76 f_27@@76) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@76 f_27@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@76 f_27@@76))
))) (forall ((o2_28@@77 T@Ref) (f_27@@77 T@Field_32196_3046) ) (!  (=> (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@77 f_27@@77) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@15) o2_28@@77 f_27@@77) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@77 f_27@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@77 f_27@@77))
))) (forall ((o2_28@@78 T@Ref) (f_27@@78 T@Field_32196_53) ) (!  (=> (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@78 f_27@@78) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@15) o2_28@@78 f_27@@78) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@78 f_27@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@78 f_27@@78))
))) (forall ((o2_28@@79 T@Ref) (f_27@@79 T@Field_32196_645) ) (!  (=> (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@79 f_27@@79) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@15) o2_28@@79 f_27@@79) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@79 f_27@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@79 f_27@@79))
))) (forall ((o2_28@@80 T@Ref) (f_27@@80 T@Field_32196_23342) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@80 f_27@@80) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@15) o2_28@@80 f_27@@80) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@80 f_27@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@80 f_27@@80))
))) (forall ((o2_28@@81 T@Ref) (f_27@@81 T@Field_32196_32197) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@81 f_27@@81) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@15) o2_28@@81 f_27@@81) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@81 f_27@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@81 f_27@@81))
))) (forall ((o2_28@@82 T@Ref) (f_27@@82 T@Field_32209_32214) ) (!  (=> (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) null (WandMaskField_32196 pm_f_28@@8))) o2_28@@82 f_27@@82) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@15) o2_28@@82 f_27@@82) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@82 f_27@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@8) o2_28@@82 f_27@@82))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@9) (IsWandField_32196_67781 pm_f_28@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17059) (ExhaleHeap@@9 T@PolymorphicMapType_17059) (Mask@@10 T@PolymorphicMapType_17080) (pm_f_28@@9 T@Field_23942_23943) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_9455_9456 Mask@@10 null pm_f_28@@9) (IsWandField_9455_67424 pm_f_28@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@83 T@Ref) (f_27@@83 T@Field_17132_17133) ) (!  (=> (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@83 f_27@@83) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@16) o2_28@@83 f_27@@83) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@83 f_27@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@83 f_27@@83))
)) (forall ((o2_28@@84 T@Ref) (f_27@@84 T@Field_23294_3046) ) (!  (=> (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@84 f_27@@84) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@16) o2_28@@84 f_27@@84) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@84 f_27@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@84 f_27@@84))
))) (forall ((o2_28@@85 T@Ref) (f_27@@85 T@Field_17119_53) ) (!  (=> (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@85 f_27@@85) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@16) o2_28@@85 f_27@@85) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@85 f_27@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@85 f_27@@85))
))) (forall ((o2_28@@86 T@Ref) (f_27@@86 T@Field_23153_645) ) (!  (=> (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@86 f_27@@86) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@16) o2_28@@86 f_27@@86) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@86 f_27@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@86 f_27@@86))
))) (forall ((o2_28@@87 T@Ref) (f_27@@87 T@Field_23340_23342) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@87 f_27@@87) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@16) o2_28@@87 f_27@@87) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@87 f_27@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@87 f_27@@87))
))) (forall ((o2_28@@88 T@Ref) (f_27@@88 T@Field_9344_9456) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@88 f_27@@88) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@16) o2_28@@88 f_27@@88) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@88 f_27@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@88 f_27@@88))
))) (forall ((o2_28@@89 T@Ref) (f_27@@89 T@Field_9344_26840) ) (!  (=> (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@89 f_27@@89) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@16) o2_28@@89 f_27@@89) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@89 f_27@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@89 f_27@@89))
))) (forall ((o2_28@@90 T@Ref) (f_27@@90 T@Field_9455_9345) ) (!  (=> (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@90 f_27@@90) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@16) o2_28@@90 f_27@@90) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@90 f_27@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@90 f_27@@90))
))) (forall ((o2_28@@91 T@Ref) (f_27@@91 T@Field_9455_3046) ) (!  (=> (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@91 f_27@@91) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@16) o2_28@@91 f_27@@91) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@91 f_27@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@91 f_27@@91))
))) (forall ((o2_28@@92 T@Ref) (f_27@@92 T@Field_9455_53) ) (!  (=> (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@92 f_27@@92) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@16) o2_28@@92 f_27@@92) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@92 f_27@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@92 f_27@@92))
))) (forall ((o2_28@@93 T@Ref) (f_27@@93 T@Field_9455_645) ) (!  (=> (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@93 f_27@@93) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@16) o2_28@@93 f_27@@93) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@93 f_27@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@93 f_27@@93))
))) (forall ((o2_28@@94 T@Ref) (f_27@@94 T@Field_9455_23342) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@94 f_27@@94) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@16) o2_28@@94 f_27@@94) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@94 f_27@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@94 f_27@@94))
))) (forall ((o2_28@@95 T@Ref) (f_27@@95 T@Field_23942_23943) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@95 f_27@@95) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@16) o2_28@@95 f_27@@95) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@95 f_27@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@95 f_27@@95))
))) (forall ((o2_28@@96 T@Ref) (f_27@@96 T@Field_26835_26840) ) (!  (=> (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@96 f_27@@96) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) o2_28@@96 f_27@@96) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@96 f_27@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@96 f_27@@96))
))) (forall ((o2_28@@97 T@Ref) (f_27@@97 T@Field_32196_9345) ) (!  (=> (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@97 f_27@@97) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@16) o2_28@@97 f_27@@97) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@97 f_27@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@97 f_27@@97))
))) (forall ((o2_28@@98 T@Ref) (f_27@@98 T@Field_32196_3046) ) (!  (=> (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@98 f_27@@98) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@16) o2_28@@98 f_27@@98) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@98 f_27@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@98 f_27@@98))
))) (forall ((o2_28@@99 T@Ref) (f_27@@99 T@Field_32196_53) ) (!  (=> (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@99 f_27@@99) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@16) o2_28@@99 f_27@@99) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@99 f_27@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@99 f_27@@99))
))) (forall ((o2_28@@100 T@Ref) (f_27@@100 T@Field_32196_645) ) (!  (=> (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@100 f_27@@100) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@16) o2_28@@100 f_27@@100) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@100 f_27@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@100 f_27@@100))
))) (forall ((o2_28@@101 T@Ref) (f_27@@101 T@Field_32196_23342) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@101 f_27@@101) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@16) o2_28@@101 f_27@@101) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@101 f_27@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@101 f_27@@101))
))) (forall ((o2_28@@102 T@Ref) (f_27@@102 T@Field_32196_32197) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@102 f_27@@102) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@16) o2_28@@102 f_27@@102) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@102 f_27@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@102 f_27@@102))
))) (forall ((o2_28@@103 T@Ref) (f_27@@103 T@Field_32209_32214) ) (!  (=> (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@16) null (WandMaskField_9455 pm_f_28@@9))) o2_28@@103 f_27@@103) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@16) o2_28@@103 f_27@@103) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@103 f_27@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@9) o2_28@@103 f_27@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@10) (IsWandField_9455_67424 pm_f_28@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17059) (ExhaleHeap@@10 T@PolymorphicMapType_17059) (Mask@@11 T@PolymorphicMapType_17080) (pm_f_28@@10 T@Field_9344_9456) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_9344_9456 Mask@@11 null pm_f_28@@10) (IsWandField_9344_67067 pm_f_28@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_28@@104 T@Ref) (f_27@@104 T@Field_17132_17133) ) (!  (=> (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@104 f_27@@104) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@17) o2_28@@104 f_27@@104) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@104 f_27@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@104 f_27@@104))
)) (forall ((o2_28@@105 T@Ref) (f_27@@105 T@Field_23294_3046) ) (!  (=> (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@105 f_27@@105) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@17) o2_28@@105 f_27@@105) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@105 f_27@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@105 f_27@@105))
))) (forall ((o2_28@@106 T@Ref) (f_27@@106 T@Field_17119_53) ) (!  (=> (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@106 f_27@@106) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@17) o2_28@@106 f_27@@106) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@106 f_27@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@106 f_27@@106))
))) (forall ((o2_28@@107 T@Ref) (f_27@@107 T@Field_23153_645) ) (!  (=> (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@107 f_27@@107) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@17) o2_28@@107 f_27@@107) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@107 f_27@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@107 f_27@@107))
))) (forall ((o2_28@@108 T@Ref) (f_27@@108 T@Field_23340_23342) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@108 f_27@@108) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@17) o2_28@@108 f_27@@108) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@108 f_27@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@108 f_27@@108))
))) (forall ((o2_28@@109 T@Ref) (f_27@@109 T@Field_9344_9456) ) (!  (=> (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@109 f_27@@109) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@17) o2_28@@109 f_27@@109) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@109 f_27@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@109 f_27@@109))
))) (forall ((o2_28@@110 T@Ref) (f_27@@110 T@Field_9344_26840) ) (!  (=> (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@110 f_27@@110) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) o2_28@@110 f_27@@110) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@110 f_27@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@110 f_27@@110))
))) (forall ((o2_28@@111 T@Ref) (f_27@@111 T@Field_9455_9345) ) (!  (=> (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@111 f_27@@111) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@17) o2_28@@111 f_27@@111) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@111 f_27@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@111 f_27@@111))
))) (forall ((o2_28@@112 T@Ref) (f_27@@112 T@Field_9455_3046) ) (!  (=> (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@112 f_27@@112) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@17) o2_28@@112 f_27@@112) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@112 f_27@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@112 f_27@@112))
))) (forall ((o2_28@@113 T@Ref) (f_27@@113 T@Field_9455_53) ) (!  (=> (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@113 f_27@@113) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@17) o2_28@@113 f_27@@113) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@113 f_27@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@113 f_27@@113))
))) (forall ((o2_28@@114 T@Ref) (f_27@@114 T@Field_9455_645) ) (!  (=> (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@114 f_27@@114) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@17) o2_28@@114 f_27@@114) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@114 f_27@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@114 f_27@@114))
))) (forall ((o2_28@@115 T@Ref) (f_27@@115 T@Field_9455_23342) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@115 f_27@@115) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@17) o2_28@@115 f_27@@115) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@115 f_27@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@115 f_27@@115))
))) (forall ((o2_28@@116 T@Ref) (f_27@@116 T@Field_23942_23943) ) (!  (=> (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@116 f_27@@116) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@17) o2_28@@116 f_27@@116) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@116 f_27@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@116 f_27@@116))
))) (forall ((o2_28@@117 T@Ref) (f_27@@117 T@Field_26835_26840) ) (!  (=> (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@117 f_27@@117) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@17) o2_28@@117 f_27@@117) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@117 f_27@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@117 f_27@@117))
))) (forall ((o2_28@@118 T@Ref) (f_27@@118 T@Field_32196_9345) ) (!  (=> (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@118 f_27@@118) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@17) o2_28@@118 f_27@@118) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@118 f_27@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@118 f_27@@118))
))) (forall ((o2_28@@119 T@Ref) (f_27@@119 T@Field_32196_3046) ) (!  (=> (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@119 f_27@@119) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@17) o2_28@@119 f_27@@119) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@119 f_27@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@119 f_27@@119))
))) (forall ((o2_28@@120 T@Ref) (f_27@@120 T@Field_32196_53) ) (!  (=> (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@120 f_27@@120) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@17) o2_28@@120 f_27@@120) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@120 f_27@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@120 f_27@@120))
))) (forall ((o2_28@@121 T@Ref) (f_27@@121 T@Field_32196_645) ) (!  (=> (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@121 f_27@@121) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@17) o2_28@@121 f_27@@121) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@121 f_27@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@121 f_27@@121))
))) (forall ((o2_28@@122 T@Ref) (f_27@@122 T@Field_32196_23342) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@122 f_27@@122) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@17) o2_28@@122 f_27@@122) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@122 f_27@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@122 f_27@@122))
))) (forall ((o2_28@@123 T@Ref) (f_27@@123 T@Field_32196_32197) ) (!  (=> (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@123 f_27@@123) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@17) o2_28@@123 f_27@@123) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@123 f_27@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@123 f_27@@123))
))) (forall ((o2_28@@124 T@Ref) (f_27@@124 T@Field_32209_32214) ) (!  (=> (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@17) null (WandMaskField_9344 pm_f_28@@10))) o2_28@@124 f_27@@124) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@17) o2_28@@124 f_27@@124) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@124 f_27@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@10) o2_28@@124 f_27@@124))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@11) (IsWandField_9344_67067 pm_f_28@@10))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3046| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3046| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((this$@@1 T@Ref) (this$2 T@Ref) ) (!  (=> (= (Node$MonitorInvariant this$@@1) (Node$MonitorInvariant this$2)) (= this$@@1 this$2))
 :qid |stdinbpl.892:15|
 :skolemid |71|
 :pattern ( (Node$MonitorInvariant this$@@1) (Node$MonitorInvariant this$2))
)))
(assert (forall ((this$@@2 T@Ref) (this$2@@0 T@Ref) ) (!  (=> (= (|Node$MonitorInvariant#sm| this$@@2) (|Node$MonitorInvariant#sm| this$2@@0)) (= this$@@2 this$2@@0))
 :qid |stdinbpl.896:15|
 :skolemid |72|
 :pattern ( (|Node$MonitorInvariant#sm| this$@@2) (|Node$MonitorInvariant#sm| this$2@@0))
)))
(assert (forall ((this$_1@@1 T@Ref) (this$_12 T@Ref) ) (!  (=> (= (Nodelist$ this$_1@@1) (Nodelist$ this$_12)) (= this$_1@@1 this$_12))
 :qid |stdinbpl.942:15|
 :skolemid |77|
 :pattern ( (Nodelist$ this$_1@@1) (Nodelist$ this$_12))
)))
(assert (forall ((this$_1@@2 T@Ref) (this$_12@@0 T@Ref) ) (!  (=> (= (|Nodelist$#sm| this$_1@@2) (|Nodelist$#sm| this$_12@@0)) (= this$_1@@2 this$_12@@0))
 :qid |stdinbpl.946:15|
 :skolemid |78|
 :pattern ( (|Nodelist$#sm| this$_1@@2) (|Nodelist$#sm| this$_12@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3046| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3046| s@@6 t) n@@5) (|Seq#Append_3046| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3046| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17059) (ExhaleHeap@@11 T@PolymorphicMapType_17059) (Mask@@12 T@PolymorphicMapType_17080) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@18) o_41 $allocated) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@11) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@11) o_41 $allocated))
)))
(assert (forall ((p T@Field_32196_32197) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_32196_32196 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_32196_32196 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9344_9456) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_17119_17119 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17119_17119 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23942_23943) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9455_9455 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9455_9455 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5754|)) (not (= s1 |Seq#Empty_5754|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3046| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3046| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3046| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_9339_645 old$methodPermission)))
(assert  (not (IsWandField_9339_645 old$methodPermission)))
(assert  (not (IsPredicateField_9342_3016 joinable$)))
(assert  (not (IsWandField_9342_3016 joinable$)))
(assert  (not (IsPredicateField_9344_9345 Nodenext$)))
(assert  (not (IsWandField_9344_9345 Nodenext$)))
(assert  (not (IsPredicateField_9347_3046 Nodeval$)))
(assert  (not (IsWandField_9347_3046 Nodeval$)))
(assert  (not (IsPredicateField_9349_23361 old$Nodereverse_in_place$0)))
(assert  (not (IsWandField_9349_23384 old$Nodereverse_in_place$0)))
(assert  (not (IsPredicateField_9344_9345 par$Nodereverse_in_place$this$_4)))
(assert  (not (IsWandField_9344_9345 par$Nodereverse_in_place$this$_4)))
(assert  (not (IsPredicateField_9339_645 par$Nodereverse_in_place$k$)))
(assert  (not (IsWandField_9339_645 par$Nodereverse_in_place$k$)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17059) (ExhaleHeap@@12 T@PolymorphicMapType_17059) (Mask@@13 T@PolymorphicMapType_17080) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@19 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17080) (o_2@@20 T@Ref) (f_4@@20 T@Field_32209_32214) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_32196_81721 f_4@@20))) (not (IsWandField_32196_81737 f_4@@20))) (<= (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17080) (o_2@@21 T@Ref) (f_4@@21 T@Field_32196_23342) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_32196_23342 f_4@@21))) (not (IsWandField_32196_23342 f_4@@21))) (<= (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17080) (o_2@@22 T@Ref) (f_4@@22 T@Field_32196_645) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_32196_645 f_4@@22))) (not (IsWandField_32196_645 f_4@@22))) (<= (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17080) (o_2@@23 T@Ref) (f_4@@23 T@Field_32196_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_32196_53 f_4@@23))) (not (IsWandField_32196_53 f_4@@23))) (<= (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17080) (o_2@@24 T@Ref) (f_4@@24 T@Field_32196_3046) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_32196_3046 f_4@@24))) (not (IsWandField_32196_3046 f_4@@24))) (<= (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17080) (o_2@@25 T@Ref) (f_4@@25 T@Field_32196_9345) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_32196_9345 f_4@@25))) (not (IsWandField_32196_9345 f_4@@25))) (<= (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_17080) (o_2@@26 T@Ref) (f_4@@26 T@Field_32196_32197) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9431_9432 f_4@@26))) (not (IsWandField_32196_67781 f_4@@26))) (<= (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_17080) (o_2@@27 T@Ref) (f_4@@27 T@Field_9344_26840) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9344_80554 f_4@@27))) (not (IsWandField_9344_80570 f_4@@27))) (<= (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_17080) (o_2@@28 T@Ref) (f_4@@28 T@Field_23340_23342) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9349_23361 f_4@@28))) (not (IsWandField_9349_23384 f_4@@28))) (<= (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_17080) (o_2@@29 T@Ref) (f_4@@29 T@Field_23153_645) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| Mask@@23) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_9339_645 f_4@@29))) (not (IsWandField_9339_645 f_4@@29))) (<= (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| Mask@@23) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| Mask@@23) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_17080) (o_2@@30 T@Ref) (f_4@@30 T@Field_17119_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| Mask@@24) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_9342_3016 f_4@@30))) (not (IsWandField_9342_3016 f_4@@30))) (<= (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| Mask@@24) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| Mask@@24) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_17080) (o_2@@31 T@Ref) (f_4@@31 T@Field_23294_3046) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| Mask@@25) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_9347_3046 f_4@@31))) (not (IsWandField_9347_3046 f_4@@31))) (<= (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| Mask@@25) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| Mask@@25) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_17080) (o_2@@32 T@Ref) (f_4@@32 T@Field_17132_17133) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| Mask@@26) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_9344_9345 f_4@@32))) (not (IsWandField_9344_9345 f_4@@32))) (<= (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| Mask@@26) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| Mask@@26) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_17080) (o_2@@33 T@Ref) (f_4@@33 T@Field_9344_9456) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| Mask@@27) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_9344_60894 f_4@@33))) (not (IsWandField_9344_67067 f_4@@33))) (<= (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| Mask@@27) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| Mask@@27) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_17080) (o_2@@34 T@Ref) (f_4@@34 T@Field_26835_26840) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| Mask@@28) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_9455_79457 f_4@@34))) (not (IsWandField_9455_79473 f_4@@34))) (<= (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| Mask@@28) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| Mask@@28) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_17080) (o_2@@35 T@Ref) (f_4@@35 T@Field_9455_23342) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| Mask@@29) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_9455_23342 f_4@@35))) (not (IsWandField_9455_23342 f_4@@35))) (<= (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| Mask@@29) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| Mask@@29) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_17080) (o_2@@36 T@Ref) (f_4@@36 T@Field_9455_645) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| Mask@@30) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_9455_645 f_4@@36))) (not (IsWandField_9455_645 f_4@@36))) (<= (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| Mask@@30) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| Mask@@30) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_17080) (o_2@@37 T@Ref) (f_4@@37 T@Field_9455_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| Mask@@31) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_9455_53 f_4@@37))) (not (IsWandField_9455_53 f_4@@37))) (<= (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| Mask@@31) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| Mask@@31) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_17080) (o_2@@38 T@Ref) (f_4@@38 T@Field_9455_3046) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| Mask@@32) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_9455_3046 f_4@@38))) (not (IsWandField_9455_3046 f_4@@38))) (<= (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| Mask@@32) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| Mask@@32) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_17080) (o_2@@39 T@Ref) (f_4@@39 T@Field_9455_9345) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| Mask@@33) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_9455_9345 f_4@@39))) (not (IsWandField_9455_9345 f_4@@39))) (<= (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| Mask@@33) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| Mask@@33) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_17080) (o_2@@40 T@Ref) (f_4@@40 T@Field_23942_23943) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@@34) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_9455_9456 f_4@@40))) (not (IsWandField_9455_67424 f_4@@40))) (<= (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@@34) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@@34) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_17080) (o_2@@41 T@Ref) (f_4@@41 T@Field_32209_32214) ) (! (= (HasDirectPerm_32196_60606 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_60606 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_17080) (o_2@@42 T@Ref) (f_4@@42 T@Field_32196_23342) ) (! (= (HasDirectPerm_32196_23342 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_23342 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_17080) (o_2@@43 T@Ref) (f_4@@43 T@Field_32196_645) ) (! (= (HasDirectPerm_32196_645 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_645 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_17080) (o_2@@44 T@Ref) (f_4@@44 T@Field_32196_53) ) (! (= (HasDirectPerm_32196_53 Mask@@38 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| Mask@@38) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_53 Mask@@38 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_17080) (o_2@@45 T@Ref) (f_4@@45 T@Field_32196_32197) ) (! (= (HasDirectPerm_32196_9456 Mask@@39 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| Mask@@39) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_9456 Mask@@39 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_17080) (o_2@@46 T@Ref) (f_4@@46 T@Field_32196_3046) ) (! (= (HasDirectPerm_32196_3046 Mask@@40 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| Mask@@40) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_3046 Mask@@40 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_17080) (o_2@@47 T@Ref) (f_4@@47 T@Field_32196_9345) ) (! (= (HasDirectPerm_32196_9345 Mask@@41 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| Mask@@41) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_32196_9345 Mask@@41 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_17080) (o_2@@48 T@Ref) (f_4@@48 T@Field_26835_26840) ) (! (= (HasDirectPerm_9455_59021 Mask@@42 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| Mask@@42) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_59021 Mask@@42 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_17080) (o_2@@49 T@Ref) (f_4@@49 T@Field_9455_23342) ) (! (= (HasDirectPerm_9455_23342 Mask@@43 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| Mask@@43) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_23342 Mask@@43 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_17080) (o_2@@50 T@Ref) (f_4@@50 T@Field_9455_645) ) (! (= (HasDirectPerm_9455_645 Mask@@44 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| Mask@@44) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_645 Mask@@44 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_17080) (o_2@@51 T@Ref) (f_4@@51 T@Field_9455_53) ) (! (= (HasDirectPerm_9455_53 Mask@@45 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| Mask@@45) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_53 Mask@@45 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_17080) (o_2@@52 T@Ref) (f_4@@52 T@Field_23942_23943) ) (! (= (HasDirectPerm_9455_9456 Mask@@46 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@@46) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_9456 Mask@@46 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_17080) (o_2@@53 T@Ref) (f_4@@53 T@Field_9455_3046) ) (! (= (HasDirectPerm_9455_3046 Mask@@47 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| Mask@@47) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_3046 Mask@@47 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_17080) (o_2@@54 T@Ref) (f_4@@54 T@Field_9455_9345) ) (! (= (HasDirectPerm_9455_9345 Mask@@48 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| Mask@@48) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9455_9345 Mask@@48 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_17080) (o_2@@55 T@Ref) (f_4@@55 T@Field_9344_26840) ) (! (= (HasDirectPerm_9344_57430 Mask@@49 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| Mask@@49) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9344_57430 Mask@@49 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_17080) (o_2@@56 T@Ref) (f_4@@56 T@Field_23340_23342) ) (! (= (HasDirectPerm_9344_23342 Mask@@50 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| Mask@@50) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9344_23342 Mask@@50 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_17080) (o_2@@57 T@Ref) (f_4@@57 T@Field_23153_645) ) (! (= (HasDirectPerm_9344_645 Mask@@51 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| Mask@@51) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9344_645 Mask@@51 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_17080) (o_2@@58 T@Ref) (f_4@@58 T@Field_17119_53) ) (! (= (HasDirectPerm_9344_53 Mask@@52 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| Mask@@52) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9344_53 Mask@@52 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_17080) (o_2@@59 T@Ref) (f_4@@59 T@Field_9344_9456) ) (! (= (HasDirectPerm_9344_9456 Mask@@53 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| Mask@@53) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9344_9456 Mask@@53 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_17080) (o_2@@60 T@Ref) (f_4@@60 T@Field_23294_3046) ) (! (= (HasDirectPerm_9347_3046 Mask@@54 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| Mask@@54) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9347_3046 Mask@@54 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_17080) (o_2@@61 T@Ref) (f_4@@61 T@Field_17132_17133) ) (! (= (HasDirectPerm_9344_9345 Mask@@55 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| Mask@@55) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9344_9345 Mask@@55 o_2@@61 f_4@@61))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.536:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17059) (ExhaleHeap@@13 T@PolymorphicMapType_17059) (Mask@@56 T@PolymorphicMapType_17080) (o_41@@0 T@Ref) (f_27@@125 T@Field_32209_32214) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@56) (=> (HasDirectPerm_32196_60606 Mask@@56 o_41@@0 f_27@@125) (= (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@20) o_41@@0 f_27@@125) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@13) o_41@@0 f_27@@125))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@56) (select (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| ExhaleHeap@@13) o_41@@0 f_27@@125))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17059) (ExhaleHeap@@14 T@PolymorphicMapType_17059) (Mask@@57 T@PolymorphicMapType_17080) (o_41@@1 T@Ref) (f_27@@126 T@Field_32196_23342) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@57) (=> (HasDirectPerm_32196_23342 Mask@@57 o_41@@1 f_27@@126) (= (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@21) o_41@@1 f_27@@126) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@14) o_41@@1 f_27@@126))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@57) (select (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| ExhaleHeap@@14) o_41@@1 f_27@@126))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17059) (ExhaleHeap@@15 T@PolymorphicMapType_17059) (Mask@@58 T@PolymorphicMapType_17080) (o_41@@2 T@Ref) (f_27@@127 T@Field_32196_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@58) (=> (HasDirectPerm_32196_645 Mask@@58 o_41@@2 f_27@@127) (= (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@22) o_41@@2 f_27@@127) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@15) o_41@@2 f_27@@127))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@58) (select (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| ExhaleHeap@@15) o_41@@2 f_27@@127))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17059) (ExhaleHeap@@16 T@PolymorphicMapType_17059) (Mask@@59 T@PolymorphicMapType_17080) (o_41@@3 T@Ref) (f_27@@128 T@Field_32196_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@59) (=> (HasDirectPerm_32196_53 Mask@@59 o_41@@3 f_27@@128) (= (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@23) o_41@@3 f_27@@128) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@16) o_41@@3 f_27@@128))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@59) (select (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| ExhaleHeap@@16) o_41@@3 f_27@@128))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17059) (ExhaleHeap@@17 T@PolymorphicMapType_17059) (Mask@@60 T@PolymorphicMapType_17080) (o_41@@4 T@Ref) (f_27@@129 T@Field_32196_32197) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@60) (=> (HasDirectPerm_32196_9456 Mask@@60 o_41@@4 f_27@@129) (= (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@24) o_41@@4 f_27@@129) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@17) o_41@@4 f_27@@129))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@60) (select (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| ExhaleHeap@@17) o_41@@4 f_27@@129))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17059) (ExhaleHeap@@18 T@PolymorphicMapType_17059) (Mask@@61 T@PolymorphicMapType_17080) (o_41@@5 T@Ref) (f_27@@130 T@Field_32196_3046) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@61) (=> (HasDirectPerm_32196_3046 Mask@@61 o_41@@5 f_27@@130) (= (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@25) o_41@@5 f_27@@130) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@18) o_41@@5 f_27@@130))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@61) (select (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| ExhaleHeap@@18) o_41@@5 f_27@@130))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17059) (ExhaleHeap@@19 T@PolymorphicMapType_17059) (Mask@@62 T@PolymorphicMapType_17080) (o_41@@6 T@Ref) (f_27@@131 T@Field_32196_9345) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@62) (=> (HasDirectPerm_32196_9345 Mask@@62 o_41@@6 f_27@@131) (= (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@26) o_41@@6 f_27@@131) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@19) o_41@@6 f_27@@131))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@62) (select (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| ExhaleHeap@@19) o_41@@6 f_27@@131))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17059) (ExhaleHeap@@20 T@PolymorphicMapType_17059) (Mask@@63 T@PolymorphicMapType_17080) (o_41@@7 T@Ref) (f_27@@132 T@Field_26835_26840) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@63) (=> (HasDirectPerm_9455_59021 Mask@@63 o_41@@7 f_27@@132) (= (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@27) o_41@@7 f_27@@132) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@20) o_41@@7 f_27@@132))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@63) (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| ExhaleHeap@@20) o_41@@7 f_27@@132))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17059) (ExhaleHeap@@21 T@PolymorphicMapType_17059) (Mask@@64 T@PolymorphicMapType_17080) (o_41@@8 T@Ref) (f_27@@133 T@Field_9455_23342) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@64) (=> (HasDirectPerm_9455_23342 Mask@@64 o_41@@8 f_27@@133) (= (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@28) o_41@@8 f_27@@133) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@21) o_41@@8 f_27@@133))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@64) (select (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| ExhaleHeap@@21) o_41@@8 f_27@@133))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17059) (ExhaleHeap@@22 T@PolymorphicMapType_17059) (Mask@@65 T@PolymorphicMapType_17080) (o_41@@9 T@Ref) (f_27@@134 T@Field_9455_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@65) (=> (HasDirectPerm_9455_645 Mask@@65 o_41@@9 f_27@@134) (= (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@29) o_41@@9 f_27@@134) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@22) o_41@@9 f_27@@134))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@65) (select (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| ExhaleHeap@@22) o_41@@9 f_27@@134))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17059) (ExhaleHeap@@23 T@PolymorphicMapType_17059) (Mask@@66 T@PolymorphicMapType_17080) (o_41@@10 T@Ref) (f_27@@135 T@Field_9455_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@66) (=> (HasDirectPerm_9455_53 Mask@@66 o_41@@10 f_27@@135) (= (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@30) o_41@@10 f_27@@135) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@23) o_41@@10 f_27@@135))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@66) (select (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| ExhaleHeap@@23) o_41@@10 f_27@@135))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17059) (ExhaleHeap@@24 T@PolymorphicMapType_17059) (Mask@@67 T@PolymorphicMapType_17080) (o_41@@11 T@Ref) (f_27@@136 T@Field_23942_23943) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@67) (=> (HasDirectPerm_9455_9456 Mask@@67 o_41@@11 f_27@@136) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@31) o_41@@11 f_27@@136) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@24) o_41@@11 f_27@@136))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@67) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| ExhaleHeap@@24) o_41@@11 f_27@@136))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17059) (ExhaleHeap@@25 T@PolymorphicMapType_17059) (Mask@@68 T@PolymorphicMapType_17080) (o_41@@12 T@Ref) (f_27@@137 T@Field_9455_3046) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@68) (=> (HasDirectPerm_9455_3046 Mask@@68 o_41@@12 f_27@@137) (= (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@32) o_41@@12 f_27@@137) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@25) o_41@@12 f_27@@137))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@68) (select (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| ExhaleHeap@@25) o_41@@12 f_27@@137))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17059) (ExhaleHeap@@26 T@PolymorphicMapType_17059) (Mask@@69 T@PolymorphicMapType_17080) (o_41@@13 T@Ref) (f_27@@138 T@Field_9455_9345) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@69) (=> (HasDirectPerm_9455_9345 Mask@@69 o_41@@13 f_27@@138) (= (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@33) o_41@@13 f_27@@138) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@26) o_41@@13 f_27@@138))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@69) (select (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| ExhaleHeap@@26) o_41@@13 f_27@@138))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17059) (ExhaleHeap@@27 T@PolymorphicMapType_17059) (Mask@@70 T@PolymorphicMapType_17080) (o_41@@14 T@Ref) (f_27@@139 T@Field_9344_26840) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@70) (=> (HasDirectPerm_9344_57430 Mask@@70 o_41@@14 f_27@@139) (= (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@34) o_41@@14 f_27@@139) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@27) o_41@@14 f_27@@139))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@70) (select (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| ExhaleHeap@@27) o_41@@14 f_27@@139))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17059) (ExhaleHeap@@28 T@PolymorphicMapType_17059) (Mask@@71 T@PolymorphicMapType_17080) (o_41@@15 T@Ref) (f_27@@140 T@Field_23340_23342) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@28 Mask@@71) (=> (HasDirectPerm_9344_23342 Mask@@71 o_41@@15 f_27@@140) (= (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@35) o_41@@15 f_27@@140) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@28) o_41@@15 f_27@@140))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@28 Mask@@71) (select (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| ExhaleHeap@@28) o_41@@15 f_27@@140))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17059) (ExhaleHeap@@29 T@PolymorphicMapType_17059) (Mask@@72 T@PolymorphicMapType_17080) (o_41@@16 T@Ref) (f_27@@141 T@Field_23153_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@29 Mask@@72) (=> (HasDirectPerm_9344_645 Mask@@72 o_41@@16 f_27@@141) (= (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@36) o_41@@16 f_27@@141) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@29) o_41@@16 f_27@@141))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@29 Mask@@72) (select (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| ExhaleHeap@@29) o_41@@16 f_27@@141))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_17059) (ExhaleHeap@@30 T@PolymorphicMapType_17059) (Mask@@73 T@PolymorphicMapType_17080) (o_41@@17 T@Ref) (f_27@@142 T@Field_17119_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@30 Mask@@73) (=> (HasDirectPerm_9344_53 Mask@@73 o_41@@17 f_27@@142) (= (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@37) o_41@@17 f_27@@142) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@30) o_41@@17 f_27@@142))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@30 Mask@@73) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| ExhaleHeap@@30) o_41@@17 f_27@@142))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17059) (ExhaleHeap@@31 T@PolymorphicMapType_17059) (Mask@@74 T@PolymorphicMapType_17080) (o_41@@18 T@Ref) (f_27@@143 T@Field_9344_9456) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@31 Mask@@74) (=> (HasDirectPerm_9344_9456 Mask@@74 o_41@@18 f_27@@143) (= (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@38) o_41@@18 f_27@@143) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@31) o_41@@18 f_27@@143))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@31 Mask@@74) (select (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| ExhaleHeap@@31) o_41@@18 f_27@@143))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_17059) (ExhaleHeap@@32 T@PolymorphicMapType_17059) (Mask@@75 T@PolymorphicMapType_17080) (o_41@@19 T@Ref) (f_27@@144 T@Field_23294_3046) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@32 Mask@@75) (=> (HasDirectPerm_9347_3046 Mask@@75 o_41@@19 f_27@@144) (= (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@39) o_41@@19 f_27@@144) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@32) o_41@@19 f_27@@144))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@32 Mask@@75) (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| ExhaleHeap@@32) o_41@@19 f_27@@144))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_17059) (ExhaleHeap@@33 T@PolymorphicMapType_17059) (Mask@@76 T@PolymorphicMapType_17080) (o_41@@20 T@Ref) (f_27@@145 T@Field_17132_17133) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@33 Mask@@76) (=> (HasDirectPerm_9344_9345 Mask@@76 o_41@@20 f_27@@145) (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@40) o_41@@20 f_27@@145) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@33) o_41@@20 f_27@@145))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@33 Mask@@76) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| ExhaleHeap@@33) o_41@@20 f_27@@145))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_5754|)) (not (= s1@@0 |Seq#Empty_5754|))) (= (|Seq#Length_2867| (|Seq#Append_3046| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3046| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_32209_32214) ) (! (= (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_32196_23342) ) (! (= (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_32196_645) ) (! (= (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_32196_53) ) (! (= (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_32196_3046) ) (! (= (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_32196_9345) ) (! (= (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_32196_32197) ) (! (= (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_9344_26840) ) (! (= (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_23340_23342) ) (! (= (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_23153_645) ) (! (= (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_17119_53) ) (! (= (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_23294_3046) ) (! (= (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_17132_17133) ) (! (= (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_9344_9456) ) (! (= (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_26835_26840) ) (! (= (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_9455_23342) ) (! (= (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_9455_645) ) (! (= (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_9455_53) ) (! (= (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_9455_3046) ) (! (= (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_9455_9345) ) (! (= (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_23942_23943) ) (! (= (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_3046| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3046| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17080) (SummandMask1 T@PolymorphicMapType_17080) (SummandMask2 T@PolymorphicMapType_17080) (o_2@@83 T@Ref) (f_4@@83 T@Field_32209_32214) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| ResultMask) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| SummandMask1) o_2@@83 f_4@@83) (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| SummandMask2) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| ResultMask) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| SummandMask1) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| SummandMask2) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17080) (SummandMask1@@0 T@PolymorphicMapType_17080) (SummandMask2@@0 T@PolymorphicMapType_17080) (o_2@@84 T@Ref) (f_4@@84 T@Field_32196_23342) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| ResultMask@@0) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| SummandMask1@@0) o_2@@84 f_4@@84) (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| SummandMask2@@0) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| ResultMask@@0) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| SummandMask1@@0) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| SummandMask2@@0) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17080) (SummandMask1@@1 T@PolymorphicMapType_17080) (SummandMask2@@1 T@PolymorphicMapType_17080) (o_2@@85 T@Ref) (f_4@@85 T@Field_32196_645) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| ResultMask@@1) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| SummandMask1@@1) o_2@@85 f_4@@85) (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| SummandMask2@@1) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| ResultMask@@1) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| SummandMask1@@1) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| SummandMask2@@1) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17080) (SummandMask1@@2 T@PolymorphicMapType_17080) (SummandMask2@@2 T@PolymorphicMapType_17080) (o_2@@86 T@Ref) (f_4@@86 T@Field_32196_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| ResultMask@@2) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| SummandMask1@@2) o_2@@86 f_4@@86) (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| SummandMask2@@2) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| ResultMask@@2) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| SummandMask1@@2) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| SummandMask2@@2) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17080) (SummandMask1@@3 T@PolymorphicMapType_17080) (SummandMask2@@3 T@PolymorphicMapType_17080) (o_2@@87 T@Ref) (f_4@@87 T@Field_32196_3046) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| ResultMask@@3) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| SummandMask1@@3) o_2@@87 f_4@@87) (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| SummandMask2@@3) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| ResultMask@@3) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| SummandMask1@@3) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| SummandMask2@@3) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_17080) (SummandMask1@@4 T@PolymorphicMapType_17080) (SummandMask2@@4 T@PolymorphicMapType_17080) (o_2@@88 T@Ref) (f_4@@88 T@Field_32196_9345) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| ResultMask@@4) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| SummandMask1@@4) o_2@@88 f_4@@88) (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| SummandMask2@@4) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| ResultMask@@4) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| SummandMask1@@4) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| SummandMask2@@4) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_17080) (SummandMask1@@5 T@PolymorphicMapType_17080) (SummandMask2@@5 T@PolymorphicMapType_17080) (o_2@@89 T@Ref) (f_4@@89 T@Field_32196_32197) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| ResultMask@@5) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| SummandMask1@@5) o_2@@89 f_4@@89) (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| SummandMask2@@5) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| ResultMask@@5) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| SummandMask1@@5) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| SummandMask2@@5) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_17080) (SummandMask1@@6 T@PolymorphicMapType_17080) (SummandMask2@@6 T@PolymorphicMapType_17080) (o_2@@90 T@Ref) (f_4@@90 T@Field_9344_26840) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| ResultMask@@6) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| SummandMask1@@6) o_2@@90 f_4@@90) (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| SummandMask2@@6) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| ResultMask@@6) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| SummandMask1@@6) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| SummandMask2@@6) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_17080) (SummandMask1@@7 T@PolymorphicMapType_17080) (SummandMask2@@7 T@PolymorphicMapType_17080) (o_2@@91 T@Ref) (f_4@@91 T@Field_23340_23342) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| ResultMask@@7) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| SummandMask1@@7) o_2@@91 f_4@@91) (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| SummandMask2@@7) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| ResultMask@@7) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| SummandMask1@@7) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| SummandMask2@@7) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_17080) (SummandMask1@@8 T@PolymorphicMapType_17080) (SummandMask2@@8 T@PolymorphicMapType_17080) (o_2@@92 T@Ref) (f_4@@92 T@Field_23153_645) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| ResultMask@@8) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| SummandMask1@@8) o_2@@92 f_4@@92) (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| SummandMask2@@8) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| ResultMask@@8) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| SummandMask1@@8) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| SummandMask2@@8) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_17080) (SummandMask1@@9 T@PolymorphicMapType_17080) (SummandMask2@@9 T@PolymorphicMapType_17080) (o_2@@93 T@Ref) (f_4@@93 T@Field_17119_53) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| ResultMask@@9) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| SummandMask1@@9) o_2@@93 f_4@@93) (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| SummandMask2@@9) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| ResultMask@@9) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| SummandMask1@@9) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| SummandMask2@@9) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_17080) (SummandMask1@@10 T@PolymorphicMapType_17080) (SummandMask2@@10 T@PolymorphicMapType_17080) (o_2@@94 T@Ref) (f_4@@94 T@Field_23294_3046) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| ResultMask@@10) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| SummandMask1@@10) o_2@@94 f_4@@94) (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| SummandMask2@@10) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| ResultMask@@10) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| SummandMask1@@10) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| SummandMask2@@10) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_17080) (SummandMask1@@11 T@PolymorphicMapType_17080) (SummandMask2@@11 T@PolymorphicMapType_17080) (o_2@@95 T@Ref) (f_4@@95 T@Field_17132_17133) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| ResultMask@@11) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| SummandMask1@@11) o_2@@95 f_4@@95) (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| SummandMask2@@11) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| ResultMask@@11) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| SummandMask1@@11) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| SummandMask2@@11) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_17080) (SummandMask1@@12 T@PolymorphicMapType_17080) (SummandMask2@@12 T@PolymorphicMapType_17080) (o_2@@96 T@Ref) (f_4@@96 T@Field_9344_9456) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| ResultMask@@12) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| SummandMask1@@12) o_2@@96 f_4@@96) (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| SummandMask2@@12) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| ResultMask@@12) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| SummandMask1@@12) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| SummandMask2@@12) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_17080) (SummandMask1@@13 T@PolymorphicMapType_17080) (SummandMask2@@13 T@PolymorphicMapType_17080) (o_2@@97 T@Ref) (f_4@@97 T@Field_26835_26840) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| ResultMask@@13) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| SummandMask1@@13) o_2@@97 f_4@@97) (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| SummandMask2@@13) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| ResultMask@@13) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| SummandMask1@@13) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| SummandMask2@@13) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_17080) (SummandMask1@@14 T@PolymorphicMapType_17080) (SummandMask2@@14 T@PolymorphicMapType_17080) (o_2@@98 T@Ref) (f_4@@98 T@Field_9455_23342) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| ResultMask@@14) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| SummandMask1@@14) o_2@@98 f_4@@98) (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| SummandMask2@@14) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| ResultMask@@14) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| SummandMask1@@14) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| SummandMask2@@14) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_17080) (SummandMask1@@15 T@PolymorphicMapType_17080) (SummandMask2@@15 T@PolymorphicMapType_17080) (o_2@@99 T@Ref) (f_4@@99 T@Field_9455_645) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| ResultMask@@15) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| SummandMask1@@15) o_2@@99 f_4@@99) (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| SummandMask2@@15) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| ResultMask@@15) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| SummandMask1@@15) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| SummandMask2@@15) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_17080) (SummandMask1@@16 T@PolymorphicMapType_17080) (SummandMask2@@16 T@PolymorphicMapType_17080) (o_2@@100 T@Ref) (f_4@@100 T@Field_9455_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| ResultMask@@16) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| SummandMask1@@16) o_2@@100 f_4@@100) (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| SummandMask2@@16) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| ResultMask@@16) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| SummandMask1@@16) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| SummandMask2@@16) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_17080) (SummandMask1@@17 T@PolymorphicMapType_17080) (SummandMask2@@17 T@PolymorphicMapType_17080) (o_2@@101 T@Ref) (f_4@@101 T@Field_9455_3046) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| ResultMask@@17) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| SummandMask1@@17) o_2@@101 f_4@@101) (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| SummandMask2@@17) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| ResultMask@@17) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| SummandMask1@@17) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| SummandMask2@@17) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_17080) (SummandMask1@@18 T@PolymorphicMapType_17080) (SummandMask2@@18 T@PolymorphicMapType_17080) (o_2@@102 T@Ref) (f_4@@102 T@Field_9455_9345) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| ResultMask@@18) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| SummandMask1@@18) o_2@@102 f_4@@102) (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| SummandMask2@@18) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| ResultMask@@18) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| SummandMask1@@18) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| SummandMask2@@18) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_17080) (SummandMask1@@19 T@PolymorphicMapType_17080) (SummandMask2@@19 T@PolymorphicMapType_17080) (o_2@@103 T@Ref) (f_4@@103 T@Field_23942_23943) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| ResultMask@@19) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| SummandMask1@@19) o_2@@103 f_4@@103) (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| SummandMask2@@19) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| ResultMask@@19) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| SummandMask1@@19) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| SummandMask2@@19) o_2@@103 f_4@@103))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.535:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3114| a b) (= a b))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3114| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_5754|) (= (|Seq#Append_3046| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_5754|) (= (|Seq#Append_3046| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3046| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3046| t@@1) 0) t@@1)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3046| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3114| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3114| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_17059) (Mask@@77 T@PolymorphicMapType_17080) (this$_2@@1 T@Ref) ) (!  (=> (state Heap@@41 Mask@@77) (= (|Nodevals$'| Heap@@41 this$_2@@1) (|Nodevals$#frame| (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@41) null (Nodelist$ this$_2@@1)) this$_2@@1)))
 :qid |stdinbpl.607:15|
 :skolemid |61|
 :pattern ( (state Heap@@41 Mask@@77) (|Nodevals$'| Heap@@41 this$_2@@1))
 :pattern ( (state Heap@@41 Mask@@77) (|Nodevals$#triggerStateless| this$_2@@1) (|Nodelist$#trigger_9455| Heap@@41 (Nodelist$ this$_2@@1)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_17059) (Mask@@78 T@PolymorphicMapType_17080) (this$_3@@1 T@Ref) ) (!  (=> (state Heap@@42 Mask@@78) (= (|Nodereverse_vals$'| Heap@@42 this$_3@@1) (|Nodereverse_vals$#frame| (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@42) null (Nodelist$ this$_3@@1)) this$_3@@1)))
 :qid |stdinbpl.751:15|
 :skolemid |66|
 :pattern ( (state Heap@@42 Mask@@78) (|Nodereverse_vals$'| Heap@@42 this$_3@@1))
 :pattern ( (state Heap@@42 Mask@@78) (|Nodereverse_vals$#triggerStateless| this$_3@@1) (|Nodelist$#trigger_9455| Heap@@42 (Nodelist$ this$_3@@1)))
)))
(assert (forall ((this$@@3 T@Ref) ) (! (= (getPredWandId_9431_9432 (Node$MonitorInvariant this$@@3)) 0)
 :qid |stdinbpl.886:15|
 :skolemid |70|
 :pattern ( (Node$MonitorInvariant this$@@3))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3046| t@@2)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3046| t@@2))
)))
(assert (forall ((this$_1@@3 T@Ref) ) (! (= (getPredWandId_9455_9456 (Nodelist$ this$_1@@3)) 1)
 :qid |stdinbpl.936:15|
 :skolemid |76|
 :pattern ( (Nodelist$ this$_1@@3))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_17059) (Mask@@79 T@PolymorphicMapType_17080) (this$_2@@2 T@Ref) ) (!  (=> (and (state Heap@@43 Mask@@79) (< AssumeFunctionsAbove 1)) (=> (not (= this$_2@@2 null)) (= (Nodevals$ Heap@@43 this$_2@@2) (ite (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@43) this$_2@@2 Nodenext$) null) (|Seq#Singleton_3046| (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@43) this$_2@@2 Nodeval$)) (|Seq#Append_3046| (|Seq#Singleton_3046| (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@43) this$_2@@2 Nodeval$)) (|Nodevals$'| Heap@@43 (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@43) this$_2@@2 Nodenext$)))))))
 :qid |stdinbpl.600:15|
 :skolemid |60|
 :pattern ( (state Heap@@43 Mask@@79) (Nodevals$ Heap@@43 this$_2@@2))
 :pattern ( (state Heap@@43 Mask@@79) (|Nodevals$#triggerStateless| this$_2@@2) (|Nodelist$#trigger_9455| Heap@@43 (Nodelist$ this$_2@@2)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_17059) (Mask@@80 T@PolymorphicMapType_17080) (this$_3@@2 T@Ref) ) (!  (=> (and (state Heap@@44 Mask@@80) (< AssumeFunctionsAbove 0)) (=> (not (= this$_3@@2 null)) (= (Nodereverse_vals$ Heap@@44 this$_3@@2) (ite (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@44) this$_3@@2 Nodenext$) null) (|Seq#Singleton_3046| (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@44) this$_3@@2 Nodeval$)) (|Seq#Append_3046| (|Nodereverse_vals$'| Heap@@44 (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@44) this$_3@@2 Nodenext$)) (|Seq#Singleton_3046| (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@44) this$_3@@2 Nodeval$)))))))
 :qid |stdinbpl.744:15|
 :skolemid |65|
 :pattern ( (state Heap@@44 Mask@@80) (Nodereverse_vals$ Heap@@44 this$_3@@2))
 :pattern ( (state Heap@@44 Mask@@80) (|Nodereverse_vals$#triggerStateless| this$_3@@2) (|Nodelist$#trigger_9455| Heap@@44 (Nodelist$ this$_3@@2)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3046| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3046| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_17059) (o_22 T@Ref) (f_12 T@Field_32196_23342) (v@@2 T@Seq_2867) ) (! (succHeap Heap@@45 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@45) (store (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@45) o_22 f_12 v@@2) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@45) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@45) (store (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@45) o_22 f_12 v@@2) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_17059) (o_22@@0 T@Ref) (f_12@@0 T@Field_32196_645) (v@@3 Real) ) (! (succHeap Heap@@46 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@46) (store (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@46) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@46) (store (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@46) o_22@@0 f_12@@0 v@@3) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@46) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_17059) (o_22@@1 T@Ref) (f_12@@1 T@Field_32209_32214) (v@@4 T@PolymorphicMapType_17608) ) (! (succHeap Heap@@47 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@47) (store (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@47) o_22@@1 f_12@@1 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@47) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@47) (store (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@47) o_22@@1 f_12@@1 v@@4)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_17059) (o_22@@2 T@Ref) (f_12@@2 T@Field_32196_32197) (v@@5 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@48) (store (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@48) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@48) (store (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@48) o_22@@2 f_12@@2 v@@5) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@48) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_17059) (o_22@@3 T@Ref) (f_12@@3 T@Field_32196_3046) (v@@6 Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@49) (store (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@49) o_22@@3 f_12@@3 v@@6) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@49) (store (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@49) o_22@@3 f_12@@3 v@@6) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@49) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_17059) (o_22@@4 T@Ref) (f_12@@4 T@Field_32196_9345) (v@@7 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@50) (store (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@50) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@50) (store (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@50) o_22@@4 f_12@@4 v@@7) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@50) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_17059) (o_22@@5 T@Ref) (f_12@@5 T@Field_32196_53) (v@@8 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@51) (store (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@51) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@51) (store (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@51) o_22@@5 f_12@@5 v@@8) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@51) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_17059) (o_22@@6 T@Ref) (f_12@@6 T@Field_9455_23342) (v@@9 T@Seq_2867) ) (! (succHeap Heap@@52 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@52) (store (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@52) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@52) (store (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@52) o_22@@6 f_12@@6 v@@9) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@52) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_17059) (o_22@@7 T@Ref) (f_12@@7 T@Field_9455_645) (v@@10 Real) ) (! (succHeap Heap@@53 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@53) (store (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@53) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@53) (store (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@53) o_22@@7 f_12@@7 v@@10) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@53) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_17059) (o_22@@8 T@Ref) (f_12@@8 T@Field_26835_26840) (v@@11 T@PolymorphicMapType_17608) ) (! (succHeap Heap@@54 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@54) (store (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@54) o_22@@8 f_12@@8 v@@11) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@54) (store (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@54) o_22@@8 f_12@@8 v@@11) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@54) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_17059) (o_22@@9 T@Ref) (f_12@@9 T@Field_23942_23943) (v@@12 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@55) (store (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@55) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@55) (store (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@55) o_22@@9 f_12@@9 v@@12) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@55) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_17059) (o_22@@10 T@Ref) (f_12@@10 T@Field_9455_3046) (v@@13 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@56) (store (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@56) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@56) (store (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@56) o_22@@10 f_12@@10 v@@13) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@56) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_17059) (o_22@@11 T@Ref) (f_12@@11 T@Field_9455_9345) (v@@14 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@57) (store (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@57) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@57) (store (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@57) o_22@@11 f_12@@11 v@@14) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@57) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_17059) (o_22@@12 T@Ref) (f_12@@12 T@Field_9455_53) (v@@15 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@58) (store (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@58) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@58) (store (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@58) o_22@@12 f_12@@12 v@@15) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@58) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_17059) (o_22@@13 T@Ref) (f_12@@13 T@Field_23340_23342) (v@@16 T@Seq_2867) ) (! (succHeap Heap@@59 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@59) (store (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@59) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@59) (store (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@59) o_22@@13 f_12@@13 v@@16) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@59) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_17059) (o_22@@14 T@Ref) (f_12@@14 T@Field_23153_645) (v@@17 Real) ) (! (succHeap Heap@@60 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@60) (store (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@60) o_22@@14 f_12@@14 v@@17) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@60) (store (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@60) o_22@@14 f_12@@14 v@@17) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@60) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_17059) (o_22@@15 T@Ref) (f_12@@15 T@Field_9344_26840) (v@@18 T@PolymorphicMapType_17608) ) (! (succHeap Heap@@61 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@61) (store (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@61) o_22@@15 f_12@@15 v@@18) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@61) (store (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@61) o_22@@15 f_12@@15 v@@18) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@61) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_17059) (o_22@@16 T@Ref) (f_12@@16 T@Field_9344_9456) (v@@19 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@62) (store (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@62) o_22@@16 f_12@@16 v@@19) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@62) (store (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@62) o_22@@16 f_12@@16 v@@19) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@62) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_17059) (o_22@@17 T@Ref) (f_12@@17 T@Field_23294_3046) (v@@20 Int) ) (! (succHeap Heap@@63 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@63) (store (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@63) o_22@@17 f_12@@17 v@@20) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@63) (store (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@63) o_22@@17 f_12@@17 v@@20) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@63) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_17059) (o_22@@18 T@Ref) (f_12@@18 T@Field_17132_17133) (v@@21 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@64) (store (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@64) o_22@@18 f_12@@18 v@@21) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@64) (store (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@64) o_22@@18 f_12@@18 v@@21) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@64) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_17059) (o_22@@19 T@Ref) (f_12@@19 T@Field_17119_53) (v@@22 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_17059 (store (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@65) o_22@@19 f_12@@19 v@@22) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17059 (store (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@65) o_22@@19 f_12@@19 v@@22) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@65) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@65)))
)))
(assert (forall ((this$@@4 T@Ref) ) (! (= (PredicateMaskField_9431 (Node$MonitorInvariant this$@@4)) (|Node$MonitorInvariant#sm| this$@@4))
 :qid |stdinbpl.878:15|
 :skolemid |68|
 :pattern ( (PredicateMaskField_9431 (Node$MonitorInvariant this$@@4)))
)))
(assert (forall ((this$_1@@4 T@Ref) ) (! (= (PredicateMaskField_9455 (Nodelist$ this$_1@@4)) (|Nodelist$#sm| this$_1@@4))
 :qid |stdinbpl.928:15|
 :skolemid |74|
 :pattern ( (PredicateMaskField_9455 (Nodelist$ this$_1@@4)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_3046| s@@12 t@@4) n@@9) (|Seq#Append_3046| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3046| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_5754|)) (not (= s1@@3 |Seq#Empty_5754|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3046| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3046| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3046| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_5754|)) (not (= s1@@4 |Seq#Empty_5754|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3046| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3046| s0@@4 s1@@4))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o_22@@20 T@Ref) (f_30 T@Field_17132_17133) (Heap@@66 T@PolymorphicMapType_17059) ) (!  (=> (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@66) o_22@@20 $allocated) (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@66) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@66) o_22@@20 f_30) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@66) o_22@@20 f_30))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3114| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3114| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3114| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3114| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_32196_32197) (v_1@@2 T@FrameType) (q T@Field_32196_32197) (w@@2 T@FrameType) (r T@Field_32196_32197) (u T@FrameType) ) (!  (=> (and (InsidePredicate_32196_32196 p@@3 v_1@@2 q w@@2) (InsidePredicate_32196_32196 q w@@2 r u)) (InsidePredicate_32196_32196 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_32196 p@@3 v_1@@2 q w@@2) (InsidePredicate_32196_32196 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_32196_32197) (v_1@@3 T@FrameType) (q@@0 T@Field_32196_32197) (w@@3 T@FrameType) (r@@0 T@Field_9344_9456) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_32196 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_32196_17119 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_32196_17119 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_32196 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_32196_17119 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_32196_32197) (v_1@@4 T@FrameType) (q@@1 T@Field_32196_32197) (w@@4 T@FrameType) (r@@1 T@Field_23942_23943) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_32196 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_32196_9455 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_32196_9455 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_32196 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_32196_9455 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_32196_32197) (v_1@@5 T@FrameType) (q@@2 T@Field_9344_9456) (w@@5 T@FrameType) (r@@2 T@Field_32196_32197) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_17119 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_17119_32196 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_32196_32196 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_17119 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_17119_32196 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_32196_32197) (v_1@@6 T@FrameType) (q@@3 T@Field_9344_9456) (w@@6 T@FrameType) (r@@3 T@Field_9344_9456) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_17119 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_17119_17119 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_32196_17119 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_17119 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_17119_17119 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_32196_32197) (v_1@@7 T@FrameType) (q@@4 T@Field_9344_9456) (w@@7 T@FrameType) (r@@4 T@Field_23942_23943) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_17119 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_17119_9455 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_32196_9455 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_17119 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_17119_9455 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_32196_32197) (v_1@@8 T@FrameType) (q@@5 T@Field_23942_23943) (w@@8 T@FrameType) (r@@5 T@Field_32196_32197) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_9455 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9455_32196 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_32196_32196 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_9455 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9455_32196 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_32196_32197) (v_1@@9 T@FrameType) (q@@6 T@Field_23942_23943) (w@@9 T@FrameType) (r@@6 T@Field_9344_9456) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_9455 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9455_17119 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_32196_17119 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_9455 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9455_17119 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_32196_32197) (v_1@@10 T@FrameType) (q@@7 T@Field_23942_23943) (w@@10 T@FrameType) (r@@7 T@Field_23942_23943) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_32196_9455 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9455_9455 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_32196_9455 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_32196_9455 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9455_9455 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9344_9456) (v_1@@11 T@FrameType) (q@@8 T@Field_32196_32197) (w@@11 T@FrameType) (r@@8 T@Field_32196_32197) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_32196 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_32196_32196 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_17119_32196 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_32196 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_32196_32196 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9344_9456) (v_1@@12 T@FrameType) (q@@9 T@Field_32196_32197) (w@@12 T@FrameType) (r@@9 T@Field_9344_9456) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_32196 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_32196_17119 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_17119_17119 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_32196 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_32196_17119 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9344_9456) (v_1@@13 T@FrameType) (q@@10 T@Field_32196_32197) (w@@13 T@FrameType) (r@@10 T@Field_23942_23943) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_32196 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_32196_9455 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_17119_9455 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_32196 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_32196_9455 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9344_9456) (v_1@@14 T@FrameType) (q@@11 T@Field_9344_9456) (w@@14 T@FrameType) (r@@11 T@Field_32196_32197) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_17119 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_17119_32196 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_17119_32196 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_17119 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_17119_32196 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9344_9456) (v_1@@15 T@FrameType) (q@@12 T@Field_9344_9456) (w@@15 T@FrameType) (r@@12 T@Field_9344_9456) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_17119 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_17119_17119 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_17119_17119 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_17119 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_17119_17119 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9344_9456) (v_1@@16 T@FrameType) (q@@13 T@Field_9344_9456) (w@@16 T@FrameType) (r@@13 T@Field_23942_23943) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_17119 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_17119_9455 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_17119_9455 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_17119 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_17119_9455 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9344_9456) (v_1@@17 T@FrameType) (q@@14 T@Field_23942_23943) (w@@17 T@FrameType) (r@@14 T@Field_32196_32197) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_9455 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9455_32196 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_17119_32196 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_9455 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9455_32196 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9344_9456) (v_1@@18 T@FrameType) (q@@15 T@Field_23942_23943) (w@@18 T@FrameType) (r@@15 T@Field_9344_9456) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_9455 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9455_17119 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_17119_17119 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_9455 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9455_17119 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9344_9456) (v_1@@19 T@FrameType) (q@@16 T@Field_23942_23943) (w@@19 T@FrameType) (r@@16 T@Field_23942_23943) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_17119_9455 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9455_9455 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_17119_9455 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17119_9455 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9455_9455 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_23942_23943) (v_1@@20 T@FrameType) (q@@17 T@Field_32196_32197) (w@@20 T@FrameType) (r@@17 T@Field_32196_32197) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_32196 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_32196_32196 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9455_32196 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_32196 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_32196_32196 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_23942_23943) (v_1@@21 T@FrameType) (q@@18 T@Field_32196_32197) (w@@21 T@FrameType) (r@@18 T@Field_9344_9456) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_32196 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_32196_17119 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9455_17119 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_32196 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_32196_17119 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_23942_23943) (v_1@@22 T@FrameType) (q@@19 T@Field_32196_32197) (w@@22 T@FrameType) (r@@19 T@Field_23942_23943) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_32196 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_32196_9455 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9455_9455 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_32196 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_32196_9455 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_23942_23943) (v_1@@23 T@FrameType) (q@@20 T@Field_9344_9456) (w@@23 T@FrameType) (r@@20 T@Field_32196_32197) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_17119 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_17119_32196 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9455_32196 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_17119 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_17119_32196 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_23942_23943) (v_1@@24 T@FrameType) (q@@21 T@Field_9344_9456) (w@@24 T@FrameType) (r@@21 T@Field_9344_9456) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_17119 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_17119_17119 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9455_17119 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_17119 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_17119_17119 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_23942_23943) (v_1@@25 T@FrameType) (q@@22 T@Field_9344_9456) (w@@25 T@FrameType) (r@@22 T@Field_23942_23943) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_17119 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_17119_9455 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9455_9455 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_17119 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_17119_9455 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_23942_23943) (v_1@@26 T@FrameType) (q@@23 T@Field_23942_23943) (w@@26 T@FrameType) (r@@23 T@Field_32196_32197) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_9455 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9455_32196 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9455_32196 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_9455 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9455_32196 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_23942_23943) (v_1@@27 T@FrameType) (q@@24 T@Field_23942_23943) (w@@27 T@FrameType) (r@@24 T@Field_9344_9456) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_9455 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9455_17119 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9455_17119 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_9455 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9455_17119 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_23942_23943) (v_1@@28 T@FrameType) (q@@25 T@Field_23942_23943) (w@@28 T@FrameType) (r@@25 T@Field_23942_23943) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9455_9455 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9455_9455 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9455_9455 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9455_9455 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9455_9455 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_5754|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_5754|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_17059)
(declare-fun this$_3@@3 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_17059)
(declare-fun newPMask@0 () T@PolymorphicMapType_17608)
(declare-fun Heap@2 () T@PolymorphicMapType_17059)
(declare-fun Heap@0 () T@PolymorphicMapType_17059)
(declare-fun Heap@@67 () T@PolymorphicMapType_17059)
(declare-fun |Nodereverse_vals$#trigger| (T@FrameType T@Ref) Bool)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_17080)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_17080)
(declare-fun wildcard@3 () Real)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_17080)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_17080)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_9345 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3046 (Int) T@FrameType)
(declare-fun FrameFragment_9456 (T@FrameType) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_17080)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |Nodereverse_vals$#definedness|)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon10_correct true))
(let ((anon14_Else_correct  (=> (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon10_correct))))
(let ((anon14_Then_correct  (=> (not (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_17132_17133) ) (!  (=> (or (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16 f_21) (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16 f_21)) (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| newPMask@0) o_16 f_21))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| newPMask@0) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_23294_3046) ) (!  (=> (or (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| newPMask@0) o_16@@0 f_21@@0))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| newPMask@0) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_17119_53) ) (!  (=> (or (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| newPMask@0) o_16@@1 f_21@@1))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| newPMask@0) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_23153_645) ) (!  (=> (or (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| newPMask@0) o_16@@2 f_21@@2))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| newPMask@0) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_23340_23342) ) (!  (=> (or (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| newPMask@0) o_16@@3 f_21@@3))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| newPMask@0) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_9344_9456) ) (!  (=> (or (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| newPMask@0) o_16@@4 f_21@@4))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| newPMask@0) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_9344_26840) ) (!  (=> (or (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| newPMask@0) o_16@@5 f_21@@5))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| newPMask@0) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_9455_9345) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| newPMask@0) o_16@@6 f_21@@6))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| newPMask@0) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_9455_3046) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| newPMask@0) o_16@@7 f_21@@7))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| newPMask@0) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_9455_53) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| newPMask@0) o_16@@8 f_21@@8))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| newPMask@0) o_16@@8 f_21@@8))
))) (forall ((o_16@@9 T@Ref) (f_21@@9 T@Field_9455_645) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@9 f_21@@9) (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@9 f_21@@9)) (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| newPMask@0) o_16@@9 f_21@@9))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| newPMask@0) o_16@@9 f_21@@9))
))) (forall ((o_16@@10 T@Ref) (f_21@@10 T@Field_9455_23342) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@10 f_21@@10) (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@10 f_21@@10)) (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| newPMask@0) o_16@@10 f_21@@10))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| newPMask@0) o_16@@10 f_21@@10))
))) (forall ((o_16@@11 T@Ref) (f_21@@11 T@Field_23942_23943) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@11 f_21@@11) (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@11 f_21@@11)) (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| newPMask@0) o_16@@11 f_21@@11))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| newPMask@0) o_16@@11 f_21@@11))
))) (forall ((o_16@@12 T@Ref) (f_21@@12 T@Field_26835_26840) ) (!  (=> (or (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@12 f_21@@12) (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@12 f_21@@12)) (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| newPMask@0) o_16@@12 f_21@@12))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| newPMask@0) o_16@@12 f_21@@12))
))) (forall ((o_16@@13 T@Ref) (f_21@@13 T@Field_32196_9345) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@13 f_21@@13) (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@13 f_21@@13)) (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| newPMask@0) o_16@@13 f_21@@13))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| newPMask@0) o_16@@13 f_21@@13))
))) (forall ((o_16@@14 T@Ref) (f_21@@14 T@Field_32196_3046) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@14 f_21@@14) (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@14 f_21@@14)) (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| newPMask@0) o_16@@14 f_21@@14))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| newPMask@0) o_16@@14 f_21@@14))
))) (forall ((o_16@@15 T@Ref) (f_21@@15 T@Field_32196_53) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@15 f_21@@15) (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@15 f_21@@15)) (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| newPMask@0) o_16@@15 f_21@@15))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| newPMask@0) o_16@@15 f_21@@15))
))) (forall ((o_16@@16 T@Ref) (f_21@@16 T@Field_32196_645) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@16 f_21@@16) (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@16 f_21@@16)) (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| newPMask@0) o_16@@16 f_21@@16))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| newPMask@0) o_16@@16 f_21@@16))
))) (forall ((o_16@@17 T@Ref) (f_21@@17 T@Field_32196_23342) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@17 f_21@@17) (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@17 f_21@@17)) (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| newPMask@0) o_16@@17 f_21@@17))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| newPMask@0) o_16@@17 f_21@@17))
))) (forall ((o_16@@18 T@Ref) (f_21@@18 T@Field_32196_32197) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@18 f_21@@18) (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@18 f_21@@18)) (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| newPMask@0) o_16@@18 f_21@@18))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| newPMask@0) o_16@@18 f_21@@18))
))) (forall ((o_16@@19 T@Ref) (f_21@@19 T@Field_32209_32214) ) (!  (=> (or (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3))) o_16@@19 f_21@@19) (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) this$_3@@3 Nodenext$)))) o_16@@19 f_21@@19)) (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| newPMask@0) o_16@@19 f_21@@19))
 :qid |stdinbpl.859:33|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| newPMask@0) o_16@@19 f_21@@19))
))) (= Heap@2 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@1) (store (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@1) null (|Nodelist$#sm| this$_3@@3) newPMask@0) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@1) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon10_correct))))
(let ((anon8_correct  (=> (and (= Heap@0 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@67) (store (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3) (PolymorphicMapType_17608 (store (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) this$_3@@3 Nodenext$ true) (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@@67) null (|Nodelist$#sm| this$_3@@3))))) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@@67) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@@67))) (= Heap@1 (PolymorphicMapType_17059 (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@0) (store (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3) (PolymorphicMapType_17608 (|PolymorphicMapType_17608_9344_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (store (|PolymorphicMapType_17608_9347_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) this$_3@@3 Nodeval$ true) (|PolymorphicMapType_17608_9344_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_9344_63078#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_23942_64528#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_9345#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_3046#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_53#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_645#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_23342#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_23943#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))) (|PolymorphicMapType_17608_32196_65978#PolymorphicMapType_17608| (select (|PolymorphicMapType_17059_9459_26927#PolymorphicMapType_17059| Heap@0) null (|Nodelist$#sm| this$_3@@3))))) (|PolymorphicMapType_17059_9344_9456#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9344_645#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9344_23342#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9344_57472#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9455_9345#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9455_3046#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9455_53#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9455_645#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_9455_23342#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_9345#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_3046#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_9456#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_53#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_645#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_23342#PolymorphicMapType_17059| Heap@0) (|PolymorphicMapType_17059_32196_60648#PolymorphicMapType_17059| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon14_Then_correct) (=> (= (ControlFlow 0 7) 6) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (|Nodereverse_vals$#trigger| (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@67) null (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$))) (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_9347_3046 UnfoldingMask@3 this$_3@@3 Nodeval$)) (=> (HasDirectPerm_9347_3046 UnfoldingMask@3 this$_3@@3 Nodeval$) (=> (= (ControlFlow 0 10) 7) anon8_correct))))))
(let ((anon12_Then_correct  (=> (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_9347_3046 UnfoldingMask@3 this$_3@@3 Nodeval$)) (=> (HasDirectPerm_9347_3046 UnfoldingMask@3 this$_3@@3 Nodeval$) (=> (= (ControlFlow 0 8) 7) anon8_correct))))))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null))) (=> (not (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| UnfoldingMask@3) null (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$))))))))))
(let ((anon12_Else_correct  (=> (not (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_9344_9345 UnfoldingMask@3 this$_3@@3 Nodenext$)) (=> (HasDirectPerm_9344_9345 UnfoldingMask@3 this$_3@@3 Nodenext$) (and (=> (= (ControlFlow 0 12) 2) anon13_Then_correct) (=> (= (ControlFlow 0 12) 10) anon13_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@67 UnfoldingMask@3) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_9344_9345 UnfoldingMask@3 this$_3@@3 Nodenext$)) (=> (HasDirectPerm_9344_9345 UnfoldingMask@3 this$_3@@3 Nodenext$) (and (=> (= (ControlFlow 0 14) 8) anon12_Then_correct) (=> (= (ControlFlow 0 14) 12) anon12_Else_correct)))))))
(let ((anon11_Else_correct  (=> (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 17) 14)) anon2_correct))))
(let ((anon11_Then_correct  (=> (not (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null)) (=> (and (> wildcard@3 NoPerm) (= UnfoldingMask@2 (PolymorphicMapType_17080 (store (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| UnfoldingMask@1) null (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$)) (+ (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| UnfoldingMask@1) null (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$))) wildcard@3)) (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| UnfoldingMask@1) (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_9455_9455 (Nodelist$ this$_3@@3) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@67) null (Nodelist$ this$_3@@3)) (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$)) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@67) null (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$)))) (state Heap@@67 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 16) 14))) anon2_correct)))))
(let ((anon0_correct  (=> (and (and (state Heap@@67 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_17059_9150_53#PolymorphicMapType_17059| Heap@@67) this$_3@@3 $allocated) (= AssumeFunctionsAbove 0))) (=> (and (and (and (not (= this$_3@@3 null)) (state Heap@@67 ZeroMask)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_17080 (store (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| ZeroMask) null (Nodelist$ this$_3@@3) (+ (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| ZeroMask) null (Nodelist$ this$_3@@3)) wildcard@0)) (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| ZeroMask) (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| ZeroMask))))) (and (and (state Heap@@67 Mask@0) (state Heap@@67 Mask@0)) (and (|Nodelist$#trigger_9455| Heap@@67 (Nodelist$ this$_3@@3)) (= (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@67) null (Nodelist$ this$_3@@3)) (CombineFrames (FrameFragment_9345 (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$)) (CombineFrames (FrameFragment_3046 (select (|PolymorphicMapType_17059_9347_3046#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodeval$)) (FrameFragment_9456 (ite (not (= (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$) null)) (select (|PolymorphicMapType_17059_9455_9456#PolymorphicMapType_17059| Heap@@67) null (Nodelist$ (select (|PolymorphicMapType_17059_9153_9154#PolymorphicMapType_17059| Heap@@67) this$_3@@3 Nodenext$))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@0) null (Nodelist$ this$_3@@3))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@0) null (Nodelist$ this$_3@@3)))) (=> (and (and (and (> wildcard@1 NoPerm) (not (= this$_3@@3 null))) (and (= UnfoldingMask@0 (PolymorphicMapType_17080 (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| Mask@0) (store (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| Mask@0) this$_3@@3 Nodenext$ (+ (select (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| Mask@0) this$_3@@3 Nodenext$) wildcard@1)) (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| Mask@0) (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| Mask@0))) (state Heap@@67 UnfoldingMask@0))) (and (and (> wildcard@2 NoPerm) (not (= this$_3@@3 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_17080 (|PolymorphicMapType_17080_9455_9456#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9344_9345#PolymorphicMapType_17080| UnfoldingMask@0) (store (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| UnfoldingMask@0) this$_3@@3 Nodeval$ (+ (select (|PolymorphicMapType_17080_9347_3046#PolymorphicMapType_17080| UnfoldingMask@0) this$_3@@3 Nodeval$) wildcard@2)) (|PolymorphicMapType_17080_9455_9345#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9455_3046#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9455_53#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9455_645#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9455_23342#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9455_75767#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9344_9456#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9344_53#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9344_645#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9344_23342#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_9344_76329#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_9456#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_9345#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_3046#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_53#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_645#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_23342#PolymorphicMapType_17080| UnfoldingMask@0) (|PolymorphicMapType_17080_32196_76918#PolymorphicMapType_17080| UnfoldingMask@0))) (state Heap@@67 UnfoldingMask@1)))) (and (=> (= (ControlFlow 0 18) 16) anon11_Then_correct) (=> (= (ControlFlow 0 18) 17) anon11_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 20) 18)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
