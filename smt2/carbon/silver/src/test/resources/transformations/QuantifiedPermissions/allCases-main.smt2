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
(declare-sort T@Field_10469_53 0)
(declare-sort T@Field_10482_10483 0)
(declare-sort T@Field_16651_16652 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16518_3178 0)
(declare-sort T@Field_16664_16669 0)
(declare-sort T@Field_17571_17572 0)
(declare-sort T@Field_16594_16596 0)
(declare-sort T@Seq_3056 0)
(declare-sort T@Field_6867_16652 0)
(declare-sort T@Field_6867_16669 0)
(declare-sort T@Field_16651_3178 0)
(declare-sort T@Field_16651_53 0)
(declare-sort T@Field_16651_10483 0)
(declare-sort T@Field_16651_16596 0)
(declare-sort T@Field_17571_3178 0)
(declare-sort T@Field_17571_53 0)
(declare-sort T@Field_17571_10483 0)
(declare-sort T@Field_17571_16596 0)
(declare-sort T@Field_17584_17589 0)
(declare-datatypes ((T@PolymorphicMapType_10430 0)) (((PolymorphicMapType_10430 (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| (Array T@Ref T@Field_16518_3178 Real)) (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| (Array T@Ref T@Field_16651_16652 Real)) (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| (Array T@Ref T@Field_17571_17572 Real)) (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| (Array T@Ref T@Field_6867_16652 Real)) (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| (Array T@Ref T@Field_10469_53 Real)) (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| (Array T@Ref T@Field_10482_10483 Real)) (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| (Array T@Ref T@Field_16594_16596 Real)) (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| (Array T@Ref T@Field_6867_16669 Real)) (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| (Array T@Ref T@Field_16651_3178 Real)) (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| (Array T@Ref T@Field_16651_53 Real)) (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| (Array T@Ref T@Field_16651_10483 Real)) (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| (Array T@Ref T@Field_16651_16596 Real)) (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| (Array T@Ref T@Field_16664_16669 Real)) (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| (Array T@Ref T@Field_17571_3178 Real)) (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| (Array T@Ref T@Field_17571_53 Real)) (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| (Array T@Ref T@Field_17571_10483 Real)) (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| (Array T@Ref T@Field_17571_16596 Real)) (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| (Array T@Ref T@Field_17584_17589 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10958 0)) (((PolymorphicMapType_10958 (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (Array T@Ref T@Field_16518_3178 Bool)) (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (Array T@Ref T@Field_10469_53 Bool)) (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (Array T@Ref T@Field_10482_10483 Bool)) (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (Array T@Ref T@Field_16594_16596 Bool)) (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (Array T@Ref T@Field_6867_16652 Bool)) (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (Array T@Ref T@Field_6867_16669 Bool)) (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (Array T@Ref T@Field_16651_3178 Bool)) (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (Array T@Ref T@Field_16651_53 Bool)) (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (Array T@Ref T@Field_16651_10483 Bool)) (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (Array T@Ref T@Field_16651_16596 Bool)) (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (Array T@Ref T@Field_16651_16652 Bool)) (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (Array T@Ref T@Field_16664_16669 Bool)) (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (Array T@Ref T@Field_17571_3178 Bool)) (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (Array T@Ref T@Field_17571_53 Bool)) (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (Array T@Ref T@Field_17571_10483 Bool)) (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (Array T@Ref T@Field_17571_16596 Bool)) (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (Array T@Ref T@Field_17571_17572 Bool)) (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (Array T@Ref T@Field_17584_17589 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10409 0)) (((PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| (Array T@Ref T@Field_10469_53 Bool)) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| (Array T@Ref T@Field_10482_10483 T@Ref)) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| (Array T@Ref T@Field_16651_16652 T@FrameType)) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| (Array T@Ref T@Field_16518_3178 Int)) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| (Array T@Ref T@Field_16664_16669 T@PolymorphicMapType_10958)) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| (Array T@Ref T@Field_17571_17572 T@FrameType)) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| (Array T@Ref T@Field_16594_16596 T@Seq_3056)) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| (Array T@Ref T@Field_6867_16652 T@FrameType)) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| (Array T@Ref T@Field_6867_16669 T@PolymorphicMapType_10958)) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| (Array T@Ref T@Field_16651_3178 Int)) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| (Array T@Ref T@Field_16651_53 Bool)) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| (Array T@Ref T@Field_16651_10483 T@Ref)) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| (Array T@Ref T@Field_16651_16596 T@Seq_3056)) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| (Array T@Ref T@Field_17571_3178 Int)) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| (Array T@Ref T@Field_17571_53 Bool)) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| (Array T@Ref T@Field_17571_10483 T@Ref)) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| (Array T@Ref T@Field_17571_16596 T@Seq_3056)) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| (Array T@Ref T@Field_17584_17589 T@PolymorphicMapType_10958)) ) ) ))
(declare-fun $allocated () T@Field_10469_53)
(declare-fun f_7 () T@Field_16518_3178)
(declare-fun g () T@Field_16518_3178)
(declare-fun vals () T@Field_16594_16596)
(declare-sort T@Seq_18477 0)
(declare-fun |Seq#Length_18477| (T@Seq_18477) Int)
(declare-fun |Seq#Drop_18477| (T@Seq_18477 Int) T@Seq_18477)
(declare-fun |Seq#Length_3056| (T@Seq_3056) Int)
(declare-fun |Seq#Drop_3056| (T@Seq_3056 Int) T@Seq_3056)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10409 T@PolymorphicMapType_10409 T@PolymorphicMapType_10430) Bool)
(declare-fun IsPredicateField_6900_6901 (T@Field_17571_17572) Bool)
(declare-fun HasDirectPerm_17571_16652 (T@PolymorphicMapType_10430 T@Ref T@Field_17571_17572) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6900 (T@Field_17571_17572) T@Field_17584_17589)
(declare-fun IsPredicateField_6875_6876 (T@Field_16651_16652) Bool)
(declare-fun HasDirectPerm_16651_16652 (T@PolymorphicMapType_10430 T@Ref T@Field_16651_16652) Bool)
(declare-fun PredicateMaskField_6875 (T@Field_16651_16652) T@Field_16664_16669)
(declare-fun IsPredicateField_6867_33477 (T@Field_6867_16652) Bool)
(declare-fun HasDirectPerm_6867_16652 (T@PolymorphicMapType_10430 T@Ref T@Field_6867_16652) Bool)
(declare-fun PredicateMaskField_6867 (T@Field_6867_16652) T@Field_6867_16669)
(declare-fun IsWandField_17571_39785 (T@Field_17571_17572) Bool)
(declare-fun WandMaskField_17571 (T@Field_17571_17572) T@Field_17584_17589)
(declare-fun IsWandField_16651_39428 (T@Field_16651_16652) Bool)
(declare-fun WandMaskField_16651 (T@Field_16651_16652) T@Field_16664_16669)
(declare-fun IsWandField_6867_39071 (T@Field_6867_16652) Bool)
(declare-fun WandMaskField_6867 (T@Field_6867_16652) T@Field_6867_16669)
(declare-fun succHeap (T@PolymorphicMapType_10409 T@PolymorphicMapType_10409) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10409 T@PolymorphicMapType_10409) Bool)
(declare-fun state (T@PolymorphicMapType_10409 T@PolymorphicMapType_10430) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10430) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10958)
(declare-fun |Seq#Index_18477| (T@Seq_18477 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3056| (T@Seq_3056 Int) Int)
(declare-fun |Seq#Empty_18477| () T@Seq_18477)
(declare-fun |Seq#Empty_3056| () T@Seq_3056)
(declare-fun pred_1 (T@Ref) T@Field_16651_16652)
(declare-fun p_2 (T@Ref) T@Field_17571_17572)
(declare-fun |pred#trigger_6875| (T@PolymorphicMapType_10409 T@Field_16651_16652) Bool)
(declare-fun |pred#everUsed_6875| (T@Field_16651_16652) Bool)
(declare-fun |p#trigger_6900| (T@PolymorphicMapType_10409 T@Field_17571_17572) Bool)
(declare-fun |p#everUsed_6900| (T@Field_17571_17572) Bool)
(declare-fun |Seq#Update_18477| (T@Seq_18477 Int T@Ref) T@Seq_18477)
(declare-fun |Seq#Update_3056| (T@Seq_3056 Int Int) T@Seq_3056)
(declare-fun |Seq#Take_18477| (T@Seq_18477 Int) T@Seq_18477)
(declare-fun |Seq#Take_3056| (T@Seq_3056 Int) T@Seq_3056)
(declare-fun |Seq#Contains_3056| (T@Seq_3056 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3056)
(declare-fun |Seq#Contains_6928| (T@Seq_18477 T@Ref) Bool)
(declare-fun |Seq#Skolem_6928| (T@Seq_18477 T@Ref) Int)
(declare-fun |Seq#Skolem_3056| (T@Seq_3056 Int) Int)
(declare-fun |Seq#Singleton_18477| (T@Ref) T@Seq_18477)
(declare-fun |Seq#Singleton_3056| (Int) T@Seq_3056)
(declare-fun |pred#sm| (T@Ref) T@Field_16664_16669)
(declare-fun |p#sm| (T@Ref) T@Field_17584_17589)
(declare-fun |Seq#Append_18477| (T@Seq_18477 T@Seq_18477) T@Seq_18477)
(declare-fun |Seq#Append_3056| (T@Seq_3056 T@Seq_3056) T@Seq_3056)
(declare-fun dummyHeap () T@PolymorphicMapType_10409)
(declare-fun ZeroMask () T@PolymorphicMapType_10430)
(declare-fun InsidePredicate_17571_17571 (T@Field_17571_17572 T@FrameType T@Field_17571_17572 T@FrameType) Bool)
(declare-fun InsidePredicate_16651_16651 (T@Field_16651_16652 T@FrameType T@Field_16651_16652 T@FrameType) Bool)
(declare-fun InsidePredicate_10469_10469 (T@Field_6867_16652 T@FrameType T@Field_6867_16652 T@FrameType) Bool)
(declare-fun IsPredicateField_6867_3178 (T@Field_16518_3178) Bool)
(declare-fun IsWandField_6867_3178 (T@Field_16518_3178) Bool)
(declare-fun IsPredicateField_6871_16615 (T@Field_16594_16596) Bool)
(declare-fun IsWandField_6871_16638 (T@Field_16594_16596) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6900_51940 (T@Field_17584_17589) Bool)
(declare-fun IsWandField_6900_51956 (T@Field_17584_17589) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6900_16596 (T@Field_17571_16596) Bool)
(declare-fun IsWandField_6900_16596 (T@Field_17571_16596) Bool)
(declare-fun IsPredicateField_6900_10483 (T@Field_17571_10483) Bool)
(declare-fun IsWandField_6900_10483 (T@Field_17571_10483) Bool)
(declare-fun IsPredicateField_6900_53 (T@Field_17571_53) Bool)
(declare-fun IsWandField_6900_53 (T@Field_17571_53) Bool)
(declare-fun IsPredicateField_6900_3178 (T@Field_17571_3178) Bool)
(declare-fun IsWandField_6900_3178 (T@Field_17571_3178) Bool)
(declare-fun IsPredicateField_6875_50941 (T@Field_16664_16669) Bool)
(declare-fun IsWandField_6875_50957 (T@Field_16664_16669) Bool)
(declare-fun IsPredicateField_6875_16596 (T@Field_16651_16596) Bool)
(declare-fun IsWandField_6875_16596 (T@Field_16651_16596) Bool)
(declare-fun IsPredicateField_6875_10483 (T@Field_16651_10483) Bool)
(declare-fun IsWandField_6875_10483 (T@Field_16651_10483) Bool)
(declare-fun IsPredicateField_6875_53 (T@Field_16651_53) Bool)
(declare-fun IsWandField_6875_53 (T@Field_16651_53) Bool)
(declare-fun IsPredicateField_6875_3178 (T@Field_16651_3178) Bool)
(declare-fun IsWandField_6875_3178 (T@Field_16651_3178) Bool)
(declare-fun IsPredicateField_6867_49942 (T@Field_6867_16669) Bool)
(declare-fun IsWandField_6867_49958 (T@Field_6867_16669) Bool)
(declare-fun IsPredicateField_6867_10483 (T@Field_10482_10483) Bool)
(declare-fun IsWandField_6867_10483 (T@Field_10482_10483) Bool)
(declare-fun IsPredicateField_6867_53 (T@Field_10469_53) Bool)
(declare-fun IsWandField_6867_53 (T@Field_10469_53) Bool)
(declare-fun HasDirectPerm_17571_33189 (T@PolymorphicMapType_10430 T@Ref T@Field_17584_17589) Bool)
(declare-fun HasDirectPerm_17571_16596 (T@PolymorphicMapType_10430 T@Ref T@Field_17571_16596) Bool)
(declare-fun HasDirectPerm_17571_10483 (T@PolymorphicMapType_10430 T@Ref T@Field_17571_10483) Bool)
(declare-fun HasDirectPerm_17571_53 (T@PolymorphicMapType_10430 T@Ref T@Field_17571_53) Bool)
(declare-fun HasDirectPerm_17571_3178 (T@PolymorphicMapType_10430 T@Ref T@Field_17571_3178) Bool)
(declare-fun HasDirectPerm_16651_31842 (T@PolymorphicMapType_10430 T@Ref T@Field_16664_16669) Bool)
(declare-fun HasDirectPerm_16651_16596 (T@PolymorphicMapType_10430 T@Ref T@Field_16651_16596) Bool)
(declare-fun HasDirectPerm_16651_10483 (T@PolymorphicMapType_10430 T@Ref T@Field_16651_10483) Bool)
(declare-fun HasDirectPerm_16651_53 (T@PolymorphicMapType_10430 T@Ref T@Field_16651_53) Bool)
(declare-fun HasDirectPerm_16651_3178 (T@PolymorphicMapType_10430 T@Ref T@Field_16651_3178) Bool)
(declare-fun HasDirectPerm_6867_30452 (T@PolymorphicMapType_10430 T@Ref T@Field_6867_16669) Bool)
(declare-fun HasDirectPerm_6867_16596 (T@PolymorphicMapType_10430 T@Ref T@Field_16594_16596) Bool)
(declare-fun HasDirectPerm_6867_10483 (T@PolymorphicMapType_10430 T@Ref T@Field_10482_10483) Bool)
(declare-fun HasDirectPerm_6867_53 (T@PolymorphicMapType_10430 T@Ref T@Field_10469_53) Bool)
(declare-fun HasDirectPerm_6867_3178 (T@PolymorphicMapType_10430 T@Ref T@Field_16518_3178) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10430 T@PolymorphicMapType_10430 T@PolymorphicMapType_10430) Bool)
(declare-fun |Seq#Equal_18477| (T@Seq_18477 T@Seq_18477) Bool)
(declare-fun |Seq#Equal_3056| (T@Seq_3056 T@Seq_3056) Bool)
(declare-fun |Seq#ContainsTrigger_6928| (T@Seq_18477 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3056| (T@Seq_3056 Int) Bool)
(declare-fun getPredWandId_6875_6876 (T@Field_16651_16652) Int)
(declare-fun getPredWandId_6900_6901 (T@Field_17571_17572) Int)
(declare-fun |Seq#SkolemDiff_18477| (T@Seq_18477 T@Seq_18477) Int)
(declare-fun |Seq#SkolemDiff_3056| (T@Seq_3056 T@Seq_3056) Int)
(declare-fun InsidePredicate_17571_16651 (T@Field_17571_17572 T@FrameType T@Field_16651_16652 T@FrameType) Bool)
(declare-fun InsidePredicate_17571_10469 (T@Field_17571_17572 T@FrameType T@Field_6867_16652 T@FrameType) Bool)
(declare-fun InsidePredicate_16651_17571 (T@Field_16651_16652 T@FrameType T@Field_17571_17572 T@FrameType) Bool)
(declare-fun InsidePredicate_16651_10469 (T@Field_16651_16652 T@FrameType T@Field_6867_16652 T@FrameType) Bool)
(declare-fun InsidePredicate_10469_17571 (T@Field_6867_16652 T@FrameType T@Field_17571_17572 T@FrameType) Bool)
(declare-fun InsidePredicate_10469_16651 (T@Field_6867_16652 T@FrameType T@Field_16651_16652 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_18477) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_18477| s)) (= (|Seq#Length_18477| (|Seq#Drop_18477| s n)) (- (|Seq#Length_18477| s) n))) (=> (< (|Seq#Length_18477| s) n) (= (|Seq#Length_18477| (|Seq#Drop_18477| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_18477| (|Seq#Drop_18477| s n)) (|Seq#Length_18477| s))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_18477| (|Seq#Drop_18477| s n)))
 :pattern ( (|Seq#Length_18477| s) (|Seq#Drop_18477| s n))
)))
(assert (forall ((s@@0 T@Seq_3056) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3056| s@@0)) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) (- (|Seq#Length_3056| s@@0) n@@0))) (=> (< (|Seq#Length_3056| s@@0) n@@0) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) (|Seq#Length_3056| s@@0))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3056| s@@0) (|Seq#Drop_3056| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_10409) (ExhaleHeap T@PolymorphicMapType_10409) (Mask T@PolymorphicMapType_10430) (pm_f_34 T@Field_17571_17572) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_17571_16652 Mask null pm_f_34) (IsPredicateField_6900_6901 pm_f_34)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_16518_3178) ) (!  (=> (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34 f_65) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap) o2_34 f_65) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_10469_53) ) (!  (=> (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_10482_10483) ) (!  (=> (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_16594_16596) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_6867_16652) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap) o2_34@@3 f_65@@3))
))) (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_6867_16669) ) (!  (=> (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap) o2_34@@4 f_65@@4))
))) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_16651_3178) ) (!  (=> (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_16651_53) ) (!  (=> (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_16651_10483) ) (!  (=> (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_16651_16596) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap) o2_34@@8 f_65@@8))
))) (forall ((o2_34@@9 T@Ref) (f_65@@9 T@Field_16651_16652) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@9 f_65@@9) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap) o2_34@@9 f_65@@9) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap) o2_34@@9 f_65@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap) o2_34@@9 f_65@@9))
))) (forall ((o2_34@@10 T@Ref) (f_65@@10 T@Field_16664_16669) ) (!  (=> (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@10 f_65@@10) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap) o2_34@@10 f_65@@10) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap) o2_34@@10 f_65@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap) o2_34@@10 f_65@@10))
))) (forall ((o2_34@@11 T@Ref) (f_65@@11 T@Field_17571_3178) ) (!  (=> (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@11 f_65@@11) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap) o2_34@@11 f_65@@11) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap) o2_34@@11 f_65@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap) o2_34@@11 f_65@@11))
))) (forall ((o2_34@@12 T@Ref) (f_65@@12 T@Field_17571_53) ) (!  (=> (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@12 f_65@@12) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap) o2_34@@12 f_65@@12) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap) o2_34@@12 f_65@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap) o2_34@@12 f_65@@12))
))) (forall ((o2_34@@13 T@Ref) (f_65@@13 T@Field_17571_10483) ) (!  (=> (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@13 f_65@@13) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap) o2_34@@13 f_65@@13) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap) o2_34@@13 f_65@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap) o2_34@@13 f_65@@13))
))) (forall ((o2_34@@14 T@Ref) (f_65@@14 T@Field_17571_16596) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@14 f_65@@14) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap) o2_34@@14 f_65@@14) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap) o2_34@@14 f_65@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap) o2_34@@14 f_65@@14))
))) (forall ((o2_34@@15 T@Ref) (f_65@@15 T@Field_17571_17572) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@15 f_65@@15) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap) o2_34@@15 f_65@@15) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap) o2_34@@15 f_65@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap) o2_34@@15 f_65@@15))
))) (forall ((o2_34@@16 T@Ref) (f_65@@16 T@Field_17584_17589) ) (!  (=> (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) null (PredicateMaskField_6900 pm_f_34))) o2_34@@16 f_65@@16) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap) o2_34@@16 f_65@@16) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap) o2_34@@16 f_65@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap) o2_34@@16 f_65@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_6900_6901 pm_f_34))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10409) (ExhaleHeap@@0 T@PolymorphicMapType_10409) (Mask@@0 T@PolymorphicMapType_10430) (pm_f_34@@0 T@Field_16651_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_16651_16652 Mask@@0 null pm_f_34@@0) (IsPredicateField_6875_6876 pm_f_34@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@17 T@Ref) (f_65@@17 T@Field_16518_3178) ) (!  (=> (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@17 f_65@@17) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@0) o2_34@@17 f_65@@17) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@17 f_65@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@17 f_65@@17))
)) (forall ((o2_34@@18 T@Ref) (f_65@@18 T@Field_10469_53) ) (!  (=> (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@18 f_65@@18) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@0) o2_34@@18 f_65@@18) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@18 f_65@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@18 f_65@@18))
))) (forall ((o2_34@@19 T@Ref) (f_65@@19 T@Field_10482_10483) ) (!  (=> (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@19 f_65@@19) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@0) o2_34@@19 f_65@@19) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@19 f_65@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@19 f_65@@19))
))) (forall ((o2_34@@20 T@Ref) (f_65@@20 T@Field_16594_16596) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@20 f_65@@20) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@0) o2_34@@20 f_65@@20) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@20 f_65@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@20 f_65@@20))
))) (forall ((o2_34@@21 T@Ref) (f_65@@21 T@Field_6867_16652) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@21 f_65@@21) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@0) o2_34@@21 f_65@@21) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@21 f_65@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@21 f_65@@21))
))) (forall ((o2_34@@22 T@Ref) (f_65@@22 T@Field_6867_16669) ) (!  (=> (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@22 f_65@@22) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@0) o2_34@@22 f_65@@22) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@22 f_65@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@22 f_65@@22))
))) (forall ((o2_34@@23 T@Ref) (f_65@@23 T@Field_16651_3178) ) (!  (=> (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@23 f_65@@23) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@0) o2_34@@23 f_65@@23) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@23 f_65@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@23 f_65@@23))
))) (forall ((o2_34@@24 T@Ref) (f_65@@24 T@Field_16651_53) ) (!  (=> (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@24 f_65@@24) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@0) o2_34@@24 f_65@@24) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@24 f_65@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@24 f_65@@24))
))) (forall ((o2_34@@25 T@Ref) (f_65@@25 T@Field_16651_10483) ) (!  (=> (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@25 f_65@@25) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@0) o2_34@@25 f_65@@25) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@25 f_65@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@25 f_65@@25))
))) (forall ((o2_34@@26 T@Ref) (f_65@@26 T@Field_16651_16596) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@26 f_65@@26) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@0) o2_34@@26 f_65@@26) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@26 f_65@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@26 f_65@@26))
))) (forall ((o2_34@@27 T@Ref) (f_65@@27 T@Field_16651_16652) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@27 f_65@@27) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@0) o2_34@@27 f_65@@27) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@27 f_65@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@27 f_65@@27))
))) (forall ((o2_34@@28 T@Ref) (f_65@@28 T@Field_16664_16669) ) (!  (=> (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@28 f_65@@28) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) o2_34@@28 f_65@@28) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@28 f_65@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@28 f_65@@28))
))) (forall ((o2_34@@29 T@Ref) (f_65@@29 T@Field_17571_3178) ) (!  (=> (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@29 f_65@@29) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@0) o2_34@@29 f_65@@29) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@29 f_65@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@29 f_65@@29))
))) (forall ((o2_34@@30 T@Ref) (f_65@@30 T@Field_17571_53) ) (!  (=> (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@30 f_65@@30) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@0) o2_34@@30 f_65@@30) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@30 f_65@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@30 f_65@@30))
))) (forall ((o2_34@@31 T@Ref) (f_65@@31 T@Field_17571_10483) ) (!  (=> (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@31 f_65@@31) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@0) o2_34@@31 f_65@@31) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@31 f_65@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@31 f_65@@31))
))) (forall ((o2_34@@32 T@Ref) (f_65@@32 T@Field_17571_16596) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@32 f_65@@32) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@0) o2_34@@32 f_65@@32) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@32 f_65@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@32 f_65@@32))
))) (forall ((o2_34@@33 T@Ref) (f_65@@33 T@Field_17571_17572) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@33 f_65@@33) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@0) o2_34@@33 f_65@@33) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@33 f_65@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@33 f_65@@33))
))) (forall ((o2_34@@34 T@Ref) (f_65@@34 T@Field_17584_17589) ) (!  (=> (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@0) null (PredicateMaskField_6875 pm_f_34@@0))) o2_34@@34 f_65@@34) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@0) o2_34@@34 f_65@@34) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@34 f_65@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@0) o2_34@@34 f_65@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_6875_6876 pm_f_34@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10409) (ExhaleHeap@@1 T@PolymorphicMapType_10409) (Mask@@1 T@PolymorphicMapType_10430) (pm_f_34@@1 T@Field_6867_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_6867_16652 Mask@@1 null pm_f_34@@1) (IsPredicateField_6867_33477 pm_f_34@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@35 T@Ref) (f_65@@35 T@Field_16518_3178) ) (!  (=> (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@35 f_65@@35) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@1) o2_34@@35 f_65@@35) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@35 f_65@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@35 f_65@@35))
)) (forall ((o2_34@@36 T@Ref) (f_65@@36 T@Field_10469_53) ) (!  (=> (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@36 f_65@@36) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@1) o2_34@@36 f_65@@36) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@36 f_65@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@36 f_65@@36))
))) (forall ((o2_34@@37 T@Ref) (f_65@@37 T@Field_10482_10483) ) (!  (=> (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@37 f_65@@37) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@1) o2_34@@37 f_65@@37) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@37 f_65@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@37 f_65@@37))
))) (forall ((o2_34@@38 T@Ref) (f_65@@38 T@Field_16594_16596) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@38 f_65@@38) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@1) o2_34@@38 f_65@@38) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@38 f_65@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@38 f_65@@38))
))) (forall ((o2_34@@39 T@Ref) (f_65@@39 T@Field_6867_16652) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@39 f_65@@39) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@1) o2_34@@39 f_65@@39) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@39 f_65@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@39 f_65@@39))
))) (forall ((o2_34@@40 T@Ref) (f_65@@40 T@Field_6867_16669) ) (!  (=> (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@40 f_65@@40) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) o2_34@@40 f_65@@40) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@40 f_65@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@40 f_65@@40))
))) (forall ((o2_34@@41 T@Ref) (f_65@@41 T@Field_16651_3178) ) (!  (=> (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@41 f_65@@41) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@1) o2_34@@41 f_65@@41) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@41 f_65@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@41 f_65@@41))
))) (forall ((o2_34@@42 T@Ref) (f_65@@42 T@Field_16651_53) ) (!  (=> (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@42 f_65@@42) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@1) o2_34@@42 f_65@@42) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@42 f_65@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@42 f_65@@42))
))) (forall ((o2_34@@43 T@Ref) (f_65@@43 T@Field_16651_10483) ) (!  (=> (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@43 f_65@@43) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@1) o2_34@@43 f_65@@43) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@43 f_65@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@43 f_65@@43))
))) (forall ((o2_34@@44 T@Ref) (f_65@@44 T@Field_16651_16596) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@44 f_65@@44) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@1) o2_34@@44 f_65@@44) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@44 f_65@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@44 f_65@@44))
))) (forall ((o2_34@@45 T@Ref) (f_65@@45 T@Field_16651_16652) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@45 f_65@@45) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@1) o2_34@@45 f_65@@45) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@45 f_65@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@45 f_65@@45))
))) (forall ((o2_34@@46 T@Ref) (f_65@@46 T@Field_16664_16669) ) (!  (=> (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@46 f_65@@46) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@1) o2_34@@46 f_65@@46) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@46 f_65@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@46 f_65@@46))
))) (forall ((o2_34@@47 T@Ref) (f_65@@47 T@Field_17571_3178) ) (!  (=> (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@47 f_65@@47) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@1) o2_34@@47 f_65@@47) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@47 f_65@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@47 f_65@@47))
))) (forall ((o2_34@@48 T@Ref) (f_65@@48 T@Field_17571_53) ) (!  (=> (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@48 f_65@@48) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@1) o2_34@@48 f_65@@48) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@48 f_65@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@48 f_65@@48))
))) (forall ((o2_34@@49 T@Ref) (f_65@@49 T@Field_17571_10483) ) (!  (=> (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@49 f_65@@49) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@1) o2_34@@49 f_65@@49) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@49 f_65@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@49 f_65@@49))
))) (forall ((o2_34@@50 T@Ref) (f_65@@50 T@Field_17571_16596) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@50 f_65@@50) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@1) o2_34@@50 f_65@@50) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@50 f_65@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@50 f_65@@50))
))) (forall ((o2_34@@51 T@Ref) (f_65@@51 T@Field_17571_17572) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@51 f_65@@51) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@1) o2_34@@51 f_65@@51) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@51 f_65@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@51 f_65@@51))
))) (forall ((o2_34@@52 T@Ref) (f_65@@52 T@Field_17584_17589) ) (!  (=> (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@1) null (PredicateMaskField_6867 pm_f_34@@1))) o2_34@@52 f_65@@52) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@1) o2_34@@52 f_65@@52) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@52 f_65@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@1) o2_34@@52 f_65@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_6867_33477 pm_f_34@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10409) (ExhaleHeap@@2 T@PolymorphicMapType_10409) (Mask@@2 T@PolymorphicMapType_10430) (pm_f_34@@2 T@Field_17571_17572) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_17571_16652 Mask@@2 null pm_f_34@@2) (IsWandField_17571_39785 pm_f_34@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@53 T@Ref) (f_65@@53 T@Field_16518_3178) ) (!  (=> (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@53 f_65@@53) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@2) o2_34@@53 f_65@@53) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@53 f_65@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@53 f_65@@53))
)) (forall ((o2_34@@54 T@Ref) (f_65@@54 T@Field_10469_53) ) (!  (=> (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@54 f_65@@54) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@2) o2_34@@54 f_65@@54) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@54 f_65@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@54 f_65@@54))
))) (forall ((o2_34@@55 T@Ref) (f_65@@55 T@Field_10482_10483) ) (!  (=> (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@55 f_65@@55) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@2) o2_34@@55 f_65@@55) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@55 f_65@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@55 f_65@@55))
))) (forall ((o2_34@@56 T@Ref) (f_65@@56 T@Field_16594_16596) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@56 f_65@@56) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@2) o2_34@@56 f_65@@56) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@56 f_65@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@56 f_65@@56))
))) (forall ((o2_34@@57 T@Ref) (f_65@@57 T@Field_6867_16652) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@57 f_65@@57) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@2) o2_34@@57 f_65@@57) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@57 f_65@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@57 f_65@@57))
))) (forall ((o2_34@@58 T@Ref) (f_65@@58 T@Field_6867_16669) ) (!  (=> (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@58 f_65@@58) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@2) o2_34@@58 f_65@@58) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@58 f_65@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@58 f_65@@58))
))) (forall ((o2_34@@59 T@Ref) (f_65@@59 T@Field_16651_3178) ) (!  (=> (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@59 f_65@@59) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@2) o2_34@@59 f_65@@59) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@59 f_65@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@59 f_65@@59))
))) (forall ((o2_34@@60 T@Ref) (f_65@@60 T@Field_16651_53) ) (!  (=> (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@60 f_65@@60) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@2) o2_34@@60 f_65@@60) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@60 f_65@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@60 f_65@@60))
))) (forall ((o2_34@@61 T@Ref) (f_65@@61 T@Field_16651_10483) ) (!  (=> (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@61 f_65@@61) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@2) o2_34@@61 f_65@@61) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@61 f_65@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@61 f_65@@61))
))) (forall ((o2_34@@62 T@Ref) (f_65@@62 T@Field_16651_16596) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@62 f_65@@62) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@2) o2_34@@62 f_65@@62) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@62 f_65@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@62 f_65@@62))
))) (forall ((o2_34@@63 T@Ref) (f_65@@63 T@Field_16651_16652) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@63 f_65@@63) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@2) o2_34@@63 f_65@@63) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@63 f_65@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@63 f_65@@63))
))) (forall ((o2_34@@64 T@Ref) (f_65@@64 T@Field_16664_16669) ) (!  (=> (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@64 f_65@@64) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@2) o2_34@@64 f_65@@64) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@64 f_65@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@64 f_65@@64))
))) (forall ((o2_34@@65 T@Ref) (f_65@@65 T@Field_17571_3178) ) (!  (=> (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@65 f_65@@65) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@2) o2_34@@65 f_65@@65) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@65 f_65@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@65 f_65@@65))
))) (forall ((o2_34@@66 T@Ref) (f_65@@66 T@Field_17571_53) ) (!  (=> (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@66 f_65@@66) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@2) o2_34@@66 f_65@@66) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@66 f_65@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@66 f_65@@66))
))) (forall ((o2_34@@67 T@Ref) (f_65@@67 T@Field_17571_10483) ) (!  (=> (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@67 f_65@@67) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@2) o2_34@@67 f_65@@67) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@67 f_65@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@67 f_65@@67))
))) (forall ((o2_34@@68 T@Ref) (f_65@@68 T@Field_17571_16596) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@68 f_65@@68) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@2) o2_34@@68 f_65@@68) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@68 f_65@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@68 f_65@@68))
))) (forall ((o2_34@@69 T@Ref) (f_65@@69 T@Field_17571_17572) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@69 f_65@@69) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@2) o2_34@@69 f_65@@69) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@69 f_65@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@69 f_65@@69))
))) (forall ((o2_34@@70 T@Ref) (f_65@@70 T@Field_17584_17589) ) (!  (=> (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) null (WandMaskField_17571 pm_f_34@@2))) o2_34@@70 f_65@@70) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@2) o2_34@@70 f_65@@70) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@70 f_65@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@2) o2_34@@70 f_65@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_17571_39785 pm_f_34@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10409) (ExhaleHeap@@3 T@PolymorphicMapType_10409) (Mask@@3 T@PolymorphicMapType_10430) (pm_f_34@@3 T@Field_16651_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_16651_16652 Mask@@3 null pm_f_34@@3) (IsWandField_16651_39428 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@71 T@Ref) (f_65@@71 T@Field_16518_3178) ) (!  (=> (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@71 f_65@@71) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@3) o2_34@@71 f_65@@71) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@71 f_65@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@71 f_65@@71))
)) (forall ((o2_34@@72 T@Ref) (f_65@@72 T@Field_10469_53) ) (!  (=> (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@72 f_65@@72) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@3) o2_34@@72 f_65@@72) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@72 f_65@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@72 f_65@@72))
))) (forall ((o2_34@@73 T@Ref) (f_65@@73 T@Field_10482_10483) ) (!  (=> (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@73 f_65@@73) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@3) o2_34@@73 f_65@@73) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@73 f_65@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@73 f_65@@73))
))) (forall ((o2_34@@74 T@Ref) (f_65@@74 T@Field_16594_16596) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@74 f_65@@74) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@3) o2_34@@74 f_65@@74) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@74 f_65@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@74 f_65@@74))
))) (forall ((o2_34@@75 T@Ref) (f_65@@75 T@Field_6867_16652) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@75 f_65@@75) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@3) o2_34@@75 f_65@@75) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@75 f_65@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@75 f_65@@75))
))) (forall ((o2_34@@76 T@Ref) (f_65@@76 T@Field_6867_16669) ) (!  (=> (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@76 f_65@@76) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@3) o2_34@@76 f_65@@76) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@76 f_65@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@76 f_65@@76))
))) (forall ((o2_34@@77 T@Ref) (f_65@@77 T@Field_16651_3178) ) (!  (=> (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@77 f_65@@77) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@3) o2_34@@77 f_65@@77) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@77 f_65@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@77 f_65@@77))
))) (forall ((o2_34@@78 T@Ref) (f_65@@78 T@Field_16651_53) ) (!  (=> (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@78 f_65@@78) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@3) o2_34@@78 f_65@@78) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@78 f_65@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@78 f_65@@78))
))) (forall ((o2_34@@79 T@Ref) (f_65@@79 T@Field_16651_10483) ) (!  (=> (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@79 f_65@@79) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@3) o2_34@@79 f_65@@79) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@79 f_65@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@79 f_65@@79))
))) (forall ((o2_34@@80 T@Ref) (f_65@@80 T@Field_16651_16596) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@80 f_65@@80) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@3) o2_34@@80 f_65@@80) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@80 f_65@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@80 f_65@@80))
))) (forall ((o2_34@@81 T@Ref) (f_65@@81 T@Field_16651_16652) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@81 f_65@@81) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@3) o2_34@@81 f_65@@81) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@81 f_65@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@81 f_65@@81))
))) (forall ((o2_34@@82 T@Ref) (f_65@@82 T@Field_16664_16669) ) (!  (=> (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@82 f_65@@82) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) o2_34@@82 f_65@@82) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@82 f_65@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@82 f_65@@82))
))) (forall ((o2_34@@83 T@Ref) (f_65@@83 T@Field_17571_3178) ) (!  (=> (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@83 f_65@@83) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@3) o2_34@@83 f_65@@83) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@83 f_65@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@83 f_65@@83))
))) (forall ((o2_34@@84 T@Ref) (f_65@@84 T@Field_17571_53) ) (!  (=> (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@84 f_65@@84) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@3) o2_34@@84 f_65@@84) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@84 f_65@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@84 f_65@@84))
))) (forall ((o2_34@@85 T@Ref) (f_65@@85 T@Field_17571_10483) ) (!  (=> (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@85 f_65@@85) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@3) o2_34@@85 f_65@@85) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@85 f_65@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@85 f_65@@85))
))) (forall ((o2_34@@86 T@Ref) (f_65@@86 T@Field_17571_16596) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@86 f_65@@86) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@3) o2_34@@86 f_65@@86) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@86 f_65@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@86 f_65@@86))
))) (forall ((o2_34@@87 T@Ref) (f_65@@87 T@Field_17571_17572) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@87 f_65@@87) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@3) o2_34@@87 f_65@@87) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@87 f_65@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@87 f_65@@87))
))) (forall ((o2_34@@88 T@Ref) (f_65@@88 T@Field_17584_17589) ) (!  (=> (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@3) null (WandMaskField_16651 pm_f_34@@3))) o2_34@@88 f_65@@88) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@3) o2_34@@88 f_65@@88) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@88 f_65@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@3) o2_34@@88 f_65@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_16651_39428 pm_f_34@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10409) (ExhaleHeap@@4 T@PolymorphicMapType_10409) (Mask@@4 T@PolymorphicMapType_10430) (pm_f_34@@4 T@Field_6867_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_6867_16652 Mask@@4 null pm_f_34@@4) (IsWandField_6867_39071 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_34@@89 T@Ref) (f_65@@89 T@Field_16518_3178) ) (!  (=> (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@89 f_65@@89) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@4) o2_34@@89 f_65@@89) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@89 f_65@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@89 f_65@@89))
)) (forall ((o2_34@@90 T@Ref) (f_65@@90 T@Field_10469_53) ) (!  (=> (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@90 f_65@@90) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@4) o2_34@@90 f_65@@90) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@90 f_65@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@90 f_65@@90))
))) (forall ((o2_34@@91 T@Ref) (f_65@@91 T@Field_10482_10483) ) (!  (=> (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@91 f_65@@91) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@4) o2_34@@91 f_65@@91) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@91 f_65@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@91 f_65@@91))
))) (forall ((o2_34@@92 T@Ref) (f_65@@92 T@Field_16594_16596) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@92 f_65@@92) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@4) o2_34@@92 f_65@@92) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@92 f_65@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@92 f_65@@92))
))) (forall ((o2_34@@93 T@Ref) (f_65@@93 T@Field_6867_16652) ) (!  (=> (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@93 f_65@@93) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@4) o2_34@@93 f_65@@93) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@93 f_65@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@93 f_65@@93))
))) (forall ((o2_34@@94 T@Ref) (f_65@@94 T@Field_6867_16669) ) (!  (=> (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@94 f_65@@94) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) o2_34@@94 f_65@@94) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@94 f_65@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@94 f_65@@94))
))) (forall ((o2_34@@95 T@Ref) (f_65@@95 T@Field_16651_3178) ) (!  (=> (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@95 f_65@@95) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@4) o2_34@@95 f_65@@95) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@95 f_65@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@95 f_65@@95))
))) (forall ((o2_34@@96 T@Ref) (f_65@@96 T@Field_16651_53) ) (!  (=> (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@96 f_65@@96) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@4) o2_34@@96 f_65@@96) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@96 f_65@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@96 f_65@@96))
))) (forall ((o2_34@@97 T@Ref) (f_65@@97 T@Field_16651_10483) ) (!  (=> (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@97 f_65@@97) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@4) o2_34@@97 f_65@@97) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@97 f_65@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@97 f_65@@97))
))) (forall ((o2_34@@98 T@Ref) (f_65@@98 T@Field_16651_16596) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@98 f_65@@98) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@4) o2_34@@98 f_65@@98) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@98 f_65@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@98 f_65@@98))
))) (forall ((o2_34@@99 T@Ref) (f_65@@99 T@Field_16651_16652) ) (!  (=> (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@99 f_65@@99) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@4) o2_34@@99 f_65@@99) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@99 f_65@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@99 f_65@@99))
))) (forall ((o2_34@@100 T@Ref) (f_65@@100 T@Field_16664_16669) ) (!  (=> (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@100 f_65@@100) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@4) o2_34@@100 f_65@@100) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@100 f_65@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@100 f_65@@100))
))) (forall ((o2_34@@101 T@Ref) (f_65@@101 T@Field_17571_3178) ) (!  (=> (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@101 f_65@@101) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@4) o2_34@@101 f_65@@101) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@101 f_65@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@101 f_65@@101))
))) (forall ((o2_34@@102 T@Ref) (f_65@@102 T@Field_17571_53) ) (!  (=> (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@102 f_65@@102) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@4) o2_34@@102 f_65@@102) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@102 f_65@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@102 f_65@@102))
))) (forall ((o2_34@@103 T@Ref) (f_65@@103 T@Field_17571_10483) ) (!  (=> (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@103 f_65@@103) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@4) o2_34@@103 f_65@@103) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@103 f_65@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@103 f_65@@103))
))) (forall ((o2_34@@104 T@Ref) (f_65@@104 T@Field_17571_16596) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@104 f_65@@104) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@4) o2_34@@104 f_65@@104) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@104 f_65@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@104 f_65@@104))
))) (forall ((o2_34@@105 T@Ref) (f_65@@105 T@Field_17571_17572) ) (!  (=> (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@105 f_65@@105) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@4) o2_34@@105 f_65@@105) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@105 f_65@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@105 f_65@@105))
))) (forall ((o2_34@@106 T@Ref) (f_65@@106 T@Field_17584_17589) ) (!  (=> (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@4) null (WandMaskField_6867 pm_f_34@@4))) o2_34@@106 f_65@@106) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@4) o2_34@@106 f_65@@106) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@106 f_65@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@4) o2_34@@106 f_65@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_6867_39071 pm_f_34@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10409) (Heap1 T@PolymorphicMapType_10409) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10409) (Mask@@5 T@PolymorphicMapType_10430) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10409) (Heap1@@0 T@PolymorphicMapType_10409) (Heap2 T@PolymorphicMapType_10409) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17584_17589) ) (!  (not (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_17571_37982#PolymorphicMapType_10958| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17571_17572) ) (!  (not (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_17571_16652#PolymorphicMapType_10958| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17571_16596) ) (!  (not (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_17571_16596#PolymorphicMapType_10958| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_17571_10483) ) (!  (not (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_17571_10483#PolymorphicMapType_10958| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_17571_53) ) (!  (not (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_17571_53#PolymorphicMapType_10958| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_17571_3178) ) (!  (not (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_17571_3178#PolymorphicMapType_10958| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_16664_16669) ) (!  (not (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_16651_36730#PolymorphicMapType_10958| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_16651_16652) ) (!  (not (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_16651_16652#PolymorphicMapType_10958| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_16651_16596) ) (!  (not (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_16651_16596#PolymorphicMapType_10958| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_16651_10483) ) (!  (not (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_16651_10483#PolymorphicMapType_10958| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_16651_53) ) (!  (not (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_16651_53#PolymorphicMapType_10958| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_16651_3178) ) (!  (not (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_16651_3178#PolymorphicMapType_10958| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6867_16669) ) (!  (not (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_6867_35478#PolymorphicMapType_10958| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6867_16652) ) (!  (not (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_6867_16652#PolymorphicMapType_10958| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_16594_16596) ) (!  (not (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_6867_16596#PolymorphicMapType_10958| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10482_10483) ) (!  (not (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_6867_10483#PolymorphicMapType_10958| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10469_53) ) (!  (not (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_6867_53#PolymorphicMapType_10958| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16518_3178) ) (!  (not (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10958_6867_3178#PolymorphicMapType_10958| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((s@@1 T@Seq_18477) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_18477| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_18477| (|Seq#Drop_18477| s@@1 n@@1) j) (|Seq#Index_18477| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_18477| (|Seq#Drop_18477| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3056) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3056| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3056| (|Seq#Drop_3056| s@@2 n@@2) j@@0) (|Seq#Index_3056| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3056| (|Seq#Drop_3056| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_18477| |Seq#Empty_18477|) 0))
(assert (= (|Seq#Length_3056| |Seq#Empty_3056|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_6875_6876 (pred_1 x))
 :qid |stdinbpl.601:15|
 :skolemid |59|
 :pattern ( (pred_1 x))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_6900_6901 (p_2 r_1))
 :qid |stdinbpl.655:15|
 :skolemid |65|
 :pattern ( (p_2 r_1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10409) (x@@0 T@Ref) ) (! (|pred#everUsed_6875| (pred_1 x@@0))
 :qid |stdinbpl.620:15|
 :skolemid |63|
 :pattern ( (|pred#trigger_6875| Heap@@6 (pred_1 x@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10409) (r_1@@0 T@Ref) ) (! (|p#everUsed_6900| (p_2 r_1@@0))
 :qid |stdinbpl.674:15|
 :skolemid |69|
 :pattern ( (|p#trigger_6900| Heap@@7 (p_2 r_1@@0)))
)))
(assert (forall ((s@@3 T@Seq_18477) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_18477| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_18477| (|Seq#Update_18477| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_18477| (|Seq#Update_18477| s@@3 i v) n@@3) (|Seq#Index_18477| s@@3 n@@3)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_18477| (|Seq#Update_18477| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_18477| s@@3 n@@3) (|Seq#Update_18477| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3056) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3056| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3056| s@@4 n@@4)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3056| s@@4 n@@4) (|Seq#Update_3056| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_18477) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_18477| s@@5)) (= (|Seq#Length_18477| (|Seq#Take_18477| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_18477| s@@5) n@@5) (= (|Seq#Length_18477| (|Seq#Take_18477| s@@5 n@@5)) (|Seq#Length_18477| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_18477| (|Seq#Take_18477| s@@5 n@@5)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_18477| (|Seq#Take_18477| s@@5 n@@5)))
 :pattern ( (|Seq#Take_18477| s@@5 n@@5) (|Seq#Length_18477| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3056) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3056| s@@6)) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3056| s@@6) n@@6) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) (|Seq#Length_3056| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3056| s@@6 n@@6) (|Seq#Length_3056| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3056| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.570:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3056| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_18477) (x@@1 T@Ref) ) (!  (=> (|Seq#Contains_6928| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_6928| s@@7 x@@1)) (< (|Seq#Skolem_6928| s@@7 x@@1) (|Seq#Length_18477| s@@7))) (= (|Seq#Index_18477| s@@7 (|Seq#Skolem_6928| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_6928| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_3056) (x@@2 Int) ) (!  (=> (|Seq#Contains_3056| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_3056| s@@8 x@@2)) (< (|Seq#Skolem_3056| s@@8 x@@2) (|Seq#Length_3056| s@@8))) (= (|Seq#Index_3056| s@@8 (|Seq#Skolem_3056| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3056| s@@8 x@@2))
)))
(assert (forall ((s@@9 T@Seq_18477) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_18477| s@@9 n@@7) s@@9))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_18477| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3056) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3056| s@@10 n@@8) s@@10))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3056| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10409) (ExhaleHeap@@5 T@PolymorphicMapType_10409) (Mask@@6 T@PolymorphicMapType_10430) (pm_f_34@@5 T@Field_17571_17572) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_17571_16652 Mask@@6 null pm_f_34@@5) (IsPredicateField_6900_6901 pm_f_34@@5)) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@8) null (PredicateMaskField_6900 pm_f_34@@5)) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@5) null (PredicateMaskField_6900 pm_f_34@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsPredicateField_6900_6901 pm_f_34@@5) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@5) null (PredicateMaskField_6900 pm_f_34@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10409) (ExhaleHeap@@6 T@PolymorphicMapType_10409) (Mask@@7 T@PolymorphicMapType_10430) (pm_f_34@@6 T@Field_16651_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_16651_16652 Mask@@7 null pm_f_34@@6) (IsPredicateField_6875_6876 pm_f_34@@6)) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@9) null (PredicateMaskField_6875 pm_f_34@@6)) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@6) null (PredicateMaskField_6875 pm_f_34@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsPredicateField_6875_6876 pm_f_34@@6) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@6) null (PredicateMaskField_6875 pm_f_34@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10409) (ExhaleHeap@@7 T@PolymorphicMapType_10409) (Mask@@8 T@PolymorphicMapType_10430) (pm_f_34@@7 T@Field_6867_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_6867_16652 Mask@@8 null pm_f_34@@7) (IsPredicateField_6867_33477 pm_f_34@@7)) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@10) null (PredicateMaskField_6867 pm_f_34@@7)) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@7) null (PredicateMaskField_6867 pm_f_34@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (IsPredicateField_6867_33477 pm_f_34@@7) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@7) null (PredicateMaskField_6867 pm_f_34@@7)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10409) (ExhaleHeap@@8 T@PolymorphicMapType_10409) (Mask@@9 T@PolymorphicMapType_10430) (pm_f_34@@8 T@Field_17571_17572) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_17571_16652 Mask@@9 null pm_f_34@@8) (IsWandField_17571_39785 pm_f_34@@8)) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@11) null (WandMaskField_17571 pm_f_34@@8)) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@8) null (WandMaskField_17571 pm_f_34@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (IsWandField_17571_39785 pm_f_34@@8) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@8) null (WandMaskField_17571 pm_f_34@@8)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10409) (ExhaleHeap@@9 T@PolymorphicMapType_10409) (Mask@@10 T@PolymorphicMapType_10430) (pm_f_34@@9 T@Field_16651_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_16651_16652 Mask@@10 null pm_f_34@@9) (IsWandField_16651_39428 pm_f_34@@9)) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@12) null (WandMaskField_16651 pm_f_34@@9)) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@9) null (WandMaskField_16651 pm_f_34@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@10) (IsWandField_16651_39428 pm_f_34@@9) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@9) null (WandMaskField_16651 pm_f_34@@9)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10409) (ExhaleHeap@@10 T@PolymorphicMapType_10409) (Mask@@11 T@PolymorphicMapType_10430) (pm_f_34@@10 T@Field_6867_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_6867_16652 Mask@@11 null pm_f_34@@10) (IsWandField_6867_39071 pm_f_34@@10)) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@13) null (WandMaskField_6867 pm_f_34@@10)) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@10) null (WandMaskField_6867 pm_f_34@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@11) (IsWandField_6867_39071 pm_f_34@@10) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@10) null (WandMaskField_6867 pm_f_34@@10)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_6928| (|Seq#Singleton_18477| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_6928| (|Seq#Singleton_18477| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3056| (|Seq#Singleton_3056| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3056| (|Seq#Singleton_3056| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_18477) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_18477| s@@11))) (= (|Seq#Index_18477| (|Seq#Take_18477| s@@11 n@@9) j@@3) (|Seq#Index_18477| s@@11 j@@3)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_18477| (|Seq#Take_18477| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_18477| s@@11 j@@3) (|Seq#Take_18477| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3056) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3056| s@@12))) (= (|Seq#Index_3056| (|Seq#Take_3056| s@@12 n@@10) j@@4) (|Seq#Index_3056| s@@12 j@@4)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3056| (|Seq#Take_3056| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3056| s@@12 j@@4) (|Seq#Take_3056| s@@12 n@@10))
)))
(assert (forall ((x@@5 T@Ref) (x2 T@Ref) ) (!  (=> (= (pred_1 x@@5) (pred_1 x2)) (= x@@5 x2))
 :qid |stdinbpl.611:15|
 :skolemid |61|
 :pattern ( (pred_1 x@@5) (pred_1 x2))
)))
(assert (forall ((x@@6 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|pred#sm| x@@6) (|pred#sm| x2@@0)) (= x@@6 x2@@0))
 :qid |stdinbpl.615:15|
 :skolemid |62|
 :pattern ( (|pred#sm| x@@6) (|pred#sm| x2@@0))
)))
(assert (forall ((r_1@@1 T@Ref) (r2 T@Ref) ) (!  (=> (= (p_2 r_1@@1) (p_2 r2)) (= r_1@@1 r2))
 :qid |stdinbpl.665:15|
 :skolemid |67|
 :pattern ( (p_2 r_1@@1) (p_2 r2))
)))
(assert (forall ((r_1@@2 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|p#sm| r_1@@2) (|p#sm| r2@@0)) (= r_1@@2 r2@@0))
 :qid |stdinbpl.669:15|
 :skolemid |68|
 :pattern ( (|p#sm| r_1@@2) (|p#sm| r2@@0))
)))
(assert (forall ((s@@13 T@Seq_18477) (t T@Seq_18477) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_18477| s@@13))) (< n@@11 (|Seq#Length_18477| (|Seq#Append_18477| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_18477| s@@13)) (|Seq#Length_18477| s@@13)) n@@11) (= (|Seq#Take_18477| (|Seq#Append_18477| s@@13 t) n@@11) (|Seq#Append_18477| s@@13 (|Seq#Take_18477| t (|Seq#Sub| n@@11 (|Seq#Length_18477| s@@13)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_18477| (|Seq#Append_18477| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3056) (t@@0 T@Seq_3056) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3056| s@@14))) (< n@@12 (|Seq#Length_3056| (|Seq#Append_3056| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3056| s@@14)) (|Seq#Length_3056| s@@14)) n@@12) (= (|Seq#Take_3056| (|Seq#Append_3056| s@@14 t@@0) n@@12) (|Seq#Append_3056| s@@14 (|Seq#Take_3056| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3056| s@@14)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3056| (|Seq#Append_3056| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10409) (ExhaleHeap@@11 T@PolymorphicMapType_10409) (Mask@@12 T@PolymorphicMapType_10430) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@14) o_47 $allocated) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@11) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@11) o_47 $allocated))
)))
(assert (forall ((p T@Field_17571_17572) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17571_17571 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17571_17571 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16651_16652) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16651_16651 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16651_16651 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_6867_16652) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_10469_10469 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10469_10469 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_18477) (s1 T@Seq_18477) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_18477|)) (not (= s1 |Seq#Empty_18477|))) (<= (|Seq#Length_18477| s0) n@@13)) (< n@@13 (|Seq#Length_18477| (|Seq#Append_18477| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_18477| s0)) (|Seq#Length_18477| s0)) n@@13) (= (|Seq#Index_18477| (|Seq#Append_18477| s0 s1) n@@13) (|Seq#Index_18477| s1 (|Seq#Sub| n@@13 (|Seq#Length_18477| s0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_18477| (|Seq#Append_18477| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3056) (s1@@0 T@Seq_3056) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3056|)) (not (= s1@@0 |Seq#Empty_3056|))) (<= (|Seq#Length_3056| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3056| (|Seq#Append_3056| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3056| s0@@0)) (|Seq#Length_3056| s0@@0)) n@@14) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@0 s1@@0) n@@14) (|Seq#Index_3056| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3056| s0@@0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3056| (|Seq#Append_3056| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6867_3178 f_7)))
(assert  (not (IsWandField_6867_3178 f_7)))
(assert  (not (IsPredicateField_6867_3178 g)))
(assert  (not (IsWandField_6867_3178 g)))
(assert  (not (IsPredicateField_6871_16615 vals)))
(assert  (not (IsWandField_6871_16638 vals)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10409) (ExhaleHeap@@12 T@PolymorphicMapType_10409) (Mask@@13 T@PolymorphicMapType_10430) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@15 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10430) (o_2@@17 T@Ref) (f_4@@17 T@Field_17584_17589) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| Mask@@14) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6900_51940 f_4@@17))) (not (IsWandField_6900_51956 f_4@@17))) (<= (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| Mask@@14) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| Mask@@14) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10430) (o_2@@18 T@Ref) (f_4@@18 T@Field_17571_16596) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| Mask@@15) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6900_16596 f_4@@18))) (not (IsWandField_6900_16596 f_4@@18))) (<= (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| Mask@@15) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| Mask@@15) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10430) (o_2@@19 T@Ref) (f_4@@19 T@Field_17571_10483) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| Mask@@16) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6900_10483 f_4@@19))) (not (IsWandField_6900_10483 f_4@@19))) (<= (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| Mask@@16) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| Mask@@16) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10430) (o_2@@20 T@Ref) (f_4@@20 T@Field_17571_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| Mask@@17) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6900_53 f_4@@20))) (not (IsWandField_6900_53 f_4@@20))) (<= (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| Mask@@17) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| Mask@@17) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10430) (o_2@@21 T@Ref) (f_4@@21 T@Field_17571_17572) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| Mask@@18) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6900_6901 f_4@@21))) (not (IsWandField_17571_39785 f_4@@21))) (<= (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| Mask@@18) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| Mask@@18) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10430) (o_2@@22 T@Ref) (f_4@@22 T@Field_17571_3178) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| Mask@@19) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6900_3178 f_4@@22))) (not (IsWandField_6900_3178 f_4@@22))) (<= (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| Mask@@19) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| Mask@@19) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10430) (o_2@@23 T@Ref) (f_4@@23 T@Field_16664_16669) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| Mask@@20) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6875_50941 f_4@@23))) (not (IsWandField_6875_50957 f_4@@23))) (<= (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| Mask@@20) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| Mask@@20) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10430) (o_2@@24 T@Ref) (f_4@@24 T@Field_16651_16596) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| Mask@@21) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6875_16596 f_4@@24))) (not (IsWandField_6875_16596 f_4@@24))) (<= (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| Mask@@21) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| Mask@@21) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10430) (o_2@@25 T@Ref) (f_4@@25 T@Field_16651_10483) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| Mask@@22) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6875_10483 f_4@@25))) (not (IsWandField_6875_10483 f_4@@25))) (<= (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| Mask@@22) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| Mask@@22) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10430) (o_2@@26 T@Ref) (f_4@@26 T@Field_16651_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| Mask@@23) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6875_53 f_4@@26))) (not (IsWandField_6875_53 f_4@@26))) (<= (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| Mask@@23) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| Mask@@23) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10430) (o_2@@27 T@Ref) (f_4@@27 T@Field_16651_16652) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| Mask@@24) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6875_6876 f_4@@27))) (not (IsWandField_16651_39428 f_4@@27))) (<= (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| Mask@@24) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| Mask@@24) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10430) (o_2@@28 T@Ref) (f_4@@28 T@Field_16651_3178) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| Mask@@25) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6875_3178 f_4@@28))) (not (IsWandField_6875_3178 f_4@@28))) (<= (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| Mask@@25) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| Mask@@25) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10430) (o_2@@29 T@Ref) (f_4@@29 T@Field_6867_16669) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| Mask@@26) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6867_49942 f_4@@29))) (not (IsWandField_6867_49958 f_4@@29))) (<= (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| Mask@@26) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| Mask@@26) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10430) (o_2@@30 T@Ref) (f_4@@30 T@Field_16594_16596) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| Mask@@27) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_6871_16615 f_4@@30))) (not (IsWandField_6871_16638 f_4@@30))) (<= (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| Mask@@27) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| Mask@@27) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10430) (o_2@@31 T@Ref) (f_4@@31 T@Field_10482_10483) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| Mask@@28) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_6867_10483 f_4@@31))) (not (IsWandField_6867_10483 f_4@@31))) (<= (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| Mask@@28) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| Mask@@28) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10430) (o_2@@32 T@Ref) (f_4@@32 T@Field_10469_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| Mask@@29) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_6867_53 f_4@@32))) (not (IsWandField_6867_53 f_4@@32))) (<= (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| Mask@@29) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| Mask@@29) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10430) (o_2@@33 T@Ref) (f_4@@33 T@Field_6867_16652) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| Mask@@30) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_6867_33477 f_4@@33))) (not (IsWandField_6867_39071 f_4@@33))) (<= (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| Mask@@30) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| Mask@@30) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10430) (o_2@@34 T@Ref) (f_4@@34 T@Field_16518_3178) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| Mask@@31) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_6867_3178 f_4@@34))) (not (IsWandField_6867_3178 f_4@@34))) (<= (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| Mask@@31) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| Mask@@31) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10430) (o_2@@35 T@Ref) (f_4@@35 T@Field_17584_17589) ) (! (= (HasDirectPerm_17571_33189 Mask@@32 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| Mask@@32) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17571_33189 Mask@@32 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10430) (o_2@@36 T@Ref) (f_4@@36 T@Field_17571_17572) ) (! (= (HasDirectPerm_17571_16652 Mask@@33 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| Mask@@33) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17571_16652 Mask@@33 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10430) (o_2@@37 T@Ref) (f_4@@37 T@Field_17571_16596) ) (! (= (HasDirectPerm_17571_16596 Mask@@34 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| Mask@@34) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17571_16596 Mask@@34 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10430) (o_2@@38 T@Ref) (f_4@@38 T@Field_17571_10483) ) (! (= (HasDirectPerm_17571_10483 Mask@@35 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| Mask@@35) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17571_10483 Mask@@35 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10430) (o_2@@39 T@Ref) (f_4@@39 T@Field_17571_53) ) (! (= (HasDirectPerm_17571_53 Mask@@36 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| Mask@@36) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17571_53 Mask@@36 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10430) (o_2@@40 T@Ref) (f_4@@40 T@Field_17571_3178) ) (! (= (HasDirectPerm_17571_3178 Mask@@37 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| Mask@@37) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17571_3178 Mask@@37 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10430) (o_2@@41 T@Ref) (f_4@@41 T@Field_16664_16669) ) (! (= (HasDirectPerm_16651_31842 Mask@@38 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| Mask@@38) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16651_31842 Mask@@38 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10430) (o_2@@42 T@Ref) (f_4@@42 T@Field_16651_16652) ) (! (= (HasDirectPerm_16651_16652 Mask@@39 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| Mask@@39) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16651_16652 Mask@@39 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10430) (o_2@@43 T@Ref) (f_4@@43 T@Field_16651_16596) ) (! (= (HasDirectPerm_16651_16596 Mask@@40 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| Mask@@40) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16651_16596 Mask@@40 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10430) (o_2@@44 T@Ref) (f_4@@44 T@Field_16651_10483) ) (! (= (HasDirectPerm_16651_10483 Mask@@41 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| Mask@@41) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16651_10483 Mask@@41 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10430) (o_2@@45 T@Ref) (f_4@@45 T@Field_16651_53) ) (! (= (HasDirectPerm_16651_53 Mask@@42 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| Mask@@42) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16651_53 Mask@@42 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_10430) (o_2@@46 T@Ref) (f_4@@46 T@Field_16651_3178) ) (! (= (HasDirectPerm_16651_3178 Mask@@43 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| Mask@@43) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16651_3178 Mask@@43 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_10430) (o_2@@47 T@Ref) (f_4@@47 T@Field_6867_16669) ) (! (= (HasDirectPerm_6867_30452 Mask@@44 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| Mask@@44) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_30452 Mask@@44 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_10430) (o_2@@48 T@Ref) (f_4@@48 T@Field_6867_16652) ) (! (= (HasDirectPerm_6867_16652 Mask@@45 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| Mask@@45) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_16652 Mask@@45 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_10430) (o_2@@49 T@Ref) (f_4@@49 T@Field_16594_16596) ) (! (= (HasDirectPerm_6867_16596 Mask@@46 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| Mask@@46) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_16596 Mask@@46 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_10430) (o_2@@50 T@Ref) (f_4@@50 T@Field_10482_10483) ) (! (= (HasDirectPerm_6867_10483 Mask@@47 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| Mask@@47) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_10483 Mask@@47 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_10430) (o_2@@51 T@Ref) (f_4@@51 T@Field_10469_53) ) (! (= (HasDirectPerm_6867_53 Mask@@48 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| Mask@@48) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_53 Mask@@48 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_10430) (o_2@@52 T@Ref) (f_4@@52 T@Field_16518_3178) ) (! (= (HasDirectPerm_6867_3178 Mask@@49 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| Mask@@49) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6867_3178 Mask@@49 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3056| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3056| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10409) (ExhaleHeap@@13 T@PolymorphicMapType_10409) (Mask@@50 T@PolymorphicMapType_10430) (o_47@@0 T@Ref) (f_65@@107 T@Field_17584_17589) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (=> (HasDirectPerm_17571_33189 Mask@@50 o_47@@0 f_65@@107) (= (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@16) o_47@@0 f_65@@107) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@13) o_47@@0 f_65@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@50) (select (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| ExhaleHeap@@13) o_47@@0 f_65@@107))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10409) (ExhaleHeap@@14 T@PolymorphicMapType_10409) (Mask@@51 T@PolymorphicMapType_10430) (o_47@@1 T@Ref) (f_65@@108 T@Field_17571_17572) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (=> (HasDirectPerm_17571_16652 Mask@@51 o_47@@1 f_65@@108) (= (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@17) o_47@@1 f_65@@108) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@14) o_47@@1 f_65@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@51) (select (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| ExhaleHeap@@14) o_47@@1 f_65@@108))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10409) (ExhaleHeap@@15 T@PolymorphicMapType_10409) (Mask@@52 T@PolymorphicMapType_10430) (o_47@@2 T@Ref) (f_65@@109 T@Field_17571_16596) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (=> (HasDirectPerm_17571_16596 Mask@@52 o_47@@2 f_65@@109) (= (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@18) o_47@@2 f_65@@109) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@15) o_47@@2 f_65@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@52) (select (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| ExhaleHeap@@15) o_47@@2 f_65@@109))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10409) (ExhaleHeap@@16 T@PolymorphicMapType_10409) (Mask@@53 T@PolymorphicMapType_10430) (o_47@@3 T@Ref) (f_65@@110 T@Field_17571_10483) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (=> (HasDirectPerm_17571_10483 Mask@@53 o_47@@3 f_65@@110) (= (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@19) o_47@@3 f_65@@110) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@16) o_47@@3 f_65@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@53) (select (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| ExhaleHeap@@16) o_47@@3 f_65@@110))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10409) (ExhaleHeap@@17 T@PolymorphicMapType_10409) (Mask@@54 T@PolymorphicMapType_10430) (o_47@@4 T@Ref) (f_65@@111 T@Field_17571_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (=> (HasDirectPerm_17571_53 Mask@@54 o_47@@4 f_65@@111) (= (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@20) o_47@@4 f_65@@111) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@17) o_47@@4 f_65@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@54) (select (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| ExhaleHeap@@17) o_47@@4 f_65@@111))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10409) (ExhaleHeap@@18 T@PolymorphicMapType_10409) (Mask@@55 T@PolymorphicMapType_10430) (o_47@@5 T@Ref) (f_65@@112 T@Field_17571_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (=> (HasDirectPerm_17571_3178 Mask@@55 o_47@@5 f_65@@112) (= (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@21) o_47@@5 f_65@@112) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@18) o_47@@5 f_65@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@55) (select (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| ExhaleHeap@@18) o_47@@5 f_65@@112))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10409) (ExhaleHeap@@19 T@PolymorphicMapType_10409) (Mask@@56 T@PolymorphicMapType_10430) (o_47@@6 T@Ref) (f_65@@113 T@Field_16664_16669) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (=> (HasDirectPerm_16651_31842 Mask@@56 o_47@@6 f_65@@113) (= (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@22) o_47@@6 f_65@@113) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@19) o_47@@6 f_65@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@56) (select (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| ExhaleHeap@@19) o_47@@6 f_65@@113))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10409) (ExhaleHeap@@20 T@PolymorphicMapType_10409) (Mask@@57 T@PolymorphicMapType_10430) (o_47@@7 T@Ref) (f_65@@114 T@Field_16651_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (=> (HasDirectPerm_16651_16652 Mask@@57 o_47@@7 f_65@@114) (= (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@23) o_47@@7 f_65@@114) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@20) o_47@@7 f_65@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@57) (select (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| ExhaleHeap@@20) o_47@@7 f_65@@114))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10409) (ExhaleHeap@@21 T@PolymorphicMapType_10409) (Mask@@58 T@PolymorphicMapType_10430) (o_47@@8 T@Ref) (f_65@@115 T@Field_16651_16596) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (=> (HasDirectPerm_16651_16596 Mask@@58 o_47@@8 f_65@@115) (= (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@24) o_47@@8 f_65@@115) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@21) o_47@@8 f_65@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@58) (select (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| ExhaleHeap@@21) o_47@@8 f_65@@115))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10409) (ExhaleHeap@@22 T@PolymorphicMapType_10409) (Mask@@59 T@PolymorphicMapType_10430) (o_47@@9 T@Ref) (f_65@@116 T@Field_16651_10483) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (=> (HasDirectPerm_16651_10483 Mask@@59 o_47@@9 f_65@@116) (= (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@25) o_47@@9 f_65@@116) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@22) o_47@@9 f_65@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@59) (select (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| ExhaleHeap@@22) o_47@@9 f_65@@116))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10409) (ExhaleHeap@@23 T@PolymorphicMapType_10409) (Mask@@60 T@PolymorphicMapType_10430) (o_47@@10 T@Ref) (f_65@@117 T@Field_16651_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (=> (HasDirectPerm_16651_53 Mask@@60 o_47@@10 f_65@@117) (= (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@26) o_47@@10 f_65@@117) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@23) o_47@@10 f_65@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@60) (select (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| ExhaleHeap@@23) o_47@@10 f_65@@117))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10409) (ExhaleHeap@@24 T@PolymorphicMapType_10409) (Mask@@61 T@PolymorphicMapType_10430) (o_47@@11 T@Ref) (f_65@@118 T@Field_16651_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (=> (HasDirectPerm_16651_3178 Mask@@61 o_47@@11 f_65@@118) (= (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@27) o_47@@11 f_65@@118) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@24) o_47@@11 f_65@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@61) (select (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| ExhaleHeap@@24) o_47@@11 f_65@@118))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10409) (ExhaleHeap@@25 T@PolymorphicMapType_10409) (Mask@@62 T@PolymorphicMapType_10430) (o_47@@12 T@Ref) (f_65@@119 T@Field_6867_16669) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (=> (HasDirectPerm_6867_30452 Mask@@62 o_47@@12 f_65@@119) (= (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@28) o_47@@12 f_65@@119) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@25) o_47@@12 f_65@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@62) (select (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| ExhaleHeap@@25) o_47@@12 f_65@@119))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10409) (ExhaleHeap@@26 T@PolymorphicMapType_10409) (Mask@@63 T@PolymorphicMapType_10430) (o_47@@13 T@Ref) (f_65@@120 T@Field_6867_16652) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (=> (HasDirectPerm_6867_16652 Mask@@63 o_47@@13 f_65@@120) (= (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@29) o_47@@13 f_65@@120) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@26) o_47@@13 f_65@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@63) (select (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| ExhaleHeap@@26) o_47@@13 f_65@@120))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10409) (ExhaleHeap@@27 T@PolymorphicMapType_10409) (Mask@@64 T@PolymorphicMapType_10430) (o_47@@14 T@Ref) (f_65@@121 T@Field_16594_16596) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (=> (HasDirectPerm_6867_16596 Mask@@64 o_47@@14 f_65@@121) (= (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@30) o_47@@14 f_65@@121) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@27) o_47@@14 f_65@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@64) (select (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| ExhaleHeap@@27) o_47@@14 f_65@@121))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10409) (ExhaleHeap@@28 T@PolymorphicMapType_10409) (Mask@@65 T@PolymorphicMapType_10430) (o_47@@15 T@Ref) (f_65@@122 T@Field_10482_10483) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (=> (HasDirectPerm_6867_10483 Mask@@65 o_47@@15 f_65@@122) (= (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@31) o_47@@15 f_65@@122) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@28) o_47@@15 f_65@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@28 Mask@@65) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| ExhaleHeap@@28) o_47@@15 f_65@@122))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10409) (ExhaleHeap@@29 T@PolymorphicMapType_10409) (Mask@@66 T@PolymorphicMapType_10430) (o_47@@16 T@Ref) (f_65@@123 T@Field_10469_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (=> (HasDirectPerm_6867_53 Mask@@66 o_47@@16 f_65@@123) (= (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@32) o_47@@16 f_65@@123) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@29) o_47@@16 f_65@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@29 Mask@@66) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| ExhaleHeap@@29) o_47@@16 f_65@@123))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10409) (ExhaleHeap@@30 T@PolymorphicMapType_10409) (Mask@@67 T@PolymorphicMapType_10430) (o_47@@17 T@Ref) (f_65@@124 T@Field_16518_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (=> (HasDirectPerm_6867_3178 Mask@@67 o_47@@17 f_65@@124) (= (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@33) o_47@@17 f_65@@124) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@30) o_47@@17 f_65@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@30 Mask@@67) (select (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| ExhaleHeap@@30) o_47@@17 f_65@@124))
)))
(assert (forall ((s0@@1 T@Seq_18477) (s1@@1 T@Seq_18477) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_18477|)) (not (= s1@@1 |Seq#Empty_18477|))) (= (|Seq#Length_18477| (|Seq#Append_18477| s0@@1 s1@@1)) (+ (|Seq#Length_18477| s0@@1) (|Seq#Length_18477| s1@@1))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_18477| (|Seq#Append_18477| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3056) (s1@@2 T@Seq_3056) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3056|)) (not (= s1@@2 |Seq#Empty_3056|))) (= (|Seq#Length_3056| (|Seq#Append_3056| s0@@2 s1@@2)) (+ (|Seq#Length_3056| s0@@2) (|Seq#Length_3056| s1@@2))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3056| (|Seq#Append_3056| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_17584_17589) ) (! (= (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_17571_16596) ) (! (= (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_17571_10483) ) (! (= (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_17571_53) ) (! (= (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_17571_17572) ) (! (= (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_17571_3178) ) (! (= (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_16664_16669) ) (! (= (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_16651_16596) ) (! (= (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_16651_10483) ) (! (= (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_16651_53) ) (! (= (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_16651_16652) ) (! (= (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_16651_3178) ) (! (= (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_6867_16669) ) (! (= (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_16594_16596) ) (! (= (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_10482_10483) ) (! (= (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_10469_53) ) (! (= (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_6867_16652) ) (! (= (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_16518_3178) ) (! (= (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@15 T@Seq_18477) (t@@1 T@Seq_18477) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_18477| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_18477| s@@15)) (|Seq#Length_18477| s@@15)) n@@15) (= (|Seq#Drop_18477| (|Seq#Append_18477| s@@15 t@@1) n@@15) (|Seq#Drop_18477| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_18477| s@@15))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_18477| (|Seq#Append_18477| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3056) (t@@2 T@Seq_3056) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3056| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3056| s@@16)) (|Seq#Length_3056| s@@16)) n@@16) (= (|Seq#Drop_3056| (|Seq#Append_3056| s@@16 t@@2) n@@16) (|Seq#Drop_3056| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3056| s@@16))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3056| (|Seq#Append_3056| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10430) (SummandMask1 T@PolymorphicMapType_10430) (SummandMask2 T@PolymorphicMapType_10430) (o_2@@71 T@Ref) (f_4@@71 T@Field_17584_17589) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10430_6900_47797#PolymorphicMapType_10430| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10430) (SummandMask1@@0 T@PolymorphicMapType_10430) (SummandMask2@@0 T@PolymorphicMapType_10430) (o_2@@72 T@Ref) (f_4@@72 T@Field_17571_16596) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10430_6900_16596#PolymorphicMapType_10430| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10430) (SummandMask1@@1 T@PolymorphicMapType_10430) (SummandMask2@@1 T@PolymorphicMapType_10430) (o_2@@73 T@Ref) (f_4@@73 T@Field_17571_10483) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10430_6900_10483#PolymorphicMapType_10430| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10430) (SummandMask1@@2 T@PolymorphicMapType_10430) (SummandMask2@@2 T@PolymorphicMapType_10430) (o_2@@74 T@Ref) (f_4@@74 T@Field_17571_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10430_6900_53#PolymorphicMapType_10430| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10430) (SummandMask1@@3 T@PolymorphicMapType_10430) (SummandMask2@@3 T@PolymorphicMapType_10430) (o_2@@75 T@Ref) (f_4@@75 T@Field_17571_17572) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10430_6900_6901#PolymorphicMapType_10430| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10430) (SummandMask1@@4 T@PolymorphicMapType_10430) (SummandMask2@@4 T@PolymorphicMapType_10430) (o_2@@76 T@Ref) (f_4@@76 T@Field_17571_3178) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10430_6900_3178#PolymorphicMapType_10430| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10430) (SummandMask1@@5 T@PolymorphicMapType_10430) (SummandMask2@@5 T@PolymorphicMapType_10430) (o_2@@77 T@Ref) (f_4@@77 T@Field_16664_16669) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10430_6875_47303#PolymorphicMapType_10430| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10430) (SummandMask1@@6 T@PolymorphicMapType_10430) (SummandMask2@@6 T@PolymorphicMapType_10430) (o_2@@78 T@Ref) (f_4@@78 T@Field_16651_16596) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10430_6875_16596#PolymorphicMapType_10430| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10430) (SummandMask1@@7 T@PolymorphicMapType_10430) (SummandMask2@@7 T@PolymorphicMapType_10430) (o_2@@79 T@Ref) (f_4@@79 T@Field_16651_10483) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10430_6875_10483#PolymorphicMapType_10430| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10430) (SummandMask1@@8 T@PolymorphicMapType_10430) (SummandMask2@@8 T@PolymorphicMapType_10430) (o_2@@80 T@Ref) (f_4@@80 T@Field_16651_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10430_6875_53#PolymorphicMapType_10430| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10430) (SummandMask1@@9 T@PolymorphicMapType_10430) (SummandMask2@@9 T@PolymorphicMapType_10430) (o_2@@81 T@Ref) (f_4@@81 T@Field_16651_16652) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10430_6875_6876#PolymorphicMapType_10430| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10430) (SummandMask1@@10 T@PolymorphicMapType_10430) (SummandMask2@@10 T@PolymorphicMapType_10430) (o_2@@82 T@Ref) (f_4@@82 T@Field_16651_3178) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10430_6875_3178#PolymorphicMapType_10430| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10430) (SummandMask1@@11 T@PolymorphicMapType_10430) (SummandMask2@@11 T@PolymorphicMapType_10430) (o_2@@83 T@Ref) (f_4@@83 T@Field_6867_16669) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10430_6867_46809#PolymorphicMapType_10430| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10430) (SummandMask1@@12 T@PolymorphicMapType_10430) (SummandMask2@@12 T@PolymorphicMapType_10430) (o_2@@84 T@Ref) (f_4@@84 T@Field_16594_16596) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10430_6867_16596#PolymorphicMapType_10430| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10430) (SummandMask1@@13 T@PolymorphicMapType_10430) (SummandMask2@@13 T@PolymorphicMapType_10430) (o_2@@85 T@Ref) (f_4@@85 T@Field_10482_10483) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10430_6867_10483#PolymorphicMapType_10430| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_10430) (SummandMask1@@14 T@PolymorphicMapType_10430) (SummandMask2@@14 T@PolymorphicMapType_10430) (o_2@@86 T@Ref) (f_4@@86 T@Field_10469_53) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10430_6867_53#PolymorphicMapType_10430| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_10430) (SummandMask1@@15 T@PolymorphicMapType_10430) (SummandMask2@@15 T@PolymorphicMapType_10430) (o_2@@87 T@Ref) (f_4@@87 T@Field_6867_16652) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_10430_6867_6876#PolymorphicMapType_10430| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_10430) (SummandMask1@@16 T@PolymorphicMapType_10430) (SummandMask2@@16 T@PolymorphicMapType_10430) (o_2@@88 T@Ref) (f_4@@88 T@Field_16518_3178) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_10430_6867_3178#PolymorphicMapType_10430| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.567:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18477) (b T@Seq_18477) ) (!  (=> (|Seq#Equal_18477| a b) (= a b))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18477| a b))
)))
(assert (forall ((a@@0 T@Seq_3056) (b@@0 T@Seq_3056) ) (!  (=> (|Seq#Equal_3056| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3056| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18477) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_18477| s@@17))) (|Seq#ContainsTrigger_6928| s@@17 (|Seq#Index_18477| s@@17 i@@3)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_18477| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3056) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3056| s@@18))) (|Seq#ContainsTrigger_3056| s@@18 (|Seq#Index_3056| s@@18 i@@4)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3056| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_18477) (s1@@3 T@Seq_18477) ) (!  (and (=> (= s0@@3 |Seq#Empty_18477|) (= (|Seq#Append_18477| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_18477|) (= (|Seq#Append_18477| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18477| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3056) (s1@@4 T@Seq_3056) ) (!  (and (=> (= s0@@4 |Seq#Empty_3056|) (= (|Seq#Append_3056| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3056|) (= (|Seq#Append_3056| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3056| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_18477| (|Seq#Singleton_18477| t@@3) 0) t@@3)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_18477| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3056| (|Seq#Singleton_3056| t@@4) 0) t@@4)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3056| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18477) ) (! (<= 0 (|Seq#Length_18477| s@@19))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_18477| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3056) ) (! (<= 0 (|Seq#Length_3056| s@@20))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3056| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_18477) (s1@@5 T@Seq_18477) ) (!  (=> (|Seq#Equal_18477| s0@@5 s1@@5) (and (= (|Seq#Length_18477| s0@@5) (|Seq#Length_18477| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_18477| s0@@5))) (= (|Seq#Index_18477| s0@@5 j@@6) (|Seq#Index_18477| s1@@5 j@@6)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_18477| s0@@5 j@@6))
 :pattern ( (|Seq#Index_18477| s1@@5 j@@6))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18477| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3056) (s1@@6 T@Seq_3056) ) (!  (=> (|Seq#Equal_3056| s0@@6 s1@@6) (and (= (|Seq#Length_3056| s0@@6) (|Seq#Length_3056| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3056| s0@@6))) (= (|Seq#Index_3056| s0@@6 j@@7) (|Seq#Index_3056| s1@@6 j@@7)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3056| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3056| s1@@6 j@@7))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3056| s0@@6 s1@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_6875_6876 (pred_1 x@@7)) 0)
 :qid |stdinbpl.605:15|
 :skolemid |60|
 :pattern ( (pred_1 x@@7))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_18477| (|Seq#Singleton_18477| t@@5)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_18477| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3056| (|Seq#Singleton_3056| t@@6)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3056| t@@6))
)))
(assert (forall ((r_1@@3 T@Ref) ) (! (= (getPredWandId_6900_6901 (p_2 r_1@@3)) 1)
 :qid |stdinbpl.659:15|
 :skolemid |66|
 :pattern ( (p_2 r_1@@3))
)))
(assert (forall ((s@@21 T@Seq_18477) (t@@7 T@Seq_18477) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_18477| s@@21))) (= (|Seq#Take_18477| (|Seq#Append_18477| s@@21 t@@7) n@@17) (|Seq#Take_18477| s@@21 n@@17)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_18477| (|Seq#Append_18477| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3056) (t@@8 T@Seq_3056) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3056| s@@22))) (= (|Seq#Take_3056| (|Seq#Append_3056| s@@22 t@@8) n@@18) (|Seq#Take_3056| s@@22 n@@18)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3056| (|Seq#Append_3056| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18477) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_18477| s@@23))) (= (|Seq#Length_18477| (|Seq#Update_18477| s@@23 i@@5 v@@2)) (|Seq#Length_18477| s@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_18477| (|Seq#Update_18477| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_18477| s@@23) (|Seq#Update_18477| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3056) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3056| s@@24))) (= (|Seq#Length_3056| (|Seq#Update_3056| s@@24 i@@6 v@@3)) (|Seq#Length_3056| s@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3056| (|Seq#Update_3056| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3056| s@@24) (|Seq#Update_3056| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10409) (o_17 T@Ref) (f_19 T@Field_17571_16596) (v@@4 T@Seq_3056) ) (! (succHeap Heap@@34 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@34) (store (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@34) o_17 f_19 v@@4) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@34) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@34) (store (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@34) o_17 f_19 v@@4) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10409) (o_17@@0 T@Ref) (f_19@@0 T@Field_17584_17589) (v@@5 T@PolymorphicMapType_10958) ) (! (succHeap Heap@@35 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@35) (store (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@35) o_17@@0 f_19@@0 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@35) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@35) (store (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@35) o_17@@0 f_19@@0 v@@5)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10409) (o_17@@1 T@Ref) (f_19@@1 T@Field_17571_3178) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@36) (store (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@36) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@36) (store (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@36) o_17@@1 f_19@@1 v@@6) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@36) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10409) (o_17@@2 T@Ref) (f_19@@2 T@Field_17571_17572) (v@@7 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@37) (store (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@37) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@37) (store (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@37) o_17@@2 f_19@@2 v@@7) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@37) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10409) (o_17@@3 T@Ref) (f_19@@3 T@Field_17571_10483) (v@@8 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@38) (store (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@38) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@38) (store (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@38) o_17@@3 f_19@@3 v@@8) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@38) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10409) (o_17@@4 T@Ref) (f_19@@4 T@Field_17571_53) (v@@9 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@39) (store (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@39) o_17@@4 f_19@@4 v@@9) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@39) (store (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@39) o_17@@4 f_19@@4 v@@9) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@39) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10409) (o_17@@5 T@Ref) (f_19@@5 T@Field_16651_16596) (v@@10 T@Seq_3056) ) (! (succHeap Heap@@40 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@40) (store (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@40) o_17@@5 f_19@@5 v@@10) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@40) (store (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@40) o_17@@5 f_19@@5 v@@10) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@40) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10409) (o_17@@6 T@Ref) (f_19@@6 T@Field_16664_16669) (v@@11 T@PolymorphicMapType_10958) ) (! (succHeap Heap@@41 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@41) (store (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@41) o_17@@6 f_19@@6 v@@11) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@41) (store (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@41) o_17@@6 f_19@@6 v@@11) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@41) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10409) (o_17@@7 T@Ref) (f_19@@7 T@Field_16651_3178) (v@@12 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@42) (store (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@42) o_17@@7 f_19@@7 v@@12) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@42) (store (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@42) o_17@@7 f_19@@7 v@@12) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@42) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10409) (o_17@@8 T@Ref) (f_19@@8 T@Field_16651_16652) (v@@13 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@43) (store (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@43) o_17@@8 f_19@@8 v@@13) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@43) (store (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@43) o_17@@8 f_19@@8 v@@13) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@43) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10409) (o_17@@9 T@Ref) (f_19@@9 T@Field_16651_10483) (v@@14 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@44) (store (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@44) o_17@@9 f_19@@9 v@@14) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@44) (store (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@44) o_17@@9 f_19@@9 v@@14) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@44) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10409) (o_17@@10 T@Ref) (f_19@@10 T@Field_16651_53) (v@@15 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@45) (store (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@45) o_17@@10 f_19@@10 v@@15) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@45) (store (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@45) o_17@@10 f_19@@10 v@@15) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@45) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10409) (o_17@@11 T@Ref) (f_19@@11 T@Field_16594_16596) (v@@16 T@Seq_3056) ) (! (succHeap Heap@@46 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@46) (store (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@46) o_17@@11 f_19@@11 v@@16) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@46) (store (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@46) o_17@@11 f_19@@11 v@@16) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@46) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10409) (o_17@@12 T@Ref) (f_19@@12 T@Field_6867_16669) (v@@17 T@PolymorphicMapType_10958) ) (! (succHeap Heap@@47 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@47) (store (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@47) o_17@@12 f_19@@12 v@@17) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@47) (store (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@47) o_17@@12 f_19@@12 v@@17) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@47) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10409) (o_17@@13 T@Ref) (f_19@@13 T@Field_16518_3178) (v@@18 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@48) (store (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@48) o_17@@13 f_19@@13 v@@18) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@48) (store (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@48) o_17@@13 f_19@@13 v@@18) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@48) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_10409) (o_17@@14 T@Ref) (f_19@@14 T@Field_6867_16652) (v@@19 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@49) (store (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@49) o_17@@14 f_19@@14 v@@19) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@49) (store (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@49) o_17@@14 f_19@@14 v@@19) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@49) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_10409) (o_17@@15 T@Ref) (f_19@@15 T@Field_10482_10483) (v@@20 T@Ref) ) (! (succHeap Heap@@50 (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@50) (store (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@50) o_17@@15 f_19@@15 v@@20) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@50) (store (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@50) o_17@@15 f_19@@15 v@@20) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@50) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_10409) (o_17@@16 T@Ref) (f_19@@16 T@Field_10469_53) (v@@21 Bool) ) (! (succHeap Heap@@51 (PolymorphicMapType_10409 (store (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@51) o_17@@16 f_19@@16 v@@21) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10409 (store (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@51) o_17@@16 f_19@@16 v@@21) (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6875_6876#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_3178#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6879_20788#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6900_6901#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_16596#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_16652#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_6867_30494#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_3178#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_53#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_10483#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_16651_16596#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_3178#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_53#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_10483#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_16596#PolymorphicMapType_10409| Heap@@51) (|PolymorphicMapType_10409_17571_33231#PolymorphicMapType_10409| Heap@@51)))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (PredicateMaskField_6875 (pred_1 x@@8)) (|pred#sm| x@@8))
 :qid |stdinbpl.597:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_6875 (pred_1 x@@8)))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (= (PredicateMaskField_6900 (p_2 r_1@@4)) (|p#sm| r_1@@4))
 :qid |stdinbpl.651:15|
 :skolemid |64|
 :pattern ( (PredicateMaskField_6900 (p_2 r_1@@4)))
)))
(assert (forall ((s@@25 T@Seq_18477) (t@@9 T@Seq_18477) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_18477| s@@25))) (= (|Seq#Drop_18477| (|Seq#Append_18477| s@@25 t@@9) n@@19) (|Seq#Append_18477| (|Seq#Drop_18477| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_18477| (|Seq#Append_18477| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3056) (t@@10 T@Seq_3056) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3056| s@@26))) (= (|Seq#Drop_3056| (|Seq#Append_3056| s@@26 t@@10) n@@20) (|Seq#Append_3056| (|Seq#Drop_3056| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3056| (|Seq#Append_3056| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18477) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_18477| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_18477| (|Seq#Drop_18477| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_18477| s@@27 i@@7))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_18477| s@@27 n@@21) (|Seq#Index_18477| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3056) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3056| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3056| (|Seq#Drop_3056| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3056| s@@28 i@@8))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3056| s@@28 n@@22) (|Seq#Index_3056| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_18477) (s1@@7 T@Seq_18477) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_18477|)) (not (= s1@@7 |Seq#Empty_18477|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_18477| s0@@7))) (= (|Seq#Index_18477| (|Seq#Append_18477| s0@@7 s1@@7) n@@23) (|Seq#Index_18477| s0@@7 n@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_18477| (|Seq#Append_18477| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_18477| s0@@7 n@@23) (|Seq#Append_18477| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3056) (s1@@8 T@Seq_3056) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3056|)) (not (= s1@@8 |Seq#Empty_3056|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3056| s0@@8))) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@8 s1@@8) n@@24) (|Seq#Index_3056| s0@@8 n@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3056| (|Seq#Append_3056| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3056| s0@@8 n@@24) (|Seq#Append_3056| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18477) (s1@@9 T@Seq_18477) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_18477|)) (not (= s1@@9 |Seq#Empty_18477|))) (<= 0 m)) (< m (|Seq#Length_18477| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_18477| s0@@9)) (|Seq#Length_18477| s0@@9)) m) (= (|Seq#Index_18477| (|Seq#Append_18477| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_18477| s0@@9))) (|Seq#Index_18477| s1@@9 m))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_18477| s1@@9 m) (|Seq#Append_18477| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3056) (s1@@10 T@Seq_3056) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3056|)) (not (= s1@@10 |Seq#Empty_3056|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3056| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3056| s0@@10)) (|Seq#Length_3056| s0@@10)) m@@0) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3056| s0@@10))) (|Seq#Index_3056| s1@@10 m@@0))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3056| s1@@10 m@@0) (|Seq#Append_3056| s0@@10 s1@@10))
)))
(assert (forall ((o_17@@17 T@Ref) (f_25 T@Field_10482_10483) (Heap@@52 T@PolymorphicMapType_10409) ) (!  (=> (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@52) o_17@@17 $allocated) (select (|PolymorphicMapType_10409_6647_53#PolymorphicMapType_10409| Heap@@52) (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@52) o_17@@17 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10409_6650_6651#PolymorphicMapType_10409| Heap@@52) o_17@@17 f_25))
)))
(assert (forall ((s@@29 T@Seq_18477) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_18477| s@@29))) (= (|Seq#Index_18477| s@@29 i@@9) x@@9)) (|Seq#Contains_6928| s@@29 x@@9))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_6928| s@@29 x@@9) (|Seq#Index_18477| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3056) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3056| s@@30))) (= (|Seq#Index_3056| s@@30 i@@10) x@@10)) (|Seq#Contains_3056| s@@30 x@@10))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3056| s@@30 x@@10) (|Seq#Index_3056| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_18477) (s1@@11 T@Seq_18477) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18477| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18477| s0@@11 s1@@11))) (not (= (|Seq#Length_18477| s0@@11) (|Seq#Length_18477| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18477| s0@@11 s1@@11))) (= (|Seq#Length_18477| s0@@11) (|Seq#Length_18477| s1@@11))) (= (|Seq#SkolemDiff_18477| s0@@11 s1@@11) (|Seq#SkolemDiff_18477| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18477| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18477| s0@@11 s1@@11) (|Seq#Length_18477| s0@@11))) (not (= (|Seq#Index_18477| s0@@11 (|Seq#SkolemDiff_18477| s0@@11 s1@@11)) (|Seq#Index_18477| s1@@11 (|Seq#SkolemDiff_18477| s0@@11 s1@@11))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18477| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3056) (s1@@12 T@Seq_3056) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3056| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3056| s0@@12 s1@@12))) (not (= (|Seq#Length_3056| s0@@12) (|Seq#Length_3056| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3056| s0@@12 s1@@12))) (= (|Seq#Length_3056| s0@@12) (|Seq#Length_3056| s1@@12))) (= (|Seq#SkolemDiff_3056| s0@@12 s1@@12) (|Seq#SkolemDiff_3056| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3056| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3056| s0@@12 s1@@12) (|Seq#Length_3056| s0@@12))) (not (= (|Seq#Index_3056| s0@@12 (|Seq#SkolemDiff_3056| s0@@12 s1@@12)) (|Seq#Index_3056| s1@@12 (|Seq#SkolemDiff_3056| s0@@12 s1@@12))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3056| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_17571_17572) (v_1@@2 T@FrameType) (q T@Field_17571_17572) (w@@2 T@FrameType) (r T@Field_17571_17572) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17571_17571 p@@3 v_1@@2 q w@@2) (InsidePredicate_17571_17571 q w@@2 r u)) (InsidePredicate_17571_17571 p@@3 v_1@@2 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_17571 p@@3 v_1@@2 q w@@2) (InsidePredicate_17571_17571 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_17571_17572) (v_1@@3 T@FrameType) (q@@0 T@Field_17571_17572) (w@@3 T@FrameType) (r@@0 T@Field_16651_16652) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_17571 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_17571_16651 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_17571_16651 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_17571 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_17571_16651 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_17571_17572) (v_1@@4 T@FrameType) (q@@1 T@Field_17571_17572) (w@@4 T@FrameType) (r@@1 T@Field_6867_16652) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_17571 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_17571_10469 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_17571_10469 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_17571 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_17571_10469 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_17571_17572) (v_1@@5 T@FrameType) (q@@2 T@Field_16651_16652) (w@@5 T@FrameType) (r@@2 T@Field_17571_17572) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_16651 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16651_17571 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_17571_17571 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_16651 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16651_17571 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_17571_17572) (v_1@@6 T@FrameType) (q@@3 T@Field_16651_16652) (w@@6 T@FrameType) (r@@3 T@Field_16651_16652) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_16651 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16651_16651 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_17571_16651 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_16651 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16651_16651 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_17571_17572) (v_1@@7 T@FrameType) (q@@4 T@Field_16651_16652) (w@@7 T@FrameType) (r@@4 T@Field_6867_16652) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_16651 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16651_10469 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_17571_10469 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_16651 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16651_10469 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_17571_17572) (v_1@@8 T@FrameType) (q@@5 T@Field_6867_16652) (w@@8 T@FrameType) (r@@5 T@Field_17571_17572) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_10469 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10469_17571 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_17571_17571 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_10469 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_10469_17571 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_17571_17572) (v_1@@9 T@FrameType) (q@@6 T@Field_6867_16652) (w@@9 T@FrameType) (r@@6 T@Field_16651_16652) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_10469 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10469_16651 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_17571_16651 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_10469 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_10469_16651 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_17571_17572) (v_1@@10 T@FrameType) (q@@7 T@Field_6867_16652) (w@@10 T@FrameType) (r@@7 T@Field_6867_16652) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_17571_10469 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10469_10469 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_17571_10469 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17571_10469 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_10469_10469 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_16651_16652) (v_1@@11 T@FrameType) (q@@8 T@Field_17571_17572) (w@@11 T@FrameType) (r@@8 T@Field_17571_17572) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_17571 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_17571_17571 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16651_17571 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_17571 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_17571_17571 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_16651_16652) (v_1@@12 T@FrameType) (q@@9 T@Field_17571_17572) (w@@12 T@FrameType) (r@@9 T@Field_16651_16652) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_17571 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_17571_16651 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16651_16651 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_17571 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_17571_16651 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_16651_16652) (v_1@@13 T@FrameType) (q@@10 T@Field_17571_17572) (w@@13 T@FrameType) (r@@10 T@Field_6867_16652) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_17571 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_17571_10469 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16651_10469 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_17571 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_17571_10469 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_16651_16652) (v_1@@14 T@FrameType) (q@@11 T@Field_16651_16652) (w@@14 T@FrameType) (r@@11 T@Field_17571_17572) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_16651 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16651_17571 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16651_17571 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_16651 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16651_17571 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_16651_16652) (v_1@@15 T@FrameType) (q@@12 T@Field_16651_16652) (w@@15 T@FrameType) (r@@12 T@Field_16651_16652) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_16651 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16651_16651 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16651_16651 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_16651 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16651_16651 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_16651_16652) (v_1@@16 T@FrameType) (q@@13 T@Field_16651_16652) (w@@16 T@FrameType) (r@@13 T@Field_6867_16652) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_16651 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16651_10469 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16651_10469 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_16651 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16651_10469 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_16651_16652) (v_1@@17 T@FrameType) (q@@14 T@Field_6867_16652) (w@@17 T@FrameType) (r@@14 T@Field_17571_17572) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_10469 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10469_17571 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16651_17571 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_10469 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_10469_17571 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_16651_16652) (v_1@@18 T@FrameType) (q@@15 T@Field_6867_16652) (w@@18 T@FrameType) (r@@15 T@Field_16651_16652) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_10469 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10469_16651 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16651_16651 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_10469 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_10469_16651 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_16651_16652) (v_1@@19 T@FrameType) (q@@16 T@Field_6867_16652) (w@@19 T@FrameType) (r@@16 T@Field_6867_16652) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16651_10469 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10469_10469 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16651_10469 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16651_10469 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_10469_10469 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_6867_16652) (v_1@@20 T@FrameType) (q@@17 T@Field_17571_17572) (w@@20 T@FrameType) (r@@17 T@Field_17571_17572) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_17571 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_17571_17571 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_10469_17571 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_17571 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_17571_17571 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_6867_16652) (v_1@@21 T@FrameType) (q@@18 T@Field_17571_17572) (w@@21 T@FrameType) (r@@18 T@Field_16651_16652) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_17571 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_17571_16651 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_10469_16651 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_17571 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_17571_16651 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_6867_16652) (v_1@@22 T@FrameType) (q@@19 T@Field_17571_17572) (w@@22 T@FrameType) (r@@19 T@Field_6867_16652) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_17571 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_17571_10469 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_10469_10469 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_17571 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_17571_10469 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_6867_16652) (v_1@@23 T@FrameType) (q@@20 T@Field_16651_16652) (w@@23 T@FrameType) (r@@20 T@Field_17571_17572) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_16651 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16651_17571 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_10469_17571 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_16651 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16651_17571 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_6867_16652) (v_1@@24 T@FrameType) (q@@21 T@Field_16651_16652) (w@@24 T@FrameType) (r@@21 T@Field_16651_16652) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_16651 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16651_16651 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_10469_16651 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_16651 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16651_16651 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_6867_16652) (v_1@@25 T@FrameType) (q@@22 T@Field_16651_16652) (w@@25 T@FrameType) (r@@22 T@Field_6867_16652) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_16651 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16651_10469 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_10469_10469 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_16651 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16651_10469 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_6867_16652) (v_1@@26 T@FrameType) (q@@23 T@Field_6867_16652) (w@@26 T@FrameType) (r@@23 T@Field_17571_17572) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_10469 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10469_17571 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_10469_17571 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_10469 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_10469_17571 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_6867_16652) (v_1@@27 T@FrameType) (q@@24 T@Field_6867_16652) (w@@27 T@FrameType) (r@@24 T@Field_16651_16652) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_10469 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10469_16651 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_10469_16651 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_10469 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_10469_16651 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_6867_16652) (v_1@@28 T@FrameType) (q@@25 T@Field_6867_16652) (w@@28 T@FrameType) (r@@25 T@Field_6867_16652) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_10469_10469 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10469_10469 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_10469_10469 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10469_10469 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_10469_10469 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@31 T@Seq_18477) ) (!  (=> (= (|Seq#Length_18477| s@@31) 0) (= s@@31 |Seq#Empty_18477|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_18477| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3056) ) (!  (=> (= (|Seq#Length_3056| s@@32) 0) (= s@@32 |Seq#Empty_3056|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3056| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18477) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_18477| s@@33 n@@25) |Seq#Empty_18477|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_18477| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3056) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3056| s@@34 n@@26) |Seq#Empty_3056|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3056| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id main)
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
