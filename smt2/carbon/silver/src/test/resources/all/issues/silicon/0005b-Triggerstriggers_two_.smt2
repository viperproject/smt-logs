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
(declare-sort T@Field_16916_53 0)
(declare-sort T@Field_16929_16930 0)
(declare-sort T@Field_21330_21331 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23724_23729 0)
(declare-sort T@Field_20259_645 0)
(declare-sort T@Field_20874_1456 0)
(declare-sort T@Field_9090_21331 0)
(declare-sort T@Field_9090_23729 0)
(declare-sort T@Field_21330_9091 0)
(declare-sort T@Field_21330_53 0)
(declare-sort T@Field_21330_645 0)
(declare-sort T@Field_21330_1456 0)
(declare-sort T@Field_34223_9091 0)
(declare-sort T@Field_34223_53 0)
(declare-sort T@Field_34223_645 0)
(declare-sort T@Field_34223_1456 0)
(declare-sort T@Field_34223_34224 0)
(declare-sort T@Field_34236_34241 0)
(declare-datatypes ((T@PolymorphicMapType_16877 0)) (((PolymorphicMapType_16877 (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_21331 Real)) (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| (Array T@Ref T@Field_16929_16930 Real)) (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_9091 Real)) (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_53 Real)) (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_645 Real)) (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_1456 Real)) (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| (Array T@Ref T@Field_23724_23729 Real)) (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| (Array T@Ref T@Field_9090_21331 Real)) (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| (Array T@Ref T@Field_16916_53 Real)) (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| (Array T@Ref T@Field_20259_645 Real)) (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| (Array T@Ref T@Field_20874_1456 Real)) (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| (Array T@Ref T@Field_9090_23729 Real)) (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_34224 Real)) (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_9091 Real)) (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_53 Real)) (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_645 Real)) (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_1456 Real)) (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| (Array T@Ref T@Field_34236_34241 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17405 0)) (((PolymorphicMapType_17405 (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (Array T@Ref T@Field_16929_16930 Bool)) (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (Array T@Ref T@Field_16916_53 Bool)) (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (Array T@Ref T@Field_20259_645 Bool)) (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (Array T@Ref T@Field_20874_1456 Bool)) (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (Array T@Ref T@Field_9090_21331 Bool)) (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (Array T@Ref T@Field_9090_23729 Bool)) (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_9091 Bool)) (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_53 Bool)) (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_645 Bool)) (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_1456 Bool)) (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_21331 Bool)) (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (Array T@Ref T@Field_23724_23729 Bool)) (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_9091 Bool)) (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_53 Bool)) (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_645 Bool)) (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_1456 Bool)) (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_34224 Bool)) (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (Array T@Ref T@Field_34236_34241 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16856 0)) (((PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| (Array T@Ref T@Field_16916_53 Bool)) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| (Array T@Ref T@Field_16929_16930 T@Ref)) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_21331 T@FrameType)) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| (Array T@Ref T@Field_23724_23729 T@PolymorphicMapType_17405)) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| (Array T@Ref T@Field_20259_645 Real)) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| (Array T@Ref T@Field_20874_1456 Int)) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| (Array T@Ref T@Field_9090_21331 T@FrameType)) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| (Array T@Ref T@Field_9090_23729 T@PolymorphicMapType_17405)) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_9091 T@Ref)) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_53 Bool)) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_645 Real)) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_1456 Int)) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_9091 T@Ref)) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_53 Bool)) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_645 Real)) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_1456 Int)) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_34224 T@FrameType)) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| (Array T@Ref T@Field_34236_34241 T@PolymorphicMapType_17405)) ) ) ))
(declare-fun $allocated () T@Field_16916_53)
(declare-fun globalK$ () Real)
(declare-fun old$methodPermission () T@Field_20259_645)
(declare-fun joinable$ () T@Field_16916_53)
(declare-fun Triggersnext$ () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_one$this$_6 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_one$k$ () T@Field_20259_645)
(declare-fun par$Triggerstriggers_two$this$_7 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_two$k$_1 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_three$this$_8 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_three$k$_2 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_four$this$_9 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_four$k$_3 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_five$this$_10 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_five$k$_4 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_five$c () T@Field_16916_53)
(declare-fun par$Triggerstriggers_five$d () T@Field_16916_53)
(declare-fun par$Triggerstriggers_six$this$_11 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_six$k$_5 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_six$c () T@Field_20874_1456)
(declare-fun par$Triggerstriggers_six$d () T@Field_20874_1456)
(declare-fun Triggersf$ (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun |Triggersf$'| (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun dummyFunction_1833 (Bool) Bool)
(declare-fun |Triggersf$#triggerStateless| (T@Ref Int Int Int) Bool)
(declare-fun Triggersh$ (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun |Triggersh$'| (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun |Triggersh$#triggerStateless| (T@Ref Int Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16856 T@PolymorphicMapType_16856 T@PolymorphicMapType_16877) Bool)
(declare-fun IsPredicateField_9258_9259 (T@Field_34223_34224) Bool)
(declare-fun HasDirectPerm_34223_21331 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_34224) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9258 (T@Field_34223_34224) T@Field_34236_34241)
(declare-fun IsPredicateField_9282_9283 (T@Field_21330_21331) Bool)
(declare-fun HasDirectPerm_21330_21331 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_21331) Bool)
(declare-fun PredicateMaskField_9282 (T@Field_21330_21331) T@Field_23724_23729)
(declare-fun IsPredicateField_9090_57631 (T@Field_9090_21331) Bool)
(declare-fun HasDirectPerm_9090_21331 (T@PolymorphicMapType_16877 T@Ref T@Field_9090_21331) Bool)
(declare-fun PredicateMaskField_9090 (T@Field_9090_21331) T@Field_9090_23729)
(declare-fun IsWandField_34223_63918 (T@Field_34223_34224) Bool)
(declare-fun WandMaskField_34223 (T@Field_34223_34224) T@Field_34236_34241)
(declare-fun IsWandField_21330_63561 (T@Field_21330_21331) Bool)
(declare-fun WandMaskField_21330 (T@Field_21330_21331) T@Field_23724_23729)
(declare-fun IsWandField_9090_63204 (T@Field_9090_21331) Bool)
(declare-fun WandMaskField_9090 (T@Field_9090_21331) T@Field_9090_23729)
(declare-fun succHeap (T@PolymorphicMapType_16856 T@PolymorphicMapType_16856) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16856 T@PolymorphicMapType_16856) Bool)
(declare-fun state (T@PolymorphicMapType_16856 T@PolymorphicMapType_16877) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16877) Bool)
(declare-fun |Triggersi$'| (T@PolymorphicMapType_16856 T@Ref Int Bool) Bool)
(declare-fun |Triggersi$#triggerStateless| (T@Ref Int Bool) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17405)
(declare-fun |Triggersg$'| (T@PolymorphicMapType_16856 T@Ref Int) Bool)
(declare-fun |Triggersg$#triggerStateless| (T@Ref Int) Bool)
(declare-fun Triggersi$ (T@PolymorphicMapType_16856 T@Ref Int Bool) Bool)
(declare-fun Triggers$MonitorInvariant (T@Ref) T@Field_34223_34224)
(declare-fun Triggersvalid$ (T@Ref) T@Field_21330_21331)
(declare-fun |Triggers$MonitorInvariant#trigger_9258| (T@PolymorphicMapType_16856 T@Field_34223_34224) Bool)
(declare-fun |Triggers$MonitorInvariant#everUsed_9258| (T@Field_34223_34224) Bool)
(declare-fun |Triggersvalid$#trigger_9282| (T@PolymorphicMapType_16856 T@Field_21330_21331) Bool)
(declare-fun |Triggersvalid$#everUsed_9282| (T@Field_21330_21331) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Triggersf$#frame| (T@FrameType T@Ref Int Int Int) Bool)
(declare-fun |Triggersh$#frame| (T@FrameType T@Ref Int Int Int) Bool)
(declare-fun |Triggers$MonitorInvariant#sm| (T@Ref) T@Field_34236_34241)
(declare-fun |Triggersvalid$#sm| (T@Ref) T@Field_23724_23729)
(declare-fun dummyHeap () T@PolymorphicMapType_16856)
(declare-fun ZeroMask () T@PolymorphicMapType_16877)
(declare-fun InsidePredicate_34223_34223 (T@Field_34223_34224 T@FrameType T@Field_34223_34224 T@FrameType) Bool)
(declare-fun InsidePredicate_16916_16916 (T@Field_9090_21331 T@FrameType T@Field_9090_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_9282_9282 (T@Field_21330_21331 T@FrameType T@Field_21330_21331 T@FrameType) Bool)
(declare-fun IsPredicateField_9085_645 (T@Field_20259_645) Bool)
(declare-fun IsWandField_9085_645 (T@Field_20259_645) Bool)
(declare-fun IsPredicateField_9088_1216 (T@Field_16916_53) Bool)
(declare-fun IsWandField_9088_1216 (T@Field_16916_53) Bool)
(declare-fun IsPredicateField_9090_9091 (T@Field_16929_16930) Bool)
(declare-fun IsWandField_9090_9091 (T@Field_16929_16930) Bool)
(declare-fun IsPredicateField_9133_1456 (T@Field_20874_1456) Bool)
(declare-fun IsWandField_9133_1456 (T@Field_20874_1456) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_34223_76033 (T@Field_34236_34241) Bool)
(declare-fun IsWandField_34223_76049 (T@Field_34236_34241) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_34223_1456 (T@Field_34223_1456) Bool)
(declare-fun IsWandField_34223_1456 (T@Field_34223_1456) Bool)
(declare-fun IsPredicateField_34223_645 (T@Field_34223_645) Bool)
(declare-fun IsWandField_34223_645 (T@Field_34223_645) Bool)
(declare-fun IsPredicateField_34223_53 (T@Field_34223_53) Bool)
(declare-fun IsWandField_34223_53 (T@Field_34223_53) Bool)
(declare-fun IsPredicateField_34223_9091 (T@Field_34223_9091) Bool)
(declare-fun IsWandField_34223_9091 (T@Field_34223_9091) Bool)
(declare-fun IsPredicateField_9090_75034 (T@Field_9090_23729) Bool)
(declare-fun IsWandField_9090_75050 (T@Field_9090_23729) Bool)
(declare-fun IsPredicateField_9282_74091 (T@Field_23724_23729) Bool)
(declare-fun IsWandField_9282_74107 (T@Field_23724_23729) Bool)
(declare-fun IsPredicateField_9282_1456 (T@Field_21330_1456) Bool)
(declare-fun IsWandField_9282_1456 (T@Field_21330_1456) Bool)
(declare-fun IsPredicateField_9282_645 (T@Field_21330_645) Bool)
(declare-fun IsWandField_9282_645 (T@Field_21330_645) Bool)
(declare-fun IsPredicateField_9282_53 (T@Field_21330_53) Bool)
(declare-fun IsWandField_9282_53 (T@Field_21330_53) Bool)
(declare-fun IsPredicateField_9282_9091 (T@Field_21330_9091) Bool)
(declare-fun IsWandField_9282_9091 (T@Field_21330_9091) Bool)
(declare-fun HasDirectPerm_34223_57343 (T@PolymorphicMapType_16877 T@Ref T@Field_34236_34241) Bool)
(declare-fun HasDirectPerm_34223_1456 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_1456) Bool)
(declare-fun HasDirectPerm_34223_645 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_645) Bool)
(declare-fun HasDirectPerm_34223_53 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_53) Bool)
(declare-fun HasDirectPerm_34223_9091 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_9091) Bool)
(declare-fun HasDirectPerm_21330_55987 (T@PolymorphicMapType_16877 T@Ref T@Field_23724_23729) Bool)
(declare-fun HasDirectPerm_21330_1456 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_1456) Bool)
(declare-fun HasDirectPerm_21330_645 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_645) Bool)
(declare-fun HasDirectPerm_21330_53 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_53) Bool)
(declare-fun HasDirectPerm_21330_9091 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_9091) Bool)
(declare-fun HasDirectPerm_9090_54605 (T@PolymorphicMapType_16877 T@Ref T@Field_9090_23729) Bool)
(declare-fun HasDirectPerm_9090_1456 (T@PolymorphicMapType_16877 T@Ref T@Field_20874_1456) Bool)
(declare-fun HasDirectPerm_9090_645 (T@PolymorphicMapType_16877 T@Ref T@Field_20259_645) Bool)
(declare-fun HasDirectPerm_9090_53 (T@PolymorphicMapType_16877 T@Ref T@Field_16916_53) Bool)
(declare-fun HasDirectPerm_9090_9091 (T@PolymorphicMapType_16877 T@Ref T@Field_16929_16930) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16877 T@PolymorphicMapType_16877 T@PolymorphicMapType_16877) Bool)
(declare-fun |Triggersg$#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun |Triggersi$#frame| (T@FrameType T@Ref Int Bool) Bool)
(declare-fun getPredWandId_9258_9259 (T@Field_34223_34224) Int)
(declare-fun getPredWandId_9282_9283 (T@Field_21330_21331) Int)
(declare-fun Triggersg$ (T@PolymorphicMapType_16856 T@Ref Int) Bool)
(declare-fun InsidePredicate_34223_16916 (T@Field_34223_34224 T@FrameType T@Field_9090_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_34223_9282 (T@Field_34223_34224 T@FrameType T@Field_21330_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_16916_34223 (T@Field_9090_21331 T@FrameType T@Field_34223_34224 T@FrameType) Bool)
(declare-fun InsidePredicate_16916_9282 (T@Field_9090_21331 T@FrameType T@Field_21330_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_9282_34223 (T@Field_21330_21331 T@FrameType T@Field_34223_34224 T@FrameType) Bool)
(declare-fun InsidePredicate_9282_16916 (T@Field_21330_21331 T@FrameType T@Field_9090_21331 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$ par$Triggerstriggers_five$c par$Triggerstriggers_five$d)(distinct old$methodPermission par$Triggerstriggers_one$k$ par$Triggerstriggers_two$k$_1 par$Triggerstriggers_three$k$_2 par$Triggerstriggers_four$k$_3 par$Triggerstriggers_five$k$_4 par$Triggerstriggers_six$k$_5)(distinct Triggersnext$ par$Triggerstriggers_one$this$_6 par$Triggerstriggers_two$this$_7 par$Triggerstriggers_three$this$_8 par$Triggerstriggers_four$this$_9 par$Triggerstriggers_five$this$_10 par$Triggerstriggers_six$this$_11)(distinct par$Triggerstriggers_six$c par$Triggerstriggers_six$d))
)
(assert (forall ((Heap T@PolymorphicMapType_16856) (this$_2 T@Ref) (x Int) (y Int) (z Int) ) (!  (and (= (Triggersf$ Heap this$_2 x y z) (|Triggersf$'| Heap this$_2 x y z)) (dummyFunction_1833 (|Triggersf$#triggerStateless| this$_2 x y z)))
 :qid |stdinbpl.264:15|
 :skolemid |22|
 :pattern ( (Triggersf$ Heap this$_2 x y z))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16856) (this$_3 T@Ref) (x@@0 Int) (y@@0 Int) (z@@0 Int) ) (!  (and (= (Triggersh$ Heap@@0 this$_3 x@@0 y@@0 z@@0) (|Triggersh$'| Heap@@0 this$_3 x@@0 y@@0 z@@0)) (dummyFunction_1833 (|Triggersh$#triggerStateless| this$_3 x@@0 y@@0 z@@0)))
 :qid |stdinbpl.390:15|
 :skolemid |27|
 :pattern ( (Triggersh$ Heap@@0 this$_3 x@@0 y@@0 z@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16856) (ExhaleHeap T@PolymorphicMapType_16856) (Mask T@PolymorphicMapType_16877) (pm_f_52 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask) (=> (and (HasDirectPerm_34223_21331 Mask null pm_f_52) (IsPredicateField_9258_9259 pm_f_52)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52 T@Ref) (f_43 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52 f_43) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@1) o2_52 f_43) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap) o2_52 f_43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap) o2_52 f_43))
)) (forall ((o2_52@@0 T@Ref) (f_43@@0 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@0 f_43@@0) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@1) o2_52@@0 f_43@@0) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@0 f_43@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@0 f_43@@0))
))) (forall ((o2_52@@1 T@Ref) (f_43@@1 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@1 f_43@@1) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@1) o2_52@@1 f_43@@1) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@1 f_43@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@1 f_43@@1))
))) (forall ((o2_52@@2 T@Ref) (f_43@@2 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@2 f_43@@2) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@1) o2_52@@2 f_43@@2) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@2 f_43@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@2 f_43@@2))
))) (forall ((o2_52@@3 T@Ref) (f_43@@3 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@3 f_43@@3) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@1) o2_52@@3 f_43@@3) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@3 f_43@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@3 f_43@@3))
))) (forall ((o2_52@@4 T@Ref) (f_43@@4 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@4 f_43@@4) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@1) o2_52@@4 f_43@@4) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap) o2_52@@4 f_43@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap) o2_52@@4 f_43@@4))
))) (forall ((o2_52@@5 T@Ref) (f_43@@5 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@5 f_43@@5) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@1) o2_52@@5 f_43@@5) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@5 f_43@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@5 f_43@@5))
))) (forall ((o2_52@@6 T@Ref) (f_43@@6 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@6 f_43@@6) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@1) o2_52@@6 f_43@@6) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@6 f_43@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@6 f_43@@6))
))) (forall ((o2_52@@7 T@Ref) (f_43@@7 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@7 f_43@@7) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@1) o2_52@@7 f_43@@7) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@7 f_43@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@7 f_43@@7))
))) (forall ((o2_52@@8 T@Ref) (f_43@@8 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@8 f_43@@8) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@1) o2_52@@8 f_43@@8) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@8 f_43@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@8 f_43@@8))
))) (forall ((o2_52@@9 T@Ref) (f_43@@9 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@9 f_43@@9) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@1) o2_52@@9 f_43@@9) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap) o2_52@@9 f_43@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap) o2_52@@9 f_43@@9))
))) (forall ((o2_52@@10 T@Ref) (f_43@@10 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@10 f_43@@10) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@1) o2_52@@10 f_43@@10) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap) o2_52@@10 f_43@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap) o2_52@@10 f_43@@10))
))) (forall ((o2_52@@11 T@Ref) (f_43@@11 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@11 f_43@@11) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@1) o2_52@@11 f_43@@11) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@11 f_43@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@11 f_43@@11))
))) (forall ((o2_52@@12 T@Ref) (f_43@@12 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@12 f_43@@12) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@1) o2_52@@12 f_43@@12) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@12 f_43@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@12 f_43@@12))
))) (forall ((o2_52@@13 T@Ref) (f_43@@13 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@13 f_43@@13) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@1) o2_52@@13 f_43@@13) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@13 f_43@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@13 f_43@@13))
))) (forall ((o2_52@@14 T@Ref) (f_43@@14 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@14 f_43@@14) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@1) o2_52@@14 f_43@@14) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@14 f_43@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@14 f_43@@14))
))) (forall ((o2_52@@15 T@Ref) (f_43@@15 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@15 f_43@@15) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@1) o2_52@@15 f_43@@15) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@15 f_43@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@15 f_43@@15))
))) (forall ((o2_52@@16 T@Ref) (f_43@@16 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@16 f_43@@16) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) o2_52@@16 f_43@@16) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap) o2_52@@16 f_43@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap) o2_52@@16 f_43@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask) (IsPredicateField_9258_9259 pm_f_52))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16856) (ExhaleHeap@@0 T@PolymorphicMapType_16856) (Mask@@0 T@PolymorphicMapType_16877) (pm_f_52@@0 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_21330_21331 Mask@@0 null pm_f_52@@0) (IsPredicateField_9282_9283 pm_f_52@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@17 T@Ref) (f_43@@17 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@17 f_43@@17) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@2) o2_52@@17 f_43@@17) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@17 f_43@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@17 f_43@@17))
)) (forall ((o2_52@@18 T@Ref) (f_43@@18 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@18 f_43@@18) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@2) o2_52@@18 f_43@@18) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@18 f_43@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@18 f_43@@18))
))) (forall ((o2_52@@19 T@Ref) (f_43@@19 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@19 f_43@@19) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@2) o2_52@@19 f_43@@19) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@19 f_43@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@19 f_43@@19))
))) (forall ((o2_52@@20 T@Ref) (f_43@@20 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@20 f_43@@20) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@2) o2_52@@20 f_43@@20) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@20 f_43@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@20 f_43@@20))
))) (forall ((o2_52@@21 T@Ref) (f_43@@21 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@21 f_43@@21) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@2) o2_52@@21 f_43@@21) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@21 f_43@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@21 f_43@@21))
))) (forall ((o2_52@@22 T@Ref) (f_43@@22 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@22 f_43@@22) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@2) o2_52@@22 f_43@@22) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@22 f_43@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@22 f_43@@22))
))) (forall ((o2_52@@23 T@Ref) (f_43@@23 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@23 f_43@@23) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@2) o2_52@@23 f_43@@23) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@23 f_43@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@23 f_43@@23))
))) (forall ((o2_52@@24 T@Ref) (f_43@@24 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@24 f_43@@24) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@2) o2_52@@24 f_43@@24) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@24 f_43@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@24 f_43@@24))
))) (forall ((o2_52@@25 T@Ref) (f_43@@25 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@25 f_43@@25) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@2) o2_52@@25 f_43@@25) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@25 f_43@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@25 f_43@@25))
))) (forall ((o2_52@@26 T@Ref) (f_43@@26 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@26 f_43@@26) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@2) o2_52@@26 f_43@@26) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@26 f_43@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@26 f_43@@26))
))) (forall ((o2_52@@27 T@Ref) (f_43@@27 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@27 f_43@@27) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@2) o2_52@@27 f_43@@27) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@27 f_43@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@27 f_43@@27))
))) (forall ((o2_52@@28 T@Ref) (f_43@@28 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@28 f_43@@28) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) o2_52@@28 f_43@@28) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@28 f_43@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@28 f_43@@28))
))) (forall ((o2_52@@29 T@Ref) (f_43@@29 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@29 f_43@@29) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@2) o2_52@@29 f_43@@29) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@29 f_43@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@29 f_43@@29))
))) (forall ((o2_52@@30 T@Ref) (f_43@@30 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@30 f_43@@30) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@2) o2_52@@30 f_43@@30) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@30 f_43@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@30 f_43@@30))
))) (forall ((o2_52@@31 T@Ref) (f_43@@31 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@31 f_43@@31) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@2) o2_52@@31 f_43@@31) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@31 f_43@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@31 f_43@@31))
))) (forall ((o2_52@@32 T@Ref) (f_43@@32 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@32 f_43@@32) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@2) o2_52@@32 f_43@@32) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@32 f_43@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@32 f_43@@32))
))) (forall ((o2_52@@33 T@Ref) (f_43@@33 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@33 f_43@@33) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@2) o2_52@@33 f_43@@33) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@33 f_43@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@33 f_43@@33))
))) (forall ((o2_52@@34 T@Ref) (f_43@@34 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@34 f_43@@34) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@2) o2_52@@34 f_43@@34) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@34 f_43@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@34 f_43@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@0) (IsPredicateField_9282_9283 pm_f_52@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16856) (ExhaleHeap@@1 T@PolymorphicMapType_16856) (Mask@@1 T@PolymorphicMapType_16877) (pm_f_52@@1 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_9090_21331 Mask@@1 null pm_f_52@@1) (IsPredicateField_9090_57631 pm_f_52@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@35 T@Ref) (f_43@@35 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@35 f_43@@35) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@3) o2_52@@35 f_43@@35) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@35 f_43@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@35 f_43@@35))
)) (forall ((o2_52@@36 T@Ref) (f_43@@36 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@36 f_43@@36) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@3) o2_52@@36 f_43@@36) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@36 f_43@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@36 f_43@@36))
))) (forall ((o2_52@@37 T@Ref) (f_43@@37 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@37 f_43@@37) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@3) o2_52@@37 f_43@@37) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@37 f_43@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@37 f_43@@37))
))) (forall ((o2_52@@38 T@Ref) (f_43@@38 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@38 f_43@@38) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@3) o2_52@@38 f_43@@38) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@38 f_43@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@38 f_43@@38))
))) (forall ((o2_52@@39 T@Ref) (f_43@@39 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@39 f_43@@39) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@3) o2_52@@39 f_43@@39) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@39 f_43@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@39 f_43@@39))
))) (forall ((o2_52@@40 T@Ref) (f_43@@40 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@40 f_43@@40) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) o2_52@@40 f_43@@40) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@40 f_43@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@40 f_43@@40))
))) (forall ((o2_52@@41 T@Ref) (f_43@@41 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@41 f_43@@41) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@3) o2_52@@41 f_43@@41) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@41 f_43@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@41 f_43@@41))
))) (forall ((o2_52@@42 T@Ref) (f_43@@42 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@42 f_43@@42) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@3) o2_52@@42 f_43@@42) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@42 f_43@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@42 f_43@@42))
))) (forall ((o2_52@@43 T@Ref) (f_43@@43 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@43 f_43@@43) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@3) o2_52@@43 f_43@@43) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@43 f_43@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@43 f_43@@43))
))) (forall ((o2_52@@44 T@Ref) (f_43@@44 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@44 f_43@@44) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@3) o2_52@@44 f_43@@44) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@44 f_43@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@44 f_43@@44))
))) (forall ((o2_52@@45 T@Ref) (f_43@@45 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@45 f_43@@45) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@3) o2_52@@45 f_43@@45) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@45 f_43@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@45 f_43@@45))
))) (forall ((o2_52@@46 T@Ref) (f_43@@46 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@46 f_43@@46) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@3) o2_52@@46 f_43@@46) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@46 f_43@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@46 f_43@@46))
))) (forall ((o2_52@@47 T@Ref) (f_43@@47 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@47 f_43@@47) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@3) o2_52@@47 f_43@@47) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@47 f_43@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@47 f_43@@47))
))) (forall ((o2_52@@48 T@Ref) (f_43@@48 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@48 f_43@@48) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@3) o2_52@@48 f_43@@48) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@48 f_43@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@48 f_43@@48))
))) (forall ((o2_52@@49 T@Ref) (f_43@@49 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@49 f_43@@49) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@3) o2_52@@49 f_43@@49) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@49 f_43@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@49 f_43@@49))
))) (forall ((o2_52@@50 T@Ref) (f_43@@50 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@50 f_43@@50) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@3) o2_52@@50 f_43@@50) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@50 f_43@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@50 f_43@@50))
))) (forall ((o2_52@@51 T@Ref) (f_43@@51 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@51 f_43@@51) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@3) o2_52@@51 f_43@@51) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@51 f_43@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@51 f_43@@51))
))) (forall ((o2_52@@52 T@Ref) (f_43@@52 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@52 f_43@@52) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@3) o2_52@@52 f_43@@52) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@52 f_43@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@52 f_43@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@1) (IsPredicateField_9090_57631 pm_f_52@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16856) (ExhaleHeap@@2 T@PolymorphicMapType_16856) (Mask@@2 T@PolymorphicMapType_16877) (pm_f_52@@2 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_34223_21331 Mask@@2 null pm_f_52@@2) (IsWandField_34223_63918 pm_f_52@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@53 T@Ref) (f_43@@53 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@53 f_43@@53) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@4) o2_52@@53 f_43@@53) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@53 f_43@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@53 f_43@@53))
)) (forall ((o2_52@@54 T@Ref) (f_43@@54 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@54 f_43@@54) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@4) o2_52@@54 f_43@@54) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@54 f_43@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@54 f_43@@54))
))) (forall ((o2_52@@55 T@Ref) (f_43@@55 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@55 f_43@@55) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@4) o2_52@@55 f_43@@55) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@55 f_43@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@55 f_43@@55))
))) (forall ((o2_52@@56 T@Ref) (f_43@@56 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@56 f_43@@56) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@4) o2_52@@56 f_43@@56) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@56 f_43@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@56 f_43@@56))
))) (forall ((o2_52@@57 T@Ref) (f_43@@57 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@57 f_43@@57) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@4) o2_52@@57 f_43@@57) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@57 f_43@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@57 f_43@@57))
))) (forall ((o2_52@@58 T@Ref) (f_43@@58 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@58 f_43@@58) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@4) o2_52@@58 f_43@@58) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@58 f_43@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@58 f_43@@58))
))) (forall ((o2_52@@59 T@Ref) (f_43@@59 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@59 f_43@@59) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@4) o2_52@@59 f_43@@59) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@59 f_43@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@59 f_43@@59))
))) (forall ((o2_52@@60 T@Ref) (f_43@@60 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@60 f_43@@60) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@4) o2_52@@60 f_43@@60) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@60 f_43@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@60 f_43@@60))
))) (forall ((o2_52@@61 T@Ref) (f_43@@61 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@61 f_43@@61) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@4) o2_52@@61 f_43@@61) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@61 f_43@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@61 f_43@@61))
))) (forall ((o2_52@@62 T@Ref) (f_43@@62 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@62 f_43@@62) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@4) o2_52@@62 f_43@@62) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@62 f_43@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@62 f_43@@62))
))) (forall ((o2_52@@63 T@Ref) (f_43@@63 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@63 f_43@@63) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@4) o2_52@@63 f_43@@63) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@63 f_43@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@63 f_43@@63))
))) (forall ((o2_52@@64 T@Ref) (f_43@@64 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@64 f_43@@64) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@4) o2_52@@64 f_43@@64) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@64 f_43@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@64 f_43@@64))
))) (forall ((o2_52@@65 T@Ref) (f_43@@65 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@65 f_43@@65) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@4) o2_52@@65 f_43@@65) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@65 f_43@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@65 f_43@@65))
))) (forall ((o2_52@@66 T@Ref) (f_43@@66 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@66 f_43@@66) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@4) o2_52@@66 f_43@@66) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@66 f_43@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@66 f_43@@66))
))) (forall ((o2_52@@67 T@Ref) (f_43@@67 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@67 f_43@@67) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@4) o2_52@@67 f_43@@67) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@67 f_43@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@67 f_43@@67))
))) (forall ((o2_52@@68 T@Ref) (f_43@@68 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@68 f_43@@68) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@4) o2_52@@68 f_43@@68) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@68 f_43@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@68 f_43@@68))
))) (forall ((o2_52@@69 T@Ref) (f_43@@69 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@69 f_43@@69) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@4) o2_52@@69 f_43@@69) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@69 f_43@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@69 f_43@@69))
))) (forall ((o2_52@@70 T@Ref) (f_43@@70 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@70 f_43@@70) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) o2_52@@70 f_43@@70) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@70 f_43@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@70 f_43@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@2) (IsWandField_34223_63918 pm_f_52@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16856) (ExhaleHeap@@3 T@PolymorphicMapType_16856) (Mask@@3 T@PolymorphicMapType_16877) (pm_f_52@@3 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_21330_21331 Mask@@3 null pm_f_52@@3) (IsWandField_21330_63561 pm_f_52@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@71 T@Ref) (f_43@@71 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@71 f_43@@71) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@5) o2_52@@71 f_43@@71) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@71 f_43@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@71 f_43@@71))
)) (forall ((o2_52@@72 T@Ref) (f_43@@72 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@72 f_43@@72) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@5) o2_52@@72 f_43@@72) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@72 f_43@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@72 f_43@@72))
))) (forall ((o2_52@@73 T@Ref) (f_43@@73 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@73 f_43@@73) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@5) o2_52@@73 f_43@@73) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@73 f_43@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@73 f_43@@73))
))) (forall ((o2_52@@74 T@Ref) (f_43@@74 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@74 f_43@@74) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@5) o2_52@@74 f_43@@74) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@74 f_43@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@74 f_43@@74))
))) (forall ((o2_52@@75 T@Ref) (f_43@@75 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@75 f_43@@75) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@5) o2_52@@75 f_43@@75) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@75 f_43@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@75 f_43@@75))
))) (forall ((o2_52@@76 T@Ref) (f_43@@76 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@76 f_43@@76) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@5) o2_52@@76 f_43@@76) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@76 f_43@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@76 f_43@@76))
))) (forall ((o2_52@@77 T@Ref) (f_43@@77 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@77 f_43@@77) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@5) o2_52@@77 f_43@@77) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@77 f_43@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@77 f_43@@77))
))) (forall ((o2_52@@78 T@Ref) (f_43@@78 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@78 f_43@@78) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@5) o2_52@@78 f_43@@78) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@78 f_43@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@78 f_43@@78))
))) (forall ((o2_52@@79 T@Ref) (f_43@@79 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@79 f_43@@79) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@5) o2_52@@79 f_43@@79) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@79 f_43@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@79 f_43@@79))
))) (forall ((o2_52@@80 T@Ref) (f_43@@80 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@80 f_43@@80) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@5) o2_52@@80 f_43@@80) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@80 f_43@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@80 f_43@@80))
))) (forall ((o2_52@@81 T@Ref) (f_43@@81 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@81 f_43@@81) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@5) o2_52@@81 f_43@@81) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@81 f_43@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@81 f_43@@81))
))) (forall ((o2_52@@82 T@Ref) (f_43@@82 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@82 f_43@@82) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) o2_52@@82 f_43@@82) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@82 f_43@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@82 f_43@@82))
))) (forall ((o2_52@@83 T@Ref) (f_43@@83 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@83 f_43@@83) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@5) o2_52@@83 f_43@@83) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@83 f_43@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@83 f_43@@83))
))) (forall ((o2_52@@84 T@Ref) (f_43@@84 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@84 f_43@@84) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@5) o2_52@@84 f_43@@84) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@84 f_43@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@84 f_43@@84))
))) (forall ((o2_52@@85 T@Ref) (f_43@@85 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@85 f_43@@85) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@5) o2_52@@85 f_43@@85) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@85 f_43@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@85 f_43@@85))
))) (forall ((o2_52@@86 T@Ref) (f_43@@86 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@86 f_43@@86) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@5) o2_52@@86 f_43@@86) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@86 f_43@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@86 f_43@@86))
))) (forall ((o2_52@@87 T@Ref) (f_43@@87 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@87 f_43@@87) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@5) o2_52@@87 f_43@@87) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@87 f_43@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@87 f_43@@87))
))) (forall ((o2_52@@88 T@Ref) (f_43@@88 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@88 f_43@@88) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@5) o2_52@@88 f_43@@88) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@88 f_43@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@88 f_43@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@3) (IsWandField_21330_63561 pm_f_52@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16856) (ExhaleHeap@@4 T@PolymorphicMapType_16856) (Mask@@4 T@PolymorphicMapType_16877) (pm_f_52@@4 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_9090_21331 Mask@@4 null pm_f_52@@4) (IsWandField_9090_63204 pm_f_52@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@89 T@Ref) (f_43@@89 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@89 f_43@@89) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@6) o2_52@@89 f_43@@89) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@89 f_43@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@89 f_43@@89))
)) (forall ((o2_52@@90 T@Ref) (f_43@@90 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@90 f_43@@90) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@6) o2_52@@90 f_43@@90) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@90 f_43@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@90 f_43@@90))
))) (forall ((o2_52@@91 T@Ref) (f_43@@91 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@91 f_43@@91) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@6) o2_52@@91 f_43@@91) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@91 f_43@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@91 f_43@@91))
))) (forall ((o2_52@@92 T@Ref) (f_43@@92 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@92 f_43@@92) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@6) o2_52@@92 f_43@@92) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@92 f_43@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@92 f_43@@92))
))) (forall ((o2_52@@93 T@Ref) (f_43@@93 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@93 f_43@@93) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@6) o2_52@@93 f_43@@93) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@93 f_43@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@93 f_43@@93))
))) (forall ((o2_52@@94 T@Ref) (f_43@@94 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@94 f_43@@94) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) o2_52@@94 f_43@@94) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@94 f_43@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@94 f_43@@94))
))) (forall ((o2_52@@95 T@Ref) (f_43@@95 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@95 f_43@@95) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@6) o2_52@@95 f_43@@95) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@95 f_43@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@95 f_43@@95))
))) (forall ((o2_52@@96 T@Ref) (f_43@@96 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@96 f_43@@96) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@6) o2_52@@96 f_43@@96) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@96 f_43@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@96 f_43@@96))
))) (forall ((o2_52@@97 T@Ref) (f_43@@97 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@97 f_43@@97) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@6) o2_52@@97 f_43@@97) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@97 f_43@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@97 f_43@@97))
))) (forall ((o2_52@@98 T@Ref) (f_43@@98 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@98 f_43@@98) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@6) o2_52@@98 f_43@@98) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@98 f_43@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@98 f_43@@98))
))) (forall ((o2_52@@99 T@Ref) (f_43@@99 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@99 f_43@@99) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@6) o2_52@@99 f_43@@99) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@99 f_43@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@99 f_43@@99))
))) (forall ((o2_52@@100 T@Ref) (f_43@@100 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@100 f_43@@100) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@6) o2_52@@100 f_43@@100) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@100 f_43@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@100 f_43@@100))
))) (forall ((o2_52@@101 T@Ref) (f_43@@101 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@101 f_43@@101) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@6) o2_52@@101 f_43@@101) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@101 f_43@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@101 f_43@@101))
))) (forall ((o2_52@@102 T@Ref) (f_43@@102 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@102 f_43@@102) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@6) o2_52@@102 f_43@@102) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@102 f_43@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@102 f_43@@102))
))) (forall ((o2_52@@103 T@Ref) (f_43@@103 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@103 f_43@@103) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@6) o2_52@@103 f_43@@103) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@103 f_43@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@103 f_43@@103))
))) (forall ((o2_52@@104 T@Ref) (f_43@@104 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@104 f_43@@104) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@6) o2_52@@104 f_43@@104) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@104 f_43@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@104 f_43@@104))
))) (forall ((o2_52@@105 T@Ref) (f_43@@105 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@105 f_43@@105) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@6) o2_52@@105 f_43@@105) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@105 f_43@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@105 f_43@@105))
))) (forall ((o2_52@@106 T@Ref) (f_43@@106 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@106 f_43@@106) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@6) o2_52@@106 f_43@@106) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@106 f_43@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@106 f_43@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@4) (IsWandField_9090_63204 pm_f_52@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16856) (Heap1 T@PolymorphicMapType_16856) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16856) (Mask@@5 T@PolymorphicMapType_16877) ) (!  (=> (state Heap@@7 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@7 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16856) (Heap1@@0 T@PolymorphicMapType_16856) (Heap2 T@PolymorphicMapType_16856) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16856) (this$_5 T@Ref) (x@@1 Int) (y@@1 Bool) ) (! (dummyFunction_1833 (|Triggersi$#triggerStateless| this$_5 x@@1 y@@1))
 :qid |stdinbpl.646:15|
 :skolemid |38|
 :pattern ( (|Triggersi$'| Heap@@8 this$_5 x@@1 y@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_34236_34241) ) (!  (not (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_34223_34224) ) (!  (not (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_34223_1456) ) (!  (not (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_34223_645) ) (!  (not (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_34223_53) ) (!  (not (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_34223_9091) ) (!  (not (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23724_23729) ) (!  (not (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_21330_21331) ) (!  (not (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21330_1456) ) (!  (not (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21330_645) ) (!  (not (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_21330_53) ) (!  (not (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_21330_9091) ) (!  (not (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9090_23729) ) (!  (not (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9090_21331) ) (!  (not (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_20874_1456) ) (!  (not (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20259_645) ) (!  (not (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16916_53) ) (!  (not (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16929_16930) ) (!  (not (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16856) (this$_4 T@Ref) (x@@2 Int) ) (! (dummyFunction_1833 (|Triggersg$#triggerStateless| this$_4 x@@2))
 :qid |stdinbpl.520:15|
 :skolemid |33|
 :pattern ( (|Triggersg$'| Heap@@9 this$_4 x@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16856) (this$_5@@0 T@Ref) (x@@3 Int) (y@@2 Bool) ) (!  (and (= (Triggersi$ Heap@@10 this$_5@@0 x@@3 y@@2) (|Triggersi$'| Heap@@10 this$_5@@0 x@@3 y@@2)) (dummyFunction_1833 (|Triggersi$#triggerStateless| this$_5@@0 x@@3 y@@2)))
 :qid |stdinbpl.642:15|
 :skolemid |37|
 :pattern ( (Triggersi$ Heap@@10 this$_5@@0 x@@3 y@@2))
)))
(assert (forall ((this$ T@Ref) ) (! (IsPredicateField_9258_9259 (Triggers$MonitorInvariant this$))
 :qid |stdinbpl.772:15|
 :skolemid |43|
 :pattern ( (Triggers$MonitorInvariant this$))
)))
(assert (forall ((this$_1 T@Ref) ) (! (IsPredicateField_9282_9283 (Triggersvalid$ this$_1))
 :qid |stdinbpl.822:15|
 :skolemid |49|
 :pattern ( (Triggersvalid$ this$_1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16856) (this$@@0 T@Ref) ) (! (|Triggers$MonitorInvariant#everUsed_9258| (Triggers$MonitorInvariant this$@@0))
 :qid |stdinbpl.791:15|
 :skolemid |47|
 :pattern ( (|Triggers$MonitorInvariant#trigger_9258| Heap@@11 (Triggers$MonitorInvariant this$@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16856) (this$_1@@0 T@Ref) ) (! (|Triggersvalid$#everUsed_9282| (Triggersvalid$ this$_1@@0))
 :qid |stdinbpl.841:15|
 :skolemid |53|
 :pattern ( (|Triggersvalid$#trigger_9282| Heap@@12 (Triggersvalid$ this$_1@@0)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16856) (Mask@@6 T@PolymorphicMapType_16877) (this$_3@@0 T@Ref) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (!  (=> (and (state Heap@@13 Mask@@6) (< AssumeFunctionsAbove 0)) (=> (not (= this$_3@@0 null)) (= (Triggersh$ Heap@@13 this$_3@@0 x@@4 y@@3 z@@1) (|Triggersh$'| Heap@@13 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@13) this$_3@@0 Triggersnext$) x@@4 y@@3 z@@1))))
 :qid |stdinbpl.400:15|
 :skolemid |29|
 :pattern ( (state Heap@@13 Mask@@6) (Triggersh$ Heap@@13 this$_3@@0 x@@4 y@@3 z@@1))
 :pattern ( (state Heap@@13 Mask@@6) (|Triggersh$#triggerStateless| this$_3@@0 x@@4 y@@3 z@@1) (|Triggersvalid$#trigger_9282| Heap@@13 (Triggersvalid$ this$_3@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16856) (Mask@@7 T@PolymorphicMapType_16877) (this$_2@@0 T@Ref) (x@@5 Int) (y@@4 Int) (z@@2 Int) ) (!  (=> (and (state Heap@@14 Mask@@7) (< AssumeFunctionsAbove 2)) (=> (not (= this$_2@@0 null)) (= (Triggersf$ Heap@@14 this$_2@@0 x@@5 y@@4 z@@2) (|Triggersf$'| Heap@@14 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@14) this$_2@@0 Triggersnext$) x@@5 y@@4 z@@2))))
 :qid |stdinbpl.274:15|
 :skolemid |24|
 :pattern ( (state Heap@@14 Mask@@7) (Triggersf$ Heap@@14 this$_2@@0 x@@5 y@@4 z@@2))
 :pattern ( (state Heap@@14 Mask@@7) (|Triggersf$#triggerStateless| this$_2@@0 x@@5 y@@4 z@@2) (|Triggersvalid$#trigger_9282| Heap@@14 (Triggersvalid$ this$_2@@0)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16856) (Mask@@8 T@PolymorphicMapType_16877) (this$_2@@1 T@Ref) (x@@6 Int) (y@@5 Int) (z@@3 Int) ) (!  (=> (state Heap@@15 Mask@@8) (= (|Triggersf$'| Heap@@15 this$_2@@1 x@@6 y@@5 z@@3) (|Triggersf$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@15) null (Triggersvalid$ this$_2@@1)) this$_2@@1 x@@6 y@@5 z@@3)))
 :qid |stdinbpl.281:15|
 :skolemid |25|
 :pattern ( (state Heap@@15 Mask@@8) (|Triggersf$'| Heap@@15 this$_2@@1 x@@6 y@@5 z@@3))
 :pattern ( (state Heap@@15 Mask@@8) (|Triggersf$#triggerStateless| this$_2@@1 x@@6 y@@5 z@@3) (|Triggersvalid$#trigger_9282| Heap@@15 (Triggersvalid$ this$_2@@1)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16856) (Mask@@9 T@PolymorphicMapType_16877) (this$_3@@1 T@Ref) (x@@7 Int) (y@@6 Int) (z@@4 Int) ) (!  (=> (state Heap@@16 Mask@@9) (= (|Triggersh$'| Heap@@16 this$_3@@1 x@@7 y@@6 z@@4) (|Triggersh$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@16) null (Triggersvalid$ this$_3@@1)) this$_3@@1 x@@7 y@@6 z@@4)))
 :qid |stdinbpl.407:15|
 :skolemid |30|
 :pattern ( (state Heap@@16 Mask@@9) (|Triggersh$'| Heap@@16 this$_3@@1 x@@7 y@@6 z@@4))
 :pattern ( (state Heap@@16 Mask@@9) (|Triggersh$#triggerStateless| this$_3@@1 x@@7 y@@6 z@@4) (|Triggersvalid$#trigger_9282| Heap@@16 (Triggersvalid$ this$_3@@1)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16856) (ExhaleHeap@@5 T@PolymorphicMapType_16856) (Mask@@10 T@PolymorphicMapType_16877) (pm_f_52@@5 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@10) (=> (and (HasDirectPerm_34223_21331 Mask@@10 null pm_f_52@@5) (IsPredicateField_9258_9259 pm_f_52@@5)) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@17) null (PredicateMaskField_9258 pm_f_52@@5)) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@5) null (PredicateMaskField_9258 pm_f_52@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@10) (IsPredicateField_9258_9259 pm_f_52@@5) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@5) null (PredicateMaskField_9258 pm_f_52@@5)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16856) (ExhaleHeap@@6 T@PolymorphicMapType_16856) (Mask@@11 T@PolymorphicMapType_16877) (pm_f_52@@6 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@11) (=> (and (HasDirectPerm_21330_21331 Mask@@11 null pm_f_52@@6) (IsPredicateField_9282_9283 pm_f_52@@6)) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@18) null (PredicateMaskField_9282 pm_f_52@@6)) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@6) null (PredicateMaskField_9282 pm_f_52@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@11) (IsPredicateField_9282_9283 pm_f_52@@6) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@6) null (PredicateMaskField_9282 pm_f_52@@6)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16856) (ExhaleHeap@@7 T@PolymorphicMapType_16856) (Mask@@12 T@PolymorphicMapType_16877) (pm_f_52@@7 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@12) (=> (and (HasDirectPerm_9090_21331 Mask@@12 null pm_f_52@@7) (IsPredicateField_9090_57631 pm_f_52@@7)) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@19) null (PredicateMaskField_9090 pm_f_52@@7)) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@7) null (PredicateMaskField_9090 pm_f_52@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@12) (IsPredicateField_9090_57631 pm_f_52@@7) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@7) null (PredicateMaskField_9090 pm_f_52@@7)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16856) (ExhaleHeap@@8 T@PolymorphicMapType_16856) (Mask@@13 T@PolymorphicMapType_16877) (pm_f_52@@8 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@13) (=> (and (HasDirectPerm_34223_21331 Mask@@13 null pm_f_52@@8) (IsWandField_34223_63918 pm_f_52@@8)) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@20) null (WandMaskField_34223 pm_f_52@@8)) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@8) null (WandMaskField_34223 pm_f_52@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@13) (IsWandField_34223_63918 pm_f_52@@8) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@8) null (WandMaskField_34223 pm_f_52@@8)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16856) (ExhaleHeap@@9 T@PolymorphicMapType_16856) (Mask@@14 T@PolymorphicMapType_16877) (pm_f_52@@9 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@14) (=> (and (HasDirectPerm_21330_21331 Mask@@14 null pm_f_52@@9) (IsWandField_21330_63561 pm_f_52@@9)) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@21) null (WandMaskField_21330 pm_f_52@@9)) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@9) null (WandMaskField_21330 pm_f_52@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@14) (IsWandField_21330_63561 pm_f_52@@9) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@9) null (WandMaskField_21330 pm_f_52@@9)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16856) (ExhaleHeap@@10 T@PolymorphicMapType_16856) (Mask@@15 T@PolymorphicMapType_16877) (pm_f_52@@10 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@15) (=> (and (HasDirectPerm_9090_21331 Mask@@15 null pm_f_52@@10) (IsWandField_9090_63204 pm_f_52@@10)) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@22) null (WandMaskField_9090 pm_f_52@@10)) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@10) null (WandMaskField_9090 pm_f_52@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@15) (IsWandField_9090_63204 pm_f_52@@10) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@10) null (WandMaskField_9090 pm_f_52@@10)))
)))
(assert (forall ((this$@@1 T@Ref) (this$2 T@Ref) ) (!  (=> (= (Triggers$MonitorInvariant this$@@1) (Triggers$MonitorInvariant this$2)) (= this$@@1 this$2))
 :qid |stdinbpl.782:15|
 :skolemid |45|
 :pattern ( (Triggers$MonitorInvariant this$@@1) (Triggers$MonitorInvariant this$2))
)))
(assert (forall ((this$@@2 T@Ref) (this$2@@0 T@Ref) ) (!  (=> (= (|Triggers$MonitorInvariant#sm| this$@@2) (|Triggers$MonitorInvariant#sm| this$2@@0)) (= this$@@2 this$2@@0))
 :qid |stdinbpl.786:15|
 :skolemid |46|
 :pattern ( (|Triggers$MonitorInvariant#sm| this$@@2) (|Triggers$MonitorInvariant#sm| this$2@@0))
)))
(assert (forall ((this$_1@@1 T@Ref) (this$_12 T@Ref) ) (!  (=> (= (Triggersvalid$ this$_1@@1) (Triggersvalid$ this$_12)) (= this$_1@@1 this$_12))
 :qid |stdinbpl.832:15|
 :skolemid |51|
 :pattern ( (Triggersvalid$ this$_1@@1) (Triggersvalid$ this$_12))
)))
(assert (forall ((this$_1@@2 T@Ref) (this$_12@@0 T@Ref) ) (!  (=> (= (|Triggersvalid$#sm| this$_1@@2) (|Triggersvalid$#sm| this$_12@@0)) (= this$_1@@2 this$_12@@0))
 :qid |stdinbpl.836:15|
 :skolemid |52|
 :pattern ( (|Triggersvalid$#sm| this$_1@@2) (|Triggersvalid$#sm| this$_12@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16856) (ExhaleHeap@@11 T@PolymorphicMapType_16856) (Mask@@16 T@PolymorphicMapType_16877) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@16) (=> (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@23) o_47 $allocated) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@11) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@16) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@11) o_47 $allocated))
)))
(assert (forall ((p T@Field_34223_34224) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_34223_34223 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34223_34223 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9090_21331) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16916_16916 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16916_16916 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_21330_21331) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9282_9282 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9282_9282 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_9085_645 old$methodPermission)))
(assert  (not (IsWandField_9085_645 old$methodPermission)))
(assert  (not (IsPredicateField_9088_1216 joinable$)))
(assert  (not (IsWandField_9088_1216 joinable$)))
(assert  (not (IsPredicateField_9090_9091 Triggersnext$)))
(assert  (not (IsWandField_9090_9091 Triggersnext$)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_one$this$_6)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_one$this$_6)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_one$k$)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_one$k$)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_two$this$_7)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_two$this$_7)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_two$k$_1)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_two$k$_1)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_three$this$_8)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_three$this$_8)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_three$k$_2)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_three$k$_2)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_four$this$_9)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_four$this$_9)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_four$k$_3)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_four$k$_3)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_five$this$_10)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_five$this$_10)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_five$k$_4)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_five$k$_4)))
(assert  (not (IsPredicateField_9088_1216 par$Triggerstriggers_five$c)))
(assert  (not (IsWandField_9088_1216 par$Triggerstriggers_five$c)))
(assert  (not (IsPredicateField_9088_1216 par$Triggerstriggers_five$d)))
(assert  (not (IsWandField_9088_1216 par$Triggerstriggers_five$d)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_six$this$_11)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_six$this$_11)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_six$k$_5)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_six$k$_5)))
(assert  (not (IsPredicateField_9133_1456 par$Triggerstriggers_six$c)))
(assert  (not (IsWandField_9133_1456 par$Triggerstriggers_six$c)))
(assert  (not (IsPredicateField_9133_1456 par$Triggerstriggers_six$d)))
(assert  (not (IsWandField_9133_1456 par$Triggerstriggers_six$d)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16856) (ExhaleHeap@@12 T@PolymorphicMapType_16856) (Mask@@17 T@PolymorphicMapType_16877) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@17) (succHeap Heap@@24 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_16877) (o_2@@17 T@Ref) (f_4@@17 T@Field_34236_34241) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_34223_76033 f_4@@17))) (not (IsWandField_34223_76049 f_4@@17))) (<= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_16877) (o_2@@18 T@Ref) (f_4@@18 T@Field_34223_1456) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_34223_1456 f_4@@18))) (not (IsWandField_34223_1456 f_4@@18))) (<= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_16877) (o_2@@19 T@Ref) (f_4@@19 T@Field_34223_645) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_34223_645 f_4@@19))) (not (IsWandField_34223_645 f_4@@19))) (<= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_16877) (o_2@@20 T@Ref) (f_4@@20 T@Field_34223_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_34223_53 f_4@@20))) (not (IsWandField_34223_53 f_4@@20))) (<= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_16877) (o_2@@21 T@Ref) (f_4@@21 T@Field_34223_9091) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_34223_9091 f_4@@21))) (not (IsWandField_34223_9091 f_4@@21))) (<= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_16877) (o_2@@22 T@Ref) (f_4@@22 T@Field_34223_34224) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_9258_9259 f_4@@22))) (not (IsWandField_34223_63918 f_4@@22))) (<= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_16877) (o_2@@23 T@Ref) (f_4@@23 T@Field_9090_23729) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_9090_75034 f_4@@23))) (not (IsWandField_9090_75050 f_4@@23))) (<= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_16877) (o_2@@24 T@Ref) (f_4@@24 T@Field_20874_1456) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_9133_1456 f_4@@24))) (not (IsWandField_9133_1456 f_4@@24))) (<= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_16877) (o_2@@25 T@Ref) (f_4@@25 T@Field_20259_645) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_9085_645 f_4@@25))) (not (IsWandField_9085_645 f_4@@25))) (<= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_16877) (o_2@@26 T@Ref) (f_4@@26 T@Field_16916_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_9088_1216 f_4@@26))) (not (IsWandField_9088_1216 f_4@@26))) (<= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_16877) (o_2@@27 T@Ref) (f_4@@27 T@Field_16929_16930) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_9090_9091 f_4@@27))) (not (IsWandField_9090_9091 f_4@@27))) (<= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_16877) (o_2@@28 T@Ref) (f_4@@28 T@Field_9090_21331) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_9090_57631 f_4@@28))) (not (IsWandField_9090_63204 f_4@@28))) (<= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_16877) (o_2@@29 T@Ref) (f_4@@29 T@Field_23724_23729) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@30) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_9282_74091 f_4@@29))) (not (IsWandField_9282_74107 f_4@@29))) (<= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@30) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@30) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_16877) (o_2@@30 T@Ref) (f_4@@30 T@Field_21330_1456) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@31) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_9282_1456 f_4@@30))) (not (IsWandField_9282_1456 f_4@@30))) (<= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@31) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@31) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_16877) (o_2@@31 T@Ref) (f_4@@31 T@Field_21330_645) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@32) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_9282_645 f_4@@31))) (not (IsWandField_9282_645 f_4@@31))) (<= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@32) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@32) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_16877) (o_2@@32 T@Ref) (f_4@@32 T@Field_21330_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@33) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_9282_53 f_4@@32))) (not (IsWandField_9282_53 f_4@@32))) (<= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@33) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@33) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_16877) (o_2@@33 T@Ref) (f_4@@33 T@Field_21330_9091) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@34) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_9282_9091 f_4@@33))) (not (IsWandField_9282_9091 f_4@@33))) (<= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@34) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@34) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_16877) (o_2@@34 T@Ref) (f_4@@34 T@Field_21330_21331) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@35) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_9282_9283 f_4@@34))) (not (IsWandField_21330_63561 f_4@@34))) (<= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@35) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@35) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_16877) (o_2@@35 T@Ref) (f_4@@35 T@Field_34236_34241) ) (! (= (HasDirectPerm_34223_57343 Mask@@36 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@36) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_57343 Mask@@36 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_16877) (o_2@@36 T@Ref) (f_4@@36 T@Field_34223_34224) ) (! (= (HasDirectPerm_34223_21331 Mask@@37 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@37) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_21331 Mask@@37 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_16877) (o_2@@37 T@Ref) (f_4@@37 T@Field_34223_1456) ) (! (= (HasDirectPerm_34223_1456 Mask@@38 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@38) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_1456 Mask@@38 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_16877) (o_2@@38 T@Ref) (f_4@@38 T@Field_34223_645) ) (! (= (HasDirectPerm_34223_645 Mask@@39 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@39) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_645 Mask@@39 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_16877) (o_2@@39 T@Ref) (f_4@@39 T@Field_34223_53) ) (! (= (HasDirectPerm_34223_53 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_53 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_16877) (o_2@@40 T@Ref) (f_4@@40 T@Field_34223_9091) ) (! (= (HasDirectPerm_34223_9091 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_9091 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_16877) (o_2@@41 T@Ref) (f_4@@41 T@Field_23724_23729) ) (! (= (HasDirectPerm_21330_55987 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_55987 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_16877) (o_2@@42 T@Ref) (f_4@@42 T@Field_21330_21331) ) (! (= (HasDirectPerm_21330_21331 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_21331 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_16877) (o_2@@43 T@Ref) (f_4@@43 T@Field_21330_1456) ) (! (= (HasDirectPerm_21330_1456 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_1456 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_16877) (o_2@@44 T@Ref) (f_4@@44 T@Field_21330_645) ) (! (= (HasDirectPerm_21330_645 Mask@@45 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@45) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_645 Mask@@45 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_16877) (o_2@@45 T@Ref) (f_4@@45 T@Field_21330_53) ) (! (= (HasDirectPerm_21330_53 Mask@@46 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@46) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_53 Mask@@46 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_16877) (o_2@@46 T@Ref) (f_4@@46 T@Field_21330_9091) ) (! (= (HasDirectPerm_21330_9091 Mask@@47 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@47) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_9091 Mask@@47 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_16877) (o_2@@47 T@Ref) (f_4@@47 T@Field_9090_23729) ) (! (= (HasDirectPerm_9090_54605 Mask@@48 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@48) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_54605 Mask@@48 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_16877) (o_2@@48 T@Ref) (f_4@@48 T@Field_9090_21331) ) (! (= (HasDirectPerm_9090_21331 Mask@@49 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@49) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_21331 Mask@@49 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_16877) (o_2@@49 T@Ref) (f_4@@49 T@Field_20874_1456) ) (! (= (HasDirectPerm_9090_1456 Mask@@50 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@50) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_1456 Mask@@50 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_16877) (o_2@@50 T@Ref) (f_4@@50 T@Field_20259_645) ) (! (= (HasDirectPerm_9090_645 Mask@@51 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@51) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_645 Mask@@51 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_16877) (o_2@@51 T@Ref) (f_4@@51 T@Field_16916_53) ) (! (= (HasDirectPerm_9090_53 Mask@@52 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@52) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_53 Mask@@52 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_16877) (o_2@@52 T@Ref) (f_4@@52 T@Field_16929_16930) ) (! (= (HasDirectPerm_9090_9091 Mask@@53 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@53) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_9091 Mask@@53 o_2@@52 f_4@@52))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_16856) (this$_2@@2 T@Ref) (x@@8 Int) (y@@7 Int) (z@@5 Int) ) (! (dummyFunction_1833 (|Triggersf$#triggerStateless| this$_2@@2 x@@8 y@@7 z@@5))
 :qid |stdinbpl.268:15|
 :skolemid |23|
 :pattern ( (|Triggersf$'| Heap@@25 this$_2@@2 x@@8 y@@7 z@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16856) (this$_3@@2 T@Ref) (x@@9 Int) (y@@8 Int) (z@@6 Int) ) (! (dummyFunction_1833 (|Triggersh$#triggerStateless| this$_3@@2 x@@9 y@@8 z@@6))
 :qid |stdinbpl.394:15|
 :skolemid |28|
 :pattern ( (|Triggersh$'| Heap@@26 this$_3@@2 x@@9 y@@8 z@@6))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16856) (ExhaleHeap@@13 T@PolymorphicMapType_16856) (Mask@@54 T@PolymorphicMapType_16877) (o_47@@0 T@Ref) (f_43@@107 T@Field_34236_34241) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@13 Mask@@54) (=> (HasDirectPerm_34223_57343 Mask@@54 o_47@@0 f_43@@107) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@27) o_47@@0 f_43@@107) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@13) o_47@@0 f_43@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@13 Mask@@54) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@13) o_47@@0 f_43@@107))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16856) (ExhaleHeap@@14 T@PolymorphicMapType_16856) (Mask@@55 T@PolymorphicMapType_16877) (o_47@@1 T@Ref) (f_43@@108 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@14 Mask@@55) (=> (HasDirectPerm_34223_21331 Mask@@55 o_47@@1 f_43@@108) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@28) o_47@@1 f_43@@108) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@14) o_47@@1 f_43@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@14 Mask@@55) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@14) o_47@@1 f_43@@108))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16856) (ExhaleHeap@@15 T@PolymorphicMapType_16856) (Mask@@56 T@PolymorphicMapType_16877) (o_47@@2 T@Ref) (f_43@@109 T@Field_34223_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@15 Mask@@56) (=> (HasDirectPerm_34223_1456 Mask@@56 o_47@@2 f_43@@109) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@29) o_47@@2 f_43@@109) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@15) o_47@@2 f_43@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@15 Mask@@56) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@15) o_47@@2 f_43@@109))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16856) (ExhaleHeap@@16 T@PolymorphicMapType_16856) (Mask@@57 T@PolymorphicMapType_16877) (o_47@@3 T@Ref) (f_43@@110 T@Field_34223_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@16 Mask@@57) (=> (HasDirectPerm_34223_645 Mask@@57 o_47@@3 f_43@@110) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@30) o_47@@3 f_43@@110) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@16) o_47@@3 f_43@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@16 Mask@@57) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@16) o_47@@3 f_43@@110))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_16856) (ExhaleHeap@@17 T@PolymorphicMapType_16856) (Mask@@58 T@PolymorphicMapType_16877) (o_47@@4 T@Ref) (f_43@@111 T@Field_34223_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_34223_53 Mask@@58 o_47@@4 f_43@@111) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@31) o_47@@4 f_43@@111) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@17) o_47@@4 f_43@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@17) o_47@@4 f_43@@111))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_16856) (ExhaleHeap@@18 T@PolymorphicMapType_16856) (Mask@@59 T@PolymorphicMapType_16877) (o_47@@5 T@Ref) (f_43@@112 T@Field_34223_9091) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_34223_9091 Mask@@59 o_47@@5 f_43@@112) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@32) o_47@@5 f_43@@112) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@18) o_47@@5 f_43@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@18) o_47@@5 f_43@@112))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_16856) (ExhaleHeap@@19 T@PolymorphicMapType_16856) (Mask@@60 T@PolymorphicMapType_16877) (o_47@@6 T@Ref) (f_43@@113 T@Field_23724_23729) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_21330_55987 Mask@@60 o_47@@6 f_43@@113) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@33) o_47@@6 f_43@@113) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@19) o_47@@6 f_43@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@19) o_47@@6 f_43@@113))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_16856) (ExhaleHeap@@20 T@PolymorphicMapType_16856) (Mask@@61 T@PolymorphicMapType_16877) (o_47@@7 T@Ref) (f_43@@114 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_21330_21331 Mask@@61 o_47@@7 f_43@@114) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@34) o_47@@7 f_43@@114) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@20) o_47@@7 f_43@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@20) o_47@@7 f_43@@114))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_16856) (ExhaleHeap@@21 T@PolymorphicMapType_16856) (Mask@@62 T@PolymorphicMapType_16877) (o_47@@8 T@Ref) (f_43@@115 T@Field_21330_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_21330_1456 Mask@@62 o_47@@8 f_43@@115) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@35) o_47@@8 f_43@@115) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@21) o_47@@8 f_43@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@21) o_47@@8 f_43@@115))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_16856) (ExhaleHeap@@22 T@PolymorphicMapType_16856) (Mask@@63 T@PolymorphicMapType_16877) (o_47@@9 T@Ref) (f_43@@116 T@Field_21330_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_21330_645 Mask@@63 o_47@@9 f_43@@116) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@36) o_47@@9 f_43@@116) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@22) o_47@@9 f_43@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@22) o_47@@9 f_43@@116))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_16856) (ExhaleHeap@@23 T@PolymorphicMapType_16856) (Mask@@64 T@PolymorphicMapType_16877) (o_47@@10 T@Ref) (f_43@@117 T@Field_21330_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_21330_53 Mask@@64 o_47@@10 f_43@@117) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@37) o_47@@10 f_43@@117) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@23) o_47@@10 f_43@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@23) o_47@@10 f_43@@117))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_16856) (ExhaleHeap@@24 T@PolymorphicMapType_16856) (Mask@@65 T@PolymorphicMapType_16877) (o_47@@11 T@Ref) (f_43@@118 T@Field_21330_9091) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_21330_9091 Mask@@65 o_47@@11 f_43@@118) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@38) o_47@@11 f_43@@118) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@24) o_47@@11 f_43@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@24) o_47@@11 f_43@@118))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_16856) (ExhaleHeap@@25 T@PolymorphicMapType_16856) (Mask@@66 T@PolymorphicMapType_16877) (o_47@@12 T@Ref) (f_43@@119 T@Field_9090_23729) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_9090_54605 Mask@@66 o_47@@12 f_43@@119) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@39) o_47@@12 f_43@@119) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@25) o_47@@12 f_43@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@25) o_47@@12 f_43@@119))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_16856) (ExhaleHeap@@26 T@PolymorphicMapType_16856) (Mask@@67 T@PolymorphicMapType_16877) (o_47@@13 T@Ref) (f_43@@120 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_9090_21331 Mask@@67 o_47@@13 f_43@@120) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@40) o_47@@13 f_43@@120) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@26) o_47@@13 f_43@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@26) o_47@@13 f_43@@120))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_16856) (ExhaleHeap@@27 T@PolymorphicMapType_16856) (Mask@@68 T@PolymorphicMapType_16877) (o_47@@14 T@Ref) (f_43@@121 T@Field_20874_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_9090_1456 Mask@@68 o_47@@14 f_43@@121) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@41) o_47@@14 f_43@@121) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@27) o_47@@14 f_43@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@27) o_47@@14 f_43@@121))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_16856) (ExhaleHeap@@28 T@PolymorphicMapType_16856) (Mask@@69 T@PolymorphicMapType_16877) (o_47@@15 T@Ref) (f_43@@122 T@Field_20259_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_9090_645 Mask@@69 o_47@@15 f_43@@122) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@42) o_47@@15 f_43@@122) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@28) o_47@@15 f_43@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@28) o_47@@15 f_43@@122))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_16856) (ExhaleHeap@@29 T@PolymorphicMapType_16856) (Mask@@70 T@PolymorphicMapType_16877) (o_47@@16 T@Ref) (f_43@@123 T@Field_16916_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_9090_53 Mask@@70 o_47@@16 f_43@@123) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@43) o_47@@16 f_43@@123) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@29) o_47@@16 f_43@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@29) o_47@@16 f_43@@123))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_16856) (ExhaleHeap@@30 T@PolymorphicMapType_16856) (Mask@@71 T@PolymorphicMapType_16877) (o_47@@17 T@Ref) (f_43@@124 T@Field_16929_16930) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_9090_9091 Mask@@71 o_47@@17 f_43@@124) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@44) o_47@@17 f_43@@124) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@30) o_47@@17 f_43@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@30) o_47@@17 f_43@@124))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_34236_34241) ) (! (= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_34223_1456) ) (! (= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_34223_645) ) (! (= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_34223_53) ) (! (= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_34223_9091) ) (! (= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_34223_34224) ) (! (= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_9090_23729) ) (! (= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_20874_1456) ) (! (= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_20259_645) ) (! (= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_16916_53) ) (! (= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_16929_16930) ) (! (= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_9090_21331) ) (! (= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_23724_23729) ) (! (= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_21330_1456) ) (! (= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_21330_645) ) (! (= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_21330_53) ) (! (= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_21330_9091) ) (! (= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_21330_21331) ) (! (= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16877) (SummandMask1 T@PolymorphicMapType_16877) (SummandMask2 T@PolymorphicMapType_16877) (o_2@@71 T@Ref) (f_4@@71 T@Field_34236_34241) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16877) (SummandMask1@@0 T@PolymorphicMapType_16877) (SummandMask2@@0 T@PolymorphicMapType_16877) (o_2@@72 T@Ref) (f_4@@72 T@Field_34223_1456) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16877) (SummandMask1@@1 T@PolymorphicMapType_16877) (SummandMask2@@1 T@PolymorphicMapType_16877) (o_2@@73 T@Ref) (f_4@@73 T@Field_34223_645) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16877) (SummandMask1@@2 T@PolymorphicMapType_16877) (SummandMask2@@2 T@PolymorphicMapType_16877) (o_2@@74 T@Ref) (f_4@@74 T@Field_34223_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16877) (SummandMask1@@3 T@PolymorphicMapType_16877) (SummandMask2@@3 T@PolymorphicMapType_16877) (o_2@@75 T@Ref) (f_4@@75 T@Field_34223_9091) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_16877) (SummandMask1@@4 T@PolymorphicMapType_16877) (SummandMask2@@4 T@PolymorphicMapType_16877) (o_2@@76 T@Ref) (f_4@@76 T@Field_34223_34224) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_16877) (SummandMask1@@5 T@PolymorphicMapType_16877) (SummandMask2@@5 T@PolymorphicMapType_16877) (o_2@@77 T@Ref) (f_4@@77 T@Field_9090_23729) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_16877) (SummandMask1@@6 T@PolymorphicMapType_16877) (SummandMask2@@6 T@PolymorphicMapType_16877) (o_2@@78 T@Ref) (f_4@@78 T@Field_20874_1456) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_16877) (SummandMask1@@7 T@PolymorphicMapType_16877) (SummandMask2@@7 T@PolymorphicMapType_16877) (o_2@@79 T@Ref) (f_4@@79 T@Field_20259_645) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_16877) (SummandMask1@@8 T@PolymorphicMapType_16877) (SummandMask2@@8 T@PolymorphicMapType_16877) (o_2@@80 T@Ref) (f_4@@80 T@Field_16916_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_16877) (SummandMask1@@9 T@PolymorphicMapType_16877) (SummandMask2@@9 T@PolymorphicMapType_16877) (o_2@@81 T@Ref) (f_4@@81 T@Field_16929_16930) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_16877) (SummandMask1@@10 T@PolymorphicMapType_16877) (SummandMask2@@10 T@PolymorphicMapType_16877) (o_2@@82 T@Ref) (f_4@@82 T@Field_9090_21331) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_16877) (SummandMask1@@11 T@PolymorphicMapType_16877) (SummandMask2@@11 T@PolymorphicMapType_16877) (o_2@@83 T@Ref) (f_4@@83 T@Field_23724_23729) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_16877) (SummandMask1@@12 T@PolymorphicMapType_16877) (SummandMask2@@12 T@PolymorphicMapType_16877) (o_2@@84 T@Ref) (f_4@@84 T@Field_21330_1456) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_16877) (SummandMask1@@13 T@PolymorphicMapType_16877) (SummandMask2@@13 T@PolymorphicMapType_16877) (o_2@@85 T@Ref) (f_4@@85 T@Field_21330_645) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_16877) (SummandMask1@@14 T@PolymorphicMapType_16877) (SummandMask2@@14 T@PolymorphicMapType_16877) (o_2@@86 T@Ref) (f_4@@86 T@Field_21330_53) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_16877) (SummandMask1@@15 T@PolymorphicMapType_16877) (SummandMask2@@15 T@PolymorphicMapType_16877) (o_2@@87 T@Ref) (f_4@@87 T@Field_21330_9091) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_16877) (SummandMask1@@16 T@PolymorphicMapType_16877) (SummandMask2@@16 T@PolymorphicMapType_16877) (o_2@@88 T@Ref) (f_4@@88 T@Field_21330_21331) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_16856) (Mask@@72 T@PolymorphicMapType_16877) (this$_4@@0 T@Ref) (x@@10 Int) ) (!  (=> (state Heap@@45 Mask@@72) (= (|Triggersg$'| Heap@@45 this$_4@@0 x@@10) (|Triggersg$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@45) null (Triggersvalid$ this$_4@@0)) this$_4@@0 x@@10)))
 :qid |stdinbpl.533:15|
 :skolemid |35|
 :pattern ( (state Heap@@45 Mask@@72) (|Triggersg$'| Heap@@45 this$_4@@0 x@@10))
 :pattern ( (state Heap@@45 Mask@@72) (|Triggersg$#triggerStateless| this$_4@@0 x@@10) (|Triggersvalid$#trigger_9282| Heap@@45 (Triggersvalid$ this$_4@@0)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_16856) (Mask@@73 T@PolymorphicMapType_16877) (this$_5@@1 T@Ref) (x@@11 Int) (y@@9 Bool) ) (!  (=> (state Heap@@46 Mask@@73) (= (|Triggersi$'| Heap@@46 this$_5@@1 x@@11 y@@9) (|Triggersi$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@46) null (Triggersvalid$ this$_5@@1)) this$_5@@1 x@@11 y@@9)))
 :qid |stdinbpl.659:15|
 :skolemid |40|
 :pattern ( (state Heap@@46 Mask@@73) (|Triggersi$'| Heap@@46 this$_5@@1 x@@11 y@@9))
 :pattern ( (state Heap@@46 Mask@@73) (|Triggersi$#triggerStateless| this$_5@@1 x@@11 y@@9) (|Triggersvalid$#trigger_9282| Heap@@46 (Triggersvalid$ this$_5@@1)))
)))
(assert (forall ((this$@@3 T@Ref) ) (! (= (getPredWandId_9258_9259 (Triggers$MonitorInvariant this$@@3)) 0)
 :qid |stdinbpl.776:15|
 :skolemid |44|
 :pattern ( (Triggers$MonitorInvariant this$@@3))
)))
(assert (forall ((this$_1@@3 T@Ref) ) (! (= (getPredWandId_9282_9283 (Triggersvalid$ this$_1@@3)) 1)
 :qid |stdinbpl.826:15|
 :skolemid |50|
 :pattern ( (Triggersvalid$ this$_1@@3))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_16856) (Mask@@74 T@PolymorphicMapType_16877) (this$_5@@2 T@Ref) (x@@12 Int) (y@@10 Bool) ) (!  (=> (and (state Heap@@47 Mask@@74) (< AssumeFunctionsAbove 1)) (=> (not (= this$_5@@2 null)) (= (Triggersi$ Heap@@47 this$_5@@2 x@@12 y@@10) (|Triggersi$'| Heap@@47 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@47) this$_5@@2 Triggersnext$) x@@12 y@@10))))
 :qid |stdinbpl.652:15|
 :skolemid |39|
 :pattern ( (state Heap@@47 Mask@@74) (Triggersi$ Heap@@47 this$_5@@2 x@@12 y@@10))
 :pattern ( (state Heap@@47 Mask@@74) (|Triggersi$#triggerStateless| this$_5@@2 x@@12 y@@10) (|Triggersvalid$#trigger_9282| Heap@@47 (Triggersvalid$ this$_5@@2)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_16856) (Mask@@75 T@PolymorphicMapType_16877) (this$_4@@1 T@Ref) (x@@13 Int) ) (!  (=> (and (state Heap@@48 Mask@@75) (< AssumeFunctionsAbove 3)) (=> (not (= this$_4@@1 null)) (= (Triggersg$ Heap@@48 this$_4@@1 x@@13) (|Triggersg$'| Heap@@48 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@48) this$_4@@1 Triggersnext$) x@@13))))
 :qid |stdinbpl.526:15|
 :skolemid |34|
 :pattern ( (state Heap@@48 Mask@@75) (Triggersg$ Heap@@48 this$_4@@1 x@@13))
 :pattern ( (state Heap@@48 Mask@@75) (|Triggersg$#triggerStateless| this$_4@@1 x@@13) (|Triggersvalid$#trigger_9282| Heap@@48 (Triggersvalid$ this$_4@@1)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_16856) (o_42 T@Ref) (f_45 T@Field_34223_1456) (v Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@49) (store (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@49) o_42 f_45 v) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@49) (store (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@49) o_42 f_45 v) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_16856) (o_42@@0 T@Ref) (f_45@@0 T@Field_34223_645) (v@@0 Real) ) (! (succHeap Heap@@50 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@50) (store (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@50) o_42@@0 f_45@@0 v@@0) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@50) (store (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@50) o_42@@0 f_45@@0 v@@0) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_16856) (o_42@@1 T@Ref) (f_45@@1 T@Field_34236_34241) (v@@1 T@PolymorphicMapType_17405) ) (! (succHeap Heap@@51 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@51) (store (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@51) o_42@@1 f_45@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@51) (store (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@51) o_42@@1 f_45@@1 v@@1)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_16856) (o_42@@2 T@Ref) (f_45@@2 T@Field_34223_34224) (v@@2 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@52) (store (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@52) o_42@@2 f_45@@2 v@@2) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@52) (store (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@52) o_42@@2 f_45@@2 v@@2) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_16856) (o_42@@3 T@Ref) (f_45@@3 T@Field_34223_9091) (v@@3 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@53) (store (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@53) o_42@@3 f_45@@3 v@@3) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@53) (store (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@53) o_42@@3 f_45@@3 v@@3) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_16856) (o_42@@4 T@Ref) (f_45@@4 T@Field_34223_53) (v@@4 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@54) (store (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@54) o_42@@4 f_45@@4 v@@4) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@54) (store (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@54) o_42@@4 f_45@@4 v@@4) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_16856) (o_42@@5 T@Ref) (f_45@@5 T@Field_21330_1456) (v@@5 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@55) (store (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@55) o_42@@5 f_45@@5 v@@5) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@55) (store (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@55) o_42@@5 f_45@@5 v@@5) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_16856) (o_42@@6 T@Ref) (f_45@@6 T@Field_21330_645) (v@@6 Real) ) (! (succHeap Heap@@56 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@56) (store (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@56) o_42@@6 f_45@@6 v@@6) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@56) (store (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@56) o_42@@6 f_45@@6 v@@6) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_16856) (o_42@@7 T@Ref) (f_45@@7 T@Field_23724_23729) (v@@7 T@PolymorphicMapType_17405) ) (! (succHeap Heap@@57 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@57) (store (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@57) o_42@@7 f_45@@7 v@@7) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@57) (store (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@57) o_42@@7 f_45@@7 v@@7) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_16856) (o_42@@8 T@Ref) (f_45@@8 T@Field_21330_21331) (v@@8 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@58) (store (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@58) o_42@@8 f_45@@8 v@@8) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@58) (store (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@58) o_42@@8 f_45@@8 v@@8) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_16856) (o_42@@9 T@Ref) (f_45@@9 T@Field_21330_9091) (v@@9 T@Ref) ) (! (succHeap Heap@@59 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@59) (store (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@59) o_42@@9 f_45@@9 v@@9) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@59) (store (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@59) o_42@@9 f_45@@9 v@@9) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_16856) (o_42@@10 T@Ref) (f_45@@10 T@Field_21330_53) (v@@10 Bool) ) (! (succHeap Heap@@60 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@60) (store (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@60) o_42@@10 f_45@@10 v@@10) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@60) (store (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@60) o_42@@10 f_45@@10 v@@10) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_16856) (o_42@@11 T@Ref) (f_45@@11 T@Field_20874_1456) (v@@11 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@61) (store (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@61) o_42@@11 f_45@@11 v@@11) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@61) (store (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@61) o_42@@11 f_45@@11 v@@11) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_16856) (o_42@@12 T@Ref) (f_45@@12 T@Field_20259_645) (v@@12 Real) ) (! (succHeap Heap@@62 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@62) (store (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@62) o_42@@12 f_45@@12 v@@12) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@62) (store (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@62) o_42@@12 f_45@@12 v@@12) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_16856) (o_42@@13 T@Ref) (f_45@@13 T@Field_9090_23729) (v@@13 T@PolymorphicMapType_17405) ) (! (succHeap Heap@@63 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@63) (store (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@63) o_42@@13 f_45@@13 v@@13) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@63) (store (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@63) o_42@@13 f_45@@13 v@@13) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_16856) (o_42@@14 T@Ref) (f_45@@14 T@Field_9090_21331) (v@@14 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@64) (store (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@64) o_42@@14 f_45@@14 v@@14) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@64) (store (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@64) o_42@@14 f_45@@14 v@@14) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_16856) (o_42@@15 T@Ref) (f_45@@15 T@Field_16929_16930) (v@@15 T@Ref) ) (! (succHeap Heap@@65 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@65) (store (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@65) o_42@@15 f_45@@15 v@@15) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@65) (store (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@65) o_42@@15 f_45@@15 v@@15) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_16856) (o_42@@16 T@Ref) (f_45@@16 T@Field_16916_53) (v@@16 Bool) ) (! (succHeap Heap@@66 (PolymorphicMapType_16856 (store (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@66) o_42@@16 f_45@@16 v@@16) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (store (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@66) o_42@@16 f_45@@16 v@@16) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@66)))
)))
(assert (forall ((this$@@4 T@Ref) ) (! (= (PredicateMaskField_9258 (Triggers$MonitorInvariant this$@@4)) (|Triggers$MonitorInvariant#sm| this$@@4))
 :qid |stdinbpl.768:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_9258 (Triggers$MonitorInvariant this$@@4)))
)))
(assert (forall ((this$_1@@4 T@Ref) ) (! (= (PredicateMaskField_9282 (Triggersvalid$ this$_1@@4)) (|Triggersvalid$#sm| this$_1@@4))
 :qid |stdinbpl.818:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_9282 (Triggersvalid$ this$_1@@4)))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o_42@@17 T@Ref) (f_48 T@Field_16929_16930) (Heap@@67 T@PolymorphicMapType_16856) ) (!  (=> (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@67) o_42@@17 $allocated) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@67) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@67) o_42@@17 f_48) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@67) o_42@@17 f_48))
)))
(assert (forall ((p@@3 T@Field_34223_34224) (v_1@@2 T@FrameType) (q T@Field_34223_34224) (w@@2 T@FrameType) (r T@Field_34223_34224) (u T@FrameType) ) (!  (=> (and (InsidePredicate_34223_34223 p@@3 v_1@@2 q w@@2) (InsidePredicate_34223_34223 q w@@2 r u)) (InsidePredicate_34223_34223 p@@3 v_1@@2 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_34223 p@@3 v_1@@2 q w@@2) (InsidePredicate_34223_34223 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_34223_34224) (v_1@@3 T@FrameType) (q@@0 T@Field_34223_34224) (w@@3 T@FrameType) (r@@0 T@Field_9090_21331) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_34223 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_34223_16916 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_34223_16916 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_34223 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_34223_16916 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_34223_34224) (v_1@@4 T@FrameType) (q@@1 T@Field_34223_34224) (w@@4 T@FrameType) (r@@1 T@Field_21330_21331) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_34223 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_34223_9282 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_34223_9282 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_34223 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_34223_9282 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_34223_34224) (v_1@@5 T@FrameType) (q@@2 T@Field_9090_21331) (w@@5 T@FrameType) (r@@2 T@Field_34223_34224) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_16916 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16916_34223 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_34223_34223 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_16916 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16916_34223 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_34223_34224) (v_1@@6 T@FrameType) (q@@3 T@Field_9090_21331) (w@@6 T@FrameType) (r@@3 T@Field_9090_21331) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_16916 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16916_16916 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_34223_16916 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_16916 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16916_16916 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_34223_34224) (v_1@@7 T@FrameType) (q@@4 T@Field_9090_21331) (w@@7 T@FrameType) (r@@4 T@Field_21330_21331) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_16916 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16916_9282 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_34223_9282 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_16916 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16916_9282 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_34223_34224) (v_1@@8 T@FrameType) (q@@5 T@Field_21330_21331) (w@@8 T@FrameType) (r@@5 T@Field_34223_34224) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_9282 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9282_34223 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_34223_34223 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_9282 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9282_34223 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_34223_34224) (v_1@@9 T@FrameType) (q@@6 T@Field_21330_21331) (w@@9 T@FrameType) (r@@6 T@Field_9090_21331) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_9282 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9282_16916 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_34223_16916 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_9282 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9282_16916 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_34223_34224) (v_1@@10 T@FrameType) (q@@7 T@Field_21330_21331) (w@@10 T@FrameType) (r@@7 T@Field_21330_21331) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_9282 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9282_9282 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_34223_9282 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_9282 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9282_9282 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9090_21331) (v_1@@11 T@FrameType) (q@@8 T@Field_34223_34224) (w@@11 T@FrameType) (r@@8 T@Field_34223_34224) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_34223 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_34223_34223 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16916_34223 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_34223 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_34223_34223 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9090_21331) (v_1@@12 T@FrameType) (q@@9 T@Field_34223_34224) (w@@12 T@FrameType) (r@@9 T@Field_9090_21331) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_34223 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_34223_16916 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16916_16916 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_34223 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_34223_16916 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9090_21331) (v_1@@13 T@FrameType) (q@@10 T@Field_34223_34224) (w@@13 T@FrameType) (r@@10 T@Field_21330_21331) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_34223 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_34223_9282 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16916_9282 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_34223 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_34223_9282 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9090_21331) (v_1@@14 T@FrameType) (q@@11 T@Field_9090_21331) (w@@14 T@FrameType) (r@@11 T@Field_34223_34224) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_16916 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16916_34223 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16916_34223 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_16916 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16916_34223 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9090_21331) (v_1@@15 T@FrameType) (q@@12 T@Field_9090_21331) (w@@15 T@FrameType) (r@@12 T@Field_9090_21331) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_16916 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16916_16916 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16916_16916 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_16916 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16916_16916 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9090_21331) (v_1@@16 T@FrameType) (q@@13 T@Field_9090_21331) (w@@16 T@FrameType) (r@@13 T@Field_21330_21331) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_16916 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16916_9282 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16916_9282 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_16916 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16916_9282 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9090_21331) (v_1@@17 T@FrameType) (q@@14 T@Field_21330_21331) (w@@17 T@FrameType) (r@@14 T@Field_34223_34224) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_9282 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9282_34223 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16916_34223 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_9282 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9282_34223 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9090_21331) (v_1@@18 T@FrameType) (q@@15 T@Field_21330_21331) (w@@18 T@FrameType) (r@@15 T@Field_9090_21331) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_9282 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9282_16916 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16916_16916 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_9282 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9282_16916 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9090_21331) (v_1@@19 T@FrameType) (q@@16 T@Field_21330_21331) (w@@19 T@FrameType) (r@@16 T@Field_21330_21331) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_9282 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9282_9282 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16916_9282 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_9282 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9282_9282 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_21330_21331) (v_1@@20 T@FrameType) (q@@17 T@Field_34223_34224) (w@@20 T@FrameType) (r@@17 T@Field_34223_34224) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_34223 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_34223_34223 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9282_34223 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_34223 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_34223_34223 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_21330_21331) (v_1@@21 T@FrameType) (q@@18 T@Field_34223_34224) (w@@21 T@FrameType) (r@@18 T@Field_9090_21331) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_34223 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_34223_16916 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9282_16916 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_34223 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_34223_16916 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_21330_21331) (v_1@@22 T@FrameType) (q@@19 T@Field_34223_34224) (w@@22 T@FrameType) (r@@19 T@Field_21330_21331) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_34223 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_34223_9282 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9282_9282 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_34223 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_34223_9282 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_21330_21331) (v_1@@23 T@FrameType) (q@@20 T@Field_9090_21331) (w@@23 T@FrameType) (r@@20 T@Field_34223_34224) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_16916 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16916_34223 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9282_34223 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_16916 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16916_34223 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_21330_21331) (v_1@@24 T@FrameType) (q@@21 T@Field_9090_21331) (w@@24 T@FrameType) (r@@21 T@Field_9090_21331) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_16916 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16916_16916 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9282_16916 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_16916 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16916_16916 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_21330_21331) (v_1@@25 T@FrameType) (q@@22 T@Field_9090_21331) (w@@25 T@FrameType) (r@@22 T@Field_21330_21331) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_16916 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16916_9282 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9282_9282 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_16916 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16916_9282 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_21330_21331) (v_1@@26 T@FrameType) (q@@23 T@Field_21330_21331) (w@@26 T@FrameType) (r@@23 T@Field_34223_34224) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_9282 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9282_34223 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9282_34223 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_9282 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9282_34223 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_21330_21331) (v_1@@27 T@FrameType) (q@@24 T@Field_21330_21331) (w@@27 T@FrameType) (r@@24 T@Field_9090_21331) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_9282 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9282_16916 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9282_16916 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_9282 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9282_16916 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_21330_21331) (v_1@@28 T@FrameType) (q@@25 T@Field_21330_21331) (w@@28 T@FrameType) (r@@25 T@Field_21330_21331) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_9282 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9282_9282 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9282_9282 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_9282 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9282_9282 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@68 T@PolymorphicMapType_16856) (this$_4@@2 T@Ref) (x@@14 Int) ) (!  (and (= (Triggersg$ Heap@@68 this$_4@@2 x@@14) (|Triggersg$'| Heap@@68 this$_4@@2 x@@14)) (dummyFunction_1833 (|Triggersg$#triggerStateless| this$_4@@2 x@@14)))
 :qid |stdinbpl.516:15|
 :skolemid |32|
 :pattern ( (Triggersg$ Heap@@68 this$_4@@2 x@@14))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this$_7 () T@Ref)
(declare-fun PostMask@0 () T@PolymorphicMapType_16877)
(declare-fun PostHeap@0 () T@PolymorphicMapType_16856)
(declare-fun Heap@@69 () T@PolymorphicMapType_16856)
(declare-fun w_2_2 () Int)
(declare-fun x_2_2 () Int)
(declare-fun y_2 () Int)
(declare-fun z_2 () Int)
(declare-fun Mask@1 () T@PolymorphicMapType_16877)
(declare-fun Mask@0 () T@PolymorphicMapType_16877)
(declare-fun n$_1 () T@Ref)
(declare-fun a_13 () Int)
(declare-fun k$_1 () Real)
(set-info :boogie-vc-id Triggerstriggers_two$)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon32_Else_correct true))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (not (= this$_7 null))) (=> (not (= this$_7 null)) (=> (= (ControlFlow 0 27) (- 0 26)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| PostMask@0) null (Triggersvalid$ this$_7)))))))))
(let ((anon31_Else_correct true))
(let ((anon29_Else_correct  (=> (forall ((x_1 Int) (y_1 Int) (z_1 Int) ) (! (Triggersf$ PostHeap@0 this$_7 x_1 y_1 z_1)
 :qid |stdinbpl.1140:20|
 :skolemid |58|
 :pattern ( (|Triggersf$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| PostHeap@0) null (Triggersvalid$ this$_7)) this$_7 x_1 y_1 z_1))
)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 30) 25) anon31_Else_correct) (=> (= (ControlFlow 0 30) 27) anon32_Then_correct)) (=> (= (ControlFlow 0 30) 29) anon32_Else_correct))))))
(let ((anon30_Else_correct true))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (not (= this$_7 null))) (=> (not (= this$_7 null)) (=> (= (ControlFlow 0 22) (- 0 21)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| PostMask@0) null (Triggersvalid$ this$_7)))))))))
(let ((anon28_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_16877 (store (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) null (Triggersvalid$ this$_7) (+ (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) null (Triggersvalid$ this$_7)) FullPerm)) (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (and (=> (= (ControlFlow 0 31) 30) anon29_Else_correct) (=> (= (ControlFlow 0 31) 22) anon30_Then_correct)) (=> (= (ControlFlow 0 31) 24) anon30_Else_correct))))))
(let ((anon35_Else_correct true))
(let ((anon35_Then_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (Triggersg$ Heap@@69 this$_7 w_2_2))))
(let ((anon34_Else_correct  (=> (forall ((x_3_1_1 Int) (y_3_1 Int) (z_3_1_1 Int) ) (! (Triggersf$ Heap@@69 this$_7 x_3_1_1 y_3_1 z_3_1_1)
 :qid |stdinbpl.1193:20|
 :skolemid |60|
 :pattern ( (|Triggersf$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@69) null (Triggersvalid$ this$_7)) this$_7 x_3_1_1 y_3_1 z_3_1_1))
)) (and (=> (= (ControlFlow 0 15) 13) anon35_Then_correct) (=> (= (ControlFlow 0 15) 14) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (Triggersf$ Heap@@69 this$_7 x_2_2 y_2 z_2))))
(let ((anon19_correct  (=> (= Mask@1 (PolymorphicMapType_16877 (store (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@0) null (Triggersvalid$ this$_7) (- (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@0) null (Triggersvalid$ this$_7)) FullPerm)) (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@0) (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@0))) (and (=> (= (ControlFlow 0 16) 11) anon34_Then_correct) (=> (= (ControlFlow 0 16) 15) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 16)) anon19_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@0) null (Triggersvalid$ this$_7)))) (=> (<= FullPerm (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@0) null (Triggersvalid$ this$_7))) (=> (= (ControlFlow 0 17) 16) anon19_correct))))))
(let ((anon28_Else_correct  (=> (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@69) n$_1 $allocated) (and (=> (= (ControlFlow 0 20) 17) anon33_Then_correct) (=> (= (ControlFlow 0 20) 19) anon33_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (forall ((a_1_1 Int) (b_1_2 Int) (c_1 Int) ) (!  (and (Triggersg$ Heap@@69 this$_7 a_1_1) (Triggersf$ Heap@@69 this$_7 a_1_1 b_1_2 c_1))
 :qid |stdinbpl.1098:20|
 :skolemid |57|
 :pattern ( (|Triggersg$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@69) null (Triggersvalid$ this$_7)) this$_7 a_1_1) (|Triggersf$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@69) null (Triggersvalid$ this$_7)) this$_7 a_1_1 b_1_2 c_1))
 :pattern ( (|Triggersf$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@69) null (Triggersvalid$ this$_7)) this$_7 a_1_1 b_1_2 c_1))
)) (state Heap@@69 Mask@0)) (and (=> (= (ControlFlow 0 32) 31) anon28_Then_correct) (=> (= (ControlFlow 0 32) 20) anon28_Else_correct)))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (not (= this$_7 null))) (=> (not (= this$_7 null)) (=> (= (ControlFlow 0 7) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@0) null (Triggersvalid$ this$_7)))))))))
(let ((anon6_correct true))
(let ((anon26_Then_correct  (=> (Triggersg$ Heap@@69 this$_7 a_13) (and (=> (= (ControlFlow 0 9) 7) anon27_Then_correct) (=> (= (ControlFlow 0 9) 4) anon6_correct)))))
(let ((anon26_Else_correct  (=> (and (not (Triggersg$ Heap@@69 this$_7 a_13)) (= (ControlFlow 0 5) 4)) anon6_correct)))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= this$_7 null))) (=> (not (= this$_7 null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@0) null (Triggersvalid$ this$_7)))))))))
(let ((anon0_correct  (=> (and (state Heap@@69 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@69) this$_7 $allocated)) (and (not (= this$_7 null)) (state Heap@@69 ZeroMask))) (=> (and (and (and (< NoPerm k$_1) (state Heap@@69 ZeroMask)) (and (< k$_1 FullPerm) (state Heap@@69 ZeroMask))) (and (and (= Mask@0 (PolymorphicMapType_16877 (store (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) null (Triggersvalid$ this$_7) (+ (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) null (Triggersvalid$ this$_7)) FullPerm)) (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ZeroMask) (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ZeroMask))) (state Heap@@69 Mask@0)) (and (state Heap@@69 Mask@0) (state Heap@@69 Mask@0)))) (and (and (and (=> (= (ControlFlow 0 33) 32) anon24_Else_correct) (=> (= (ControlFlow 0 33) 2) anon25_Then_correct)) (=> (= (ControlFlow 0 33) 9) anon26_Then_correct)) (=> (= (ControlFlow 0 33) 5) anon26_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 34) 33) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 13) (- 12))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
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
(declare-sort T@Field_16916_53 0)
(declare-sort T@Field_16929_16930 0)
(declare-sort T@Field_21330_21331 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23724_23729 0)
(declare-sort T@Field_20259_645 0)
(declare-sort T@Field_20874_1456 0)
(declare-sort T@Field_9090_21331 0)
(declare-sort T@Field_9090_23729 0)
(declare-sort T@Field_21330_9091 0)
(declare-sort T@Field_21330_53 0)
(declare-sort T@Field_21330_645 0)
(declare-sort T@Field_21330_1456 0)
(declare-sort T@Field_34223_9091 0)
(declare-sort T@Field_34223_53 0)
(declare-sort T@Field_34223_645 0)
(declare-sort T@Field_34223_1456 0)
(declare-sort T@Field_34223_34224 0)
(declare-sort T@Field_34236_34241 0)
(declare-datatypes ((T@PolymorphicMapType_16877 0)) (((PolymorphicMapType_16877 (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_21331 Real)) (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| (Array T@Ref T@Field_16929_16930 Real)) (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_9091 Real)) (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_53 Real)) (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_645 Real)) (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| (Array T@Ref T@Field_21330_1456 Real)) (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| (Array T@Ref T@Field_23724_23729 Real)) (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| (Array T@Ref T@Field_9090_21331 Real)) (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| (Array T@Ref T@Field_16916_53 Real)) (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| (Array T@Ref T@Field_20259_645 Real)) (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| (Array T@Ref T@Field_20874_1456 Real)) (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| (Array T@Ref T@Field_9090_23729 Real)) (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_34224 Real)) (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_9091 Real)) (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_53 Real)) (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_645 Real)) (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| (Array T@Ref T@Field_34223_1456 Real)) (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| (Array T@Ref T@Field_34236_34241 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17405 0)) (((PolymorphicMapType_17405 (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (Array T@Ref T@Field_16929_16930 Bool)) (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (Array T@Ref T@Field_16916_53 Bool)) (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (Array T@Ref T@Field_20259_645 Bool)) (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (Array T@Ref T@Field_20874_1456 Bool)) (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (Array T@Ref T@Field_9090_21331 Bool)) (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (Array T@Ref T@Field_9090_23729 Bool)) (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_9091 Bool)) (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_53 Bool)) (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_645 Bool)) (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_1456 Bool)) (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (Array T@Ref T@Field_21330_21331 Bool)) (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (Array T@Ref T@Field_23724_23729 Bool)) (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_9091 Bool)) (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_53 Bool)) (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_645 Bool)) (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_1456 Bool)) (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (Array T@Ref T@Field_34223_34224 Bool)) (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (Array T@Ref T@Field_34236_34241 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16856 0)) (((PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| (Array T@Ref T@Field_16916_53 Bool)) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| (Array T@Ref T@Field_16929_16930 T@Ref)) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_21331 T@FrameType)) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| (Array T@Ref T@Field_23724_23729 T@PolymorphicMapType_17405)) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| (Array T@Ref T@Field_20259_645 Real)) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| (Array T@Ref T@Field_20874_1456 Int)) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| (Array T@Ref T@Field_9090_21331 T@FrameType)) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| (Array T@Ref T@Field_9090_23729 T@PolymorphicMapType_17405)) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_9091 T@Ref)) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_53 Bool)) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_645 Real)) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| (Array T@Ref T@Field_21330_1456 Int)) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_9091 T@Ref)) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_53 Bool)) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_645 Real)) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_1456 Int)) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| (Array T@Ref T@Field_34223_34224 T@FrameType)) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| (Array T@Ref T@Field_34236_34241 T@PolymorphicMapType_17405)) ) ) ))
(declare-fun $allocated () T@Field_16916_53)
(declare-fun globalK$ () Real)
(declare-fun old$methodPermission () T@Field_20259_645)
(declare-fun joinable$ () T@Field_16916_53)
(declare-fun Triggersnext$ () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_one$this$_6 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_one$k$ () T@Field_20259_645)
(declare-fun par$Triggerstriggers_two$this$_7 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_two$k$_1 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_three$this$_8 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_three$k$_2 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_four$this$_9 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_four$k$_3 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_five$this$_10 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_five$k$_4 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_five$c () T@Field_16916_53)
(declare-fun par$Triggerstriggers_five$d () T@Field_16916_53)
(declare-fun par$Triggerstriggers_six$this$_11 () T@Field_16929_16930)
(declare-fun par$Triggerstriggers_six$k$_5 () T@Field_20259_645)
(declare-fun par$Triggerstriggers_six$c () T@Field_20874_1456)
(declare-fun par$Triggerstriggers_six$d () T@Field_20874_1456)
(declare-fun Triggersf$ (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun |Triggersf$'| (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun dummyFunction_1833 (Bool) Bool)
(declare-fun |Triggersf$#triggerStateless| (T@Ref Int Int Int) Bool)
(declare-fun Triggersh$ (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun |Triggersh$'| (T@PolymorphicMapType_16856 T@Ref Int Int Int) Bool)
(declare-fun |Triggersh$#triggerStateless| (T@Ref Int Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16856 T@PolymorphicMapType_16856 T@PolymorphicMapType_16877) Bool)
(declare-fun IsPredicateField_9258_9259 (T@Field_34223_34224) Bool)
(declare-fun HasDirectPerm_34223_21331 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_34224) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9258 (T@Field_34223_34224) T@Field_34236_34241)
(declare-fun IsPredicateField_9282_9283 (T@Field_21330_21331) Bool)
(declare-fun HasDirectPerm_21330_21331 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_21331) Bool)
(declare-fun PredicateMaskField_9282 (T@Field_21330_21331) T@Field_23724_23729)
(declare-fun IsPredicateField_9090_57631 (T@Field_9090_21331) Bool)
(declare-fun HasDirectPerm_9090_21331 (T@PolymorphicMapType_16877 T@Ref T@Field_9090_21331) Bool)
(declare-fun PredicateMaskField_9090 (T@Field_9090_21331) T@Field_9090_23729)
(declare-fun IsWandField_34223_63918 (T@Field_34223_34224) Bool)
(declare-fun WandMaskField_34223 (T@Field_34223_34224) T@Field_34236_34241)
(declare-fun IsWandField_21330_63561 (T@Field_21330_21331) Bool)
(declare-fun WandMaskField_21330 (T@Field_21330_21331) T@Field_23724_23729)
(declare-fun IsWandField_9090_63204 (T@Field_9090_21331) Bool)
(declare-fun WandMaskField_9090 (T@Field_9090_21331) T@Field_9090_23729)
(declare-fun succHeap (T@PolymorphicMapType_16856 T@PolymorphicMapType_16856) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16856 T@PolymorphicMapType_16856) Bool)
(declare-fun state (T@PolymorphicMapType_16856 T@PolymorphicMapType_16877) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16877) Bool)
(declare-fun |Triggersi$'| (T@PolymorphicMapType_16856 T@Ref Int Bool) Bool)
(declare-fun |Triggersi$#triggerStateless| (T@Ref Int Bool) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17405)
(declare-fun |Triggersg$'| (T@PolymorphicMapType_16856 T@Ref Int) Bool)
(declare-fun |Triggersg$#triggerStateless| (T@Ref Int) Bool)
(declare-fun Triggersi$ (T@PolymorphicMapType_16856 T@Ref Int Bool) Bool)
(declare-fun Triggers$MonitorInvariant (T@Ref) T@Field_34223_34224)
(declare-fun Triggersvalid$ (T@Ref) T@Field_21330_21331)
(declare-fun |Triggers$MonitorInvariant#trigger_9258| (T@PolymorphicMapType_16856 T@Field_34223_34224) Bool)
(declare-fun |Triggers$MonitorInvariant#everUsed_9258| (T@Field_34223_34224) Bool)
(declare-fun |Triggersvalid$#trigger_9282| (T@PolymorphicMapType_16856 T@Field_21330_21331) Bool)
(declare-fun |Triggersvalid$#everUsed_9282| (T@Field_21330_21331) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Triggersf$#frame| (T@FrameType T@Ref Int Int Int) Bool)
(declare-fun |Triggersh$#frame| (T@FrameType T@Ref Int Int Int) Bool)
(declare-fun |Triggers$MonitorInvariant#sm| (T@Ref) T@Field_34236_34241)
(declare-fun |Triggersvalid$#sm| (T@Ref) T@Field_23724_23729)
(declare-fun dummyHeap () T@PolymorphicMapType_16856)
(declare-fun ZeroMask () T@PolymorphicMapType_16877)
(declare-fun InsidePredicate_34223_34223 (T@Field_34223_34224 T@FrameType T@Field_34223_34224 T@FrameType) Bool)
(declare-fun InsidePredicate_16916_16916 (T@Field_9090_21331 T@FrameType T@Field_9090_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_9282_9282 (T@Field_21330_21331 T@FrameType T@Field_21330_21331 T@FrameType) Bool)
(declare-fun IsPredicateField_9085_645 (T@Field_20259_645) Bool)
(declare-fun IsWandField_9085_645 (T@Field_20259_645) Bool)
(declare-fun IsPredicateField_9088_1216 (T@Field_16916_53) Bool)
(declare-fun IsWandField_9088_1216 (T@Field_16916_53) Bool)
(declare-fun IsPredicateField_9090_9091 (T@Field_16929_16930) Bool)
(declare-fun IsWandField_9090_9091 (T@Field_16929_16930) Bool)
(declare-fun IsPredicateField_9133_1456 (T@Field_20874_1456) Bool)
(declare-fun IsWandField_9133_1456 (T@Field_20874_1456) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_34223_76033 (T@Field_34236_34241) Bool)
(declare-fun IsWandField_34223_76049 (T@Field_34236_34241) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_34223_1456 (T@Field_34223_1456) Bool)
(declare-fun IsWandField_34223_1456 (T@Field_34223_1456) Bool)
(declare-fun IsPredicateField_34223_645 (T@Field_34223_645) Bool)
(declare-fun IsWandField_34223_645 (T@Field_34223_645) Bool)
(declare-fun IsPredicateField_34223_53 (T@Field_34223_53) Bool)
(declare-fun IsWandField_34223_53 (T@Field_34223_53) Bool)
(declare-fun IsPredicateField_34223_9091 (T@Field_34223_9091) Bool)
(declare-fun IsWandField_34223_9091 (T@Field_34223_9091) Bool)
(declare-fun IsPredicateField_9090_75034 (T@Field_9090_23729) Bool)
(declare-fun IsWandField_9090_75050 (T@Field_9090_23729) Bool)
(declare-fun IsPredicateField_9282_74091 (T@Field_23724_23729) Bool)
(declare-fun IsWandField_9282_74107 (T@Field_23724_23729) Bool)
(declare-fun IsPredicateField_9282_1456 (T@Field_21330_1456) Bool)
(declare-fun IsWandField_9282_1456 (T@Field_21330_1456) Bool)
(declare-fun IsPredicateField_9282_645 (T@Field_21330_645) Bool)
(declare-fun IsWandField_9282_645 (T@Field_21330_645) Bool)
(declare-fun IsPredicateField_9282_53 (T@Field_21330_53) Bool)
(declare-fun IsWandField_9282_53 (T@Field_21330_53) Bool)
(declare-fun IsPredicateField_9282_9091 (T@Field_21330_9091) Bool)
(declare-fun IsWandField_9282_9091 (T@Field_21330_9091) Bool)
(declare-fun HasDirectPerm_34223_57343 (T@PolymorphicMapType_16877 T@Ref T@Field_34236_34241) Bool)
(declare-fun HasDirectPerm_34223_1456 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_1456) Bool)
(declare-fun HasDirectPerm_34223_645 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_645) Bool)
(declare-fun HasDirectPerm_34223_53 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_53) Bool)
(declare-fun HasDirectPerm_34223_9091 (T@PolymorphicMapType_16877 T@Ref T@Field_34223_9091) Bool)
(declare-fun HasDirectPerm_21330_55987 (T@PolymorphicMapType_16877 T@Ref T@Field_23724_23729) Bool)
(declare-fun HasDirectPerm_21330_1456 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_1456) Bool)
(declare-fun HasDirectPerm_21330_645 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_645) Bool)
(declare-fun HasDirectPerm_21330_53 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_53) Bool)
(declare-fun HasDirectPerm_21330_9091 (T@PolymorphicMapType_16877 T@Ref T@Field_21330_9091) Bool)
(declare-fun HasDirectPerm_9090_54605 (T@PolymorphicMapType_16877 T@Ref T@Field_9090_23729) Bool)
(declare-fun HasDirectPerm_9090_1456 (T@PolymorphicMapType_16877 T@Ref T@Field_20874_1456) Bool)
(declare-fun HasDirectPerm_9090_645 (T@PolymorphicMapType_16877 T@Ref T@Field_20259_645) Bool)
(declare-fun HasDirectPerm_9090_53 (T@PolymorphicMapType_16877 T@Ref T@Field_16916_53) Bool)
(declare-fun HasDirectPerm_9090_9091 (T@PolymorphicMapType_16877 T@Ref T@Field_16929_16930) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16877 T@PolymorphicMapType_16877 T@PolymorphicMapType_16877) Bool)
(declare-fun |Triggersg$#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun |Triggersi$#frame| (T@FrameType T@Ref Int Bool) Bool)
(declare-fun getPredWandId_9258_9259 (T@Field_34223_34224) Int)
(declare-fun getPredWandId_9282_9283 (T@Field_21330_21331) Int)
(declare-fun Triggersg$ (T@PolymorphicMapType_16856 T@Ref Int) Bool)
(declare-fun InsidePredicate_34223_16916 (T@Field_34223_34224 T@FrameType T@Field_9090_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_34223_9282 (T@Field_34223_34224 T@FrameType T@Field_21330_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_16916_34223 (T@Field_9090_21331 T@FrameType T@Field_34223_34224 T@FrameType) Bool)
(declare-fun InsidePredicate_16916_9282 (T@Field_9090_21331 T@FrameType T@Field_21330_21331 T@FrameType) Bool)
(declare-fun InsidePredicate_9282_34223 (T@Field_21330_21331 T@FrameType T@Field_34223_34224 T@FrameType) Bool)
(declare-fun InsidePredicate_9282_16916 (T@Field_21330_21331 T@FrameType T@Field_9090_21331 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$ par$Triggerstriggers_five$c par$Triggerstriggers_five$d)(distinct old$methodPermission par$Triggerstriggers_one$k$ par$Triggerstriggers_two$k$_1 par$Triggerstriggers_three$k$_2 par$Triggerstriggers_four$k$_3 par$Triggerstriggers_five$k$_4 par$Triggerstriggers_six$k$_5)(distinct Triggersnext$ par$Triggerstriggers_one$this$_6 par$Triggerstriggers_two$this$_7 par$Triggerstriggers_three$this$_8 par$Triggerstriggers_four$this$_9 par$Triggerstriggers_five$this$_10 par$Triggerstriggers_six$this$_11)(distinct par$Triggerstriggers_six$c par$Triggerstriggers_six$d))
)
(assert (forall ((Heap T@PolymorphicMapType_16856) (this$_2 T@Ref) (x Int) (y Int) (z Int) ) (!  (and (= (Triggersf$ Heap this$_2 x y z) (|Triggersf$'| Heap this$_2 x y z)) (dummyFunction_1833 (|Triggersf$#triggerStateless| this$_2 x y z)))
 :qid |stdinbpl.264:15|
 :skolemid |22|
 :pattern ( (Triggersf$ Heap this$_2 x y z))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16856) (this$_3 T@Ref) (x@@0 Int) (y@@0 Int) (z@@0 Int) ) (!  (and (= (Triggersh$ Heap@@0 this$_3 x@@0 y@@0 z@@0) (|Triggersh$'| Heap@@0 this$_3 x@@0 y@@0 z@@0)) (dummyFunction_1833 (|Triggersh$#triggerStateless| this$_3 x@@0 y@@0 z@@0)))
 :qid |stdinbpl.390:15|
 :skolemid |27|
 :pattern ( (Triggersh$ Heap@@0 this$_3 x@@0 y@@0 z@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16856) (ExhaleHeap T@PolymorphicMapType_16856) (Mask T@PolymorphicMapType_16877) (pm_f_52 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask) (=> (and (HasDirectPerm_34223_21331 Mask null pm_f_52) (IsPredicateField_9258_9259 pm_f_52)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52 T@Ref) (f_43 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52 f_43) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@1) o2_52 f_43) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap) o2_52 f_43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap) o2_52 f_43))
)) (forall ((o2_52@@0 T@Ref) (f_43@@0 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@0 f_43@@0) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@1) o2_52@@0 f_43@@0) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@0 f_43@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@0 f_43@@0))
))) (forall ((o2_52@@1 T@Ref) (f_43@@1 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@1 f_43@@1) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@1) o2_52@@1 f_43@@1) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@1 f_43@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@1 f_43@@1))
))) (forall ((o2_52@@2 T@Ref) (f_43@@2 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@2 f_43@@2) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@1) o2_52@@2 f_43@@2) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@2 f_43@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@2 f_43@@2))
))) (forall ((o2_52@@3 T@Ref) (f_43@@3 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@3 f_43@@3) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@1) o2_52@@3 f_43@@3) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@3 f_43@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@3 f_43@@3))
))) (forall ((o2_52@@4 T@Ref) (f_43@@4 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@4 f_43@@4) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@1) o2_52@@4 f_43@@4) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap) o2_52@@4 f_43@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap) o2_52@@4 f_43@@4))
))) (forall ((o2_52@@5 T@Ref) (f_43@@5 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@5 f_43@@5) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@1) o2_52@@5 f_43@@5) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@5 f_43@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@5 f_43@@5))
))) (forall ((o2_52@@6 T@Ref) (f_43@@6 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@6 f_43@@6) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@1) o2_52@@6 f_43@@6) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@6 f_43@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@6 f_43@@6))
))) (forall ((o2_52@@7 T@Ref) (f_43@@7 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@7 f_43@@7) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@1) o2_52@@7 f_43@@7) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@7 f_43@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@7 f_43@@7))
))) (forall ((o2_52@@8 T@Ref) (f_43@@8 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@8 f_43@@8) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@1) o2_52@@8 f_43@@8) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@8 f_43@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@8 f_43@@8))
))) (forall ((o2_52@@9 T@Ref) (f_43@@9 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@9 f_43@@9) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@1) o2_52@@9 f_43@@9) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap) o2_52@@9 f_43@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap) o2_52@@9 f_43@@9))
))) (forall ((o2_52@@10 T@Ref) (f_43@@10 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@10 f_43@@10) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@1) o2_52@@10 f_43@@10) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap) o2_52@@10 f_43@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap) o2_52@@10 f_43@@10))
))) (forall ((o2_52@@11 T@Ref) (f_43@@11 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@11 f_43@@11) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@1) o2_52@@11 f_43@@11) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@11 f_43@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap) o2_52@@11 f_43@@11))
))) (forall ((o2_52@@12 T@Ref) (f_43@@12 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@12 f_43@@12) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@1) o2_52@@12 f_43@@12) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@12 f_43@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap) o2_52@@12 f_43@@12))
))) (forall ((o2_52@@13 T@Ref) (f_43@@13 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@13 f_43@@13) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@1) o2_52@@13 f_43@@13) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@13 f_43@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap) o2_52@@13 f_43@@13))
))) (forall ((o2_52@@14 T@Ref) (f_43@@14 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@14 f_43@@14) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@1) o2_52@@14 f_43@@14) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@14 f_43@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap) o2_52@@14 f_43@@14))
))) (forall ((o2_52@@15 T@Ref) (f_43@@15 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@15 f_43@@15) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@1) o2_52@@15 f_43@@15) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@15 f_43@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap) o2_52@@15 f_43@@15))
))) (forall ((o2_52@@16 T@Ref) (f_43@@16 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) null (PredicateMaskField_9258 pm_f_52))) o2_52@@16 f_43@@16) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@1) o2_52@@16 f_43@@16) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap) o2_52@@16 f_43@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap) o2_52@@16 f_43@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask) (IsPredicateField_9258_9259 pm_f_52))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16856) (ExhaleHeap@@0 T@PolymorphicMapType_16856) (Mask@@0 T@PolymorphicMapType_16877) (pm_f_52@@0 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_21330_21331 Mask@@0 null pm_f_52@@0) (IsPredicateField_9282_9283 pm_f_52@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@17 T@Ref) (f_43@@17 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@17 f_43@@17) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@2) o2_52@@17 f_43@@17) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@17 f_43@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@17 f_43@@17))
)) (forall ((o2_52@@18 T@Ref) (f_43@@18 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@18 f_43@@18) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@2) o2_52@@18 f_43@@18) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@18 f_43@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@18 f_43@@18))
))) (forall ((o2_52@@19 T@Ref) (f_43@@19 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@19 f_43@@19) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@2) o2_52@@19 f_43@@19) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@19 f_43@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@19 f_43@@19))
))) (forall ((o2_52@@20 T@Ref) (f_43@@20 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@20 f_43@@20) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@2) o2_52@@20 f_43@@20) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@20 f_43@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@20 f_43@@20))
))) (forall ((o2_52@@21 T@Ref) (f_43@@21 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@21 f_43@@21) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@2) o2_52@@21 f_43@@21) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@21 f_43@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@21 f_43@@21))
))) (forall ((o2_52@@22 T@Ref) (f_43@@22 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@22 f_43@@22) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@2) o2_52@@22 f_43@@22) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@22 f_43@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@22 f_43@@22))
))) (forall ((o2_52@@23 T@Ref) (f_43@@23 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@23 f_43@@23) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@2) o2_52@@23 f_43@@23) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@23 f_43@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@23 f_43@@23))
))) (forall ((o2_52@@24 T@Ref) (f_43@@24 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@24 f_43@@24) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@2) o2_52@@24 f_43@@24) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@24 f_43@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@24 f_43@@24))
))) (forall ((o2_52@@25 T@Ref) (f_43@@25 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@25 f_43@@25) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@2) o2_52@@25 f_43@@25) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@25 f_43@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@25 f_43@@25))
))) (forall ((o2_52@@26 T@Ref) (f_43@@26 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@26 f_43@@26) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@2) o2_52@@26 f_43@@26) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@26 f_43@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@26 f_43@@26))
))) (forall ((o2_52@@27 T@Ref) (f_43@@27 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@27 f_43@@27) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@2) o2_52@@27 f_43@@27) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@27 f_43@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@27 f_43@@27))
))) (forall ((o2_52@@28 T@Ref) (f_43@@28 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@28 f_43@@28) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) o2_52@@28 f_43@@28) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@28 f_43@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@28 f_43@@28))
))) (forall ((o2_52@@29 T@Ref) (f_43@@29 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@29 f_43@@29) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@2) o2_52@@29 f_43@@29) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@29 f_43@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@29 f_43@@29))
))) (forall ((o2_52@@30 T@Ref) (f_43@@30 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@30 f_43@@30) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@2) o2_52@@30 f_43@@30) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@30 f_43@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@30 f_43@@30))
))) (forall ((o2_52@@31 T@Ref) (f_43@@31 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@31 f_43@@31) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@2) o2_52@@31 f_43@@31) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@31 f_43@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@31 f_43@@31))
))) (forall ((o2_52@@32 T@Ref) (f_43@@32 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@32 f_43@@32) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@2) o2_52@@32 f_43@@32) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@32 f_43@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@32 f_43@@32))
))) (forall ((o2_52@@33 T@Ref) (f_43@@33 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@33 f_43@@33) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@2) o2_52@@33 f_43@@33) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@33 f_43@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@33 f_43@@33))
))) (forall ((o2_52@@34 T@Ref) (f_43@@34 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@2) null (PredicateMaskField_9282 pm_f_52@@0))) o2_52@@34 f_43@@34) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@2) o2_52@@34 f_43@@34) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@34 f_43@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@0) o2_52@@34 f_43@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@0) (IsPredicateField_9282_9283 pm_f_52@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16856) (ExhaleHeap@@1 T@PolymorphicMapType_16856) (Mask@@1 T@PolymorphicMapType_16877) (pm_f_52@@1 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_9090_21331 Mask@@1 null pm_f_52@@1) (IsPredicateField_9090_57631 pm_f_52@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@35 T@Ref) (f_43@@35 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@35 f_43@@35) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@3) o2_52@@35 f_43@@35) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@35 f_43@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@35 f_43@@35))
)) (forall ((o2_52@@36 T@Ref) (f_43@@36 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@36 f_43@@36) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@3) o2_52@@36 f_43@@36) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@36 f_43@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@36 f_43@@36))
))) (forall ((o2_52@@37 T@Ref) (f_43@@37 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@37 f_43@@37) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@3) o2_52@@37 f_43@@37) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@37 f_43@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@37 f_43@@37))
))) (forall ((o2_52@@38 T@Ref) (f_43@@38 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@38 f_43@@38) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@3) o2_52@@38 f_43@@38) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@38 f_43@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@38 f_43@@38))
))) (forall ((o2_52@@39 T@Ref) (f_43@@39 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@39 f_43@@39) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@3) o2_52@@39 f_43@@39) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@39 f_43@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@39 f_43@@39))
))) (forall ((o2_52@@40 T@Ref) (f_43@@40 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@40 f_43@@40) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) o2_52@@40 f_43@@40) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@40 f_43@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@40 f_43@@40))
))) (forall ((o2_52@@41 T@Ref) (f_43@@41 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@41 f_43@@41) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@3) o2_52@@41 f_43@@41) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@41 f_43@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@41 f_43@@41))
))) (forall ((o2_52@@42 T@Ref) (f_43@@42 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@42 f_43@@42) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@3) o2_52@@42 f_43@@42) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@42 f_43@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@42 f_43@@42))
))) (forall ((o2_52@@43 T@Ref) (f_43@@43 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@43 f_43@@43) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@3) o2_52@@43 f_43@@43) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@43 f_43@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@43 f_43@@43))
))) (forall ((o2_52@@44 T@Ref) (f_43@@44 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@44 f_43@@44) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@3) o2_52@@44 f_43@@44) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@44 f_43@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@44 f_43@@44))
))) (forall ((o2_52@@45 T@Ref) (f_43@@45 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@45 f_43@@45) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@3) o2_52@@45 f_43@@45) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@45 f_43@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@45 f_43@@45))
))) (forall ((o2_52@@46 T@Ref) (f_43@@46 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@46 f_43@@46) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@3) o2_52@@46 f_43@@46) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@46 f_43@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@46 f_43@@46))
))) (forall ((o2_52@@47 T@Ref) (f_43@@47 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@47 f_43@@47) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@3) o2_52@@47 f_43@@47) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@47 f_43@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@47 f_43@@47))
))) (forall ((o2_52@@48 T@Ref) (f_43@@48 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@48 f_43@@48) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@3) o2_52@@48 f_43@@48) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@48 f_43@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@48 f_43@@48))
))) (forall ((o2_52@@49 T@Ref) (f_43@@49 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@49 f_43@@49) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@3) o2_52@@49 f_43@@49) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@49 f_43@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@49 f_43@@49))
))) (forall ((o2_52@@50 T@Ref) (f_43@@50 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@50 f_43@@50) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@3) o2_52@@50 f_43@@50) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@50 f_43@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@50 f_43@@50))
))) (forall ((o2_52@@51 T@Ref) (f_43@@51 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@51 f_43@@51) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@3) o2_52@@51 f_43@@51) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@51 f_43@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@51 f_43@@51))
))) (forall ((o2_52@@52 T@Ref) (f_43@@52 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@3) null (PredicateMaskField_9090 pm_f_52@@1))) o2_52@@52 f_43@@52) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@3) o2_52@@52 f_43@@52) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@52 f_43@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@1) o2_52@@52 f_43@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@1) (IsPredicateField_9090_57631 pm_f_52@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16856) (ExhaleHeap@@2 T@PolymorphicMapType_16856) (Mask@@2 T@PolymorphicMapType_16877) (pm_f_52@@2 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_34223_21331 Mask@@2 null pm_f_52@@2) (IsWandField_34223_63918 pm_f_52@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@53 T@Ref) (f_43@@53 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@53 f_43@@53) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@4) o2_52@@53 f_43@@53) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@53 f_43@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@53 f_43@@53))
)) (forall ((o2_52@@54 T@Ref) (f_43@@54 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@54 f_43@@54) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@4) o2_52@@54 f_43@@54) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@54 f_43@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@54 f_43@@54))
))) (forall ((o2_52@@55 T@Ref) (f_43@@55 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@55 f_43@@55) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@4) o2_52@@55 f_43@@55) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@55 f_43@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@55 f_43@@55))
))) (forall ((o2_52@@56 T@Ref) (f_43@@56 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@56 f_43@@56) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@4) o2_52@@56 f_43@@56) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@56 f_43@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@56 f_43@@56))
))) (forall ((o2_52@@57 T@Ref) (f_43@@57 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@57 f_43@@57) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@4) o2_52@@57 f_43@@57) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@57 f_43@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@57 f_43@@57))
))) (forall ((o2_52@@58 T@Ref) (f_43@@58 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@58 f_43@@58) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@4) o2_52@@58 f_43@@58) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@58 f_43@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@58 f_43@@58))
))) (forall ((o2_52@@59 T@Ref) (f_43@@59 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@59 f_43@@59) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@4) o2_52@@59 f_43@@59) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@59 f_43@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@59 f_43@@59))
))) (forall ((o2_52@@60 T@Ref) (f_43@@60 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@60 f_43@@60) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@4) o2_52@@60 f_43@@60) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@60 f_43@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@60 f_43@@60))
))) (forall ((o2_52@@61 T@Ref) (f_43@@61 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@61 f_43@@61) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@4) o2_52@@61 f_43@@61) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@61 f_43@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@61 f_43@@61))
))) (forall ((o2_52@@62 T@Ref) (f_43@@62 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@62 f_43@@62) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@4) o2_52@@62 f_43@@62) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@62 f_43@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@62 f_43@@62))
))) (forall ((o2_52@@63 T@Ref) (f_43@@63 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@63 f_43@@63) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@4) o2_52@@63 f_43@@63) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@63 f_43@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@63 f_43@@63))
))) (forall ((o2_52@@64 T@Ref) (f_43@@64 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@64 f_43@@64) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@4) o2_52@@64 f_43@@64) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@64 f_43@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@64 f_43@@64))
))) (forall ((o2_52@@65 T@Ref) (f_43@@65 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@65 f_43@@65) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@4) o2_52@@65 f_43@@65) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@65 f_43@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@65 f_43@@65))
))) (forall ((o2_52@@66 T@Ref) (f_43@@66 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@66 f_43@@66) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@4) o2_52@@66 f_43@@66) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@66 f_43@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@66 f_43@@66))
))) (forall ((o2_52@@67 T@Ref) (f_43@@67 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@67 f_43@@67) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@4) o2_52@@67 f_43@@67) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@67 f_43@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@67 f_43@@67))
))) (forall ((o2_52@@68 T@Ref) (f_43@@68 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@68 f_43@@68) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@4) o2_52@@68 f_43@@68) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@68 f_43@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@68 f_43@@68))
))) (forall ((o2_52@@69 T@Ref) (f_43@@69 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@69 f_43@@69) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@4) o2_52@@69 f_43@@69) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@69 f_43@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@69 f_43@@69))
))) (forall ((o2_52@@70 T@Ref) (f_43@@70 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) null (WandMaskField_34223 pm_f_52@@2))) o2_52@@70 f_43@@70) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@4) o2_52@@70 f_43@@70) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@70 f_43@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@2) o2_52@@70 f_43@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@2) (IsWandField_34223_63918 pm_f_52@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16856) (ExhaleHeap@@3 T@PolymorphicMapType_16856) (Mask@@3 T@PolymorphicMapType_16877) (pm_f_52@@3 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_21330_21331 Mask@@3 null pm_f_52@@3) (IsWandField_21330_63561 pm_f_52@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@71 T@Ref) (f_43@@71 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@71 f_43@@71) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@5) o2_52@@71 f_43@@71) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@71 f_43@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@71 f_43@@71))
)) (forall ((o2_52@@72 T@Ref) (f_43@@72 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@72 f_43@@72) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@5) o2_52@@72 f_43@@72) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@72 f_43@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@72 f_43@@72))
))) (forall ((o2_52@@73 T@Ref) (f_43@@73 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@73 f_43@@73) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@5) o2_52@@73 f_43@@73) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@73 f_43@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@73 f_43@@73))
))) (forall ((o2_52@@74 T@Ref) (f_43@@74 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@74 f_43@@74) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@5) o2_52@@74 f_43@@74) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@74 f_43@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@74 f_43@@74))
))) (forall ((o2_52@@75 T@Ref) (f_43@@75 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@75 f_43@@75) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@5) o2_52@@75 f_43@@75) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@75 f_43@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@75 f_43@@75))
))) (forall ((o2_52@@76 T@Ref) (f_43@@76 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@76 f_43@@76) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@5) o2_52@@76 f_43@@76) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@76 f_43@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@76 f_43@@76))
))) (forall ((o2_52@@77 T@Ref) (f_43@@77 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@77 f_43@@77) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@5) o2_52@@77 f_43@@77) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@77 f_43@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@77 f_43@@77))
))) (forall ((o2_52@@78 T@Ref) (f_43@@78 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@78 f_43@@78) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@5) o2_52@@78 f_43@@78) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@78 f_43@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@78 f_43@@78))
))) (forall ((o2_52@@79 T@Ref) (f_43@@79 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@79 f_43@@79) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@5) o2_52@@79 f_43@@79) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@79 f_43@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@79 f_43@@79))
))) (forall ((o2_52@@80 T@Ref) (f_43@@80 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@80 f_43@@80) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@5) o2_52@@80 f_43@@80) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@80 f_43@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@80 f_43@@80))
))) (forall ((o2_52@@81 T@Ref) (f_43@@81 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@81 f_43@@81) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@5) o2_52@@81 f_43@@81) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@81 f_43@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@81 f_43@@81))
))) (forall ((o2_52@@82 T@Ref) (f_43@@82 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@82 f_43@@82) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) o2_52@@82 f_43@@82) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@82 f_43@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@82 f_43@@82))
))) (forall ((o2_52@@83 T@Ref) (f_43@@83 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@83 f_43@@83) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@5) o2_52@@83 f_43@@83) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@83 f_43@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@83 f_43@@83))
))) (forall ((o2_52@@84 T@Ref) (f_43@@84 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@84 f_43@@84) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@5) o2_52@@84 f_43@@84) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@84 f_43@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@84 f_43@@84))
))) (forall ((o2_52@@85 T@Ref) (f_43@@85 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@85 f_43@@85) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@5) o2_52@@85 f_43@@85) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@85 f_43@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@85 f_43@@85))
))) (forall ((o2_52@@86 T@Ref) (f_43@@86 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@86 f_43@@86) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@5) o2_52@@86 f_43@@86) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@86 f_43@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@86 f_43@@86))
))) (forall ((o2_52@@87 T@Ref) (f_43@@87 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@87 f_43@@87) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@5) o2_52@@87 f_43@@87) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@87 f_43@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@87 f_43@@87))
))) (forall ((o2_52@@88 T@Ref) (f_43@@88 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@5) null (WandMaskField_21330 pm_f_52@@3))) o2_52@@88 f_43@@88) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@5) o2_52@@88 f_43@@88) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@88 f_43@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@3) o2_52@@88 f_43@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@3) (IsWandField_21330_63561 pm_f_52@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16856) (ExhaleHeap@@4 T@PolymorphicMapType_16856) (Mask@@4 T@PolymorphicMapType_16877) (pm_f_52@@4 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_9090_21331 Mask@@4 null pm_f_52@@4) (IsWandField_9090_63204 pm_f_52@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_52@@89 T@Ref) (f_43@@89 T@Field_16929_16930) ) (!  (=> (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@89 f_43@@89) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@6) o2_52@@89 f_43@@89) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@89 f_43@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@89 f_43@@89))
)) (forall ((o2_52@@90 T@Ref) (f_43@@90 T@Field_16916_53) ) (!  (=> (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@90 f_43@@90) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@6) o2_52@@90 f_43@@90) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@90 f_43@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@90 f_43@@90))
))) (forall ((o2_52@@91 T@Ref) (f_43@@91 T@Field_20259_645) ) (!  (=> (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@91 f_43@@91) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@6) o2_52@@91 f_43@@91) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@91 f_43@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@91 f_43@@91))
))) (forall ((o2_52@@92 T@Ref) (f_43@@92 T@Field_20874_1456) ) (!  (=> (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@92 f_43@@92) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@6) o2_52@@92 f_43@@92) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@92 f_43@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@92 f_43@@92))
))) (forall ((o2_52@@93 T@Ref) (f_43@@93 T@Field_9090_21331) ) (!  (=> (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@93 f_43@@93) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@6) o2_52@@93 f_43@@93) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@93 f_43@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@93 f_43@@93))
))) (forall ((o2_52@@94 T@Ref) (f_43@@94 T@Field_9090_23729) ) (!  (=> (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@94 f_43@@94) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) o2_52@@94 f_43@@94) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@94 f_43@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@94 f_43@@94))
))) (forall ((o2_52@@95 T@Ref) (f_43@@95 T@Field_21330_9091) ) (!  (=> (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@95 f_43@@95) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@6) o2_52@@95 f_43@@95) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@95 f_43@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@95 f_43@@95))
))) (forall ((o2_52@@96 T@Ref) (f_43@@96 T@Field_21330_53) ) (!  (=> (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@96 f_43@@96) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@6) o2_52@@96 f_43@@96) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@96 f_43@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@96 f_43@@96))
))) (forall ((o2_52@@97 T@Ref) (f_43@@97 T@Field_21330_645) ) (!  (=> (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@97 f_43@@97) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@6) o2_52@@97 f_43@@97) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@97 f_43@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@97 f_43@@97))
))) (forall ((o2_52@@98 T@Ref) (f_43@@98 T@Field_21330_1456) ) (!  (=> (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@98 f_43@@98) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@6) o2_52@@98 f_43@@98) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@98 f_43@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@98 f_43@@98))
))) (forall ((o2_52@@99 T@Ref) (f_43@@99 T@Field_21330_21331) ) (!  (=> (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@99 f_43@@99) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@6) o2_52@@99 f_43@@99) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@99 f_43@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@99 f_43@@99))
))) (forall ((o2_52@@100 T@Ref) (f_43@@100 T@Field_23724_23729) ) (!  (=> (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@100 f_43@@100) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@6) o2_52@@100 f_43@@100) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@100 f_43@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@100 f_43@@100))
))) (forall ((o2_52@@101 T@Ref) (f_43@@101 T@Field_34223_9091) ) (!  (=> (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@101 f_43@@101) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@6) o2_52@@101 f_43@@101) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@101 f_43@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@101 f_43@@101))
))) (forall ((o2_52@@102 T@Ref) (f_43@@102 T@Field_34223_53) ) (!  (=> (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@102 f_43@@102) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@6) o2_52@@102 f_43@@102) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@102 f_43@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@102 f_43@@102))
))) (forall ((o2_52@@103 T@Ref) (f_43@@103 T@Field_34223_645) ) (!  (=> (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@103 f_43@@103) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@6) o2_52@@103 f_43@@103) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@103 f_43@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@103 f_43@@103))
))) (forall ((o2_52@@104 T@Ref) (f_43@@104 T@Field_34223_1456) ) (!  (=> (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@104 f_43@@104) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@6) o2_52@@104 f_43@@104) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@104 f_43@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@104 f_43@@104))
))) (forall ((o2_52@@105 T@Ref) (f_43@@105 T@Field_34223_34224) ) (!  (=> (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@105 f_43@@105) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@6) o2_52@@105 f_43@@105) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@105 f_43@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@105 f_43@@105))
))) (forall ((o2_52@@106 T@Ref) (f_43@@106 T@Field_34236_34241) ) (!  (=> (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@6) null (WandMaskField_9090 pm_f_52@@4))) o2_52@@106 f_43@@106) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@6) o2_52@@106 f_43@@106) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@106 f_43@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@4) o2_52@@106 f_43@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@4) (IsWandField_9090_63204 pm_f_52@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16856) (Heap1 T@PolymorphicMapType_16856) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16856) (Mask@@5 T@PolymorphicMapType_16877) ) (!  (=> (state Heap@@7 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@7 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16856) (Heap1@@0 T@PolymorphicMapType_16856) (Heap2 T@PolymorphicMapType_16856) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16856) (this$_5 T@Ref) (x@@1 Int) (y@@1 Bool) ) (! (dummyFunction_1833 (|Triggersi$#triggerStateless| this$_5 x@@1 y@@1))
 :qid |stdinbpl.646:15|
 :skolemid |38|
 :pattern ( (|Triggersi$'| Heap@@8 this$_5 x@@1 y@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_34236_34241) ) (!  (not (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_62115#PolymorphicMapType_17405| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_34223_34224) ) (!  (not (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_34223_1456) ) (!  (not (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_34223_645) ) (!  (not (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_645#PolymorphicMapType_17405| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_34223_53) ) (!  (not (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_53#PolymorphicMapType_17405| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_34223_9091) ) (!  (not (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_34223_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23724_23729) ) (!  (not (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_60869#PolymorphicMapType_17405| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_21330_21331) ) (!  (not (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21330_1456) ) (!  (not (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21330_645) ) (!  (not (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_645#PolymorphicMapType_17405| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_21330_53) ) (!  (not (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_53#PolymorphicMapType_17405| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_21330_9091) ) (!  (not (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_21330_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9090_23729) ) (!  (not (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_59623#PolymorphicMapType_17405| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9090_21331) ) (!  (not (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_21331#PolymorphicMapType_17405| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_20874_1456) ) (!  (not (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_1456#PolymorphicMapType_17405| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20259_645) ) (!  (not (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_645#PolymorphicMapType_17405| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16916_53) ) (!  (not (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_53#PolymorphicMapType_17405| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16929_16930) ) (!  (not (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17405_9090_9091#PolymorphicMapType_17405| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16856) (this$_4 T@Ref) (x@@2 Int) ) (! (dummyFunction_1833 (|Triggersg$#triggerStateless| this$_4 x@@2))
 :qid |stdinbpl.520:15|
 :skolemid |33|
 :pattern ( (|Triggersg$'| Heap@@9 this$_4 x@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16856) (this$_5@@0 T@Ref) (x@@3 Int) (y@@2 Bool) ) (!  (and (= (Triggersi$ Heap@@10 this$_5@@0 x@@3 y@@2) (|Triggersi$'| Heap@@10 this$_5@@0 x@@3 y@@2)) (dummyFunction_1833 (|Triggersi$#triggerStateless| this$_5@@0 x@@3 y@@2)))
 :qid |stdinbpl.642:15|
 :skolemid |37|
 :pattern ( (Triggersi$ Heap@@10 this$_5@@0 x@@3 y@@2))
)))
(assert (forall ((this$ T@Ref) ) (! (IsPredicateField_9258_9259 (Triggers$MonitorInvariant this$))
 :qid |stdinbpl.772:15|
 :skolemid |43|
 :pattern ( (Triggers$MonitorInvariant this$))
)))
(assert (forall ((this$_1 T@Ref) ) (! (IsPredicateField_9282_9283 (Triggersvalid$ this$_1))
 :qid |stdinbpl.822:15|
 :skolemid |49|
 :pattern ( (Triggersvalid$ this$_1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16856) (this$@@0 T@Ref) ) (! (|Triggers$MonitorInvariant#everUsed_9258| (Triggers$MonitorInvariant this$@@0))
 :qid |stdinbpl.791:15|
 :skolemid |47|
 :pattern ( (|Triggers$MonitorInvariant#trigger_9258| Heap@@11 (Triggers$MonitorInvariant this$@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16856) (this$_1@@0 T@Ref) ) (! (|Triggersvalid$#everUsed_9282| (Triggersvalid$ this$_1@@0))
 :qid |stdinbpl.841:15|
 :skolemid |53|
 :pattern ( (|Triggersvalid$#trigger_9282| Heap@@12 (Triggersvalid$ this$_1@@0)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16856) (Mask@@6 T@PolymorphicMapType_16877) (this$_3@@0 T@Ref) (x@@4 Int) (y@@3 Int) (z@@1 Int) ) (!  (=> (and (state Heap@@13 Mask@@6) (< AssumeFunctionsAbove 0)) (=> (not (= this$_3@@0 null)) (= (Triggersh$ Heap@@13 this$_3@@0 x@@4 y@@3 z@@1) (|Triggersh$'| Heap@@13 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@13) this$_3@@0 Triggersnext$) x@@4 y@@3 z@@1))))
 :qid |stdinbpl.400:15|
 :skolemid |29|
 :pattern ( (state Heap@@13 Mask@@6) (Triggersh$ Heap@@13 this$_3@@0 x@@4 y@@3 z@@1))
 :pattern ( (state Heap@@13 Mask@@6) (|Triggersh$#triggerStateless| this$_3@@0 x@@4 y@@3 z@@1) (|Triggersvalid$#trigger_9282| Heap@@13 (Triggersvalid$ this$_3@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16856) (Mask@@7 T@PolymorphicMapType_16877) (this$_2@@0 T@Ref) (x@@5 Int) (y@@4 Int) (z@@2 Int) ) (!  (=> (and (state Heap@@14 Mask@@7) (< AssumeFunctionsAbove 2)) (=> (not (= this$_2@@0 null)) (= (Triggersf$ Heap@@14 this$_2@@0 x@@5 y@@4 z@@2) (|Triggersf$'| Heap@@14 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@14) this$_2@@0 Triggersnext$) x@@5 y@@4 z@@2))))
 :qid |stdinbpl.274:15|
 :skolemid |24|
 :pattern ( (state Heap@@14 Mask@@7) (Triggersf$ Heap@@14 this$_2@@0 x@@5 y@@4 z@@2))
 :pattern ( (state Heap@@14 Mask@@7) (|Triggersf$#triggerStateless| this$_2@@0 x@@5 y@@4 z@@2) (|Triggersvalid$#trigger_9282| Heap@@14 (Triggersvalid$ this$_2@@0)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16856) (Mask@@8 T@PolymorphicMapType_16877) (this$_2@@1 T@Ref) (x@@6 Int) (y@@5 Int) (z@@3 Int) ) (!  (=> (state Heap@@15 Mask@@8) (= (|Triggersf$'| Heap@@15 this$_2@@1 x@@6 y@@5 z@@3) (|Triggersf$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@15) null (Triggersvalid$ this$_2@@1)) this$_2@@1 x@@6 y@@5 z@@3)))
 :qid |stdinbpl.281:15|
 :skolemid |25|
 :pattern ( (state Heap@@15 Mask@@8) (|Triggersf$'| Heap@@15 this$_2@@1 x@@6 y@@5 z@@3))
 :pattern ( (state Heap@@15 Mask@@8) (|Triggersf$#triggerStateless| this$_2@@1 x@@6 y@@5 z@@3) (|Triggersvalid$#trigger_9282| Heap@@15 (Triggersvalid$ this$_2@@1)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16856) (Mask@@9 T@PolymorphicMapType_16877) (this$_3@@1 T@Ref) (x@@7 Int) (y@@6 Int) (z@@4 Int) ) (!  (=> (state Heap@@16 Mask@@9) (= (|Triggersh$'| Heap@@16 this$_3@@1 x@@7 y@@6 z@@4) (|Triggersh$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@16) null (Triggersvalid$ this$_3@@1)) this$_3@@1 x@@7 y@@6 z@@4)))
 :qid |stdinbpl.407:15|
 :skolemid |30|
 :pattern ( (state Heap@@16 Mask@@9) (|Triggersh$'| Heap@@16 this$_3@@1 x@@7 y@@6 z@@4))
 :pattern ( (state Heap@@16 Mask@@9) (|Triggersh$#triggerStateless| this$_3@@1 x@@7 y@@6 z@@4) (|Triggersvalid$#trigger_9282| Heap@@16 (Triggersvalid$ this$_3@@1)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16856) (ExhaleHeap@@5 T@PolymorphicMapType_16856) (Mask@@10 T@PolymorphicMapType_16877) (pm_f_52@@5 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@10) (=> (and (HasDirectPerm_34223_21331 Mask@@10 null pm_f_52@@5) (IsPredicateField_9258_9259 pm_f_52@@5)) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@17) null (PredicateMaskField_9258 pm_f_52@@5)) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@5) null (PredicateMaskField_9258 pm_f_52@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@5 Mask@@10) (IsPredicateField_9258_9259 pm_f_52@@5) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@5) null (PredicateMaskField_9258 pm_f_52@@5)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16856) (ExhaleHeap@@6 T@PolymorphicMapType_16856) (Mask@@11 T@PolymorphicMapType_16877) (pm_f_52@@6 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@11) (=> (and (HasDirectPerm_21330_21331 Mask@@11 null pm_f_52@@6) (IsPredicateField_9282_9283 pm_f_52@@6)) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@18) null (PredicateMaskField_9282 pm_f_52@@6)) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@6) null (PredicateMaskField_9282 pm_f_52@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@6 Mask@@11) (IsPredicateField_9282_9283 pm_f_52@@6) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@6) null (PredicateMaskField_9282 pm_f_52@@6)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16856) (ExhaleHeap@@7 T@PolymorphicMapType_16856) (Mask@@12 T@PolymorphicMapType_16877) (pm_f_52@@7 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@12) (=> (and (HasDirectPerm_9090_21331 Mask@@12 null pm_f_52@@7) (IsPredicateField_9090_57631 pm_f_52@@7)) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@19) null (PredicateMaskField_9090 pm_f_52@@7)) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@7) null (PredicateMaskField_9090 pm_f_52@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@12) (IsPredicateField_9090_57631 pm_f_52@@7) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@7) null (PredicateMaskField_9090 pm_f_52@@7)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16856) (ExhaleHeap@@8 T@PolymorphicMapType_16856) (Mask@@13 T@PolymorphicMapType_16877) (pm_f_52@@8 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@13) (=> (and (HasDirectPerm_34223_21331 Mask@@13 null pm_f_52@@8) (IsWandField_34223_63918 pm_f_52@@8)) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@20) null (WandMaskField_34223 pm_f_52@@8)) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@8) null (WandMaskField_34223 pm_f_52@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@13) (IsWandField_34223_63918 pm_f_52@@8) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@8) null (WandMaskField_34223 pm_f_52@@8)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16856) (ExhaleHeap@@9 T@PolymorphicMapType_16856) (Mask@@14 T@PolymorphicMapType_16877) (pm_f_52@@9 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@14) (=> (and (HasDirectPerm_21330_21331 Mask@@14 null pm_f_52@@9) (IsWandField_21330_63561 pm_f_52@@9)) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@21) null (WandMaskField_21330 pm_f_52@@9)) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@9) null (WandMaskField_21330 pm_f_52@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@14) (IsWandField_21330_63561 pm_f_52@@9) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@9) null (WandMaskField_21330 pm_f_52@@9)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16856) (ExhaleHeap@@10 T@PolymorphicMapType_16856) (Mask@@15 T@PolymorphicMapType_16877) (pm_f_52@@10 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@15) (=> (and (HasDirectPerm_9090_21331 Mask@@15 null pm_f_52@@10) (IsWandField_9090_63204 pm_f_52@@10)) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@22) null (WandMaskField_9090 pm_f_52@@10)) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@10) null (WandMaskField_9090 pm_f_52@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@15) (IsWandField_9090_63204 pm_f_52@@10) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@10) null (WandMaskField_9090 pm_f_52@@10)))
)))
(assert (forall ((this$@@1 T@Ref) (this$2 T@Ref) ) (!  (=> (= (Triggers$MonitorInvariant this$@@1) (Triggers$MonitorInvariant this$2)) (= this$@@1 this$2))
 :qid |stdinbpl.782:15|
 :skolemid |45|
 :pattern ( (Triggers$MonitorInvariant this$@@1) (Triggers$MonitorInvariant this$2))
)))
(assert (forall ((this$@@2 T@Ref) (this$2@@0 T@Ref) ) (!  (=> (= (|Triggers$MonitorInvariant#sm| this$@@2) (|Triggers$MonitorInvariant#sm| this$2@@0)) (= this$@@2 this$2@@0))
 :qid |stdinbpl.786:15|
 :skolemid |46|
 :pattern ( (|Triggers$MonitorInvariant#sm| this$@@2) (|Triggers$MonitorInvariant#sm| this$2@@0))
)))
(assert (forall ((this$_1@@1 T@Ref) (this$_12 T@Ref) ) (!  (=> (= (Triggersvalid$ this$_1@@1) (Triggersvalid$ this$_12)) (= this$_1@@1 this$_12))
 :qid |stdinbpl.832:15|
 :skolemid |51|
 :pattern ( (Triggersvalid$ this$_1@@1) (Triggersvalid$ this$_12))
)))
(assert (forall ((this$_1@@2 T@Ref) (this$_12@@0 T@Ref) ) (!  (=> (= (|Triggersvalid$#sm| this$_1@@2) (|Triggersvalid$#sm| this$_12@@0)) (= this$_1@@2 this$_12@@0))
 :qid |stdinbpl.836:15|
 :skolemid |52|
 :pattern ( (|Triggersvalid$#sm| this$_1@@2) (|Triggersvalid$#sm| this$_12@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16856) (ExhaleHeap@@11 T@PolymorphicMapType_16856) (Mask@@16 T@PolymorphicMapType_16877) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@16) (=> (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@23) o_47 $allocated) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@11) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@16) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@11) o_47 $allocated))
)))
(assert (forall ((p T@Field_34223_34224) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_34223_34223 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34223_34223 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9090_21331) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16916_16916 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16916_16916 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_21330_21331) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_9282_9282 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9282_9282 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_9085_645 old$methodPermission)))
(assert  (not (IsWandField_9085_645 old$methodPermission)))
(assert  (not (IsPredicateField_9088_1216 joinable$)))
(assert  (not (IsWandField_9088_1216 joinable$)))
(assert  (not (IsPredicateField_9090_9091 Triggersnext$)))
(assert  (not (IsWandField_9090_9091 Triggersnext$)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_one$this$_6)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_one$this$_6)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_one$k$)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_one$k$)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_two$this$_7)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_two$this$_7)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_two$k$_1)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_two$k$_1)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_three$this$_8)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_three$this$_8)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_three$k$_2)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_three$k$_2)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_four$this$_9)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_four$this$_9)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_four$k$_3)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_four$k$_3)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_five$this$_10)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_five$this$_10)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_five$k$_4)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_five$k$_4)))
(assert  (not (IsPredicateField_9088_1216 par$Triggerstriggers_five$c)))
(assert  (not (IsWandField_9088_1216 par$Triggerstriggers_five$c)))
(assert  (not (IsPredicateField_9088_1216 par$Triggerstriggers_five$d)))
(assert  (not (IsWandField_9088_1216 par$Triggerstriggers_five$d)))
(assert  (not (IsPredicateField_9090_9091 par$Triggerstriggers_six$this$_11)))
(assert  (not (IsWandField_9090_9091 par$Triggerstriggers_six$this$_11)))
(assert  (not (IsPredicateField_9085_645 par$Triggerstriggers_six$k$_5)))
(assert  (not (IsWandField_9085_645 par$Triggerstriggers_six$k$_5)))
(assert  (not (IsPredicateField_9133_1456 par$Triggerstriggers_six$c)))
(assert  (not (IsWandField_9133_1456 par$Triggerstriggers_six$c)))
(assert  (not (IsPredicateField_9133_1456 par$Triggerstriggers_six$d)))
(assert  (not (IsWandField_9133_1456 par$Triggerstriggers_six$d)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16856) (ExhaleHeap@@12 T@PolymorphicMapType_16856) (Mask@@17 T@PolymorphicMapType_16877) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@17) (succHeap Heap@@24 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_16877) (o_2@@17 T@Ref) (f_4@@17 T@Field_34236_34241) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_34223_76033 f_4@@17))) (not (IsWandField_34223_76049 f_4@@17))) (<= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_16877) (o_2@@18 T@Ref) (f_4@@18 T@Field_34223_1456) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_34223_1456 f_4@@18))) (not (IsWandField_34223_1456 f_4@@18))) (<= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_16877) (o_2@@19 T@Ref) (f_4@@19 T@Field_34223_645) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_34223_645 f_4@@19))) (not (IsWandField_34223_645 f_4@@19))) (<= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_16877) (o_2@@20 T@Ref) (f_4@@20 T@Field_34223_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_34223_53 f_4@@20))) (not (IsWandField_34223_53 f_4@@20))) (<= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_16877) (o_2@@21 T@Ref) (f_4@@21 T@Field_34223_9091) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_34223_9091 f_4@@21))) (not (IsWandField_34223_9091 f_4@@21))) (<= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_16877) (o_2@@22 T@Ref) (f_4@@22 T@Field_34223_34224) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_9258_9259 f_4@@22))) (not (IsWandField_34223_63918 f_4@@22))) (<= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_16877) (o_2@@23 T@Ref) (f_4@@23 T@Field_9090_23729) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_9090_75034 f_4@@23))) (not (IsWandField_9090_75050 f_4@@23))) (<= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_16877) (o_2@@24 T@Ref) (f_4@@24 T@Field_20874_1456) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_9133_1456 f_4@@24))) (not (IsWandField_9133_1456 f_4@@24))) (<= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_16877) (o_2@@25 T@Ref) (f_4@@25 T@Field_20259_645) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_9085_645 f_4@@25))) (not (IsWandField_9085_645 f_4@@25))) (<= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_16877) (o_2@@26 T@Ref) (f_4@@26 T@Field_16916_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_9088_1216 f_4@@26))) (not (IsWandField_9088_1216 f_4@@26))) (<= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_16877) (o_2@@27 T@Ref) (f_4@@27 T@Field_16929_16930) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_9090_9091 f_4@@27))) (not (IsWandField_9090_9091 f_4@@27))) (<= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_16877) (o_2@@28 T@Ref) (f_4@@28 T@Field_9090_21331) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_9090_57631 f_4@@28))) (not (IsWandField_9090_63204 f_4@@28))) (<= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_16877) (o_2@@29 T@Ref) (f_4@@29 T@Field_23724_23729) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@30) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_9282_74091 f_4@@29))) (not (IsWandField_9282_74107 f_4@@29))) (<= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@30) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@30) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_16877) (o_2@@30 T@Ref) (f_4@@30 T@Field_21330_1456) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@31) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_9282_1456 f_4@@30))) (not (IsWandField_9282_1456 f_4@@30))) (<= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@31) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@31) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_16877) (o_2@@31 T@Ref) (f_4@@31 T@Field_21330_645) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@32) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_9282_645 f_4@@31))) (not (IsWandField_9282_645 f_4@@31))) (<= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@32) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@32) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_16877) (o_2@@32 T@Ref) (f_4@@32 T@Field_21330_53) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@33) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_9282_53 f_4@@32))) (not (IsWandField_9282_53 f_4@@32))) (<= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@33) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@33) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_16877) (o_2@@33 T@Ref) (f_4@@33 T@Field_21330_9091) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@34) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_9282_9091 f_4@@33))) (not (IsWandField_9282_9091 f_4@@33))) (<= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@34) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@34) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_16877) (o_2@@34 T@Ref) (f_4@@34 T@Field_21330_21331) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@35) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_9282_9283 f_4@@34))) (not (IsWandField_21330_63561 f_4@@34))) (<= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@35) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@35) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_16877) (o_2@@35 T@Ref) (f_4@@35 T@Field_34236_34241) ) (! (= (HasDirectPerm_34223_57343 Mask@@36 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| Mask@@36) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_57343 Mask@@36 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_16877) (o_2@@36 T@Ref) (f_4@@36 T@Field_34223_34224) ) (! (= (HasDirectPerm_34223_21331 Mask@@37 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| Mask@@37) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_21331 Mask@@37 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_16877) (o_2@@37 T@Ref) (f_4@@37 T@Field_34223_1456) ) (! (= (HasDirectPerm_34223_1456 Mask@@38 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| Mask@@38) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_1456 Mask@@38 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_16877) (o_2@@38 T@Ref) (f_4@@38 T@Field_34223_645) ) (! (= (HasDirectPerm_34223_645 Mask@@39 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| Mask@@39) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_645 Mask@@39 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_16877) (o_2@@39 T@Ref) (f_4@@39 T@Field_34223_53) ) (! (= (HasDirectPerm_34223_53 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_53 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_16877) (o_2@@40 T@Ref) (f_4@@40 T@Field_34223_9091) ) (! (= (HasDirectPerm_34223_9091 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34223_9091 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_16877) (o_2@@41 T@Ref) (f_4@@41 T@Field_23724_23729) ) (! (= (HasDirectPerm_21330_55987 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_55987 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_16877) (o_2@@42 T@Ref) (f_4@@42 T@Field_21330_21331) ) (! (= (HasDirectPerm_21330_21331 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_21331 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_16877) (o_2@@43 T@Ref) (f_4@@43 T@Field_21330_1456) ) (! (= (HasDirectPerm_21330_1456 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_1456 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_16877) (o_2@@44 T@Ref) (f_4@@44 T@Field_21330_645) ) (! (= (HasDirectPerm_21330_645 Mask@@45 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| Mask@@45) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_645 Mask@@45 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_16877) (o_2@@45 T@Ref) (f_4@@45 T@Field_21330_53) ) (! (= (HasDirectPerm_21330_53 Mask@@46 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| Mask@@46) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_53 Mask@@46 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_16877) (o_2@@46 T@Ref) (f_4@@46 T@Field_21330_9091) ) (! (= (HasDirectPerm_21330_9091 Mask@@47 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| Mask@@47) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21330_9091 Mask@@47 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_16877) (o_2@@47 T@Ref) (f_4@@47 T@Field_9090_23729) ) (! (= (HasDirectPerm_9090_54605 Mask@@48 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| Mask@@48) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_54605 Mask@@48 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_16877) (o_2@@48 T@Ref) (f_4@@48 T@Field_9090_21331) ) (! (= (HasDirectPerm_9090_21331 Mask@@49 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| Mask@@49) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_21331 Mask@@49 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_16877) (o_2@@49 T@Ref) (f_4@@49 T@Field_20874_1456) ) (! (= (HasDirectPerm_9090_1456 Mask@@50 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| Mask@@50) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_1456 Mask@@50 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_16877) (o_2@@50 T@Ref) (f_4@@50 T@Field_20259_645) ) (! (= (HasDirectPerm_9090_645 Mask@@51 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| Mask@@51) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_645 Mask@@51 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_16877) (o_2@@51 T@Ref) (f_4@@51 T@Field_16916_53) ) (! (= (HasDirectPerm_9090_53 Mask@@52 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| Mask@@52) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_53 Mask@@52 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_16877) (o_2@@52 T@Ref) (f_4@@52 T@Field_16929_16930) ) (! (= (HasDirectPerm_9090_9091 Mask@@53 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| Mask@@53) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9090_9091 Mask@@53 o_2@@52 f_4@@52))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_16856) (this$_2@@2 T@Ref) (x@@8 Int) (y@@7 Int) (z@@5 Int) ) (! (dummyFunction_1833 (|Triggersf$#triggerStateless| this$_2@@2 x@@8 y@@7 z@@5))
 :qid |stdinbpl.268:15|
 :skolemid |23|
 :pattern ( (|Triggersf$'| Heap@@25 this$_2@@2 x@@8 y@@7 z@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16856) (this$_3@@2 T@Ref) (x@@9 Int) (y@@8 Int) (z@@6 Int) ) (! (dummyFunction_1833 (|Triggersh$#triggerStateless| this$_3@@2 x@@9 y@@8 z@@6))
 :qid |stdinbpl.394:15|
 :skolemid |28|
 :pattern ( (|Triggersh$'| Heap@@26 this$_3@@2 x@@9 y@@8 z@@6))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16856) (ExhaleHeap@@13 T@PolymorphicMapType_16856) (Mask@@54 T@PolymorphicMapType_16877) (o_47@@0 T@Ref) (f_43@@107 T@Field_34236_34241) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@13 Mask@@54) (=> (HasDirectPerm_34223_57343 Mask@@54 o_47@@0 f_43@@107) (= (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@27) o_47@@0 f_43@@107) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@13) o_47@@0 f_43@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@13 Mask@@54) (select (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| ExhaleHeap@@13) o_47@@0 f_43@@107))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16856) (ExhaleHeap@@14 T@PolymorphicMapType_16856) (Mask@@55 T@PolymorphicMapType_16877) (o_47@@1 T@Ref) (f_43@@108 T@Field_34223_34224) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@14 Mask@@55) (=> (HasDirectPerm_34223_21331 Mask@@55 o_47@@1 f_43@@108) (= (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@28) o_47@@1 f_43@@108) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@14) o_47@@1 f_43@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@14 Mask@@55) (select (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| ExhaleHeap@@14) o_47@@1 f_43@@108))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16856) (ExhaleHeap@@15 T@PolymorphicMapType_16856) (Mask@@56 T@PolymorphicMapType_16877) (o_47@@2 T@Ref) (f_43@@109 T@Field_34223_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@15 Mask@@56) (=> (HasDirectPerm_34223_1456 Mask@@56 o_47@@2 f_43@@109) (= (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@29) o_47@@2 f_43@@109) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@15) o_47@@2 f_43@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@15 Mask@@56) (select (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| ExhaleHeap@@15) o_47@@2 f_43@@109))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16856) (ExhaleHeap@@16 T@PolymorphicMapType_16856) (Mask@@57 T@PolymorphicMapType_16877) (o_47@@3 T@Ref) (f_43@@110 T@Field_34223_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@16 Mask@@57) (=> (HasDirectPerm_34223_645 Mask@@57 o_47@@3 f_43@@110) (= (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@30) o_47@@3 f_43@@110) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@16) o_47@@3 f_43@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@16 Mask@@57) (select (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| ExhaleHeap@@16) o_47@@3 f_43@@110))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_16856) (ExhaleHeap@@17 T@PolymorphicMapType_16856) (Mask@@58 T@PolymorphicMapType_16877) (o_47@@4 T@Ref) (f_43@@111 T@Field_34223_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_34223_53 Mask@@58 o_47@@4 f_43@@111) (= (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@31) o_47@@4 f_43@@111) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@17) o_47@@4 f_43@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| ExhaleHeap@@17) o_47@@4 f_43@@111))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_16856) (ExhaleHeap@@18 T@PolymorphicMapType_16856) (Mask@@59 T@PolymorphicMapType_16877) (o_47@@5 T@Ref) (f_43@@112 T@Field_34223_9091) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_34223_9091 Mask@@59 o_47@@5 f_43@@112) (= (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@32) o_47@@5 f_43@@112) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@18) o_47@@5 f_43@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| ExhaleHeap@@18) o_47@@5 f_43@@112))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_16856) (ExhaleHeap@@19 T@PolymorphicMapType_16856) (Mask@@60 T@PolymorphicMapType_16877) (o_47@@6 T@Ref) (f_43@@113 T@Field_23724_23729) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_21330_55987 Mask@@60 o_47@@6 f_43@@113) (= (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@33) o_47@@6 f_43@@113) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@19) o_47@@6 f_43@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| ExhaleHeap@@19) o_47@@6 f_43@@113))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_16856) (ExhaleHeap@@20 T@PolymorphicMapType_16856) (Mask@@61 T@PolymorphicMapType_16877) (o_47@@7 T@Ref) (f_43@@114 T@Field_21330_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_21330_21331 Mask@@61 o_47@@7 f_43@@114) (= (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@34) o_47@@7 f_43@@114) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@20) o_47@@7 f_43@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| ExhaleHeap@@20) o_47@@7 f_43@@114))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_16856) (ExhaleHeap@@21 T@PolymorphicMapType_16856) (Mask@@62 T@PolymorphicMapType_16877) (o_47@@8 T@Ref) (f_43@@115 T@Field_21330_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_21330_1456 Mask@@62 o_47@@8 f_43@@115) (= (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@35) o_47@@8 f_43@@115) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@21) o_47@@8 f_43@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| ExhaleHeap@@21) o_47@@8 f_43@@115))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_16856) (ExhaleHeap@@22 T@PolymorphicMapType_16856) (Mask@@63 T@PolymorphicMapType_16877) (o_47@@9 T@Ref) (f_43@@116 T@Field_21330_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_21330_645 Mask@@63 o_47@@9 f_43@@116) (= (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@36) o_47@@9 f_43@@116) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@22) o_47@@9 f_43@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| ExhaleHeap@@22) o_47@@9 f_43@@116))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_16856) (ExhaleHeap@@23 T@PolymorphicMapType_16856) (Mask@@64 T@PolymorphicMapType_16877) (o_47@@10 T@Ref) (f_43@@117 T@Field_21330_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_21330_53 Mask@@64 o_47@@10 f_43@@117) (= (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@37) o_47@@10 f_43@@117) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@23) o_47@@10 f_43@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| ExhaleHeap@@23) o_47@@10 f_43@@117))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_16856) (ExhaleHeap@@24 T@PolymorphicMapType_16856) (Mask@@65 T@PolymorphicMapType_16877) (o_47@@11 T@Ref) (f_43@@118 T@Field_21330_9091) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_21330_9091 Mask@@65 o_47@@11 f_43@@118) (= (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@38) o_47@@11 f_43@@118) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@24) o_47@@11 f_43@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| ExhaleHeap@@24) o_47@@11 f_43@@118))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_16856) (ExhaleHeap@@25 T@PolymorphicMapType_16856) (Mask@@66 T@PolymorphicMapType_16877) (o_47@@12 T@Ref) (f_43@@119 T@Field_9090_23729) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_9090_54605 Mask@@66 o_47@@12 f_43@@119) (= (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@39) o_47@@12 f_43@@119) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@25) o_47@@12 f_43@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| ExhaleHeap@@25) o_47@@12 f_43@@119))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_16856) (ExhaleHeap@@26 T@PolymorphicMapType_16856) (Mask@@67 T@PolymorphicMapType_16877) (o_47@@13 T@Ref) (f_43@@120 T@Field_9090_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_9090_21331 Mask@@67 o_47@@13 f_43@@120) (= (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@40) o_47@@13 f_43@@120) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@26) o_47@@13 f_43@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| ExhaleHeap@@26) o_47@@13 f_43@@120))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_16856) (ExhaleHeap@@27 T@PolymorphicMapType_16856) (Mask@@68 T@PolymorphicMapType_16877) (o_47@@14 T@Ref) (f_43@@121 T@Field_20874_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_9090_1456 Mask@@68 o_47@@14 f_43@@121) (= (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@41) o_47@@14 f_43@@121) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@27) o_47@@14 f_43@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| ExhaleHeap@@27) o_47@@14 f_43@@121))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_16856) (ExhaleHeap@@28 T@PolymorphicMapType_16856) (Mask@@69 T@PolymorphicMapType_16877) (o_47@@15 T@Ref) (f_43@@122 T@Field_20259_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_9090_645 Mask@@69 o_47@@15 f_43@@122) (= (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@42) o_47@@15 f_43@@122) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@28) o_47@@15 f_43@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| ExhaleHeap@@28) o_47@@15 f_43@@122))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_16856) (ExhaleHeap@@29 T@PolymorphicMapType_16856) (Mask@@70 T@PolymorphicMapType_16877) (o_47@@16 T@Ref) (f_43@@123 T@Field_16916_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_9090_53 Mask@@70 o_47@@16 f_43@@123) (= (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@43) o_47@@16 f_43@@123) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@29) o_47@@16 f_43@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| ExhaleHeap@@29) o_47@@16 f_43@@123))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_16856) (ExhaleHeap@@30 T@PolymorphicMapType_16856) (Mask@@71 T@PolymorphicMapType_16877) (o_47@@17 T@Ref) (f_43@@124 T@Field_16929_16930) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_9090_9091 Mask@@71 o_47@@17 f_43@@124) (= (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@44) o_47@@17 f_43@@124) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@30) o_47@@17 f_43@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| ExhaleHeap@@30) o_47@@17 f_43@@124))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_34236_34241) ) (! (= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_34223_1456) ) (! (= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_34223_645) ) (! (= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_34223_53) ) (! (= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_34223_9091) ) (! (= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_34223_34224) ) (! (= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_9090_23729) ) (! (= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_20874_1456) ) (! (= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_20259_645) ) (! (= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_16916_53) ) (! (= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_16929_16930) ) (! (= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_9090_21331) ) (! (= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_23724_23729) ) (! (= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_21330_1456) ) (! (= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_21330_645) ) (! (= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_21330_53) ) (! (= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_21330_9091) ) (! (= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_21330_21331) ) (! (= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16877) (SummandMask1 T@PolymorphicMapType_16877) (SummandMask2 T@PolymorphicMapType_16877) (o_2@@71 T@Ref) (f_4@@71 T@Field_34236_34241) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16877_34223_71918#PolymorphicMapType_16877| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16877) (SummandMask1@@0 T@PolymorphicMapType_16877) (SummandMask2@@0 T@PolymorphicMapType_16877) (o_2@@72 T@Ref) (f_4@@72 T@Field_34223_1456) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16877_34223_1456#PolymorphicMapType_16877| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16877) (SummandMask1@@1 T@PolymorphicMapType_16877) (SummandMask2@@1 T@PolymorphicMapType_16877) (o_2@@73 T@Ref) (f_4@@73 T@Field_34223_645) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16877_34223_645#PolymorphicMapType_16877| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16877) (SummandMask1@@2 T@PolymorphicMapType_16877) (SummandMask2@@2 T@PolymorphicMapType_16877) (o_2@@74 T@Ref) (f_4@@74 T@Field_34223_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16877_34223_53#PolymorphicMapType_16877| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16877) (SummandMask1@@3 T@PolymorphicMapType_16877) (SummandMask2@@3 T@PolymorphicMapType_16877) (o_2@@75 T@Ref) (f_4@@75 T@Field_34223_9091) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16877_34223_9091#PolymorphicMapType_16877| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_16877) (SummandMask1@@4 T@PolymorphicMapType_16877) (SummandMask2@@4 T@PolymorphicMapType_16877) (o_2@@76 T@Ref) (f_4@@76 T@Field_34223_34224) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16877_34223_9283#PolymorphicMapType_16877| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_16877) (SummandMask1@@5 T@PolymorphicMapType_16877) (SummandMask2@@5 T@PolymorphicMapType_16877) (o_2@@77 T@Ref) (f_4@@77 T@Field_9090_23729) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16877_9090_71412#PolymorphicMapType_16877| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_16877) (SummandMask1@@6 T@PolymorphicMapType_16877) (SummandMask2@@6 T@PolymorphicMapType_16877) (o_2@@78 T@Ref) (f_4@@78 T@Field_20874_1456) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16877_9090_1456#PolymorphicMapType_16877| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_16877) (SummandMask1@@7 T@PolymorphicMapType_16877) (SummandMask2@@7 T@PolymorphicMapType_16877) (o_2@@79 T@Ref) (f_4@@79 T@Field_20259_645) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16877_9090_645#PolymorphicMapType_16877| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_16877) (SummandMask1@@8 T@PolymorphicMapType_16877) (SummandMask2@@8 T@PolymorphicMapType_16877) (o_2@@80 T@Ref) (f_4@@80 T@Field_16916_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16877_9090_53#PolymorphicMapType_16877| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_16877) (SummandMask1@@9 T@PolymorphicMapType_16877) (SummandMask2@@9 T@PolymorphicMapType_16877) (o_2@@81 T@Ref) (f_4@@81 T@Field_16929_16930) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16877_9090_9091#PolymorphicMapType_16877| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_16877) (SummandMask1@@10 T@PolymorphicMapType_16877) (SummandMask2@@10 T@PolymorphicMapType_16877) (o_2@@82 T@Ref) (f_4@@82 T@Field_9090_21331) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16877_9090_9283#PolymorphicMapType_16877| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_16877) (SummandMask1@@11 T@PolymorphicMapType_16877) (SummandMask2@@11 T@PolymorphicMapType_16877) (o_2@@83 T@Ref) (f_4@@83 T@Field_23724_23729) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16877_9282_70921#PolymorphicMapType_16877| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_16877) (SummandMask1@@12 T@PolymorphicMapType_16877) (SummandMask2@@12 T@PolymorphicMapType_16877) (o_2@@84 T@Ref) (f_4@@84 T@Field_21330_1456) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16877_9282_1456#PolymorphicMapType_16877| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_16877) (SummandMask1@@13 T@PolymorphicMapType_16877) (SummandMask2@@13 T@PolymorphicMapType_16877) (o_2@@85 T@Ref) (f_4@@85 T@Field_21330_645) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16877_9282_645#PolymorphicMapType_16877| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_16877) (SummandMask1@@14 T@PolymorphicMapType_16877) (SummandMask2@@14 T@PolymorphicMapType_16877) (o_2@@86 T@Ref) (f_4@@86 T@Field_21330_53) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_16877_9282_53#PolymorphicMapType_16877| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_16877) (SummandMask1@@15 T@PolymorphicMapType_16877) (SummandMask2@@15 T@PolymorphicMapType_16877) (o_2@@87 T@Ref) (f_4@@87 T@Field_21330_9091) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_16877_9282_9091#PolymorphicMapType_16877| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_16877) (SummandMask1@@16 T@PolymorphicMapType_16877) (SummandMask2@@16 T@PolymorphicMapType_16877) (o_2@@88 T@Ref) (f_4@@88 T@Field_21330_21331) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_16877_9282_9283#PolymorphicMapType_16877| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_16856) (Mask@@72 T@PolymorphicMapType_16877) (this$_4@@0 T@Ref) (x@@10 Int) ) (!  (=> (state Heap@@45 Mask@@72) (= (|Triggersg$'| Heap@@45 this$_4@@0 x@@10) (|Triggersg$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@45) null (Triggersvalid$ this$_4@@0)) this$_4@@0 x@@10)))
 :qid |stdinbpl.533:15|
 :skolemid |35|
 :pattern ( (state Heap@@45 Mask@@72) (|Triggersg$'| Heap@@45 this$_4@@0 x@@10))
 :pattern ( (state Heap@@45 Mask@@72) (|Triggersg$#triggerStateless| this$_4@@0 x@@10) (|Triggersvalid$#trigger_9282| Heap@@45 (Triggersvalid$ this$_4@@0)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_16856) (Mask@@73 T@PolymorphicMapType_16877) (this$_5@@1 T@Ref) (x@@11 Int) (y@@9 Bool) ) (!  (=> (state Heap@@46 Mask@@73) (= (|Triggersi$'| Heap@@46 this$_5@@1 x@@11 y@@9) (|Triggersi$#frame| (select (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@46) null (Triggersvalid$ this$_5@@1)) this$_5@@1 x@@11 y@@9)))
 :qid |stdinbpl.659:15|
 :skolemid |40|
 :pattern ( (state Heap@@46 Mask@@73) (|Triggersi$'| Heap@@46 this$_5@@1 x@@11 y@@9))
 :pattern ( (state Heap@@46 Mask@@73) (|Triggersi$#triggerStateless| this$_5@@1 x@@11 y@@9) (|Triggersvalid$#trigger_9282| Heap@@46 (Triggersvalid$ this$_5@@1)))
)))
(assert (forall ((this$@@3 T@Ref) ) (! (= (getPredWandId_9258_9259 (Triggers$MonitorInvariant this$@@3)) 0)
 :qid |stdinbpl.776:15|
 :skolemid |44|
 :pattern ( (Triggers$MonitorInvariant this$@@3))
)))
(assert (forall ((this$_1@@3 T@Ref) ) (! (= (getPredWandId_9282_9283 (Triggersvalid$ this$_1@@3)) 1)
 :qid |stdinbpl.826:15|
 :skolemid |50|
 :pattern ( (Triggersvalid$ this$_1@@3))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_16856) (Mask@@74 T@PolymorphicMapType_16877) (this$_5@@2 T@Ref) (x@@12 Int) (y@@10 Bool) ) (!  (=> (and (state Heap@@47 Mask@@74) (< AssumeFunctionsAbove 1)) (=> (not (= this$_5@@2 null)) (= (Triggersi$ Heap@@47 this$_5@@2 x@@12 y@@10) (|Triggersi$'| Heap@@47 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@47) this$_5@@2 Triggersnext$) x@@12 y@@10))))
 :qid |stdinbpl.652:15|
 :skolemid |39|
 :pattern ( (state Heap@@47 Mask@@74) (Triggersi$ Heap@@47 this$_5@@2 x@@12 y@@10))
 :pattern ( (state Heap@@47 Mask@@74) (|Triggersi$#triggerStateless| this$_5@@2 x@@12 y@@10) (|Triggersvalid$#trigger_9282| Heap@@47 (Triggersvalid$ this$_5@@2)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_16856) (Mask@@75 T@PolymorphicMapType_16877) (this$_4@@1 T@Ref) (x@@13 Int) ) (!  (=> (and (state Heap@@48 Mask@@75) (< AssumeFunctionsAbove 3)) (=> (not (= this$_4@@1 null)) (= (Triggersg$ Heap@@48 this$_4@@1 x@@13) (|Triggersg$'| Heap@@48 (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@48) this$_4@@1 Triggersnext$) x@@13))))
 :qid |stdinbpl.526:15|
 :skolemid |34|
 :pattern ( (state Heap@@48 Mask@@75) (Triggersg$ Heap@@48 this$_4@@1 x@@13))
 :pattern ( (state Heap@@48 Mask@@75) (|Triggersg$#triggerStateless| this$_4@@1 x@@13) (|Triggersvalid$#trigger_9282| Heap@@48 (Triggersvalid$ this$_4@@1)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_16856) (o_42 T@Ref) (f_45 T@Field_34223_1456) (v Int) ) (! (succHeap Heap@@49 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@49) (store (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@49) o_42 f_45 v) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@49) (store (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@49) o_42 f_45 v) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@49) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_16856) (o_42@@0 T@Ref) (f_45@@0 T@Field_34223_645) (v@@0 Real) ) (! (succHeap Heap@@50 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@50) (store (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@50) o_42@@0 f_45@@0 v@@0) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@50) (store (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@50) o_42@@0 f_45@@0 v@@0) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@50) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_16856) (o_42@@1 T@Ref) (f_45@@1 T@Field_34236_34241) (v@@1 T@PolymorphicMapType_17405) ) (! (succHeap Heap@@51 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@51) (store (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@51) o_42@@1 f_45@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@51) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@51) (store (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@51) o_42@@1 f_45@@1 v@@1)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_16856) (o_42@@2 T@Ref) (f_45@@2 T@Field_34223_34224) (v@@2 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@52) (store (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@52) o_42@@2 f_45@@2 v@@2) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@52) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@52) (store (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@52) o_42@@2 f_45@@2 v@@2) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_16856) (o_42@@3 T@Ref) (f_45@@3 T@Field_34223_9091) (v@@3 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@53) (store (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@53) o_42@@3 f_45@@3 v@@3) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@53) (store (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@53) o_42@@3 f_45@@3 v@@3) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@53) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_16856) (o_42@@4 T@Ref) (f_45@@4 T@Field_34223_53) (v@@4 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@54) (store (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@54) o_42@@4 f_45@@4 v@@4) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@54) (store (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@54) o_42@@4 f_45@@4 v@@4) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@54) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_16856) (o_42@@5 T@Ref) (f_45@@5 T@Field_21330_1456) (v@@5 Int) ) (! (succHeap Heap@@55 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@55) (store (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@55) o_42@@5 f_45@@5 v@@5) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@55) (store (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@55) o_42@@5 f_45@@5 v@@5) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@55) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_16856) (o_42@@6 T@Ref) (f_45@@6 T@Field_21330_645) (v@@6 Real) ) (! (succHeap Heap@@56 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@56) (store (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@56) o_42@@6 f_45@@6 v@@6) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@56) (store (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@56) o_42@@6 f_45@@6 v@@6) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@56) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_16856) (o_42@@7 T@Ref) (f_45@@7 T@Field_23724_23729) (v@@7 T@PolymorphicMapType_17405) ) (! (succHeap Heap@@57 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@57) (store (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@57) o_42@@7 f_45@@7 v@@7) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@57) (store (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@57) o_42@@7 f_45@@7 v@@7) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@57) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_16856) (o_42@@8 T@Ref) (f_45@@8 T@Field_21330_21331) (v@@8 T@FrameType) ) (! (succHeap Heap@@58 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@58) (store (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@58) o_42@@8 f_45@@8 v@@8) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@58) (store (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@58) o_42@@8 f_45@@8 v@@8) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@58) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_16856) (o_42@@9 T@Ref) (f_45@@9 T@Field_21330_9091) (v@@9 T@Ref) ) (! (succHeap Heap@@59 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@59) (store (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@59) o_42@@9 f_45@@9 v@@9) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@59) (store (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@59) o_42@@9 f_45@@9 v@@9) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@59) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_16856) (o_42@@10 T@Ref) (f_45@@10 T@Field_21330_53) (v@@10 Bool) ) (! (succHeap Heap@@60 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@60) (store (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@60) o_42@@10 f_45@@10 v@@10) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@60) (store (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@60) o_42@@10 f_45@@10 v@@10) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@60) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_16856) (o_42@@11 T@Ref) (f_45@@11 T@Field_20874_1456) (v@@11 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@61) (store (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@61) o_42@@11 f_45@@11 v@@11) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@61) (store (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@61) o_42@@11 f_45@@11 v@@11) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@61) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_16856) (o_42@@12 T@Ref) (f_45@@12 T@Field_20259_645) (v@@12 Real) ) (! (succHeap Heap@@62 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@62) (store (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@62) o_42@@12 f_45@@12 v@@12) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@62) (store (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@62) o_42@@12 f_45@@12 v@@12) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@62) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_16856) (o_42@@13 T@Ref) (f_45@@13 T@Field_9090_23729) (v@@13 T@PolymorphicMapType_17405) ) (! (succHeap Heap@@63 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@63) (store (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@63) o_42@@13 f_45@@13 v@@13) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@63) (store (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@63) o_42@@13 f_45@@13 v@@13) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@63) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_16856) (o_42@@14 T@Ref) (f_45@@14 T@Field_9090_21331) (v@@14 T@FrameType) ) (! (succHeap Heap@@64 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@64) (store (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@64) o_42@@14 f_45@@14 v@@14) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@64) (store (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@64) o_42@@14 f_45@@14 v@@14) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@64) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_16856) (o_42@@15 T@Ref) (f_45@@15 T@Field_16929_16930) (v@@15 T@Ref) ) (! (succHeap Heap@@65 (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@65) (store (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@65) o_42@@15 f_45@@15 v@@15) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@65) (store (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@65) o_42@@15 f_45@@15 v@@15) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@65) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_16856) (o_42@@16 T@Ref) (f_45@@16 T@Field_16916_53) (v@@16 Bool) ) (! (succHeap Heap@@66 (PolymorphicMapType_16856 (store (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@66) o_42@@16 f_45@@16 v@@16) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16856 (store (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@66) o_42@@16 f_45@@16 v@@16) (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9282_9283#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9286_23816#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_9090_54647#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_21330_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_9091#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_53#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_645#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_1456#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_21331#PolymorphicMapType_16856| Heap@@66) (|PolymorphicMapType_16856_34223_57385#PolymorphicMapType_16856| Heap@@66)))
)))
(assert (forall ((this$@@4 T@Ref) ) (! (= (PredicateMaskField_9258 (Triggers$MonitorInvariant this$@@4)) (|Triggers$MonitorInvariant#sm| this$@@4))
 :qid |stdinbpl.768:15|
 :skolemid |42|
 :pattern ( (PredicateMaskField_9258 (Triggers$MonitorInvariant this$@@4)))
)))
(assert (forall ((this$_1@@4 T@Ref) ) (! (= (PredicateMaskField_9282 (Triggersvalid$ this$_1@@4)) (|Triggersvalid$#sm| this$_1@@4))
 :qid |stdinbpl.818:15|
 :skolemid |48|
 :pattern ( (PredicateMaskField_9282 (Triggersvalid$ this$_1@@4)))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o_42@@17 T@Ref) (f_48 T@Field_16929_16930) (Heap@@67 T@PolymorphicMapType_16856) ) (!  (=> (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@67) o_42@@17 $allocated) (select (|PolymorphicMapType_16856_8956_53#PolymorphicMapType_16856| Heap@@67) (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@67) o_42@@17 f_48) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16856_8959_8960#PolymorphicMapType_16856| Heap@@67) o_42@@17 f_48))
)))
(assert (forall ((p@@3 T@Field_34223_34224) (v_1@@2 T@FrameType) (q T@Field_34223_34224) (w@@2 T@FrameType) (r T@Field_34223_34224) (u T@FrameType) ) (!  (=> (and (InsidePredicate_34223_34223 p@@3 v_1@@2 q w@@2) (InsidePredicate_34223_34223 q w@@2 r u)) (InsidePredicate_34223_34223 p@@3 v_1@@2 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_34223 p@@3 v_1@@2 q w@@2) (InsidePredicate_34223_34223 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_34223_34224) (v_1@@3 T@FrameType) (q@@0 T@Field_34223_34224) (w@@3 T@FrameType) (r@@0 T@Field_9090_21331) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_34223 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_34223_16916 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_34223_16916 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_34223 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_34223_16916 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_34223_34224) (v_1@@4 T@FrameType) (q@@1 T@Field_34223_34224) (w@@4 T@FrameType) (r@@1 T@Field_21330_21331) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_34223 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_34223_9282 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_34223_9282 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_34223 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_34223_9282 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_34223_34224) (v_1@@5 T@FrameType) (q@@2 T@Field_9090_21331) (w@@5 T@FrameType) (r@@2 T@Field_34223_34224) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_16916 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16916_34223 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_34223_34223 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_16916 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16916_34223 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_34223_34224) (v_1@@6 T@FrameType) (q@@3 T@Field_9090_21331) (w@@6 T@FrameType) (r@@3 T@Field_9090_21331) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_16916 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16916_16916 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_34223_16916 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_16916 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16916_16916 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_34223_34224) (v_1@@7 T@FrameType) (q@@4 T@Field_9090_21331) (w@@7 T@FrameType) (r@@4 T@Field_21330_21331) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_16916 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16916_9282 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_34223_9282 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_16916 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16916_9282 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_34223_34224) (v_1@@8 T@FrameType) (q@@5 T@Field_21330_21331) (w@@8 T@FrameType) (r@@5 T@Field_34223_34224) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_9282 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9282_34223 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_34223_34223 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_9282 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_9282_34223 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_34223_34224) (v_1@@9 T@FrameType) (q@@6 T@Field_21330_21331) (w@@9 T@FrameType) (r@@6 T@Field_9090_21331) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_9282 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9282_16916 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_34223_16916 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_9282 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_9282_16916 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_34223_34224) (v_1@@10 T@FrameType) (q@@7 T@Field_21330_21331) (w@@10 T@FrameType) (r@@7 T@Field_21330_21331) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_34223_9282 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9282_9282 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_34223_9282 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34223_9282 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_9282_9282 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9090_21331) (v_1@@11 T@FrameType) (q@@8 T@Field_34223_34224) (w@@11 T@FrameType) (r@@8 T@Field_34223_34224) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_34223 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_34223_34223 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16916_34223 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_34223 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_34223_34223 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9090_21331) (v_1@@12 T@FrameType) (q@@9 T@Field_34223_34224) (w@@12 T@FrameType) (r@@9 T@Field_9090_21331) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_34223 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_34223_16916 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16916_16916 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_34223 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_34223_16916 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9090_21331) (v_1@@13 T@FrameType) (q@@10 T@Field_34223_34224) (w@@13 T@FrameType) (r@@10 T@Field_21330_21331) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_34223 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_34223_9282 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16916_9282 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_34223 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_34223_9282 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9090_21331) (v_1@@14 T@FrameType) (q@@11 T@Field_9090_21331) (w@@14 T@FrameType) (r@@11 T@Field_34223_34224) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_16916 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16916_34223 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16916_34223 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_16916 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16916_34223 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9090_21331) (v_1@@15 T@FrameType) (q@@12 T@Field_9090_21331) (w@@15 T@FrameType) (r@@12 T@Field_9090_21331) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_16916 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16916_16916 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16916_16916 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_16916 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16916_16916 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9090_21331) (v_1@@16 T@FrameType) (q@@13 T@Field_9090_21331) (w@@16 T@FrameType) (r@@13 T@Field_21330_21331) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_16916 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16916_9282 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16916_9282 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_16916 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16916_9282 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9090_21331) (v_1@@17 T@FrameType) (q@@14 T@Field_21330_21331) (w@@17 T@FrameType) (r@@14 T@Field_34223_34224) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_9282 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9282_34223 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16916_34223 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_9282 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_9282_34223 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9090_21331) (v_1@@18 T@FrameType) (q@@15 T@Field_21330_21331) (w@@18 T@FrameType) (r@@15 T@Field_9090_21331) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_9282 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9282_16916 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16916_16916 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_9282 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_9282_16916 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9090_21331) (v_1@@19 T@FrameType) (q@@16 T@Field_21330_21331) (w@@19 T@FrameType) (r@@16 T@Field_21330_21331) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16916_9282 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9282_9282 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16916_9282 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16916_9282 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_9282_9282 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_21330_21331) (v_1@@20 T@FrameType) (q@@17 T@Field_34223_34224) (w@@20 T@FrameType) (r@@17 T@Field_34223_34224) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_34223 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_34223_34223 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_9282_34223 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_34223 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_34223_34223 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_21330_21331) (v_1@@21 T@FrameType) (q@@18 T@Field_34223_34224) (w@@21 T@FrameType) (r@@18 T@Field_9090_21331) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_34223 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_34223_16916 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_9282_16916 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_34223 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_34223_16916 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_21330_21331) (v_1@@22 T@FrameType) (q@@19 T@Field_34223_34224) (w@@22 T@FrameType) (r@@19 T@Field_21330_21331) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_34223 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_34223_9282 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_9282_9282 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_34223 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_34223_9282 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_21330_21331) (v_1@@23 T@FrameType) (q@@20 T@Field_9090_21331) (w@@23 T@FrameType) (r@@20 T@Field_34223_34224) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_16916 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16916_34223 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_9282_34223 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_16916 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16916_34223 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_21330_21331) (v_1@@24 T@FrameType) (q@@21 T@Field_9090_21331) (w@@24 T@FrameType) (r@@21 T@Field_9090_21331) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_16916 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16916_16916 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_9282_16916 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_16916 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16916_16916 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_21330_21331) (v_1@@25 T@FrameType) (q@@22 T@Field_9090_21331) (w@@25 T@FrameType) (r@@22 T@Field_21330_21331) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_16916 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16916_9282 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_9282_9282 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_16916 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16916_9282 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_21330_21331) (v_1@@26 T@FrameType) (q@@23 T@Field_21330_21331) (w@@26 T@FrameType) (r@@23 T@Field_34223_34224) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_9282 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9282_34223 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_9282_34223 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_9282 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_9282_34223 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_21330_21331) (v_1@@27 T@FrameType) (q@@24 T@Field_21330_21331) (w@@27 T@FrameType) (r@@24 T@Field_9090_21331) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_9282 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9282_16916 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_9282_16916 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_9282 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_9282_16916 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_21330_21331) (v_1@@28 T@FrameType) (q@@25 T@Field_21330_21331) (w@@28 T@FrameType) (r@@25 T@Field_21330_21331) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_9282_9282 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9282_9282 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_9282_9282 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9282_9282 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_9282_9282 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@68 T@PolymorphicMapType_16856) (this$_4@@2 T@Ref) (x@@14 Int) ) (!  (and (= (Triggersg$ Heap@@68 this$_4@@2 x@@14) (|Triggersg$'| Heap@@68 this$_4@@2 x@@14)) (dummyFunction_1833 (|Triggersg$#triggerStateless| this$_4@@2 x@@14)))
 :qid |stdinbpl.516:15|
 :skolemid |32|
 :pattern ( (Triggersg$ Heap@@68 this$_4@@2 x@@14))
)))
; Invalid

