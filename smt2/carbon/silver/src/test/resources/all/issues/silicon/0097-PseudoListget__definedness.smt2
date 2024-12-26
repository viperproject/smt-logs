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
(declare-sort T@Field_8716_53 0)
(declare-sort T@Field_8729_8730 0)
(declare-sort T@Field_15350_15351 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14841_3031 0)
(declare-sort T@Field_17961_17966 0)
(declare-sort T@Field_14750_645 0)
(declare-sort T@Field_5281_15351 0)
(declare-sort T@Field_5281_17966 0)
(declare-sort T@Field_15350_5282 0)
(declare-sort T@Field_15350_53 0)
(declare-sort T@Field_15350_645 0)
(declare-sort T@Field_15350_3031 0)
(declare-sort T@Field_18895_5282 0)
(declare-sort T@Field_18895_53 0)
(declare-sort T@Field_18895_645 0)
(declare-sort T@Field_18895_3031 0)
(declare-sort T@Field_18895_18896 0)
(declare-sort T@Field_18908_18913 0)
(declare-datatypes ((T@PolymorphicMapType_8677 0)) (((PolymorphicMapType_8677 (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| (Array T@Ref T@Field_15350_15351 Real)) (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| (Array T@Ref T@Field_14841_3031 Real)) (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| (Array T@Ref T@Field_8729_8730 Real)) (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| (Array T@Ref T@Field_15350_3031 Real)) (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| (Array T@Ref T@Field_15350_5282 Real)) (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| (Array T@Ref T@Field_15350_53 Real)) (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| (Array T@Ref T@Field_15350_645 Real)) (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| (Array T@Ref T@Field_17961_17966 Real)) (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| (Array T@Ref T@Field_5281_15351 Real)) (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| (Array T@Ref T@Field_8716_53 Real)) (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| (Array T@Ref T@Field_14750_645 Real)) (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| (Array T@Ref T@Field_5281_17966 Real)) (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| (Array T@Ref T@Field_18895_18896 Real)) (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| (Array T@Ref T@Field_18895_3031 Real)) (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| (Array T@Ref T@Field_18895_5282 Real)) (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| (Array T@Ref T@Field_18895_53 Real)) (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| (Array T@Ref T@Field_18895_645 Real)) (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| (Array T@Ref T@Field_18908_18913 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9205 0)) (((PolymorphicMapType_9205 (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (Array T@Ref T@Field_14841_3031 Bool)) (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (Array T@Ref T@Field_8729_8730 Bool)) (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (Array T@Ref T@Field_8716_53 Bool)) (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (Array T@Ref T@Field_14750_645 Bool)) (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (Array T@Ref T@Field_5281_15351 Bool)) (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (Array T@Ref T@Field_5281_17966 Bool)) (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (Array T@Ref T@Field_15350_3031 Bool)) (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (Array T@Ref T@Field_15350_5282 Bool)) (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (Array T@Ref T@Field_15350_53 Bool)) (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (Array T@Ref T@Field_15350_645 Bool)) (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (Array T@Ref T@Field_15350_15351 Bool)) (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (Array T@Ref T@Field_17961_17966 Bool)) (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (Array T@Ref T@Field_18895_3031 Bool)) (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (Array T@Ref T@Field_18895_5282 Bool)) (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (Array T@Ref T@Field_18895_53 Bool)) (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (Array T@Ref T@Field_18895_645 Bool)) (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (Array T@Ref T@Field_18895_18896 Bool)) (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (Array T@Ref T@Field_18908_18913 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8656 0)) (((PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| (Array T@Ref T@Field_8716_53 Bool)) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| (Array T@Ref T@Field_8729_8730 T@Ref)) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| (Array T@Ref T@Field_15350_15351 T@FrameType)) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| (Array T@Ref T@Field_14841_3031 Int)) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| (Array T@Ref T@Field_17961_17966 T@PolymorphicMapType_9205)) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| (Array T@Ref T@Field_14750_645 Real)) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| (Array T@Ref T@Field_5281_15351 T@FrameType)) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| (Array T@Ref T@Field_5281_17966 T@PolymorphicMapType_9205)) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| (Array T@Ref T@Field_15350_5282 T@Ref)) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| (Array T@Ref T@Field_15350_53 Bool)) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| (Array T@Ref T@Field_15350_645 Real)) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| (Array T@Ref T@Field_15350_3031 Int)) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| (Array T@Ref T@Field_18895_5282 T@Ref)) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| (Array T@Ref T@Field_18895_53 Bool)) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| (Array T@Ref T@Field_18895_645 Real)) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| (Array T@Ref T@Field_18895_3031 Int)) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| (Array T@Ref T@Field_18895_18896 T@FrameType)) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| (Array T@Ref T@Field_18908_18913 T@PolymorphicMapType_9205)) ) ) ))
(declare-fun $allocated () T@Field_8716_53)
(declare-fun globalK$ () Real)
(declare-fun old$methodPermission () T@Field_14750_645)
(declare-fun joinable$ () T@Field_8716_53)
(declare-fun PseudoListvalue$ () T@Field_14841_3031)
(declare-fun PseudoListnext$ () T@Field_8729_8730)
(declare-fun par$PseudoListstatic_range_workaround$this$_1 () T@Field_8729_8730)
(declare-fun par$PseudoListstatic_range_workaround$k$ () T@Field_14750_645)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8656 T@PolymorphicMapType_8656 T@PolymorphicMapType_8677) Bool)
(declare-fun IsPredicateField_5321_5322 (T@Field_18895_18896) Bool)
(declare-fun HasDirectPerm_18895_15351 (T@PolymorphicMapType_8677 T@Ref T@Field_18895_18896) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5321 (T@Field_18895_18896) T@Field_18908_18913)
(declare-fun IsPredicateField_5345_5346 (T@Field_15350_15351) Bool)
(declare-fun HasDirectPerm_15350_15351 (T@PolymorphicMapType_8677 T@Ref T@Field_15350_15351) Bool)
(declare-fun PredicateMaskField_5345 (T@Field_15350_15351) T@Field_17961_17966)
(declare-fun IsPredicateField_5281_28120 (T@Field_5281_15351) Bool)
(declare-fun HasDirectPerm_5281_15351 (T@PolymorphicMapType_8677 T@Ref T@Field_5281_15351) Bool)
(declare-fun PredicateMaskField_5281 (T@Field_5281_15351) T@Field_5281_17966)
(declare-fun IsWandField_18895_34395 (T@Field_18895_18896) Bool)
(declare-fun WandMaskField_18895 (T@Field_18895_18896) T@Field_18908_18913)
(declare-fun IsWandField_15350_34038 (T@Field_15350_15351) Bool)
(declare-fun WandMaskField_15350 (T@Field_15350_15351) T@Field_17961_17966)
(declare-fun IsWandField_5281_33681 (T@Field_5281_15351) Bool)
(declare-fun WandMaskField_5281 (T@Field_5281_15351) T@Field_5281_17966)
(declare-fun succHeap (T@PolymorphicMapType_8656 T@PolymorphicMapType_8656) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8656 T@PolymorphicMapType_8656) Bool)
(declare-fun state (T@PolymorphicMapType_8656 T@PolymorphicMapType_8677) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8677) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9205)
(declare-fun |PseudoListget$'| (T@PolymorphicMapType_8656 T@Ref Int) Bool)
(declare-fun dummyFunction_3352 (Bool) Bool)
(declare-fun |PseudoListget$#triggerStateless| (T@Ref Int) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun PseudoList$MonitorInvariant (T@Ref) T@Field_18895_18896)
(declare-fun PseudoListinv$ (T@Ref) T@Field_15350_15351)
(declare-fun |PseudoList$MonitorInvariant#trigger_5321| (T@PolymorphicMapType_8656 T@Field_18895_18896) Bool)
(declare-fun |PseudoList$MonitorInvariant#everUsed_5321| (T@Field_18895_18896) Bool)
(declare-fun |PseudoListinv$#trigger_5345| (T@PolymorphicMapType_8656 T@Field_15350_15351) Bool)
(declare-fun |PseudoListinv$#everUsed_5345| (T@Field_15350_15351) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |PseudoList$MonitorInvariant#sm| (T@Ref) T@Field_18908_18913)
(declare-fun |PseudoListinv$#sm| (T@Ref) T@Field_17961_17966)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_8656)
(declare-fun ZeroMask () T@PolymorphicMapType_8677)
(declare-fun InsidePredicate_18895_18895 (T@Field_18895_18896 T@FrameType T@Field_18895_18896 T@FrameType) Bool)
(declare-fun InsidePredicate_8716_8716 (T@Field_5281_15351 T@FrameType T@Field_5281_15351 T@FrameType) Bool)
(declare-fun InsidePredicate_5345_5345 (T@Field_15350_15351 T@FrameType T@Field_15350_15351 T@FrameType) Bool)
(declare-fun PseudoListget$ (T@PolymorphicMapType_8656 T@Ref Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun IsPredicateField_5274_645 (T@Field_14750_645) Bool)
(declare-fun IsWandField_5274_645 (T@Field_14750_645) Bool)
(declare-fun IsPredicateField_5277_3016 (T@Field_8716_53) Bool)
(declare-fun IsWandField_5277_3016 (T@Field_8716_53) Bool)
(declare-fun IsPredicateField_5279_3031 (T@Field_14841_3031) Bool)
(declare-fun IsWandField_5279_3031 (T@Field_14841_3031) Bool)
(declare-fun IsPredicateField_5281_5282 (T@Field_8729_8730) Bool)
(declare-fun IsWandField_5281_5282 (T@Field_8729_8730) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_18895_46498 (T@Field_18908_18913) Bool)
(declare-fun IsWandField_18895_46514 (T@Field_18908_18913) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_18895_645 (T@Field_18895_645) Bool)
(declare-fun IsWandField_18895_645 (T@Field_18895_645) Bool)
(declare-fun IsPredicateField_18895_53 (T@Field_18895_53) Bool)
(declare-fun IsWandField_18895_53 (T@Field_18895_53) Bool)
(declare-fun IsPredicateField_18895_5282 (T@Field_18895_5282) Bool)
(declare-fun IsWandField_18895_5282 (T@Field_18895_5282) Bool)
(declare-fun IsPredicateField_18895_3031 (T@Field_18895_3031) Bool)
(declare-fun IsWandField_18895_3031 (T@Field_18895_3031) Bool)
(declare-fun IsPredicateField_5279_45499 (T@Field_5281_17966) Bool)
(declare-fun IsWandField_5279_45515 (T@Field_5281_17966) Bool)
(declare-fun IsPredicateField_5345_44556 (T@Field_17961_17966) Bool)
(declare-fun IsWandField_5345_44572 (T@Field_17961_17966) Bool)
(declare-fun IsPredicateField_5345_645 (T@Field_15350_645) Bool)
(declare-fun IsWandField_5345_645 (T@Field_15350_645) Bool)
(declare-fun IsPredicateField_5345_53 (T@Field_15350_53) Bool)
(declare-fun IsWandField_5345_53 (T@Field_15350_53) Bool)
(declare-fun IsPredicateField_5345_5282 (T@Field_15350_5282) Bool)
(declare-fun IsWandField_5345_5282 (T@Field_15350_5282) Bool)
(declare-fun IsPredicateField_5345_3031 (T@Field_15350_3031) Bool)
(declare-fun IsWandField_5345_3031 (T@Field_15350_3031) Bool)
(declare-fun HasDirectPerm_18895_27832 (T@PolymorphicMapType_8677 T@Ref T@Field_18908_18913) Bool)
(declare-fun HasDirectPerm_18895_3031 (T@PolymorphicMapType_8677 T@Ref T@Field_18895_3031) Bool)
(declare-fun HasDirectPerm_18895_645 (T@PolymorphicMapType_8677 T@Ref T@Field_18895_645) Bool)
(declare-fun HasDirectPerm_18895_53 (T@PolymorphicMapType_8677 T@Ref T@Field_18895_53) Bool)
(declare-fun HasDirectPerm_18895_5282 (T@PolymorphicMapType_8677 T@Ref T@Field_18895_5282) Bool)
(declare-fun HasDirectPerm_15350_26476 (T@PolymorphicMapType_8677 T@Ref T@Field_17961_17966) Bool)
(declare-fun HasDirectPerm_15350_3031 (T@PolymorphicMapType_8677 T@Ref T@Field_15350_3031) Bool)
(declare-fun HasDirectPerm_15350_645 (T@PolymorphicMapType_8677 T@Ref T@Field_15350_645) Bool)
(declare-fun HasDirectPerm_15350_53 (T@PolymorphicMapType_8677 T@Ref T@Field_15350_53) Bool)
(declare-fun HasDirectPerm_15350_5282 (T@PolymorphicMapType_8677 T@Ref T@Field_15350_5282) Bool)
(declare-fun HasDirectPerm_5281_25094 (T@PolymorphicMapType_8677 T@Ref T@Field_5281_17966) Bool)
(declare-fun HasDirectPerm_5281_3031 (T@PolymorphicMapType_8677 T@Ref T@Field_14841_3031) Bool)
(declare-fun HasDirectPerm_5281_645 (T@PolymorphicMapType_8677 T@Ref T@Field_14750_645) Bool)
(declare-fun HasDirectPerm_5281_53 (T@PolymorphicMapType_8677 T@Ref T@Field_8716_53) Bool)
(declare-fun HasDirectPerm_5281_5282 (T@PolymorphicMapType_8677 T@Ref T@Field_8729_8730) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8677 T@PolymorphicMapType_8677 T@PolymorphicMapType_8677) Bool)
(declare-fun |PseudoListget$#frame| (T@FrameType T@Ref Int) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_5321_5322 (T@Field_18895_18896) Int)
(declare-fun getPredWandId_5345_5346 (T@Field_15350_15351) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_18895_8716 (T@Field_18895_18896 T@FrameType T@Field_5281_15351 T@FrameType) Bool)
(declare-fun InsidePredicate_18895_5345 (T@Field_18895_18896 T@FrameType T@Field_15350_15351 T@FrameType) Bool)
(declare-fun InsidePredicate_8716_18895 (T@Field_5281_15351 T@FrameType T@Field_18895_18896 T@FrameType) Bool)
(declare-fun InsidePredicate_8716_5345 (T@Field_5281_15351 T@FrameType T@Field_15350_15351 T@FrameType) Bool)
(declare-fun InsidePredicate_5345_18895 (T@Field_15350_15351 T@FrameType T@Field_18895_18896 T@FrameType) Bool)
(declare-fun InsidePredicate_5345_8716 (T@Field_15350_15351 T@FrameType T@Field_5281_15351 T@FrameType) Bool)
(assert (and (distinct $allocated joinable$)(distinct old$methodPermission par$PseudoListstatic_range_workaround$k$)(distinct PseudoListnext$ par$PseudoListstatic_range_workaround$this$_1))
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap T@PolymorphicMapType_8656) (ExhaleHeap T@PolymorphicMapType_8656) (Mask T@PolymorphicMapType_8677) (pm_f_13 T@Field_18895_18896) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_18895_15351 Mask null pm_f_13) (IsPredicateField_5321_5322 pm_f_13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_14841_3031) ) (!  (=> (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap) o2_13 f_30) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_8729_8730) ) (!  (=> (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_14750_645) ) (!  (=> (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_5281_15351) ) (!  (=> (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_5281_17966) ) (!  (=> (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_15350_3031) ) (!  (=> (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_15350_5282) ) (!  (=> (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_15350_53) ) (!  (=> (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_15350_645) ) (!  (=> (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_15350_15351) ) (!  (=> (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_17961_17966) ) (!  (=> (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_18895_3031) ) (!  (=> (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_18895_5282) ) (!  (=> (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_18895_53) ) (!  (=> (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_18895_645) ) (!  (=> (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap) o2_13@@14 f_30@@14))
))) (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_18895_18896) ) (!  (=> (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap) o2_13@@15 f_30@@15))
))) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) null (PredicateMaskField_5321 pm_f_13))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap) o2_13@@16 f_30@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_5321_5322 pm_f_13))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8656) (ExhaleHeap@@0 T@PolymorphicMapType_8656) (Mask@@0 T@PolymorphicMapType_8677) (pm_f_13@@0 T@Field_15350_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_15350_15351 Mask@@0 null pm_f_13@@0) (IsPredicateField_5345_5346 pm_f_13@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_14841_3031) ) (!  (=> (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@0) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@17 f_30@@17))
)) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_8729_8730) ) (!  (=> (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@0) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@0) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_14750_645) ) (!  (=> (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@0) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_5281_15351) ) (!  (=> (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@0) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_5281_17966) ) (!  (=> (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@0) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@22 f_30@@22))
))) (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_15350_3031) ) (!  (=> (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@0) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@23 f_30@@23))
))) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_15350_5282) ) (!  (=> (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@0) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_15350_53) ) (!  (=> (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@0) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_15350_645) ) (!  (=> (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@0) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_15350_15351) ) (!  (=> (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@0) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_17961_17966) ) (!  (=> (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_18895_3031) ) (!  (=> (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@0) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_18895_5282) ) (!  (=> (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@0) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@30 f_30@@30))
))) (forall ((o2_13@@31 T@Ref) (f_30@@31 T@Field_18895_53) ) (!  (=> (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@31 f_30@@31) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@0) o2_13@@31 f_30@@31) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@31 f_30@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@31 f_30@@31))
))) (forall ((o2_13@@32 T@Ref) (f_30@@32 T@Field_18895_645) ) (!  (=> (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@32 f_30@@32) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@0) o2_13@@32 f_30@@32) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@32 f_30@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@32 f_30@@32))
))) (forall ((o2_13@@33 T@Ref) (f_30@@33 T@Field_18895_18896) ) (!  (=> (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@33 f_30@@33) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@0) o2_13@@33 f_30@@33) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@33 f_30@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@33 f_30@@33))
))) (forall ((o2_13@@34 T@Ref) (f_30@@34 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@0) null (PredicateMaskField_5345 pm_f_13@@0))) o2_13@@34 f_30@@34) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@0) o2_13@@34 f_30@@34) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@34 f_30@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@0) o2_13@@34 f_30@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_5345_5346 pm_f_13@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8656) (ExhaleHeap@@1 T@PolymorphicMapType_8656) (Mask@@1 T@PolymorphicMapType_8677) (pm_f_13@@1 T@Field_5281_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_5281_15351 Mask@@1 null pm_f_13@@1) (IsPredicateField_5281_28120 pm_f_13@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@35 T@Ref) (f_30@@35 T@Field_14841_3031) ) (!  (=> (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@35 f_30@@35) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@1) o2_13@@35 f_30@@35) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@35 f_30@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@35 f_30@@35))
)) (forall ((o2_13@@36 T@Ref) (f_30@@36 T@Field_8729_8730) ) (!  (=> (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@36 f_30@@36) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@1) o2_13@@36 f_30@@36) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@36 f_30@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@36 f_30@@36))
))) (forall ((o2_13@@37 T@Ref) (f_30@@37 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@37 f_30@@37) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@1) o2_13@@37 f_30@@37) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@37 f_30@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@37 f_30@@37))
))) (forall ((o2_13@@38 T@Ref) (f_30@@38 T@Field_14750_645) ) (!  (=> (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@38 f_30@@38) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@1) o2_13@@38 f_30@@38) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@38 f_30@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@38 f_30@@38))
))) (forall ((o2_13@@39 T@Ref) (f_30@@39 T@Field_5281_15351) ) (!  (=> (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@39 f_30@@39) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@1) o2_13@@39 f_30@@39) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@39 f_30@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@39 f_30@@39))
))) (forall ((o2_13@@40 T@Ref) (f_30@@40 T@Field_5281_17966) ) (!  (=> (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@40 f_30@@40) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) o2_13@@40 f_30@@40) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@40 f_30@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@40 f_30@@40))
))) (forall ((o2_13@@41 T@Ref) (f_30@@41 T@Field_15350_3031) ) (!  (=> (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@41 f_30@@41) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@1) o2_13@@41 f_30@@41) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@41 f_30@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@41 f_30@@41))
))) (forall ((o2_13@@42 T@Ref) (f_30@@42 T@Field_15350_5282) ) (!  (=> (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@42 f_30@@42) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@1) o2_13@@42 f_30@@42) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@42 f_30@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@42 f_30@@42))
))) (forall ((o2_13@@43 T@Ref) (f_30@@43 T@Field_15350_53) ) (!  (=> (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@43 f_30@@43) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@1) o2_13@@43 f_30@@43) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@43 f_30@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@43 f_30@@43))
))) (forall ((o2_13@@44 T@Ref) (f_30@@44 T@Field_15350_645) ) (!  (=> (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@44 f_30@@44) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@1) o2_13@@44 f_30@@44) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@44 f_30@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@44 f_30@@44))
))) (forall ((o2_13@@45 T@Ref) (f_30@@45 T@Field_15350_15351) ) (!  (=> (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@45 f_30@@45) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@1) o2_13@@45 f_30@@45) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@45 f_30@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@45 f_30@@45))
))) (forall ((o2_13@@46 T@Ref) (f_30@@46 T@Field_17961_17966) ) (!  (=> (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@46 f_30@@46) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@1) o2_13@@46 f_30@@46) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@46 f_30@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@46 f_30@@46))
))) (forall ((o2_13@@47 T@Ref) (f_30@@47 T@Field_18895_3031) ) (!  (=> (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@47 f_30@@47) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@1) o2_13@@47 f_30@@47) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@47 f_30@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@47 f_30@@47))
))) (forall ((o2_13@@48 T@Ref) (f_30@@48 T@Field_18895_5282) ) (!  (=> (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@48 f_30@@48) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@1) o2_13@@48 f_30@@48) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@48 f_30@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@48 f_30@@48))
))) (forall ((o2_13@@49 T@Ref) (f_30@@49 T@Field_18895_53) ) (!  (=> (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@49 f_30@@49) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@1) o2_13@@49 f_30@@49) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@49 f_30@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@49 f_30@@49))
))) (forall ((o2_13@@50 T@Ref) (f_30@@50 T@Field_18895_645) ) (!  (=> (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@50 f_30@@50) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@1) o2_13@@50 f_30@@50) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@50 f_30@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@50 f_30@@50))
))) (forall ((o2_13@@51 T@Ref) (f_30@@51 T@Field_18895_18896) ) (!  (=> (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@51 f_30@@51) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@1) o2_13@@51 f_30@@51) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@51 f_30@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@51 f_30@@51))
))) (forall ((o2_13@@52 T@Ref) (f_30@@52 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@1) null (PredicateMaskField_5281 pm_f_13@@1))) o2_13@@52 f_30@@52) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@1) o2_13@@52 f_30@@52) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@52 f_30@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@1) o2_13@@52 f_30@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_5281_28120 pm_f_13@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8656) (ExhaleHeap@@2 T@PolymorphicMapType_8656) (Mask@@2 T@PolymorphicMapType_8677) (pm_f_13@@2 T@Field_18895_18896) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_18895_15351 Mask@@2 null pm_f_13@@2) (IsWandField_18895_34395 pm_f_13@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@53 T@Ref) (f_30@@53 T@Field_14841_3031) ) (!  (=> (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@53 f_30@@53) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@2) o2_13@@53 f_30@@53) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@53 f_30@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@53 f_30@@53))
)) (forall ((o2_13@@54 T@Ref) (f_30@@54 T@Field_8729_8730) ) (!  (=> (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@54 f_30@@54) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@2) o2_13@@54 f_30@@54) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@54 f_30@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@54 f_30@@54))
))) (forall ((o2_13@@55 T@Ref) (f_30@@55 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@55 f_30@@55) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@2) o2_13@@55 f_30@@55) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@55 f_30@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@55 f_30@@55))
))) (forall ((o2_13@@56 T@Ref) (f_30@@56 T@Field_14750_645) ) (!  (=> (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@56 f_30@@56) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@2) o2_13@@56 f_30@@56) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@56 f_30@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@56 f_30@@56))
))) (forall ((o2_13@@57 T@Ref) (f_30@@57 T@Field_5281_15351) ) (!  (=> (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@57 f_30@@57) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@2) o2_13@@57 f_30@@57) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@57 f_30@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@57 f_30@@57))
))) (forall ((o2_13@@58 T@Ref) (f_30@@58 T@Field_5281_17966) ) (!  (=> (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@58 f_30@@58) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@2) o2_13@@58 f_30@@58) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@58 f_30@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@58 f_30@@58))
))) (forall ((o2_13@@59 T@Ref) (f_30@@59 T@Field_15350_3031) ) (!  (=> (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@59 f_30@@59) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@2) o2_13@@59 f_30@@59) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@59 f_30@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@59 f_30@@59))
))) (forall ((o2_13@@60 T@Ref) (f_30@@60 T@Field_15350_5282) ) (!  (=> (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@60 f_30@@60) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@2) o2_13@@60 f_30@@60) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@60 f_30@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@60 f_30@@60))
))) (forall ((o2_13@@61 T@Ref) (f_30@@61 T@Field_15350_53) ) (!  (=> (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@61 f_30@@61) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@2) o2_13@@61 f_30@@61) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@61 f_30@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@61 f_30@@61))
))) (forall ((o2_13@@62 T@Ref) (f_30@@62 T@Field_15350_645) ) (!  (=> (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@62 f_30@@62) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@2) o2_13@@62 f_30@@62) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@62 f_30@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@62 f_30@@62))
))) (forall ((o2_13@@63 T@Ref) (f_30@@63 T@Field_15350_15351) ) (!  (=> (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@63 f_30@@63) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@2) o2_13@@63 f_30@@63) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@63 f_30@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@63 f_30@@63))
))) (forall ((o2_13@@64 T@Ref) (f_30@@64 T@Field_17961_17966) ) (!  (=> (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@64 f_30@@64) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@2) o2_13@@64 f_30@@64) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@64 f_30@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@64 f_30@@64))
))) (forall ((o2_13@@65 T@Ref) (f_30@@65 T@Field_18895_3031) ) (!  (=> (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@65 f_30@@65) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@2) o2_13@@65 f_30@@65) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@65 f_30@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@65 f_30@@65))
))) (forall ((o2_13@@66 T@Ref) (f_30@@66 T@Field_18895_5282) ) (!  (=> (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@66 f_30@@66) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@2) o2_13@@66 f_30@@66) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@66 f_30@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@66 f_30@@66))
))) (forall ((o2_13@@67 T@Ref) (f_30@@67 T@Field_18895_53) ) (!  (=> (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@67 f_30@@67) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@2) o2_13@@67 f_30@@67) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@67 f_30@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@67 f_30@@67))
))) (forall ((o2_13@@68 T@Ref) (f_30@@68 T@Field_18895_645) ) (!  (=> (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@68 f_30@@68) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@2) o2_13@@68 f_30@@68) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@68 f_30@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@68 f_30@@68))
))) (forall ((o2_13@@69 T@Ref) (f_30@@69 T@Field_18895_18896) ) (!  (=> (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@69 f_30@@69) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@2) o2_13@@69 f_30@@69) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@69 f_30@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@69 f_30@@69))
))) (forall ((o2_13@@70 T@Ref) (f_30@@70 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) null (WandMaskField_18895 pm_f_13@@2))) o2_13@@70 f_30@@70) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@2) o2_13@@70 f_30@@70) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@70 f_30@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@2) o2_13@@70 f_30@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_18895_34395 pm_f_13@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8656) (ExhaleHeap@@3 T@PolymorphicMapType_8656) (Mask@@3 T@PolymorphicMapType_8677) (pm_f_13@@3 T@Field_15350_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_15350_15351 Mask@@3 null pm_f_13@@3) (IsWandField_15350_34038 pm_f_13@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@71 T@Ref) (f_30@@71 T@Field_14841_3031) ) (!  (=> (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@71 f_30@@71) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@3) o2_13@@71 f_30@@71) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@71 f_30@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@71 f_30@@71))
)) (forall ((o2_13@@72 T@Ref) (f_30@@72 T@Field_8729_8730) ) (!  (=> (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@72 f_30@@72) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@3) o2_13@@72 f_30@@72) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@72 f_30@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@72 f_30@@72))
))) (forall ((o2_13@@73 T@Ref) (f_30@@73 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@73 f_30@@73) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@3) o2_13@@73 f_30@@73) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@73 f_30@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@73 f_30@@73))
))) (forall ((o2_13@@74 T@Ref) (f_30@@74 T@Field_14750_645) ) (!  (=> (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@74 f_30@@74) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@3) o2_13@@74 f_30@@74) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@74 f_30@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@74 f_30@@74))
))) (forall ((o2_13@@75 T@Ref) (f_30@@75 T@Field_5281_15351) ) (!  (=> (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@75 f_30@@75) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@3) o2_13@@75 f_30@@75) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@75 f_30@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@75 f_30@@75))
))) (forall ((o2_13@@76 T@Ref) (f_30@@76 T@Field_5281_17966) ) (!  (=> (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@76 f_30@@76) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@3) o2_13@@76 f_30@@76) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@76 f_30@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@76 f_30@@76))
))) (forall ((o2_13@@77 T@Ref) (f_30@@77 T@Field_15350_3031) ) (!  (=> (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@77 f_30@@77) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@3) o2_13@@77 f_30@@77) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@77 f_30@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@77 f_30@@77))
))) (forall ((o2_13@@78 T@Ref) (f_30@@78 T@Field_15350_5282) ) (!  (=> (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@78 f_30@@78) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@3) o2_13@@78 f_30@@78) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@78 f_30@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@78 f_30@@78))
))) (forall ((o2_13@@79 T@Ref) (f_30@@79 T@Field_15350_53) ) (!  (=> (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@79 f_30@@79) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@3) o2_13@@79 f_30@@79) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@79 f_30@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@79 f_30@@79))
))) (forall ((o2_13@@80 T@Ref) (f_30@@80 T@Field_15350_645) ) (!  (=> (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@80 f_30@@80) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@3) o2_13@@80 f_30@@80) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@80 f_30@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@80 f_30@@80))
))) (forall ((o2_13@@81 T@Ref) (f_30@@81 T@Field_15350_15351) ) (!  (=> (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@81 f_30@@81) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@3) o2_13@@81 f_30@@81) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@81 f_30@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@81 f_30@@81))
))) (forall ((o2_13@@82 T@Ref) (f_30@@82 T@Field_17961_17966) ) (!  (=> (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@82 f_30@@82) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) o2_13@@82 f_30@@82) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@82 f_30@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@82 f_30@@82))
))) (forall ((o2_13@@83 T@Ref) (f_30@@83 T@Field_18895_3031) ) (!  (=> (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@83 f_30@@83) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@3) o2_13@@83 f_30@@83) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@83 f_30@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@83 f_30@@83))
))) (forall ((o2_13@@84 T@Ref) (f_30@@84 T@Field_18895_5282) ) (!  (=> (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@84 f_30@@84) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@3) o2_13@@84 f_30@@84) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@84 f_30@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@84 f_30@@84))
))) (forall ((o2_13@@85 T@Ref) (f_30@@85 T@Field_18895_53) ) (!  (=> (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@85 f_30@@85) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@3) o2_13@@85 f_30@@85) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@85 f_30@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@85 f_30@@85))
))) (forall ((o2_13@@86 T@Ref) (f_30@@86 T@Field_18895_645) ) (!  (=> (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@86 f_30@@86) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@3) o2_13@@86 f_30@@86) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@86 f_30@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@86 f_30@@86))
))) (forall ((o2_13@@87 T@Ref) (f_30@@87 T@Field_18895_18896) ) (!  (=> (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@87 f_30@@87) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@3) o2_13@@87 f_30@@87) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@87 f_30@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@87 f_30@@87))
))) (forall ((o2_13@@88 T@Ref) (f_30@@88 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@3) null (WandMaskField_15350 pm_f_13@@3))) o2_13@@88 f_30@@88) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@3) o2_13@@88 f_30@@88) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@88 f_30@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@3) o2_13@@88 f_30@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_15350_34038 pm_f_13@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8656) (ExhaleHeap@@4 T@PolymorphicMapType_8656) (Mask@@4 T@PolymorphicMapType_8677) (pm_f_13@@4 T@Field_5281_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_5281_15351 Mask@@4 null pm_f_13@@4) (IsWandField_5281_33681 pm_f_13@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_13@@89 T@Ref) (f_30@@89 T@Field_14841_3031) ) (!  (=> (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@89 f_30@@89) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@4) o2_13@@89 f_30@@89) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@89 f_30@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@89 f_30@@89))
)) (forall ((o2_13@@90 T@Ref) (f_30@@90 T@Field_8729_8730) ) (!  (=> (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@90 f_30@@90) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@4) o2_13@@90 f_30@@90) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@90 f_30@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@90 f_30@@90))
))) (forall ((o2_13@@91 T@Ref) (f_30@@91 T@Field_8716_53) ) (!  (=> (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@91 f_30@@91) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@4) o2_13@@91 f_30@@91) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@91 f_30@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@91 f_30@@91))
))) (forall ((o2_13@@92 T@Ref) (f_30@@92 T@Field_14750_645) ) (!  (=> (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@92 f_30@@92) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@4) o2_13@@92 f_30@@92) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@92 f_30@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@92 f_30@@92))
))) (forall ((o2_13@@93 T@Ref) (f_30@@93 T@Field_5281_15351) ) (!  (=> (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@93 f_30@@93) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@4) o2_13@@93 f_30@@93) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@93 f_30@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@93 f_30@@93))
))) (forall ((o2_13@@94 T@Ref) (f_30@@94 T@Field_5281_17966) ) (!  (=> (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@94 f_30@@94) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) o2_13@@94 f_30@@94) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@94 f_30@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@94 f_30@@94))
))) (forall ((o2_13@@95 T@Ref) (f_30@@95 T@Field_15350_3031) ) (!  (=> (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@95 f_30@@95) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@4) o2_13@@95 f_30@@95) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@95 f_30@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@95 f_30@@95))
))) (forall ((o2_13@@96 T@Ref) (f_30@@96 T@Field_15350_5282) ) (!  (=> (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@96 f_30@@96) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@4) o2_13@@96 f_30@@96) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@96 f_30@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@96 f_30@@96))
))) (forall ((o2_13@@97 T@Ref) (f_30@@97 T@Field_15350_53) ) (!  (=> (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@97 f_30@@97) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@4) o2_13@@97 f_30@@97) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@97 f_30@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@97 f_30@@97))
))) (forall ((o2_13@@98 T@Ref) (f_30@@98 T@Field_15350_645) ) (!  (=> (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@98 f_30@@98) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@4) o2_13@@98 f_30@@98) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@98 f_30@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@98 f_30@@98))
))) (forall ((o2_13@@99 T@Ref) (f_30@@99 T@Field_15350_15351) ) (!  (=> (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@99 f_30@@99) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@4) o2_13@@99 f_30@@99) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@99 f_30@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@99 f_30@@99))
))) (forall ((o2_13@@100 T@Ref) (f_30@@100 T@Field_17961_17966) ) (!  (=> (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@100 f_30@@100) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@4) o2_13@@100 f_30@@100) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@100 f_30@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@100 f_30@@100))
))) (forall ((o2_13@@101 T@Ref) (f_30@@101 T@Field_18895_3031) ) (!  (=> (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@101 f_30@@101) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@4) o2_13@@101 f_30@@101) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@101 f_30@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@101 f_30@@101))
))) (forall ((o2_13@@102 T@Ref) (f_30@@102 T@Field_18895_5282) ) (!  (=> (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@102 f_30@@102) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@4) o2_13@@102 f_30@@102) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@102 f_30@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@102 f_30@@102))
))) (forall ((o2_13@@103 T@Ref) (f_30@@103 T@Field_18895_53) ) (!  (=> (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@103 f_30@@103) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@4) o2_13@@103 f_30@@103) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@103 f_30@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@103 f_30@@103))
))) (forall ((o2_13@@104 T@Ref) (f_30@@104 T@Field_18895_645) ) (!  (=> (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@104 f_30@@104) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@4) o2_13@@104 f_30@@104) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@104 f_30@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@104 f_30@@104))
))) (forall ((o2_13@@105 T@Ref) (f_30@@105 T@Field_18895_18896) ) (!  (=> (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@105 f_30@@105) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@4) o2_13@@105 f_30@@105) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@105 f_30@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@105 f_30@@105))
))) (forall ((o2_13@@106 T@Ref) (f_30@@106 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@4) null (WandMaskField_5281 pm_f_13@@4))) o2_13@@106 f_30@@106) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@4) o2_13@@106 f_30@@106) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@106 f_30@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@4) o2_13@@106 f_30@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_5281_33681 pm_f_13@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8656) (Heap1 T@PolymorphicMapType_8656) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8656) (Mask@@5 T@PolymorphicMapType_8677) ) (!  (=> (state Heap@@5 Mask@@5) (GoodMask Mask@@5))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@5 Mask@@5))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8656) (Heap1@@0 T@PolymorphicMapType_8656) (Heap2 T@PolymorphicMapType_8656) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18908_18913) ) (!  (not (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_18895_32592#PolymorphicMapType_9205| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18895_18896) ) (!  (not (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_18895_15351#PolymorphicMapType_9205| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18895_645) ) (!  (not (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_18895_645#PolymorphicMapType_9205| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18895_53) ) (!  (not (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_18895_53#PolymorphicMapType_9205| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_18895_5282) ) (!  (not (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_18895_5282#PolymorphicMapType_9205| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18895_3031) ) (!  (not (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_18895_3031#PolymorphicMapType_9205| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_17961_17966) ) (!  (not (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_15350_31346#PolymorphicMapType_9205| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_15350_15351) ) (!  (not (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_15350_15351#PolymorphicMapType_9205| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_15350_645) ) (!  (not (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_15350_645#PolymorphicMapType_9205| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_15350_53) ) (!  (not (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_15350_53#PolymorphicMapType_9205| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_15350_5282) ) (!  (not (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_15350_5282#PolymorphicMapType_9205| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_15350_3031) ) (!  (not (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_15350_3031#PolymorphicMapType_9205| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5281_17966) ) (!  (not (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_5279_30100#PolymorphicMapType_9205| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5281_15351) ) (!  (not (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_5279_15351#PolymorphicMapType_9205| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_14750_645) ) (!  (not (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_5279_645#PolymorphicMapType_9205| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8716_53) ) (!  (not (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_5279_53#PolymorphicMapType_9205| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8729_8730) ) (!  (not (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_5281_5282#PolymorphicMapType_9205| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14841_3031) ) (!  (not (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9205_5279_3031#PolymorphicMapType_9205| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8656) (this$_2 T@Ref) (index Int) ) (! (dummyFunction_3352 (|PseudoListget$#triggerStateless| this$_2 index))
 :qid |stdinbpl.590:15|
 :skolemid |59|
 :pattern ( (|PseudoListget$'| Heap@@6 this$_2 index))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((this$ T@Ref) ) (! (IsPredicateField_5321_5322 (PseudoList$MonitorInvariant this$))
 :qid |stdinbpl.725:15|
 :skolemid |64|
 :pattern ( (PseudoList$MonitorInvariant this$))
)))
(assert (forall ((this$_3 T@Ref) ) (! (IsPredicateField_5345_5346 (PseudoListinv$ this$_3))
 :qid |stdinbpl.775:15|
 :skolemid |70|
 :pattern ( (PseudoListinv$ this$_3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8656) (this$@@0 T@Ref) ) (! (|PseudoList$MonitorInvariant#everUsed_5321| (PseudoList$MonitorInvariant this$@@0))
 :qid |stdinbpl.744:15|
 :skolemid |68|
 :pattern ( (|PseudoList$MonitorInvariant#trigger_5321| Heap@@7 (PseudoList$MonitorInvariant this$@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8656) (this$_3@@0 T@Ref) ) (! (|PseudoListinv$#everUsed_5345| (PseudoListinv$ this$_3@@0))
 :qid |stdinbpl.794:15|
 :skolemid |74|
 :pattern ( (|PseudoListinv$#trigger_5345| Heap@@8 (PseudoListinv$ this$_3@@0)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8656) (ExhaleHeap@@5 T@PolymorphicMapType_8656) (Mask@@6 T@PolymorphicMapType_8677) (pm_f_13@@5 T@Field_18895_18896) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_18895_15351 Mask@@6 null pm_f_13@@5) (IsPredicateField_5321_5322 pm_f_13@@5)) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@9) null (PredicateMaskField_5321 pm_f_13@@5)) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@5) null (PredicateMaskField_5321 pm_f_13@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsPredicateField_5321_5322 pm_f_13@@5) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@5) null (PredicateMaskField_5321 pm_f_13@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8656) (ExhaleHeap@@6 T@PolymorphicMapType_8656) (Mask@@7 T@PolymorphicMapType_8677) (pm_f_13@@6 T@Field_15350_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_15350_15351 Mask@@7 null pm_f_13@@6) (IsPredicateField_5345_5346 pm_f_13@@6)) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@10) null (PredicateMaskField_5345 pm_f_13@@6)) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@6) null (PredicateMaskField_5345 pm_f_13@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsPredicateField_5345_5346 pm_f_13@@6) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@6) null (PredicateMaskField_5345 pm_f_13@@6)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8656) (ExhaleHeap@@7 T@PolymorphicMapType_8656) (Mask@@8 T@PolymorphicMapType_8677) (pm_f_13@@7 T@Field_5281_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_5281_15351 Mask@@8 null pm_f_13@@7) (IsPredicateField_5281_28120 pm_f_13@@7)) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@11) null (PredicateMaskField_5281 pm_f_13@@7)) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@7) null (PredicateMaskField_5281 pm_f_13@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (IsPredicateField_5281_28120 pm_f_13@@7) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@7) null (PredicateMaskField_5281 pm_f_13@@7)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8656) (ExhaleHeap@@8 T@PolymorphicMapType_8656) (Mask@@9 T@PolymorphicMapType_8677) (pm_f_13@@8 T@Field_18895_18896) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_18895_15351 Mask@@9 null pm_f_13@@8) (IsWandField_18895_34395 pm_f_13@@8)) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@12) null (WandMaskField_18895 pm_f_13@@8)) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@8) null (WandMaskField_18895 pm_f_13@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (IsWandField_18895_34395 pm_f_13@@8) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@8) null (WandMaskField_18895 pm_f_13@@8)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8656) (ExhaleHeap@@9 T@PolymorphicMapType_8656) (Mask@@10 T@PolymorphicMapType_8677) (pm_f_13@@9 T@Field_15350_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_15350_15351 Mask@@10 null pm_f_13@@9) (IsWandField_15350_34038 pm_f_13@@9)) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@13) null (WandMaskField_15350 pm_f_13@@9)) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@9) null (WandMaskField_15350 pm_f_13@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@10) (IsWandField_15350_34038 pm_f_13@@9) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@9) null (WandMaskField_15350 pm_f_13@@9)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8656) (ExhaleHeap@@10 T@PolymorphicMapType_8656) (Mask@@11 T@PolymorphicMapType_8677) (pm_f_13@@10 T@Field_5281_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_5281_15351 Mask@@11 null pm_f_13@@10) (IsWandField_5281_33681 pm_f_13@@10)) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@14) null (WandMaskField_5281 pm_f_13@@10)) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@10) null (WandMaskField_5281 pm_f_13@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@11) (IsWandField_5281_33681 pm_f_13@@10) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@10) null (WandMaskField_5281 pm_f_13@@10)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((this$@@1 T@Ref) (this$2 T@Ref) ) (!  (=> (= (PseudoList$MonitorInvariant this$@@1) (PseudoList$MonitorInvariant this$2)) (= this$@@1 this$2))
 :qid |stdinbpl.735:15|
 :skolemid |66|
 :pattern ( (PseudoList$MonitorInvariant this$@@1) (PseudoList$MonitorInvariant this$2))
)))
(assert (forall ((this$@@2 T@Ref) (this$2@@0 T@Ref) ) (!  (=> (= (|PseudoList$MonitorInvariant#sm| this$@@2) (|PseudoList$MonitorInvariant#sm| this$2@@0)) (= this$@@2 this$2@@0))
 :qid |stdinbpl.739:15|
 :skolemid |67|
 :pattern ( (|PseudoList$MonitorInvariant#sm| this$@@2) (|PseudoList$MonitorInvariant#sm| this$2@@0))
)))
(assert (forall ((this$_3@@1 T@Ref) (this$_32 T@Ref) ) (!  (=> (= (PseudoListinv$ this$_3@@1) (PseudoListinv$ this$_32)) (= this$_3@@1 this$_32))
 :qid |stdinbpl.785:15|
 :skolemid |72|
 :pattern ( (PseudoListinv$ this$_3@@1) (PseudoListinv$ this$_32))
)))
(assert (forall ((this$_3@@2 T@Ref) (this$_32@@0 T@Ref) ) (!  (=> (= (|PseudoListinv$#sm| this$_3@@2) (|PseudoListinv$#sm| this$_32@@0)) (= this$_3@@2 this$_32@@0))
 :qid |stdinbpl.789:15|
 :skolemid |73|
 :pattern ( (|PseudoListinv$#sm| this$_3@@2) (|PseudoListinv$#sm| this$_32@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2867| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@6 t) n@@5) (|Seq#Append_2867| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8656) (ExhaleHeap@@11 T@PolymorphicMapType_8656) (Mask@@12 T@PolymorphicMapType_8677) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@15) o_22 $allocated) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@11) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@11) o_22 $allocated))
)))
(assert (forall ((p T@Field_18895_18896) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18895_18895 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18895_18895 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5281_15351) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8716_8716 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8716_8716 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_15350_15351) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_5345_5345 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5345_5345 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2867|)) (not (= s1 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2867| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2867| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0 s1) n@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8656) (Mask@@13 T@PolymorphicMapType_8677) (this$_2@@0 T@Ref) (index@@0 Int) ) (!  (=> (and (state Heap@@16 Mask@@13) (< AssumeFunctionsAbove 0)) (=> (not (= this$_2@@0 null)) (= (PseudoListget$ Heap@@16 this$_2@@0 index@@0)  (or (= index@@0 0) (|PseudoListget$'| Heap@@16 (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@16) this$_2@@0 PseudoListnext$) (- index@@0 1))))))
 :qid |stdinbpl.596:15|
 :skolemid |60|
 :pattern ( (state Heap@@16 Mask@@13) (PseudoListget$ Heap@@16 this$_2@@0 index@@0))
 :pattern ( (state Heap@@16 Mask@@13) (|PseudoListget$#triggerStateless| this$_2@@0 index@@0) (|PseudoListinv$#trigger_5345| Heap@@16 (PseudoListinv$ this$_2@@0)))
)))
(assert  (not (IsPredicateField_5274_645 old$methodPermission)))
(assert  (not (IsWandField_5274_645 old$methodPermission)))
(assert  (not (IsPredicateField_5277_3016 joinable$)))
(assert  (not (IsWandField_5277_3016 joinable$)))
(assert  (not (IsPredicateField_5279_3031 PseudoListvalue$)))
(assert  (not (IsWandField_5279_3031 PseudoListvalue$)))
(assert  (not (IsPredicateField_5281_5282 PseudoListnext$)))
(assert  (not (IsWandField_5281_5282 PseudoListnext$)))
(assert  (not (IsPredicateField_5281_5282 par$PseudoListstatic_range_workaround$this$_1)))
(assert  (not (IsWandField_5281_5282 par$PseudoListstatic_range_workaround$this$_1)))
(assert  (not (IsPredicateField_5274_645 par$PseudoListstatic_range_workaround$k$)))
(assert  (not (IsWandField_5274_645 par$PseudoListstatic_range_workaround$k$)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8656) (ExhaleHeap@@12 T@PolymorphicMapType_8656) (Mask@@14 T@PolymorphicMapType_8677) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8677) (o_2@@17 T@Ref) (f_4@@17 T@Field_18908_18913) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| Mask@@15) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_18895_46498 f_4@@17))) (not (IsWandField_18895_46514 f_4@@17))) (<= (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| Mask@@15) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| Mask@@15) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8677) (o_2@@18 T@Ref) (f_4@@18 T@Field_18895_645) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| Mask@@16) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_18895_645 f_4@@18))) (not (IsWandField_18895_645 f_4@@18))) (<= (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| Mask@@16) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| Mask@@16) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8677) (o_2@@19 T@Ref) (f_4@@19 T@Field_18895_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| Mask@@17) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_18895_53 f_4@@19))) (not (IsWandField_18895_53 f_4@@19))) (<= (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| Mask@@17) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| Mask@@17) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8677) (o_2@@20 T@Ref) (f_4@@20 T@Field_18895_5282) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| Mask@@18) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_18895_5282 f_4@@20))) (not (IsWandField_18895_5282 f_4@@20))) (<= (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| Mask@@18) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| Mask@@18) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8677) (o_2@@21 T@Ref) (f_4@@21 T@Field_18895_3031) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| Mask@@19) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_18895_3031 f_4@@21))) (not (IsWandField_18895_3031 f_4@@21))) (<= (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| Mask@@19) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| Mask@@19) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8677) (o_2@@22 T@Ref) (f_4@@22 T@Field_18895_18896) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| Mask@@20) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5321_5322 f_4@@22))) (not (IsWandField_18895_34395 f_4@@22))) (<= (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| Mask@@20) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| Mask@@20) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8677) (o_2@@23 T@Ref) (f_4@@23 T@Field_5281_17966) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| Mask@@21) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5279_45499 f_4@@23))) (not (IsWandField_5279_45515 f_4@@23))) (<= (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| Mask@@21) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| Mask@@21) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8677) (o_2@@24 T@Ref) (f_4@@24 T@Field_14750_645) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| Mask@@22) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5274_645 f_4@@24))) (not (IsWandField_5274_645 f_4@@24))) (<= (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| Mask@@22) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| Mask@@22) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8677) (o_2@@25 T@Ref) (f_4@@25 T@Field_8716_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| Mask@@23) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_5277_3016 f_4@@25))) (not (IsWandField_5277_3016 f_4@@25))) (<= (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| Mask@@23) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| Mask@@23) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8677) (o_2@@26 T@Ref) (f_4@@26 T@Field_8729_8730) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| Mask@@24) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5281_5282 f_4@@26))) (not (IsWandField_5281_5282 f_4@@26))) (<= (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| Mask@@24) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| Mask@@24) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8677) (o_2@@27 T@Ref) (f_4@@27 T@Field_14841_3031) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| Mask@@25) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_5279_3031 f_4@@27))) (not (IsWandField_5279_3031 f_4@@27))) (<= (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| Mask@@25) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| Mask@@25) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8677) (o_2@@28 T@Ref) (f_4@@28 T@Field_5281_15351) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| Mask@@26) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_5281_28120 f_4@@28))) (not (IsWandField_5281_33681 f_4@@28))) (<= (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| Mask@@26) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| Mask@@26) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8677) (o_2@@29 T@Ref) (f_4@@29 T@Field_17961_17966) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| Mask@@27) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_5345_44556 f_4@@29))) (not (IsWandField_5345_44572 f_4@@29))) (<= (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| Mask@@27) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| Mask@@27) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8677) (o_2@@30 T@Ref) (f_4@@30 T@Field_15350_645) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| Mask@@28) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_5345_645 f_4@@30))) (not (IsWandField_5345_645 f_4@@30))) (<= (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| Mask@@28) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| Mask@@28) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8677) (o_2@@31 T@Ref) (f_4@@31 T@Field_15350_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| Mask@@29) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_5345_53 f_4@@31))) (not (IsWandField_5345_53 f_4@@31))) (<= (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| Mask@@29) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| Mask@@29) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8677) (o_2@@32 T@Ref) (f_4@@32 T@Field_15350_5282) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| Mask@@30) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_5345_5282 f_4@@32))) (not (IsWandField_5345_5282 f_4@@32))) (<= (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| Mask@@30) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| Mask@@30) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8677) (o_2@@33 T@Ref) (f_4@@33 T@Field_15350_3031) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| Mask@@31) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_5345_3031 f_4@@33))) (not (IsWandField_5345_3031 f_4@@33))) (<= (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| Mask@@31) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| Mask@@31) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8677) (o_2@@34 T@Ref) (f_4@@34 T@Field_15350_15351) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@@32) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_5345_5346 f_4@@34))) (not (IsWandField_15350_34038 f_4@@34))) (<= (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@@32) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@@32) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8677) (o_2@@35 T@Ref) (f_4@@35 T@Field_18908_18913) ) (! (= (HasDirectPerm_18895_27832 Mask@@33 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| Mask@@33) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18895_27832 Mask@@33 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8677) (o_2@@36 T@Ref) (f_4@@36 T@Field_18895_18896) ) (! (= (HasDirectPerm_18895_15351 Mask@@34 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| Mask@@34) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18895_15351 Mask@@34 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8677) (o_2@@37 T@Ref) (f_4@@37 T@Field_18895_3031) ) (! (= (HasDirectPerm_18895_3031 Mask@@35 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| Mask@@35) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18895_3031 Mask@@35 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8677) (o_2@@38 T@Ref) (f_4@@38 T@Field_18895_645) ) (! (= (HasDirectPerm_18895_645 Mask@@36 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| Mask@@36) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18895_645 Mask@@36 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8677) (o_2@@39 T@Ref) (f_4@@39 T@Field_18895_53) ) (! (= (HasDirectPerm_18895_53 Mask@@37 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| Mask@@37) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18895_53 Mask@@37 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_8677) (o_2@@40 T@Ref) (f_4@@40 T@Field_18895_5282) ) (! (= (HasDirectPerm_18895_5282 Mask@@38 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| Mask@@38) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18895_5282 Mask@@38 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_8677) (o_2@@41 T@Ref) (f_4@@41 T@Field_17961_17966) ) (! (= (HasDirectPerm_15350_26476 Mask@@39 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| Mask@@39) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15350_26476 Mask@@39 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_8677) (o_2@@42 T@Ref) (f_4@@42 T@Field_15350_15351) ) (! (= (HasDirectPerm_15350_15351 Mask@@40 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@@40) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15350_15351 Mask@@40 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_8677) (o_2@@43 T@Ref) (f_4@@43 T@Field_15350_3031) ) (! (= (HasDirectPerm_15350_3031 Mask@@41 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| Mask@@41) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15350_3031 Mask@@41 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_8677) (o_2@@44 T@Ref) (f_4@@44 T@Field_15350_645) ) (! (= (HasDirectPerm_15350_645 Mask@@42 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| Mask@@42) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15350_645 Mask@@42 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_8677) (o_2@@45 T@Ref) (f_4@@45 T@Field_15350_53) ) (! (= (HasDirectPerm_15350_53 Mask@@43 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| Mask@@43) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15350_53 Mask@@43 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_8677) (o_2@@46 T@Ref) (f_4@@46 T@Field_15350_5282) ) (! (= (HasDirectPerm_15350_5282 Mask@@44 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| Mask@@44) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_15350_5282 Mask@@44 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_8677) (o_2@@47 T@Ref) (f_4@@47 T@Field_5281_17966) ) (! (= (HasDirectPerm_5281_25094 Mask@@45 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| Mask@@45) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5281_25094 Mask@@45 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_8677) (o_2@@48 T@Ref) (f_4@@48 T@Field_5281_15351) ) (! (= (HasDirectPerm_5281_15351 Mask@@46 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| Mask@@46) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5281_15351 Mask@@46 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_8677) (o_2@@49 T@Ref) (f_4@@49 T@Field_14841_3031) ) (! (= (HasDirectPerm_5281_3031 Mask@@47 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| Mask@@47) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5281_3031 Mask@@47 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_8677) (o_2@@50 T@Ref) (f_4@@50 T@Field_14750_645) ) (! (= (HasDirectPerm_5281_645 Mask@@48 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| Mask@@48) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5281_645 Mask@@48 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_8677) (o_2@@51 T@Ref) (f_4@@51 T@Field_8716_53) ) (! (= (HasDirectPerm_5281_53 Mask@@49 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| Mask@@49) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5281_53 Mask@@49 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_8677) (o_2@@52 T@Ref) (f_4@@52 T@Field_8729_8730) ) (! (= (HasDirectPerm_5281_5282 Mask@@50 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| Mask@@50) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5281_5282 Mask@@50 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8656) (ExhaleHeap@@13 T@PolymorphicMapType_8656) (Mask@@51 T@PolymorphicMapType_8677) (o_22@@0 T@Ref) (f_30@@107 T@Field_18908_18913) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@51) (=> (HasDirectPerm_18895_27832 Mask@@51 o_22@@0 f_30@@107) (= (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@18) o_22@@0 f_30@@107) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@13) o_22@@0 f_30@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@51) (select (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| ExhaleHeap@@13) o_22@@0 f_30@@107))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8656) (ExhaleHeap@@14 T@PolymorphicMapType_8656) (Mask@@52 T@PolymorphicMapType_8677) (o_22@@1 T@Ref) (f_30@@108 T@Field_18895_18896) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@52) (=> (HasDirectPerm_18895_15351 Mask@@52 o_22@@1 f_30@@108) (= (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@19) o_22@@1 f_30@@108) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@14) o_22@@1 f_30@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@52) (select (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| ExhaleHeap@@14) o_22@@1 f_30@@108))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8656) (ExhaleHeap@@15 T@PolymorphicMapType_8656) (Mask@@53 T@PolymorphicMapType_8677) (o_22@@2 T@Ref) (f_30@@109 T@Field_18895_3031) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@53) (=> (HasDirectPerm_18895_3031 Mask@@53 o_22@@2 f_30@@109) (= (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@20) o_22@@2 f_30@@109) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@15) o_22@@2 f_30@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@53) (select (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| ExhaleHeap@@15) o_22@@2 f_30@@109))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8656) (ExhaleHeap@@16 T@PolymorphicMapType_8656) (Mask@@54 T@PolymorphicMapType_8677) (o_22@@3 T@Ref) (f_30@@110 T@Field_18895_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@54) (=> (HasDirectPerm_18895_645 Mask@@54 o_22@@3 f_30@@110) (= (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@21) o_22@@3 f_30@@110) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@16) o_22@@3 f_30@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@54) (select (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| ExhaleHeap@@16) o_22@@3 f_30@@110))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8656) (ExhaleHeap@@17 T@PolymorphicMapType_8656) (Mask@@55 T@PolymorphicMapType_8677) (o_22@@4 T@Ref) (f_30@@111 T@Field_18895_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@55) (=> (HasDirectPerm_18895_53 Mask@@55 o_22@@4 f_30@@111) (= (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@22) o_22@@4 f_30@@111) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@17) o_22@@4 f_30@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@55) (select (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| ExhaleHeap@@17) o_22@@4 f_30@@111))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8656) (ExhaleHeap@@18 T@PolymorphicMapType_8656) (Mask@@56 T@PolymorphicMapType_8677) (o_22@@5 T@Ref) (f_30@@112 T@Field_18895_5282) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@56) (=> (HasDirectPerm_18895_5282 Mask@@56 o_22@@5 f_30@@112) (= (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@23) o_22@@5 f_30@@112) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@18) o_22@@5 f_30@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@56) (select (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| ExhaleHeap@@18) o_22@@5 f_30@@112))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8656) (ExhaleHeap@@19 T@PolymorphicMapType_8656) (Mask@@57 T@PolymorphicMapType_8677) (o_22@@6 T@Ref) (f_30@@113 T@Field_17961_17966) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@57) (=> (HasDirectPerm_15350_26476 Mask@@57 o_22@@6 f_30@@113) (= (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@24) o_22@@6 f_30@@113) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@19) o_22@@6 f_30@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@57) (select (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| ExhaleHeap@@19) o_22@@6 f_30@@113))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8656) (ExhaleHeap@@20 T@PolymorphicMapType_8656) (Mask@@58 T@PolymorphicMapType_8677) (o_22@@7 T@Ref) (f_30@@114 T@Field_15350_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@58) (=> (HasDirectPerm_15350_15351 Mask@@58 o_22@@7 f_30@@114) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@25) o_22@@7 f_30@@114) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@20) o_22@@7 f_30@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@58) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| ExhaleHeap@@20) o_22@@7 f_30@@114))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8656) (ExhaleHeap@@21 T@PolymorphicMapType_8656) (Mask@@59 T@PolymorphicMapType_8677) (o_22@@8 T@Ref) (f_30@@115 T@Field_15350_3031) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@59) (=> (HasDirectPerm_15350_3031 Mask@@59 o_22@@8 f_30@@115) (= (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@26) o_22@@8 f_30@@115) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@21) o_22@@8 f_30@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@59) (select (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| ExhaleHeap@@21) o_22@@8 f_30@@115))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8656) (ExhaleHeap@@22 T@PolymorphicMapType_8656) (Mask@@60 T@PolymorphicMapType_8677) (o_22@@9 T@Ref) (f_30@@116 T@Field_15350_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@60) (=> (HasDirectPerm_15350_645 Mask@@60 o_22@@9 f_30@@116) (= (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@27) o_22@@9 f_30@@116) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@22) o_22@@9 f_30@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@60) (select (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| ExhaleHeap@@22) o_22@@9 f_30@@116))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8656) (ExhaleHeap@@23 T@PolymorphicMapType_8656) (Mask@@61 T@PolymorphicMapType_8677) (o_22@@10 T@Ref) (f_30@@117 T@Field_15350_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@61) (=> (HasDirectPerm_15350_53 Mask@@61 o_22@@10 f_30@@117) (= (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@28) o_22@@10 f_30@@117) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@23) o_22@@10 f_30@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@61) (select (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| ExhaleHeap@@23) o_22@@10 f_30@@117))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8656) (ExhaleHeap@@24 T@PolymorphicMapType_8656) (Mask@@62 T@PolymorphicMapType_8677) (o_22@@11 T@Ref) (f_30@@118 T@Field_15350_5282) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@62) (=> (HasDirectPerm_15350_5282 Mask@@62 o_22@@11 f_30@@118) (= (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@29) o_22@@11 f_30@@118) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@24) o_22@@11 f_30@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@62) (select (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| ExhaleHeap@@24) o_22@@11 f_30@@118))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8656) (ExhaleHeap@@25 T@PolymorphicMapType_8656) (Mask@@63 T@PolymorphicMapType_8677) (o_22@@12 T@Ref) (f_30@@119 T@Field_5281_17966) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@63) (=> (HasDirectPerm_5281_25094 Mask@@63 o_22@@12 f_30@@119) (= (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@30) o_22@@12 f_30@@119) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@25) o_22@@12 f_30@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@63) (select (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| ExhaleHeap@@25) o_22@@12 f_30@@119))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8656) (ExhaleHeap@@26 T@PolymorphicMapType_8656) (Mask@@64 T@PolymorphicMapType_8677) (o_22@@13 T@Ref) (f_30@@120 T@Field_5281_15351) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@64) (=> (HasDirectPerm_5281_15351 Mask@@64 o_22@@13 f_30@@120) (= (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@31) o_22@@13 f_30@@120) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@26) o_22@@13 f_30@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@64) (select (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| ExhaleHeap@@26) o_22@@13 f_30@@120))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8656) (ExhaleHeap@@27 T@PolymorphicMapType_8656) (Mask@@65 T@PolymorphicMapType_8677) (o_22@@14 T@Ref) (f_30@@121 T@Field_14841_3031) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@65) (=> (HasDirectPerm_5281_3031 Mask@@65 o_22@@14 f_30@@121) (= (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@32) o_22@@14 f_30@@121) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@27) o_22@@14 f_30@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@65) (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| ExhaleHeap@@27) o_22@@14 f_30@@121))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8656) (ExhaleHeap@@28 T@PolymorphicMapType_8656) (Mask@@66 T@PolymorphicMapType_8677) (o_22@@15 T@Ref) (f_30@@122 T@Field_14750_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@66) (=> (HasDirectPerm_5281_645 Mask@@66 o_22@@15 f_30@@122) (= (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@33) o_22@@15 f_30@@122) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@28) o_22@@15 f_30@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@66) (select (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| ExhaleHeap@@28) o_22@@15 f_30@@122))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8656) (ExhaleHeap@@29 T@PolymorphicMapType_8656) (Mask@@67 T@PolymorphicMapType_8677) (o_22@@16 T@Ref) (f_30@@123 T@Field_8716_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@67) (=> (HasDirectPerm_5281_53 Mask@@67 o_22@@16 f_30@@123) (= (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@34) o_22@@16 f_30@@123) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@29) o_22@@16 f_30@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@67) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| ExhaleHeap@@29) o_22@@16 f_30@@123))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8656) (ExhaleHeap@@30 T@PolymorphicMapType_8656) (Mask@@68 T@PolymorphicMapType_8677) (o_22@@17 T@Ref) (f_30@@124 T@Field_8729_8730) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@68) (=> (HasDirectPerm_5281_5282 Mask@@68 o_22@@17 f_30@@124) (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@35) o_22@@17 f_30@@124) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@30) o_22@@17 f_30@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@68) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| ExhaleHeap@@30) o_22@@17 f_30@@124))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_18908_18913) ) (! (= (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_18895_645) ) (! (= (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_18895_53) ) (! (= (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_18895_5282) ) (! (= (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_18895_3031) ) (! (= (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_18895_18896) ) (! (= (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_5281_17966) ) (! (= (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_14750_645) ) (! (= (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_8716_53) ) (! (= (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_8729_8730) ) (! (= (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_14841_3031) ) (! (= (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_5281_15351) ) (! (= (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_17961_17966) ) (! (= (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_15350_645) ) (! (= (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_15350_53) ) (! (= (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_15350_5282) ) (! (= (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_15350_3031) ) (! (= (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_15350_15351) ) (! (= (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8677) (SummandMask1 T@PolymorphicMapType_8677) (SummandMask2 T@PolymorphicMapType_8677) (o_2@@71 T@Ref) (f_4@@71 T@Field_18908_18913) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8677) (SummandMask1@@0 T@PolymorphicMapType_8677) (SummandMask2@@0 T@PolymorphicMapType_8677) (o_2@@72 T@Ref) (f_4@@72 T@Field_18895_645) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8677) (SummandMask1@@1 T@PolymorphicMapType_8677) (SummandMask2@@1 T@PolymorphicMapType_8677) (o_2@@73 T@Ref) (f_4@@73 T@Field_18895_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8677) (SummandMask1@@2 T@PolymorphicMapType_8677) (SummandMask2@@2 T@PolymorphicMapType_8677) (o_2@@74 T@Ref) (f_4@@74 T@Field_18895_5282) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8677) (SummandMask1@@3 T@PolymorphicMapType_8677) (SummandMask2@@3 T@PolymorphicMapType_8677) (o_2@@75 T@Ref) (f_4@@75 T@Field_18895_3031) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8677) (SummandMask1@@4 T@PolymorphicMapType_8677) (SummandMask2@@4 T@PolymorphicMapType_8677) (o_2@@76 T@Ref) (f_4@@76 T@Field_18895_18896) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8677) (SummandMask1@@5 T@PolymorphicMapType_8677) (SummandMask2@@5 T@PolymorphicMapType_8677) (o_2@@77 T@Ref) (f_4@@77 T@Field_5281_17966) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8677) (SummandMask1@@6 T@PolymorphicMapType_8677) (SummandMask2@@6 T@PolymorphicMapType_8677) (o_2@@78 T@Ref) (f_4@@78 T@Field_14750_645) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8677) (SummandMask1@@7 T@PolymorphicMapType_8677) (SummandMask2@@7 T@PolymorphicMapType_8677) (o_2@@79 T@Ref) (f_4@@79 T@Field_8716_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8677) (SummandMask1@@8 T@PolymorphicMapType_8677) (SummandMask2@@8 T@PolymorphicMapType_8677) (o_2@@80 T@Ref) (f_4@@80 T@Field_8729_8730) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8677) (SummandMask1@@9 T@PolymorphicMapType_8677) (SummandMask2@@9 T@PolymorphicMapType_8677) (o_2@@81 T@Ref) (f_4@@81 T@Field_14841_3031) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8677) (SummandMask1@@10 T@PolymorphicMapType_8677) (SummandMask2@@10 T@PolymorphicMapType_8677) (o_2@@82 T@Ref) (f_4@@82 T@Field_5281_15351) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8677) (SummandMask1@@11 T@PolymorphicMapType_8677) (SummandMask2@@11 T@PolymorphicMapType_8677) (o_2@@83 T@Ref) (f_4@@83 T@Field_17961_17966) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8677) (SummandMask1@@12 T@PolymorphicMapType_8677) (SummandMask2@@12 T@PolymorphicMapType_8677) (o_2@@84 T@Ref) (f_4@@84 T@Field_15350_645) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8677) (SummandMask1@@13 T@PolymorphicMapType_8677) (SummandMask2@@13 T@PolymorphicMapType_8677) (o_2@@85 T@Ref) (f_4@@85 T@Field_15350_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_8677) (SummandMask1@@14 T@PolymorphicMapType_8677) (SummandMask2@@14 T@PolymorphicMapType_8677) (o_2@@86 T@Ref) (f_4@@86 T@Field_15350_5282) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_8677) (SummandMask1@@15 T@PolymorphicMapType_8677) (SummandMask2@@15 T@PolymorphicMapType_8677) (o_2@@87 T@Ref) (f_4@@87 T@Field_15350_3031) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_8677) (SummandMask1@@16 T@PolymorphicMapType_8677) (SummandMask2@@16 T@PolymorphicMapType_8677) (o_2@@88 T@Ref) (f_4@@88 T@Field_15350_15351) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8656) (Mask@@69 T@PolymorphicMapType_8677) (this$_2@@1 T@Ref) (index@@1 Int) ) (!  (=> (state Heap@@36 Mask@@69) (= (|PseudoListget$'| Heap@@36 this$_2@@1 index@@1) (|PseudoListget$#frame| (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@36) null (PseudoListinv$ this$_2@@1)) this$_2@@1 index@@1)))
 :qid |stdinbpl.603:15|
 :skolemid |61|
 :pattern ( (state Heap@@36 Mask@@69) (|PseudoListget$'| Heap@@36 this$_2@@1 index@@1))
 :pattern ( (state Heap@@36 Mask@@69) (|PseudoListget$#triggerStateless| this$_2@@1 index@@1) (|PseudoListinv$#trigger_5345| Heap@@36 (PseudoListinv$ this$_2@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@1) 0) t@@1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@2 s1@@2))
)))
(assert (forall ((this$@@3 T@Ref) ) (! (= (getPredWandId_5321_5322 (PseudoList$MonitorInvariant this$@@3)) 0)
 :qid |stdinbpl.729:15|
 :skolemid |65|
 :pattern ( (PseudoList$MonitorInvariant this$@@3))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@2)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@2))
)))
(assert (forall ((this$_3@@3 T@Ref) ) (! (= (getPredWandId_5345_5346 (PseudoListinv$ this$_3@@3)) 1)
 :qid |stdinbpl.779:15|
 :skolemid |71|
 :pattern ( (PseudoListinv$ this$_3@@3))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8656) (o_35 T@Ref) (f_11 T@Field_18895_645) (v@@2 Real) ) (! (succHeap Heap@@37 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@37) (store (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@37) o_35 f_11 v@@2) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@37) (store (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@37) o_35 f_11 v@@2) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@37) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8656) (o_35@@0 T@Ref) (f_11@@0 T@Field_18908_18913) (v@@3 T@PolymorphicMapType_9205) ) (! (succHeap Heap@@38 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@38) (store (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@38) o_35@@0 f_11@@0 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@38) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@38) (store (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@38) o_35@@0 f_11@@0 v@@3)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8656) (o_35@@1 T@Ref) (f_11@@1 T@Field_18895_3031) (v@@4 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@39) (store (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@39) o_35@@1 f_11@@1 v@@4) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@39) (store (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@39) o_35@@1 f_11@@1 v@@4) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@39) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8656) (o_35@@2 T@Ref) (f_11@@2 T@Field_18895_18896) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@40) (store (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@40) o_35@@2 f_11@@2 v@@5) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@40) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@40) (store (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@40) o_35@@2 f_11@@2 v@@5) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8656) (o_35@@3 T@Ref) (f_11@@3 T@Field_18895_5282) (v@@6 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@41) (store (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@41) o_35@@3 f_11@@3 v@@6) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@41) (store (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@41) o_35@@3 f_11@@3 v@@6) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@41) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8656) (o_35@@4 T@Ref) (f_11@@4 T@Field_18895_53) (v@@7 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@42) (store (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@42) o_35@@4 f_11@@4 v@@7) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@42) (store (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@42) o_35@@4 f_11@@4 v@@7) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@42) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8656) (o_35@@5 T@Ref) (f_11@@5 T@Field_15350_645) (v@@8 Real) ) (! (succHeap Heap@@43 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@43) (store (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@43) o_35@@5 f_11@@5 v@@8) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@43) (store (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@43) o_35@@5 f_11@@5 v@@8) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@43) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8656) (o_35@@6 T@Ref) (f_11@@6 T@Field_17961_17966) (v@@9 T@PolymorphicMapType_9205) ) (! (succHeap Heap@@44 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@44) (store (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@44) o_35@@6 f_11@@6 v@@9) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@44) (store (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@44) o_35@@6 f_11@@6 v@@9) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@44) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8656) (o_35@@7 T@Ref) (f_11@@7 T@Field_15350_3031) (v@@10 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@45) (store (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@45) o_35@@7 f_11@@7 v@@10) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@45) (store (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@45) o_35@@7 f_11@@7 v@@10) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@45) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8656) (o_35@@8 T@Ref) (f_11@@8 T@Field_15350_15351) (v@@11 T@FrameType) ) (! (succHeap Heap@@46 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@46) (store (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@46) o_35@@8 f_11@@8 v@@11) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@46) (store (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@46) o_35@@8 f_11@@8 v@@11) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@46) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8656) (o_35@@9 T@Ref) (f_11@@9 T@Field_15350_5282) (v@@12 T@Ref) ) (! (succHeap Heap@@47 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@47) (store (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@47) o_35@@9 f_11@@9 v@@12) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@47) (store (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@47) o_35@@9 f_11@@9 v@@12) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@47) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8656) (o_35@@10 T@Ref) (f_11@@10 T@Field_15350_53) (v@@13 Bool) ) (! (succHeap Heap@@48 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@48) (store (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@48) o_35@@10 f_11@@10 v@@13) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@48) (store (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@48) o_35@@10 f_11@@10 v@@13) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@48) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8656) (o_35@@11 T@Ref) (f_11@@11 T@Field_14750_645) (v@@14 Real) ) (! (succHeap Heap@@49 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@49) (store (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@49) o_35@@11 f_11@@11 v@@14) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@49) (store (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@49) o_35@@11 f_11@@11 v@@14) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@49) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8656) (o_35@@12 T@Ref) (f_11@@12 T@Field_5281_17966) (v@@15 T@PolymorphicMapType_9205) ) (! (succHeap Heap@@50 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@50) (store (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@50) o_35@@12 f_11@@12 v@@15) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@50) (store (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@50) o_35@@12 f_11@@12 v@@15) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@50) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_8656) (o_35@@13 T@Ref) (f_11@@13 T@Field_14841_3031) (v@@16 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@51) (store (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@51) o_35@@13 f_11@@13 v@@16) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@51) (store (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@51) o_35@@13 f_11@@13 v@@16) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@51) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_8656) (o_35@@14 T@Ref) (f_11@@14 T@Field_5281_15351) (v@@17 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@52) (store (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@52) o_35@@14 f_11@@14 v@@17) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@52) (store (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@52) o_35@@14 f_11@@14 v@@17) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@52) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_8656) (o_35@@15 T@Ref) (f_11@@15 T@Field_8729_8730) (v@@18 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@53) (store (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@53) o_35@@15 f_11@@15 v@@18) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@53) (store (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@53) o_35@@15 f_11@@15 v@@18) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@53) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_8656) (o_35@@16 T@Ref) (f_11@@16 T@Field_8716_53) (v@@19 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_8656 (store (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@54) o_35@@16 f_11@@16 v@@19) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8656 (store (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@54) o_35@@16 f_11@@16 v@@19) (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5349_18053#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5281_645#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5281_15351#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_5281_25136#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_5282#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_53#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_645#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_15350_3031#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_5282#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_53#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_645#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_3031#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_15351#PolymorphicMapType_8656| Heap@@54) (|PolymorphicMapType_8656_18895_27874#PolymorphicMapType_8656| Heap@@54)))
)))
(assert (forall ((this$@@4 T@Ref) ) (! (= (PredicateMaskField_5321 (PseudoList$MonitorInvariant this$@@4)) (|PseudoList$MonitorInvariant#sm| this$@@4))
 :qid |stdinbpl.721:15|
 :skolemid |63|
 :pattern ( (PredicateMaskField_5321 (PseudoList$MonitorInvariant this$@@4)))
)))
(assert (forall ((this$_3@@4 T@Ref) ) (! (= (PredicateMaskField_5345 (PseudoListinv$ this$_3@@4)) (|PseudoListinv$#sm| this$_3@@4))
 :qid |stdinbpl.771:15|
 :skolemid |69|
 :pattern ( (PredicateMaskField_5345 (PseudoListinv$ this$_3@@4)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@12 t@@4) n@@9) (|Seq#Append_2867| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2867|)) (not (= s1@@3 |Seq#Empty_2867|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2867| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2867|)) (not (= s1@@4 |Seq#Empty_2867|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o_35@@17 T@Ref) (f_31 T@Field_8729_8730) (Heap@@55 T@PolymorphicMapType_8656) ) (!  (=> (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@55) o_35@@17 $allocated) (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@55) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@55) o_35@@17 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@55) o_35@@17 f_31))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2867| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2867| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_18895_18896) (v_1@@2 T@FrameType) (q T@Field_18895_18896) (w@@2 T@FrameType) (r T@Field_18895_18896) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18895_18895 p@@3 v_1@@2 q w@@2) (InsidePredicate_18895_18895 q w@@2 r u)) (InsidePredicate_18895_18895 p@@3 v_1@@2 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_18895 p@@3 v_1@@2 q w@@2) (InsidePredicate_18895_18895 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_18895_18896) (v_1@@3 T@FrameType) (q@@0 T@Field_18895_18896) (w@@3 T@FrameType) (r@@0 T@Field_5281_15351) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_18895 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18895_8716 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_18895_8716 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_18895 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_18895_8716 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_18895_18896) (v_1@@4 T@FrameType) (q@@1 T@Field_18895_18896) (w@@4 T@FrameType) (r@@1 T@Field_15350_15351) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_18895 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18895_5345 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_18895_5345 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_18895 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_18895_5345 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_18895_18896) (v_1@@5 T@FrameType) (q@@2 T@Field_5281_15351) (w@@5 T@FrameType) (r@@2 T@Field_18895_18896) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_8716 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8716_18895 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_18895_18895 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_8716 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_8716_18895 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_18895_18896) (v_1@@6 T@FrameType) (q@@3 T@Field_5281_15351) (w@@6 T@FrameType) (r@@3 T@Field_5281_15351) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_8716 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8716_8716 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_18895_8716 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_8716 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_8716_8716 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_18895_18896) (v_1@@7 T@FrameType) (q@@4 T@Field_5281_15351) (w@@7 T@FrameType) (r@@4 T@Field_15350_15351) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_8716 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8716_5345 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_18895_5345 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_8716 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_8716_5345 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_18895_18896) (v_1@@8 T@FrameType) (q@@5 T@Field_15350_15351) (w@@8 T@FrameType) (r@@5 T@Field_18895_18896) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_5345 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5345_18895 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_18895_18895 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_5345 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_5345_18895 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_18895_18896) (v_1@@9 T@FrameType) (q@@6 T@Field_15350_15351) (w@@9 T@FrameType) (r@@6 T@Field_5281_15351) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_5345 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5345_8716 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_18895_8716 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_5345 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_5345_8716 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_18895_18896) (v_1@@10 T@FrameType) (q@@7 T@Field_15350_15351) (w@@10 T@FrameType) (r@@7 T@Field_15350_15351) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_18895_5345 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5345_5345 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_18895_5345 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18895_5345 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_5345_5345 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_5281_15351) (v_1@@11 T@FrameType) (q@@8 T@Field_18895_18896) (w@@11 T@FrameType) (r@@8 T@Field_18895_18896) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_18895 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18895_18895 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_8716_18895 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_18895 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_18895_18895 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_5281_15351) (v_1@@12 T@FrameType) (q@@9 T@Field_18895_18896) (w@@12 T@FrameType) (r@@9 T@Field_5281_15351) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_18895 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18895_8716 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_8716_8716 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_18895 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_18895_8716 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_5281_15351) (v_1@@13 T@FrameType) (q@@10 T@Field_18895_18896) (w@@13 T@FrameType) (r@@10 T@Field_15350_15351) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_18895 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18895_5345 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_8716_5345 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_18895 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_18895_5345 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_5281_15351) (v_1@@14 T@FrameType) (q@@11 T@Field_5281_15351) (w@@14 T@FrameType) (r@@11 T@Field_18895_18896) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_8716 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8716_18895 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_8716_18895 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_8716 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_8716_18895 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_5281_15351) (v_1@@15 T@FrameType) (q@@12 T@Field_5281_15351) (w@@15 T@FrameType) (r@@12 T@Field_5281_15351) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_8716 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8716_8716 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_8716_8716 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_8716 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_8716_8716 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_5281_15351) (v_1@@16 T@FrameType) (q@@13 T@Field_5281_15351) (w@@16 T@FrameType) (r@@13 T@Field_15350_15351) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_8716 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8716_5345 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_8716_5345 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_8716 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_8716_5345 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_5281_15351) (v_1@@17 T@FrameType) (q@@14 T@Field_15350_15351) (w@@17 T@FrameType) (r@@14 T@Field_18895_18896) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_5345 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5345_18895 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_8716_18895 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_5345 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_5345_18895 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_5281_15351) (v_1@@18 T@FrameType) (q@@15 T@Field_15350_15351) (w@@18 T@FrameType) (r@@15 T@Field_5281_15351) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_5345 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5345_8716 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_8716_8716 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_5345 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_5345_8716 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_5281_15351) (v_1@@19 T@FrameType) (q@@16 T@Field_15350_15351) (w@@19 T@FrameType) (r@@16 T@Field_15350_15351) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_8716_5345 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5345_5345 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_8716_5345 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8716_5345 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_5345_5345 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_15350_15351) (v_1@@20 T@FrameType) (q@@17 T@Field_18895_18896) (w@@20 T@FrameType) (r@@17 T@Field_18895_18896) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_18895 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18895_18895 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_5345_18895 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_18895 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_18895_18895 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_15350_15351) (v_1@@21 T@FrameType) (q@@18 T@Field_18895_18896) (w@@21 T@FrameType) (r@@18 T@Field_5281_15351) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_18895 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18895_8716 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_5345_8716 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_18895 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_18895_8716 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_15350_15351) (v_1@@22 T@FrameType) (q@@19 T@Field_18895_18896) (w@@22 T@FrameType) (r@@19 T@Field_15350_15351) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_18895 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18895_5345 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_5345_5345 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_18895 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_18895_5345 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_15350_15351) (v_1@@23 T@FrameType) (q@@20 T@Field_5281_15351) (w@@23 T@FrameType) (r@@20 T@Field_18895_18896) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_8716 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8716_18895 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_5345_18895 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_8716 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_8716_18895 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_15350_15351) (v_1@@24 T@FrameType) (q@@21 T@Field_5281_15351) (w@@24 T@FrameType) (r@@21 T@Field_5281_15351) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_8716 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8716_8716 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_5345_8716 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_8716 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_8716_8716 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_15350_15351) (v_1@@25 T@FrameType) (q@@22 T@Field_5281_15351) (w@@25 T@FrameType) (r@@22 T@Field_15350_15351) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_8716 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8716_5345 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_5345_5345 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_8716 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_8716_5345 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_15350_15351) (v_1@@26 T@FrameType) (q@@23 T@Field_15350_15351) (w@@26 T@FrameType) (r@@23 T@Field_18895_18896) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_5345 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5345_18895 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_5345_18895 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_5345 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_5345_18895 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_15350_15351) (v_1@@27 T@FrameType) (q@@24 T@Field_15350_15351) (w@@27 T@FrameType) (r@@24 T@Field_5281_15351) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_5345 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5345_8716 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_5345_8716 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_5345 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_5345_8716 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_15350_15351) (v_1@@28 T@FrameType) (q@@25 T@Field_15350_15351) (w@@28 T@FrameType) (r@@25 T@Field_15350_15351) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_5345_5345 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5345_5345 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_5345_5345 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5345_5345 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_5345_5345 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_2867|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_2867|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@56 T@PolymorphicMapType_8656) (this$_2@@2 T@Ref) (index@@2 Int) ) (!  (and (= (PseudoListget$ Heap@@56 this$_2@@2 index@@2) (|PseudoListget$'| Heap@@56 this$_2@@2 index@@2)) (dummyFunction_3352 (|PseudoListget$#triggerStateless| this$_2@@2 index@@2)))
 :qid |stdinbpl.586:15|
 :skolemid |58|
 :pattern ( (PseudoListget$ Heap@@56 this$_2@@2 index@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |PseudoListget$#trigger| (T@FrameType T@Ref Int) Bool)
(declare-fun Heap@@57 () T@PolymorphicMapType_8656)
(declare-fun this$_2@@3 () T@Ref)
(declare-fun index@@3 () Int)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_8677)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_8677)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3031 (Int) T@FrameType)
(declare-fun FrameFragment_5282 (T@Ref) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_8677)
(declare-fun wildcard@2 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_8677)
(declare-fun wildcard@3 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |PseudoListget$#definedness|)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon5_correct true))
(let ((anon7_Else_correct  (=> (and (|PseudoListget$#trigger| (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@57) null (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$))) (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$) (- index@@3 1)) (= (ControlFlow 0 6) 4)) anon5_correct)))
(let ((anon6_Then_correct  (=> (and (= index@@3 0) (= (ControlFlow 0 5) 4)) anon5_correct)))
(let ((anon7_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$) null))) (=> (not (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$) null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| UnfoldingMask@2) null (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$))))))))))
(let ((anon6_Else_correct  (=> (not (= index@@3 0)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_5281_5282 UnfoldingMask@2 this$_2@@3 PseudoListnext$)) (=> (HasDirectPerm_5281_5282 UnfoldingMask@2 this$_2@@3 PseudoListnext$) (and (=> (= (ControlFlow 0 7) 2) anon7_Then_correct) (=> (= (ControlFlow 0 7) 6) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (state Heap@@57 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_8656_5085_53#PolymorphicMapType_8656| Heap@@57) this$_2@@3 $allocated) (= AssumeFunctionsAbove 0))) (=> (and (and (and (not (= this$_2@@3 null)) (state Heap@@57 ZeroMask)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_8677 (store (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| ZeroMask) null (PseudoListinv$ this$_2@@3) (+ (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| ZeroMask) null (PseudoListinv$ this$_2@@3)) wildcard@0)) (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| ZeroMask) (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| ZeroMask))))) (and (and (state Heap@@57 Mask@0) (state Heap@@57 Mask@0)) (and (|PseudoListinv$#trigger_5345| Heap@@57 (PseudoListinv$ this$_2@@3)) (= (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@57) null (PseudoListinv$ this$_2@@3)) (CombineFrames (FrameFragment_3031 (select (|PolymorphicMapType_8656_5279_3031#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListvalue$)) (CombineFrames (FrameFragment_5282 (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$)) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@57) null (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$))))))))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@0) null (PseudoListinv$ this$_2@@3))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@0) null (PseudoListinv$ this$_2@@3)))) (=> (and (> wildcard@1 NoPerm) (not (= this$_2@@3 null))) (=> (and (and (= UnfoldingMask@0 (PolymorphicMapType_8677 (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| Mask@0) (store (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| Mask@0) this$_2@@3 PseudoListvalue$ (+ (select (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| Mask@0) this$_2@@3 PseudoListvalue$) wildcard@1)) (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| Mask@0) (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| Mask@0))) (state Heap@@57 UnfoldingMask@0)) (and (> wildcard@2 NoPerm) (not (= this$_2@@3 null)))) (=> (and (and (and (= UnfoldingMask@1 (PolymorphicMapType_8677 (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| UnfoldingMask@0) (store (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| UnfoldingMask@0) this$_2@@3 PseudoListnext$ (+ (select (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| UnfoldingMask@0) this$_2@@3 PseudoListnext$) wildcard@2)) (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| UnfoldingMask@0) (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| UnfoldingMask@0))) (state Heap@@57 UnfoldingMask@1)) (and (not (= (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$) null)) (> wildcard@3 NoPerm))) (and (and (= UnfoldingMask@2 (PolymorphicMapType_8677 (store (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| UnfoldingMask@1) null (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$)) (+ (select (|PolymorphicMapType_8677_5345_5346#PolymorphicMapType_8677| UnfoldingMask@1) null (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$))) wildcard@3)) (|PolymorphicMapType_8677_5279_3031#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5281_5282#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5345_3031#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5345_5282#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5345_53#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5345_645#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5345_41398#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5279_5346#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5279_53#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5279_645#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_5279_41877#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_18895_5346#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_18895_3031#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_18895_5282#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_18895_53#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_18895_645#PolymorphicMapType_8677| UnfoldingMask@1) (|PolymorphicMapType_8677_18895_42383#PolymorphicMapType_8677| UnfoldingMask@1))) (InsidePredicate_5345_5345 (PseudoListinv$ this$_2@@3) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@57) null (PseudoListinv$ this$_2@@3)) (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$)) (select (|PolymorphicMapType_8656_5345_5346#PolymorphicMapType_8656| Heap@@57) null (PseudoListinv$ (select (|PolymorphicMapType_8656_5088_5089#PolymorphicMapType_8656| Heap@@57) this$_2@@3 PseudoListnext$))))) (and (state Heap@@57 UnfoldingMask@2) (state Heap@@57 UnfoldingMask@2)))) (and (=> (= (ControlFlow 0 9) 5) anon6_Then_correct) (=> (= (ControlFlow 0 9) 7) anon6_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 11) 9)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
