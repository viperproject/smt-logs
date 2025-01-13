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
(declare-sort T@Field_28778_53 0)
(declare-sort T@Field_28791_28792 0)
(declare-sort T@Field_34797_34799 0)
(declare-sort T@Seq_2867 0)
(declare-sort T@Field_34852_3005 0)
(declare-sort T@Field_35724_35725 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_38829_38834 0)
(declare-sort T@Field_14647_14751 0)
(declare-sort T@Field_14647_38834 0)
(declare-sort T@Field_14750_37983 0)
(declare-sort T@Field_14750_3005 0)
(declare-sort T@Field_14750_53 0)
(declare-sort T@Field_14750_28792 0)
(declare-datatypes ((T@PolymorphicMapType_28739 0)) (((PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| (Array T@Ref T@Field_35724_35725 Real)) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| (Array T@Ref T@Field_34797_34799 Real)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| (Array T@Ref T@Field_34852_3005 Real)) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| (Array T@Ref T@Field_14750_37983 Real)) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| (Array T@Ref T@Field_14750_3005 Real)) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| (Array T@Ref T@Field_14750_53 Real)) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| (Array T@Ref T@Field_14750_28792 Real)) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| (Array T@Ref T@Field_38829_38834 Real)) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| (Array T@Ref T@Field_14647_14751 Real)) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| (Array T@Ref T@Field_28778_53 Real)) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| (Array T@Ref T@Field_28791_28792 Real)) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| (Array T@Ref T@Field_14647_38834 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29267 0)) (((PolymorphicMapType_29267 (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (Array T@Ref T@Field_34797_34799 Bool)) (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (Array T@Ref T@Field_34852_3005 Bool)) (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (Array T@Ref T@Field_28778_53 Bool)) (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (Array T@Ref T@Field_28791_28792 Bool)) (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (Array T@Ref T@Field_14647_14751 Bool)) (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (Array T@Ref T@Field_14647_38834 Bool)) (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (Array T@Ref T@Field_14750_37983 Bool)) (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (Array T@Ref T@Field_14750_3005 Bool)) (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (Array T@Ref T@Field_14750_53 Bool)) (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (Array T@Ref T@Field_14750_28792 Bool)) (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (Array T@Ref T@Field_35724_35725 Bool)) (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (Array T@Ref T@Field_38829_38834 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28718 0)) (((PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| (Array T@Ref T@Field_28778_53 Bool)) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| (Array T@Ref T@Field_28791_28792 T@Ref)) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| (Array T@Ref T@Field_34797_34799 T@Seq_2867)) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| (Array T@Ref T@Field_34852_3005 Int)) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| (Array T@Ref T@Field_35724_35725 T@FrameType)) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| (Array T@Ref T@Field_38829_38834 T@PolymorphicMapType_29267)) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| (Array T@Ref T@Field_14647_14751 T@FrameType)) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| (Array T@Ref T@Field_14647_38834 T@PolymorphicMapType_29267)) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| (Array T@Ref T@Field_14750_37983 T@Seq_2867)) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| (Array T@Ref T@Field_14750_3005 Int)) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| (Array T@Ref T@Field_14750_53 Bool)) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| (Array T@Ref T@Field_14750_28792 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_28778_53)
(declare-fun data () T@Field_34797_34799)
(declare-fun first_3 () T@Field_34852_3005)
(declare-fun len_2 () T@Field_34852_3005)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2989| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_28718 T@PolymorphicMapType_28718) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_28718 T@PolymorphicMapType_28718) Bool)
(declare-fun state (T@PolymorphicMapType_28718 T@PolymorphicMapType_28739) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_28739) Bool)
(declare-fun |HeadF'| (T@PolymorphicMapType_28718 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |HeadF#trigger| (T@FrameType T@Ref) Bool)
(declare-fun null () T@Ref)
(declare-fun Valid (T@Ref) T@Field_35724_35725)
(declare-fun |Seq#Equal_3042| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun Contents (T@PolymorphicMapType_28718 T@Ref) T@Seq_2867)
(declare-fun |Seq#Empty_3160| () T@Seq_2867)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_29267)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun IsPredicateField_14750_14751 (T@Field_35724_35725) Bool)
(declare-fun |Contents'| (T@PolymorphicMapType_28718 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_35007 (T@Seq_2867) Bool)
(declare-fun |Contents#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Capacity'| (T@PolymorphicMapType_28718 T@Ref) Int)
(declare-fun dummyFunction_4173 (Int) Bool)
(declare-fun |Capacity#triggerStateless| (T@Ref) Int)
(declare-fun |HeadF#triggerStateless| (T@Ref) Int)
(declare-fun |Valid#trigger_14750| (T@PolymorphicMapType_28718 T@Field_35724_35725) Bool)
(declare-fun |Valid#everUsed_14750| (T@Field_35724_35725) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun Capacity (T@PolymorphicMapType_28718 T@Ref) Int)
(declare-fun |Seq#Take_2989| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun HeadF (T@PolymorphicMapType_28718 T@Ref) Int)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_28718 T@PolymorphicMapType_28718 T@PolymorphicMapType_28739) Bool)
(declare-fun HasDirectPerm_14750_14751 (T@PolymorphicMapType_28739 T@Ref T@Field_35724_35725) Bool)
(declare-fun PredicateMaskField_14750 (T@Field_35724_35725) T@Field_38829_38834)
(declare-fun IsPredicateField_14647_98875 (T@Field_14647_14751) Bool)
(declare-fun HasDirectPerm_14647_14751 (T@PolymorphicMapType_28739 T@Ref T@Field_14647_14751) Bool)
(declare-fun PredicateMaskField_14647 (T@Field_14647_14751) T@Field_14647_38834)
(declare-fun IsWandField_14750_102953 (T@Field_35724_35725) Bool)
(declare-fun WandMaskField_14750 (T@Field_35724_35725) T@Field_38829_38834)
(declare-fun IsWandField_14647_102596 (T@Field_14647_14751) Bool)
(declare-fun WandMaskField_14647 (T@Field_14647_14751) T@Field_14647_38834)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun |Valid#sm| (T@Ref) T@Field_38829_38834)
(declare-fun |Seq#Append_2989| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_28718)
(declare-fun ZeroMask () T@PolymorphicMapType_28739)
(declare-fun InsidePredicate_35724_35724 (T@Field_35724_35725 T@FrameType T@Field_35724_35725 T@FrameType) Bool)
(declare-fun InsidePredicate_28778_28778 (T@Field_14647_14751 T@FrameType T@Field_14647_14751 T@FrameType) Bool)
(declare-fun IsPredicateField_14647_34818 (T@Field_34797_34799) Bool)
(declare-fun IsWandField_14647_34841 (T@Field_34797_34799) Bool)
(declare-fun IsPredicateField_14650_3005 (T@Field_34852_3005) Bool)
(declare-fun IsWandField_14650_3005 (T@Field_34852_3005) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14647_111090 (T@Field_14647_38834) Bool)
(declare-fun IsWandField_14647_111106 (T@Field_14647_38834) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14647_28792 (T@Field_28791_28792) Bool)
(declare-fun IsWandField_14647_28792 (T@Field_28791_28792) Bool)
(declare-fun IsPredicateField_14647_53 (T@Field_28778_53) Bool)
(declare-fun IsWandField_14647_53 (T@Field_28778_53) Bool)
(declare-fun IsPredicateField_14750_110119 (T@Field_38829_38834) Bool)
(declare-fun IsWandField_14750_110135 (T@Field_38829_38834) Bool)
(declare-fun IsPredicateField_14750_28792 (T@Field_14750_28792) Bool)
(declare-fun IsWandField_14750_28792 (T@Field_14750_28792) Bool)
(declare-fun IsPredicateField_14750_53 (T@Field_14750_53) Bool)
(declare-fun IsWandField_14750_53 (T@Field_14750_53) Bool)
(declare-fun IsPredicateField_14750_3005 (T@Field_14750_3005) Bool)
(declare-fun IsWandField_14750_3005 (T@Field_14750_3005) Bool)
(declare-fun IsPredicateField_14750_37028 (T@Field_14750_37983) Bool)
(declare-fun IsWandField_14750_37028 (T@Field_14750_37983) Bool)
(declare-fun HasDirectPerm_14750_98630 (T@PolymorphicMapType_28739 T@Ref T@Field_38829_38834) Bool)
(declare-fun HasDirectPerm_14750_28792 (T@PolymorphicMapType_28739 T@Ref T@Field_14750_28792) Bool)
(declare-fun HasDirectPerm_14750_53 (T@PolymorphicMapType_28739 T@Ref T@Field_14750_53) Bool)
(declare-fun HasDirectPerm_14750_3005 (T@PolymorphicMapType_28739 T@Ref T@Field_14750_3005) Bool)
(declare-fun HasDirectPerm_14750_37983 (T@PolymorphicMapType_28739 T@Ref T@Field_14750_37983) Bool)
(declare-fun HasDirectPerm_14647_97260 (T@PolymorphicMapType_28739 T@Ref T@Field_14647_38834) Bool)
(declare-fun HasDirectPerm_14647_28792 (T@PolymorphicMapType_28739 T@Ref T@Field_28791_28792) Bool)
(declare-fun HasDirectPerm_14647_53 (T@PolymorphicMapType_28739 T@Ref T@Field_28778_53) Bool)
(declare-fun HasDirectPerm_14650_3005 (T@PolymorphicMapType_28739 T@Ref T@Field_34852_3005) Bool)
(declare-fun HasDirectPerm_14647_37983 (T@PolymorphicMapType_28739 T@Ref T@Field_34797_34799) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_28739 T@PolymorphicMapType_28739 T@PolymorphicMapType_28739) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Contents#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |Capacity#frame| (T@FrameType T@Ref) Int)
(declare-fun |HeadF#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_14750_14751 (T@Field_35724_35725) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_35724_28778 (T@Field_35724_35725 T@FrameType T@Field_14647_14751 T@FrameType) Bool)
(declare-fun InsidePredicate_28778_35724 (T@Field_14647_14751 T@FrameType T@Field_35724_35725 T@FrameType) Bool)
(assert (distinct first_3 len_2)
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2989| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2989| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2989| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.278:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2989| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2989| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_28718) (Heap1 T@PolymorphicMapType_28718) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_28718) (Mask T@PolymorphicMapType_28739) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_28718) (Heap1@@0 T@PolymorphicMapType_28718) (Heap2 T@PolymorphicMapType_28718) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_28718) (Mask@@0 T@PolymorphicMapType_28739) (this T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 1) (|HeadF#trigger| (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@0) null (Valid this)) this))) (=> (not (|Seq#Equal_3042| (Contents Heap@@0 this) |Seq#Empty_3160|)) (= (|HeadF'| Heap@@0 this) (|Seq#Index_2867| (Contents Heap@@0 this) 0))))
 :qid |stdinbpl.843:15|
 :skolemid |70|
 :pattern ( (state Heap@@0 Mask@@0) (|HeadF'| Heap@@0 this))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_38829_38834) ) (!  (not (select (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_35724_35725) ) (!  (not (select (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14750_28792) ) (!  (not (select (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14750_53) ) (!  (not (select (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14750_3005) ) (!  (not (select (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14750_37983) ) (!  (not (select (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_14647_38834) ) (!  (not (select (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14647_14751) ) (!  (not (select (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_28791_28792) ) (!  (not (select (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_28778_53) ) (!  (not (select (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_34852_3005) ) (!  (not (select (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_34797_34799) ) (!  (not (select (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2989| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.299:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2989| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_3160|) 0))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_14750_14751 (Valid this@@0))
 :qid |stdinbpl.993:15|
 :skolemid |72|
 :pattern ( (Valid this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_28718) (this@@1 T@Ref) ) (! (dummyFunction_35007 (|Contents#triggerStateless| this@@1))
 :qid |stdinbpl.570:15|
 :skolemid |59|
 :pattern ( (|Contents'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_28718) (this@@2 T@Ref) ) (! (dummyFunction_4173 (|Capacity#triggerStateless| this@@2))
 :qid |stdinbpl.713:15|
 :skolemid |63|
 :pattern ( (|Capacity'| Heap@@2 this@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_28718) (this@@3 T@Ref) ) (! (dummyFunction_4173 (|HeadF#triggerStateless| this@@3))
 :qid |stdinbpl.824:15|
 :skolemid |67|
 :pattern ( (|HeadF'| Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_28718) (this@@4 T@Ref) ) (! (|Valid#everUsed_14750| (Valid this@@4))
 :qid |stdinbpl.1012:15|
 :skolemid |76|
 :pattern ( (|Valid#trigger_14750| Heap@@4 (Valid this@@4)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.254:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_28718) (Mask@@1 T@PolymorphicMapType_28739) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@5 Mask@@1) (< AssumeFunctionsAbove 0)) (= (Capacity Heap@@5 this@@5) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@5) this@@5 data))))
 :qid |stdinbpl.719:15|
 :skolemid |64|
 :pattern ( (state Heap@@5 Mask@@1) (Capacity Heap@@5 this@@5))
 :pattern ( (state Heap@@5 Mask@@1) (|Capacity#triggerStateless| this@@5) (|Valid#trigger_14750| Heap@@5 (Valid this@@5)))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2989| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2989| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2989| s@@2 n@@2)) 0)))
 :qid |stdinbpl.265:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2989| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2989| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_28718) (Mask@@2 T@PolymorphicMapType_28739) (this@@6 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@2) (< AssumeFunctionsAbove 1)) (=> (not (|Seq#Equal_3042| (Contents Heap@@6 this@@6) |Seq#Empty_3160|)) (= (HeadF Heap@@6 this@@6) (|Seq#Index_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@6) this@@6 data) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@6) this@@6 first_3)))))
 :qid |stdinbpl.830:15|
 :skolemid |68|
 :pattern ( (state Heap@@6 Mask@@2) (HeadF Heap@@6 this@@6))
 :pattern ( (state Heap@@6 Mask@@2) (|HeadF#triggerStateless| this@@6) (|Valid#trigger_14750| Heap@@6 (Valid this@@6)))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.539:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.397:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_28718) (this@@7 T@Ref) ) (!  (and (= (Contents Heap@@7 this@@7) (|Contents'| Heap@@7 this@@7)) (dummyFunction_35007 (|Contents#triggerStateless| this@@7)))
 :qid |stdinbpl.566:15|
 :skolemid |58|
 :pattern ( (Contents Heap@@7 this@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_28718) (this@@8 T@Ref) ) (!  (and (= (Capacity Heap@@8 this@@8) (|Capacity'| Heap@@8 this@@8)) (dummyFunction_4173 (|Capacity#triggerStateless| this@@8)))
 :qid |stdinbpl.709:15|
 :skolemid |62|
 :pattern ( (Capacity Heap@@8 this@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_28718) (this@@9 T@Ref) ) (!  (and (= (HeadF Heap@@9 this@@9) (|HeadF'| Heap@@9 this@@9)) (dummyFunction_4173 (|HeadF#triggerStateless| this@@9)))
 :qid |stdinbpl.820:15|
 :skolemid |66|
 :pattern ( (HeadF Heap@@9 this@@9))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2989| s@@4 n@@3) s@@4))
 :qid |stdinbpl.381:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2989| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.234:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_28718) (ExhaleHeap T@PolymorphicMapType_28718) (Mask@@3 T@PolymorphicMapType_28739) (pm_f T@Field_35724_35725) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_14750_14751 Mask@@3 null pm_f) (IsPredicateField_14750_14751 pm_f)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_34797_34799) ) (!  (=> (select (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@10) o2 f_2) (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_34852_3005) ) (!  (=> (select (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@10) o2@@0 f_2@@0) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_28778_53) ) (!  (=> (select (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@10) o2@@1 f_2@@1) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_28791_28792) ) (!  (=> (select (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@10) o2@@2 f_2@@2) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_14647_14751) ) (!  (=> (select (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@10) o2@@3 f_2@@3) (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_14647_38834) ) (!  (=> (select (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@10) o2@@4 f_2@@4) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_14750_37983) ) (!  (=> (select (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@10) o2@@5 f_2@@5) (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_14750_3005) ) (!  (=> (select (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@10) o2@@6 f_2@@6) (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_14750_53) ) (!  (=> (select (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@10) o2@@7 f_2@@7) (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_14750_28792) ) (!  (=> (select (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@10) o2@@8 f_2@@8) (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_35724_35725) ) (!  (=> (select (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@10) o2@@9 f_2@@9) (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_38829_38834) ) (!  (=> (select (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) null (PredicateMaskField_14750 pm_f))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@10) o2@@10 f_2@@10) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap) o2@@10 f_2@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@3) (IsPredicateField_14750_14751 pm_f))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_28718) (ExhaleHeap@@0 T@PolymorphicMapType_28718) (Mask@@4 T@PolymorphicMapType_28739) (pm_f@@0 T@Field_14647_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_14647_14751 Mask@@4 null pm_f@@0) (IsPredicateField_14647_98875 pm_f@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_34797_34799) ) (!  (=> (select (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@11) o2@@11 f_2@@11) (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@11 f_2@@11))
)) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_34852_3005) ) (!  (=> (select (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@11) o2@@12 f_2@@12) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_28778_53) ) (!  (=> (select (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@11) o2@@13 f_2@@13) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_28791_28792) ) (!  (=> (select (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@11) o2@@14 f_2@@14) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_14647_14751) ) (!  (=> (select (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@11) o2@@15 f_2@@15) (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_14647_38834) ) (!  (=> (select (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) o2@@16 f_2@@16) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_14750_37983) ) (!  (=> (select (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@11) o2@@17 f_2@@17) (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_14750_3005) ) (!  (=> (select (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@11) o2@@18 f_2@@18) (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_14750_53) ) (!  (=> (select (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@11) o2@@19 f_2@@19) (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_14750_28792) ) (!  (=> (select (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@11) o2@@20 f_2@@20) (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_35724_35725) ) (!  (=> (select (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@11) o2@@21 f_2@@21) (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_38829_38834) ) (!  (=> (select (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@11) null (PredicateMaskField_14647 pm_f@@0))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@11) o2@@22 f_2@@22) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@0) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@4) (IsPredicateField_14647_98875 pm_f@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_28718) (ExhaleHeap@@1 T@PolymorphicMapType_28718) (Mask@@5 T@PolymorphicMapType_28739) (pm_f@@1 T@Field_35724_35725) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@5) (=> (and (HasDirectPerm_14750_14751 Mask@@5 null pm_f@@1) (IsWandField_14750_102953 pm_f@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_34797_34799) ) (!  (=> (select (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@12) o2@@23 f_2@@23) (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_34852_3005) ) (!  (=> (select (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@12) o2@@24 f_2@@24) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_28778_53) ) (!  (=> (select (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@12) o2@@25 f_2@@25) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_28791_28792) ) (!  (=> (select (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@12) o2@@26 f_2@@26) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_14647_14751) ) (!  (=> (select (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@12) o2@@27 f_2@@27) (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_14647_38834) ) (!  (=> (select (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@12) o2@@28 f_2@@28) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_14750_37983) ) (!  (=> (select (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@12) o2@@29 f_2@@29) (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_14750_3005) ) (!  (=> (select (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@12) o2@@30 f_2@@30) (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_14750_53) ) (!  (=> (select (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@12) o2@@31 f_2@@31) (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_14750_28792) ) (!  (=> (select (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@12) o2@@32 f_2@@32) (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_35724_35725) ) (!  (=> (select (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@12) o2@@33 f_2@@33) (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_38829_38834) ) (!  (=> (select (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) null (WandMaskField_14750 pm_f@@1))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@12) o2@@34 f_2@@34) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@1) o2@@34 f_2@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@5) (IsWandField_14750_102953 pm_f@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_28718) (ExhaleHeap@@2 T@PolymorphicMapType_28718) (Mask@@6 T@PolymorphicMapType_28739) (pm_f@@2 T@Field_14647_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@6) (=> (and (HasDirectPerm_14647_14751 Mask@@6 null pm_f@@2) (IsWandField_14647_102596 pm_f@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_34797_34799) ) (!  (=> (select (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@13) o2@@35 f_2@@35) (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@35 f_2@@35))
)) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_34852_3005) ) (!  (=> (select (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@13) o2@@36 f_2@@36) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_28778_53) ) (!  (=> (select (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@13) o2@@37 f_2@@37) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_28791_28792) ) (!  (=> (select (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@13) o2@@38 f_2@@38) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@38 f_2@@38))
))) (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_14647_14751) ) (!  (=> (select (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@13) o2@@39 f_2@@39) (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@39 f_2@@39)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@39 f_2@@39))
))) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_14647_38834) ) (!  (=> (select (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) o2@@40 f_2@@40) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@40 f_2@@40)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_14750_37983) ) (!  (=> (select (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@13) o2@@41 f_2@@41) (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@41 f_2@@41)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_14750_3005) ) (!  (=> (select (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@13) o2@@42 f_2@@42) (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@42 f_2@@42)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_14750_53) ) (!  (=> (select (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@13) o2@@43 f_2@@43) (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@43 f_2@@43)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_14750_28792) ) (!  (=> (select (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@13) o2@@44 f_2@@44) (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@44 f_2@@44)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_35724_35725) ) (!  (=> (select (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@13) o2@@45 f_2@@45) (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@45 f_2@@45)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_38829_38834) ) (!  (=> (select (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@13) null (WandMaskField_14647 pm_f@@2))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@13) o2@@46 f_2@@46) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@46 f_2@@46)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@2) o2@@46 f_2@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@6) (IsWandField_14647_102596 pm_f@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_28718) (ExhaleHeap@@3 T@PolymorphicMapType_28718) (Mask@@7 T@PolymorphicMapType_28739) (pm_f@@3 T@Field_35724_35725) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_14750_14751 Mask@@7 null pm_f@@3) (IsPredicateField_14750_14751 pm_f@@3)) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@14) null (PredicateMaskField_14750 pm_f@@3)) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@3) null (PredicateMaskField_14750 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@7) (IsPredicateField_14750_14751 pm_f@@3) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@3) null (PredicateMaskField_14750 pm_f@@3)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_28718) (ExhaleHeap@@4 T@PolymorphicMapType_28718) (Mask@@8 T@PolymorphicMapType_28739) (pm_f@@4 T@Field_14647_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_14647_14751 Mask@@8 null pm_f@@4) (IsPredicateField_14647_98875 pm_f@@4)) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@15) null (PredicateMaskField_14647 pm_f@@4)) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@4) null (PredicateMaskField_14647 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@8) (IsPredicateField_14647_98875 pm_f@@4) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@4) null (PredicateMaskField_14647 pm_f@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_28718) (ExhaleHeap@@5 T@PolymorphicMapType_28718) (Mask@@9 T@PolymorphicMapType_28739) (pm_f@@5 T@Field_35724_35725) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_14750_14751 Mask@@9 null pm_f@@5) (IsWandField_14750_102953 pm_f@@5)) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@16) null (WandMaskField_14750 pm_f@@5)) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@5) null (WandMaskField_14750 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@9) (IsWandField_14750_102953 pm_f@@5) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@5) null (WandMaskField_14750 pm_f@@5)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_28718) (ExhaleHeap@@6 T@PolymorphicMapType_28718) (Mask@@10 T@PolymorphicMapType_28739) (pm_f@@6 T@Field_14647_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_14647_14751 Mask@@10 null pm_f@@6) (IsWandField_14647_102596 pm_f@@6)) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@17) null (WandMaskField_14647 pm_f@@6)) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@6) null (WandMaskField_14647 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@10) (IsWandField_14647_102596 pm_f@@6) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@6) null (WandMaskField_14647 pm_f@@6)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.522:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2989| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.273:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2989| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2989| s@@5 n@@4))
)))
(assert (forall ((this@@10 T@Ref) (this2 T@Ref) ) (!  (=> (= (Valid this@@10) (Valid this2)) (= this@@10 this2))
 :qid |stdinbpl.1003:15|
 :skolemid |74|
 :pattern ( (Valid this@@10) (Valid this2))
)))
(assert (forall ((this@@11 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|Valid#sm| this@@11) (|Valid#sm| this2@@0)) (= this@@11 this2@@0))
 :qid |stdinbpl.1007:15|
 :skolemid |75|
 :pattern ( (|Valid#sm| this@@11) (|Valid#sm| this2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2989| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2989| (|Seq#Append_2989| s@@6 t) n@@5) (|Seq#Append_2989| s@@6 (|Seq#Take_2989| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.358:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2989| (|Seq#Append_2989| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_28718) (Mask@@11 T@PolymorphicMapType_28739) (this@@12 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@11) (< AssumeFunctionsAbove 2)) (= (Contents Heap@@18 this@@12) (ite (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@18) this@@12 data)) 0) |Seq#Empty_3160| (ite (<= (+ (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 first_3) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 len_2)) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@18) this@@12 data))) (|Seq#Drop_2989| (|Seq#Take_2989| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@18) this@@12 data) (+ (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 first_3) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 len_2))) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 first_3)) (|Seq#Append_2989| (|Seq#Drop_2989| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@18) this@@12 data) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 first_3)) (|Seq#Take_2989| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@18) this@@12 data) (- (+ (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 first_3) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@18) this@@12 len_2)) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@18) this@@12 data)))))))))
 :qid |stdinbpl.576:15|
 :skolemid |60|
 :pattern ( (state Heap@@18 Mask@@11) (Contents Heap@@18 this@@12))
 :pattern ( (state Heap@@18 Mask@@11) (|Contents#triggerStateless| this@@12) (|Valid#trigger_14750| Heap@@18 (Valid this@@12)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@19 T@PolymorphicMapType_28718) (ExhaleHeap@@7 T@PolymorphicMapType_28718) (Mask@@12 T@PolymorphicMapType_28739) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@12) (=> (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@19) o_1 $allocated) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@7 Mask@@12) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_35724_35725) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35724_35724 p v_1 p w))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35724_35724 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14647_14751) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_28778_28778 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.176:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28778_28778 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3160|)) (not (= s1 |Seq#Empty_3160|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2989| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.245:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_14647_34818 data)))
(assert  (not (IsWandField_14647_34841 data)))
(assert  (not (IsPredicateField_14650_3005 first_3)))
(assert  (not (IsWandField_14650_3005 first_3)))
(assert  (not (IsPredicateField_14650_3005 len_2)))
(assert  (not (IsWandField_14650_3005 len_2)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_28718) (ExhaleHeap@@8 T@PolymorphicMapType_28718) (Mask@@13 T@PolymorphicMapType_28739) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@13) (succHeap Heap@@20 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@8 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_28739) (o_2@@11 T@Ref) (f_4@@11 T@Field_14647_38834) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14647_111090 f_4@@11))) (not (IsWandField_14647_111106 f_4@@11))) (<= (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_28739) (o_2@@12 T@Ref) (f_4@@12 T@Field_28791_28792) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14647_28792 f_4@@12))) (not (IsWandField_14647_28792 f_4@@12))) (<= (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_28739) (o_2@@13 T@Ref) (f_4@@13 T@Field_28778_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14647_53 f_4@@13))) (not (IsWandField_14647_53 f_4@@13))) (<= (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_28739) (o_2@@14 T@Ref) (f_4@@14 T@Field_34852_3005) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14650_3005 f_4@@14))) (not (IsWandField_14650_3005 f_4@@14))) (<= (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_28739) (o_2@@15 T@Ref) (f_4@@15 T@Field_34797_34799) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@@18) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_14647_34818 f_4@@15))) (not (IsWandField_14647_34841 f_4@@15))) (<= (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@@18) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@@18) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_28739) (o_2@@16 T@Ref) (f_4@@16 T@Field_14647_14751) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@@19) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_14647_98875 f_4@@16))) (not (IsWandField_14647_102596 f_4@@16))) (<= (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@@19) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@@19) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_28739) (o_2@@17 T@Ref) (f_4@@17 T@Field_38829_38834) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@@20) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_14750_110119 f_4@@17))) (not (IsWandField_14750_110135 f_4@@17))) (<= (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@@20) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@@20) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_28739) (o_2@@18 T@Ref) (f_4@@18 T@Field_14750_28792) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@@21) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_14750_28792 f_4@@18))) (not (IsWandField_14750_28792 f_4@@18))) (<= (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@@21) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@@21) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_28739) (o_2@@19 T@Ref) (f_4@@19 T@Field_14750_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@@22) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_14750_53 f_4@@19))) (not (IsWandField_14750_53 f_4@@19))) (<= (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@@22) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@@22) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_28739) (o_2@@20 T@Ref) (f_4@@20 T@Field_14750_3005) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@@23) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_14750_3005 f_4@@20))) (not (IsWandField_14750_3005 f_4@@20))) (<= (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@@23) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@@23) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_28739) (o_2@@21 T@Ref) (f_4@@21 T@Field_14750_37983) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@@24) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_14750_37028 f_4@@21))) (not (IsWandField_14750_37028 f_4@@21))) (<= (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@@24) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@@24) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_28739) (o_2@@22 T@Ref) (f_4@@22 T@Field_35724_35725) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@@25) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_14750_14751 f_4@@22))) (not (IsWandField_14750_102953 f_4@@22))) (<= (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@@25) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@@25) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_28739) (o_2@@23 T@Ref) (f_4@@23 T@Field_38829_38834) ) (! (= (HasDirectPerm_14750_98630 Mask@@26 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@@26) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14750_98630 Mask@@26 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_28739) (o_2@@24 T@Ref) (f_4@@24 T@Field_14750_28792) ) (! (= (HasDirectPerm_14750_28792 Mask@@27 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@@27) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14750_28792 Mask@@27 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_28739) (o_2@@25 T@Ref) (f_4@@25 T@Field_14750_53) ) (! (= (HasDirectPerm_14750_53 Mask@@28 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@@28) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14750_53 Mask@@28 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_28739) (o_2@@26 T@Ref) (f_4@@26 T@Field_35724_35725) ) (! (= (HasDirectPerm_14750_14751 Mask@@29 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@@29) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14750_14751 Mask@@29 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_28739) (o_2@@27 T@Ref) (f_4@@27 T@Field_14750_3005) ) (! (= (HasDirectPerm_14750_3005 Mask@@30 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@@30) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14750_3005 Mask@@30 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_28739) (o_2@@28 T@Ref) (f_4@@28 T@Field_14750_37983) ) (! (= (HasDirectPerm_14750_37983 Mask@@31 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@@31) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14750_37983 Mask@@31 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_28739) (o_2@@29 T@Ref) (f_4@@29 T@Field_14647_38834) ) (! (= (HasDirectPerm_14647_97260 Mask@@32 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@@32) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14647_97260 Mask@@32 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_28739) (o_2@@30 T@Ref) (f_4@@30 T@Field_28791_28792) ) (! (= (HasDirectPerm_14647_28792 Mask@@33 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@@33) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14647_28792 Mask@@33 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_28739) (o_2@@31 T@Ref) (f_4@@31 T@Field_28778_53) ) (! (= (HasDirectPerm_14647_53 Mask@@34 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@@34) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14647_53 Mask@@34 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_28739) (o_2@@32 T@Ref) (f_4@@32 T@Field_14647_14751) ) (! (= (HasDirectPerm_14647_14751 Mask@@35 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@@35) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14647_14751 Mask@@35 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_28739) (o_2@@33 T@Ref) (f_4@@33 T@Field_34852_3005) ) (! (= (HasDirectPerm_14650_3005 Mask@@36 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@@36) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14650_3005 Mask@@36 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_28739) (o_2@@34 T@Ref) (f_4@@34 T@Field_34797_34799) ) (! (= (HasDirectPerm_14647_37983 Mask@@37 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@@37) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14647_37983 Mask@@37 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.164:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.537:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_28718) (ExhaleHeap@@9 T@PolymorphicMapType_28718) (Mask@@38 T@PolymorphicMapType_28739) (o_1@@0 T@Ref) (f_2@@47 T@Field_38829_38834) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@38) (=> (HasDirectPerm_14750_98630 Mask@@38 o_1@@0 f_2@@47) (= (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@21) o_1@@0 f_2@@47) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@9) o_1@@0 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@9 Mask@@38) (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@@9) o_1@@0 f_2@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_28718) (ExhaleHeap@@10 T@PolymorphicMapType_28718) (Mask@@39 T@PolymorphicMapType_28739) (o_1@@1 T@Ref) (f_2@@48 T@Field_14750_28792) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@39) (=> (HasDirectPerm_14750_28792 Mask@@39 o_1@@1 f_2@@48) (= (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@22) o_1@@1 f_2@@48) (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@10) o_1@@1 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@10 Mask@@39) (select (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@@10) o_1@@1 f_2@@48))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_28718) (ExhaleHeap@@11 T@PolymorphicMapType_28718) (Mask@@40 T@PolymorphicMapType_28739) (o_1@@2 T@Ref) (f_2@@49 T@Field_14750_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@40) (=> (HasDirectPerm_14750_53 Mask@@40 o_1@@2 f_2@@49) (= (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@23) o_1@@2 f_2@@49) (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@11) o_1@@2 f_2@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@40) (select (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@@11) o_1@@2 f_2@@49))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_28718) (ExhaleHeap@@12 T@PolymorphicMapType_28718) (Mask@@41 T@PolymorphicMapType_28739) (o_1@@3 T@Ref) (f_2@@50 T@Field_35724_35725) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@41) (=> (HasDirectPerm_14750_14751 Mask@@41 o_1@@3 f_2@@50) (= (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@24) o_1@@3 f_2@@50) (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@12) o_1@@3 f_2@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@41) (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@@12) o_1@@3 f_2@@50))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_28718) (ExhaleHeap@@13 T@PolymorphicMapType_28718) (Mask@@42 T@PolymorphicMapType_28739) (o_1@@4 T@Ref) (f_2@@51 T@Field_14750_3005) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@42) (=> (HasDirectPerm_14750_3005 Mask@@42 o_1@@4 f_2@@51) (= (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@25) o_1@@4 f_2@@51) (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@13) o_1@@4 f_2@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@42) (select (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@@13) o_1@@4 f_2@@51))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_28718) (ExhaleHeap@@14 T@PolymorphicMapType_28718) (Mask@@43 T@PolymorphicMapType_28739) (o_1@@5 T@Ref) (f_2@@52 T@Field_14750_37983) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@43) (=> (HasDirectPerm_14750_37983 Mask@@43 o_1@@5 f_2@@52) (= (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@26) o_1@@5 f_2@@52) (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@14) o_1@@5 f_2@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@43) (select (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@@14) o_1@@5 f_2@@52))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_28718) (ExhaleHeap@@15 T@PolymorphicMapType_28718) (Mask@@44 T@PolymorphicMapType_28739) (o_1@@6 T@Ref) (f_2@@53 T@Field_14647_38834) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@44) (=> (HasDirectPerm_14647_97260 Mask@@44 o_1@@6 f_2@@53) (= (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@27) o_1@@6 f_2@@53) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@15) o_1@@6 f_2@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@44) (select (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@@15) o_1@@6 f_2@@53))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_28718) (ExhaleHeap@@16 T@PolymorphicMapType_28718) (Mask@@45 T@PolymorphicMapType_28739) (o_1@@7 T@Ref) (f_2@@54 T@Field_28791_28792) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@45) (=> (HasDirectPerm_14647_28792 Mask@@45 o_1@@7 f_2@@54) (= (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@28) o_1@@7 f_2@@54) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@16) o_1@@7 f_2@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@45) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@@16) o_1@@7 f_2@@54))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_28718) (ExhaleHeap@@17 T@PolymorphicMapType_28718) (Mask@@46 T@PolymorphicMapType_28739) (o_1@@8 T@Ref) (f_2@@55 T@Field_28778_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@46) (=> (HasDirectPerm_14647_53 Mask@@46 o_1@@8 f_2@@55) (= (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@29) o_1@@8 f_2@@55) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@17) o_1@@8 f_2@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@46) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@@17) o_1@@8 f_2@@55))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_28718) (ExhaleHeap@@18 T@PolymorphicMapType_28718) (Mask@@47 T@PolymorphicMapType_28739) (o_1@@9 T@Ref) (f_2@@56 T@Field_14647_14751) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@47) (=> (HasDirectPerm_14647_14751 Mask@@47 o_1@@9 f_2@@56) (= (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@30) o_1@@9 f_2@@56) (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@18) o_1@@9 f_2@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@47) (select (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@@18) o_1@@9 f_2@@56))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_28718) (ExhaleHeap@@19 T@PolymorphicMapType_28718) (Mask@@48 T@PolymorphicMapType_28739) (o_1@@10 T@Ref) (f_2@@57 T@Field_34852_3005) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@48) (=> (HasDirectPerm_14650_3005 Mask@@48 o_1@@10 f_2@@57) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@31) o_1@@10 f_2@@57) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@19) o_1@@10 f_2@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@48) (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@@19) o_1@@10 f_2@@57))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_28718) (ExhaleHeap@@20 T@PolymorphicMapType_28718) (Mask@@49 T@PolymorphicMapType_28739) (o_1@@11 T@Ref) (f_2@@58 T@Field_34797_34799) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@49) (=> (HasDirectPerm_14647_37983 Mask@@49 o_1@@11 f_2@@58) (= (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@32) o_1@@11 f_2@@58) (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@20) o_1@@11 f_2@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@49) (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@@20) o_1@@11 f_2@@58))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3160|)) (not (= s1@@0 |Seq#Empty_3160|))) (= (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.214:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_14647_38834) ) (! (= (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_28791_28792) ) (! (= (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_28778_53) ) (! (= (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_34852_3005) ) (! (= (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_34797_34799) ) (! (= (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_14647_14751) ) (! (= (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_38829_38834) ) (! (= (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_14750_28792) ) (! (= (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_14750_53) ) (! (= (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_14750_3005) ) (! (= (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_14750_37983) ) (! (= (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_35724_35725) ) (! (= (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2989| (|Seq#Append_2989| s@@7 t@@0) n@@7) (|Seq#Drop_2989| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.371:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2989| (|Seq#Append_2989| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_28739) (SummandMask1 T@PolymorphicMapType_28739) (SummandMask2 T@PolymorphicMapType_28739) (o_2@@47 T@Ref) (f_4@@47 T@Field_14647_38834) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_28739) (SummandMask1@@0 T@PolymorphicMapType_28739) (SummandMask2@@0 T@PolymorphicMapType_28739) (o_2@@48 T@Ref) (f_4@@48 T@Field_28791_28792) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_28739) (SummandMask1@@1 T@PolymorphicMapType_28739) (SummandMask2@@1 T@PolymorphicMapType_28739) (o_2@@49 T@Ref) (f_4@@49 T@Field_28778_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_28739) (SummandMask1@@2 T@PolymorphicMapType_28739) (SummandMask2@@2 T@PolymorphicMapType_28739) (o_2@@50 T@Ref) (f_4@@50 T@Field_34852_3005) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_28739) (SummandMask1@@3 T@PolymorphicMapType_28739) (SummandMask2@@3 T@PolymorphicMapType_28739) (o_2@@51 T@Ref) (f_4@@51 T@Field_34797_34799) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_28739) (SummandMask1@@4 T@PolymorphicMapType_28739) (SummandMask2@@4 T@PolymorphicMapType_28739) (o_2@@52 T@Ref) (f_4@@52 T@Field_14647_14751) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_28739) (SummandMask1@@5 T@PolymorphicMapType_28739) (SummandMask2@@5 T@PolymorphicMapType_28739) (o_2@@53 T@Ref) (f_4@@53 T@Field_38829_38834) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_28739) (SummandMask1@@6 T@PolymorphicMapType_28739) (SummandMask2@@6 T@PolymorphicMapType_28739) (o_2@@54 T@Ref) (f_4@@54 T@Field_14750_28792) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_28739) (SummandMask1@@7 T@PolymorphicMapType_28739) (SummandMask2@@7 T@PolymorphicMapType_28739) (o_2@@55 T@Ref) (f_4@@55 T@Field_14750_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_28739) (SummandMask1@@8 T@PolymorphicMapType_28739) (SummandMask2@@8 T@PolymorphicMapType_28739) (o_2@@56 T@Ref) (f_4@@56 T@Field_14750_3005) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_28739) (SummandMask1@@9 T@PolymorphicMapType_28739) (SummandMask2@@9 T@PolymorphicMapType_28739) (o_2@@57 T@Ref) (f_4@@57 T@Field_14750_37983) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_28739) (SummandMask1@@10 T@PolymorphicMapType_28739) (SummandMask2@@10 T@PolymorphicMapType_28739) (o_2@@58 T@Ref) (f_4@@58 T@Field_35724_35725) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.536:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3042| a b) (= a b))
 :qid |stdinbpl.509:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3042| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.402:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_3160|) (= (|Seq#Append_2989| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3160|) (= (|Seq#Append_2989| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.220:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2989| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.224:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.203:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3042| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.499:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.496:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3042| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_28718) (Mask@@50 T@PolymorphicMapType_28739) (this@@13 T@Ref) ) (!  (=> (state Heap@@33 Mask@@50) (= (|Contents'| Heap@@33 this@@13) (|Contents#frame| (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@33) null (Valid this@@13)) this@@13)))
 :qid |stdinbpl.583:15|
 :skolemid |61|
 :pattern ( (state Heap@@33 Mask@@50) (|Contents'| Heap@@33 this@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_28718) (Mask@@51 T@PolymorphicMapType_28739) (this@@14 T@Ref) ) (!  (=> (state Heap@@34 Mask@@51) (= (|Capacity'| Heap@@34 this@@14) (|Capacity#frame| (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@34) null (Valid this@@14)) this@@14)))
 :qid |stdinbpl.726:15|
 :skolemid |65|
 :pattern ( (state Heap@@34 Mask@@51) (|Capacity'| Heap@@34 this@@14))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_28718) (Mask@@52 T@PolymorphicMapType_28739) (this@@15 T@Ref) ) (!  (=> (state Heap@@35 Mask@@52) (= (|HeadF'| Heap@@35 this@@15) (|HeadF#frame| (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@35) null (Valid this@@15)) this@@15)))
 :qid |stdinbpl.837:15|
 :skolemid |69|
 :pattern ( (state Heap@@35 Mask@@52) (|HeadF'| Heap@@35 this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_14750_14751 (Valid this@@16)) 0)
 :qid |stdinbpl.997:15|
 :skolemid |73|
 :pattern ( (Valid this@@16))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.211:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2989| (|Seq#Append_2989| s@@10 t@@3) n@@8) (|Seq#Take_2989| s@@10 n@@8)))
 :qid |stdinbpl.353:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2989| (|Seq#Append_2989| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.252:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_28718) (o T@Ref) (f_3 T@Field_38829_38834) (v@@2 T@PolymorphicMapType_29267) ) (! (succHeap Heap@@36 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@36) (store (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@36) o f_3 v@@2) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@36) (store (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@36) o f_3 v@@2) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@36) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_28718) (o@@0 T@Ref) (f_3@@0 T@Field_35724_35725) (v@@3 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@37) (store (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@37) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@37) (store (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@37) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@37) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_28718) (o@@1 T@Ref) (f_3@@1 T@Field_14750_3005) (v@@4 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@38) (store (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@38) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@38) (store (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@38) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@38) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_28718) (o@@2 T@Ref) (f_3@@2 T@Field_14750_37983) (v@@5 T@Seq_2867) ) (! (succHeap Heap@@39 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@39) (store (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@39) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@39) (store (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@39) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@39) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_28718) (o@@3 T@Ref) (f_3@@3 T@Field_14750_28792) (v@@6 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@40) (store (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@40) o@@3 f_3@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@40) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@40) (store (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@40) o@@3 f_3@@3 v@@6)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_28718) (o@@4 T@Ref) (f_3@@4 T@Field_14750_53) (v@@7 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@41) (store (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@41) o@@4 f_3@@4 v@@7) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@41) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@41) (store (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@41) o@@4 f_3@@4 v@@7) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_28718) (o@@5 T@Ref) (f_3@@5 T@Field_14647_38834) (v@@8 T@PolymorphicMapType_29267) ) (! (succHeap Heap@@42 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@42) (store (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@42) o@@5 f_3@@5 v@@8) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@42) (store (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@42) o@@5 f_3@@5 v@@8) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@42) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_28718) (o@@6 T@Ref) (f_3@@6 T@Field_14647_14751) (v@@9 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@43) (store (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@43) o@@6 f_3@@6 v@@9) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@43) (store (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@43) o@@6 f_3@@6 v@@9) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@43) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_28718) (o@@7 T@Ref) (f_3@@7 T@Field_34852_3005) (v@@10 Int) ) (! (succHeap Heap@@44 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@44) (store (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@44) o@@7 f_3@@7 v@@10) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@44) (store (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@44) o@@7 f_3@@7 v@@10) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@44) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_28718) (o@@8 T@Ref) (f_3@@8 T@Field_34797_34799) (v@@11 T@Seq_2867) ) (! (succHeap Heap@@45 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@45) (store (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@45) o@@8 f_3@@8 v@@11) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@45) (store (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@45) o@@8 f_3@@8 v@@11) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@45) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_28718) (o@@9 T@Ref) (f_3@@9 T@Field_28791_28792) (v@@12 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@46) (store (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@46) o@@9 f_3@@9 v@@12) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@46) (store (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@46) o@@9 f_3@@9 v@@12) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@46) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_28718) (o@@10 T@Ref) (f_3@@10 T@Field_28778_53) (v@@13 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_28718 (store (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@47) o@@10 f_3@@10 v@@13) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28718 (store (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@47) o@@10 f_3@@10 v@@13) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@47) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@47)))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (PredicateMaskField_14750 (Valid this@@17)) (|Valid#sm| this@@17))
 :qid |stdinbpl.989:15|
 :skolemid |71|
 :pattern ( (PredicateMaskField_14750 (Valid this@@17)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2989| (|Seq#Append_2989| s@@12 t@@4) n@@9) (|Seq#Append_2989| (|Seq#Drop_2989| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.367:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2989| (|Seq#Append_2989| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2989| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.303:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2989| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3160|)) (not (= s1@@3 |Seq#Empty_3160|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.243:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2989| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3160|)) (not (= s1@@4 |Seq#Empty_3160|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.248:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2989| s0@@4 s1@@4))
)))
(assert (forall ((o@@11 T@Ref) (f T@Field_28791_28792) (Heap@@48 T@PolymorphicMapType_28718) ) (!  (=> (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@48) o@@11 $allocated) (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@48) (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@48) o@@11 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@48) o@@11 f))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.400:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3042| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3042| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3042| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.504:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3042| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_35724_35725) (v_1@@1 T@FrameType) (q T@Field_35724_35725) (w@@1 T@FrameType) (r T@Field_35724_35725) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35724_35724 p@@2 v_1@@1 q w@@1) (InsidePredicate_35724_35724 q w@@1 r u)) (InsidePredicate_35724_35724 p@@2 v_1@@1 r u))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35724_35724 p@@2 v_1@@1 q w@@1) (InsidePredicate_35724_35724 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_35724_35725) (v_1@@2 T@FrameType) (q@@0 T@Field_35724_35725) (w@@2 T@FrameType) (r@@0 T@Field_14647_14751) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_35724_35724 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_35724_28778 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_35724_28778 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35724_35724 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_35724_28778 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_35724_35725) (v_1@@3 T@FrameType) (q@@1 T@Field_14647_14751) (w@@3 T@FrameType) (r@@1 T@Field_35724_35725) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_35724_28778 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_28778_35724 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_35724_35724 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35724_28778 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_28778_35724 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_35724_35725) (v_1@@4 T@FrameType) (q@@2 T@Field_14647_14751) (w@@4 T@FrameType) (r@@2 T@Field_14647_14751) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_35724_28778 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_28778_28778 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_35724_28778 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35724_28778 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_28778_28778 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_14647_14751) (v_1@@5 T@FrameType) (q@@3 T@Field_35724_35725) (w@@5 T@FrameType) (r@@3 T@Field_35724_35725) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_28778_35724 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_35724_35724 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_28778_35724 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28778_35724 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_35724_35724 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_14647_14751) (v_1@@6 T@FrameType) (q@@4 T@Field_35724_35725) (w@@6 T@FrameType) (r@@4 T@Field_14647_14751) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_28778_35724 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_35724_28778 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_28778_28778 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28778_35724 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_35724_28778 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_14647_14751) (v_1@@7 T@FrameType) (q@@5 T@Field_14647_14751) (w@@7 T@FrameType) (r@@5 T@Field_35724_35725) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_28778_28778 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_28778_35724 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_28778_35724 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28778_28778 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_28778_35724 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_14647_14751) (v_1@@8 T@FrameType) (q@@6 T@Field_14647_14751) (w@@8 T@FrameType) (r@@6 T@Field_14647_14751) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_28778_28778 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_28778_28778 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_28778_28778 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.171:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28778_28778 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_28778_28778 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_3160|))
 :qid |stdinbpl.207:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2989| s@@16 n@@12) |Seq#Empty_3160|))
 :qid |stdinbpl.383:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2989| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_28739)
(declare-fun this@@18 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_28718)
(declare-fun Mask@12 () T@PolymorphicMapType_28739)
(declare-fun Mask@5 () T@PolymorphicMapType_28739)
(declare-fun i@1 () Int)
(declare-fun Heap@1 () T@PolymorphicMapType_28718)
(declare-fun n@@13 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_28718)
(declare-fun i@0 () Int)
(declare-fun Mask@11 () T@PolymorphicMapType_28739)
(declare-fun Mask@10 () T@PolymorphicMapType_28739)
(declare-fun Heap@9 () T@PolymorphicMapType_28718)
(declare-fun Heap@7 () T@PolymorphicMapType_28718)
(declare-fun Heap@6 () T@PolymorphicMapType_28718)
(declare-fun Heap@8 () T@PolymorphicMapType_28718)
(declare-fun Heap@3 () T@PolymorphicMapType_28718)
(declare-fun Heap@4 () T@PolymorphicMapType_28718)
(declare-fun Heap@5 () T@PolymorphicMapType_28718)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@9 () T@PolymorphicMapType_28739)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_36558 (T@Seq_2867) T@FrameType)
(declare-fun FrameFragment_3005 (Int) T@FrameType)
(declare-fun FrameFragment_14558 (T@FrameType) T@FrameType)
(declare-fun Mask@8 () T@PolymorphicMapType_28739)
(declare-fun Mask@7 () T@PolymorphicMapType_28739)
(declare-fun Mask@6 () T@PolymorphicMapType_28739)
(declare-fun Mask@3 () T@PolymorphicMapType_28739)
(declare-fun Heap@2 () T@PolymorphicMapType_28718)
(declare-fun Mask@4 () T@PolymorphicMapType_28739)
(declare-fun Mask@2 () T@PolymorphicMapType_28739)
(declare-fun Heap@0 () T@PolymorphicMapType_28718)
(declare-fun Heap@@49 () T@PolymorphicMapType_28718)
(declare-fun Mask@0 () T@PolymorphicMapType_28739)
(declare-fun Mask@1 () T@PolymorphicMapType_28739)
(set-info :boogie-vc-id Create)
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
 (=> (= (ControlFlow 0 0) 63) (let ((anon31_Else_correct true))
(let ((anon31_Then_correct  (=> (= (ControlFlow 0 58) (- 0 57)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| PostMask@0) null (Valid this@@18)))))))
(let ((anon30_Else_correct  (=> (and (|Seq#Equal_3042| (Contents PostHeap@0 this@@18) |Seq#Empty_3160|) (state PostHeap@0 PostMask@0)) (and (=> (= (ControlFlow 0 60) 58) anon31_Then_correct) (=> (= (ControlFlow 0 60) 59) anon31_Else_correct)))))
(let ((anon30_Then_correct  (=> (= (ControlFlow 0 56) (- 0 55)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| PostMask@0) null (Valid this@@18)))))))
(let ((anon29_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_28739 (store (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ZeroMask) null (Valid this@@18) (+ (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ZeroMask) null (Valid this@@18)) FullPerm)) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 61) 56) anon30_Then_correct) (=> (= (ControlFlow 0 61) 60) anon30_Else_correct))))))
(let ((anon13_correct  (=> (= Mask@12 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@5) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@5) this@@18 data (- (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@5) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@5) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@5))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= 0 i@1)) (=> (<= 0 i@1) (=> (= (ControlFlow 0 39) (- 0 38)) (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@1) this@@18 data)) (- n@@13 i@1))))))))
(let ((anon35_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 43) 39)) anon13_correct)))
(let ((anon35_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@5) this@@18 data))) (=> (<= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@5) this@@18 data)) (=> (= (ControlFlow 0 41) 39) anon13_correct))))))
(let ((anon34_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (and (and (not (= this@@18 null)) (= Mask@5 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ZeroMask) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) this@@18 data (+ (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ZeroMask)))) (and (state ExhaleHeap@0 Mask@5) (<= 0 i@0))) (and (and (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@0) this@@18 data)) (- n@@13 i@0)) (state ExhaleHeap@0 Mask@5)) (and (< 0 i@0) (state ExhaleHeap@0 Mask@5)))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (HasDirectPerm_14647_37983 Mask@5 this@@18 data)) (=> (HasDirectPerm_14647_37983 Mask@5 this@@18 data) (and (=> (= (ControlFlow 0 44) (- 0 45)) (= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@5) this@@18 data))) (=> (= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@5) this@@18 data)) (=> (and (and (= Heap@1 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@0) (store (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@0) this@@18 data (|Seq#Append_2989| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@0) this@@18 data) (|Seq#Singleton_3| 0))) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@0))) (state Heap@1 Mask@5)) (and (= i@1 (- i@0 1)) (state Heap@1 Mask@5))) (and (=> (= (ControlFlow 0 44) 41) anon35_Then_correct) (=> (= (ControlFlow 0 44) 43) anon35_Else_correct)))))))))))
(let ((anon28_correct  (=> (= Mask@11 (PolymorphicMapType_28739 (store (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@10) null (Valid this@@18) (- (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@10) null (Valid this@@18)) FullPerm)) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@10) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@10))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|Seq#Equal_3042| (Contents Heap@9 this@@18) |Seq#Empty_3160|)) (=> (|Seq#Equal_3042| (Contents Heap@9 this@@18) |Seq#Empty_3160|) (=> (= (ControlFlow 0 4) (- 0 3)) (= (Capacity Heap@9 this@@18) n@@13)))))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 4)) anon28_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@10) null (Valid this@@18)))) (=> (<= FullPerm (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@10) null (Valid this@@18))) (=> (= (ControlFlow 0 6) 4) anon28_correct))))))
(let ((anon26_correct  (=> (= Heap@7 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@6) (store (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18) (PolymorphicMapType_29267 (store (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) this@@18 data true) (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@6) null (|Valid#sm| this@@18))))) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@6) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@6))) (=> (and (and (= Heap@8 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@7) (store (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18) (PolymorphicMapType_29267 (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (store (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) this@@18 first_3 true) (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@7) null (|Valid#sm| this@@18))))) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@7) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@7))) (= Heap@9 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@8) (store (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18) (PolymorphicMapType_29267 (|PolymorphicMapType_29267_14647_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (store (|PolymorphicMapType_29267_14650_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) this@@18 len_2 true) (|PolymorphicMapType_29267_14647_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_14647_100536#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_38998#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_3005#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_53#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_28792#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_35725#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))) (|PolymorphicMapType_29267_35724_101788#PolymorphicMapType_29267| (select (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@8) null (|Valid#sm| this@@18))))) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@8) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@8)))) (and (state Heap@9 Mask@10) (state Heap@9 Mask@10))) (and (=> (= (ControlFlow 0 9) 6) anon42_Then_correct) (=> (= (ControlFlow 0 9) 8) anon42_Else_correct))))))
(let ((anon41_Else_correct  (=> (HasDirectPerm_14750_14751 Mask@10 null (Valid this@@18)) (=> (and (= Heap@6 Heap@3) (= (ControlFlow 0 11) 9)) anon26_correct))))
(let ((anon41_Then_correct  (=> (not (HasDirectPerm_14750_14751 Mask@10 null (Valid this@@18))) (=> (and (and (= Heap@4 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@3) (store (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@3) null (|Valid#sm| this@@18) ZeroPMask) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@3) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@3))) (= Heap@5 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@4) (store (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@4) null (Valid this@@18) freshVersion@0) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@4) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 10) 9))) anon26_correct))))
(let ((anon24_correct  (=> (= Mask@10 (PolymorphicMapType_28739 (store (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@9) null (Valid this@@18) (+ (select (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@9) null (Valid this@@18)) FullPerm)) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@9) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@9))) (=> (and (and (state Heap@3 Mask@10) (state Heap@3 Mask@10)) (and (|Valid#trigger_14750| Heap@3 (Valid this@@18)) (= (select (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@3) null (Valid this@@18)) (CombineFrames (FrameFragment_36558 (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)) (CombineFrames (FrameFragment_3005 (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3)) (CombineFrames (FrameFragment_3005 (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2)) (CombineFrames (FrameFragment_14558 (ite (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)) 0) EmptyFrame EmptyFrame)) (FrameFragment_14558 (ite (> (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)) 0) EmptyFrame EmptyFrame))))))))) (and (=> (= (ControlFlow 0 12) 10) anon41_Then_correct) (=> (= (ControlFlow 0 12) 11) anon41_Else_correct))))))
(let ((anon40_Else_correct  (=> (and (>= 0 (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data))) (= (ControlFlow 0 16) 12)) anon24_correct)))
(let ((anon40_Then_correct  (=> (> (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)) 0) (and (=> (= (ControlFlow 0 13) (- 0 15)) (<= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)))) (=> (<= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)))) (=> (< (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3) (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data))) (=> (= (ControlFlow 0 13) 12) anon24_correct))))))))
(let ((anon39_Else_correct  (=> (not (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)) 0)) (and (=> (= (ControlFlow 0 20) 13) anon40_Then_correct) (=> (= (ControlFlow 0 20) 16) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@3) this@@18 data)) 0) (and (=> (= (ControlFlow 0 17) (- 0 19)) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2) 0)) (=> (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2) 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3) 0)) (=> (= (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3) 0) (and (=> (= (ControlFlow 0 17) 13) anon40_Then_correct) (=> (= (ControlFlow 0 17) 16) anon40_Else_correct)))))))))
(let ((anon20_correct  (=> (= Mask@9 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@8) (store (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@8) this@@18 len_2 (- (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@8) this@@18 len_2) FullPerm)) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@8) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@8))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (<= 0 (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3))) (=> (<= 0 (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 first_3)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= 0 (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2))) (=> (<= 0 (select (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@3) this@@18 len_2)) (and (=> (= (ControlFlow 0 21) 17) anon39_Then_correct) (=> (= (ControlFlow 0 21) 20) anon39_Else_correct)))))))))
(let ((anon38_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 26) 21)) anon20_correct)))
(let ((anon38_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@8) this@@18 len_2))) (=> (<= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@8) this@@18 len_2)) (=> (= (ControlFlow 0 24) 21) anon20_correct))))))
(let ((anon18_correct  (=> (= Mask@8 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@7) (store (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@7) this@@18 first_3 (- (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@7) this@@18 first_3) FullPerm)) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@7) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@7))) (and (=> (= (ControlFlow 0 27) 24) anon38_Then_correct) (=> (= (ControlFlow 0 27) 26) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 30) 27)) anon18_correct)))
(let ((anon37_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@7) this@@18 first_3))) (=> (<= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@7) this@@18 first_3)) (=> (= (ControlFlow 0 28) 27) anon18_correct))))))
(let ((anon16_correct  (=> (= Mask@7 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@6) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@6) this@@18 data (- (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@6) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@6) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@6))) (and (=> (= (ControlFlow 0 31) 28) anon37_Then_correct) (=> (= (ControlFlow 0 31) 30) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 31)) anon16_correct)))
(let ((anon36_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@6) this@@18 data))) (=> (<= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@6) this@@18 data)) (=> (= (ControlFlow 0 32) 31) anon16_correct))))))
(let ((anon34_Else_correct  (=> (not (< 0 i@0)) (=> (and (and (and (state ExhaleHeap@0 Mask@3) (not (= this@@18 null))) (and (= Mask@6 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@3) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@3) this@@18 data (+ (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@3) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@3))) (state ExhaleHeap@0 Mask@6))) (and (and (<= 0 i@0) (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@0) this@@18 data)) (- n@@13 i@0))) (and (state ExhaleHeap@0 Mask@6) (state ExhaleHeap@0 Mask@6)))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@6) this@@18 first_3))) (=> (= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@6) this@@18 first_3)) (=> (and (= Heap@2 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| ExhaleHeap@0) (store (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| ExhaleHeap@0) this@@18 first_3 0) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| ExhaleHeap@0) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| ExhaleHeap@0))) (state Heap@2 Mask@6)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@6) this@@18 len_2))) (=> (= FullPerm (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@6) this@@18 len_2)) (=> (and (= Heap@3 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@2) (store (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@2) this@@18 len_2 0) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@2) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@2))) (state Heap@3 Mask@6)) (and (=> (= (ControlFlow 0 35) 32) anon36_Then_correct) (=> (= (ControlFlow 0 35) 34) anon36_Else_correct))))))))))))
(let ((anon33_Then_correct  (=> (not (= this@@18 null)) (=> (and (and (= Mask@4 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@3) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@3) this@@18 data (+ (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@3) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@3) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@3))) (state ExhaleHeap@0 Mask@4)) (and (<= 0 i@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_14647_37983 Mask@4 this@@18 data)))))
(let ((anon8_correct  (=> (= Mask@3 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@2) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@2) this@@18 data (- (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@2) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@2) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@2))) (and (=> (= (ControlFlow 0 47) (- 0 49)) (<= 0 n@@13)) (=> (<= 0 n@@13) (and (=> (= (ControlFlow 0 47) (- 0 48)) (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@0) this@@18 data)) (- n@@13 n@@13))) (=> (= (|Seq#Length_2867| (select (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@0) this@@18 data)) (- n@@13 n@@13)) (=> (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@3) (and (and (=> (= (ControlFlow 0 47) 2) anon33_Then_correct) (=> (= (ControlFlow 0 47) 44) anon34_Then_correct)) (=> (= (ControlFlow 0 47) 35) anon34_Else_correct))))))))))
(let ((anon32_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 52) 47)) anon8_correct)))
(let ((anon32_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@2) this@@18 data))) (=> (<= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@2) this@@18 data)) (=> (= (ControlFlow 0 50) 47) anon8_correct))))))
(let ((anon29_Else_correct  (=> (state Heap@@49 Mask@2) (and (=> (= (ControlFlow 0 53) (- 0 54)) (= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@2) this@@18 data))) (=> (= FullPerm (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@2) this@@18 data)) (=> (and (= Heap@0 (PolymorphicMapType_28718 (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14462_14463#PolymorphicMapType_28718| Heap@@49) (store (|PolymorphicMapType_28718_14647_35196#PolymorphicMapType_28718| Heap@@49) this@@18 data |Seq#Empty_3160|) (|PolymorphicMapType_28718_14650_3005#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14750_14751#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14754_38921#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14647_14751#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14647_97302#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14750_37983#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14750_3005#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14750_53#PolymorphicMapType_28718| Heap@@49) (|PolymorphicMapType_28718_14750_28792#PolymorphicMapType_28718| Heap@@49))) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 53) 50) anon32_Then_correct) (=> (= (ControlFlow 0 53) 52) anon32_Else_correct))))))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@49 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_28718_14459_53#PolymorphicMapType_28718| Heap@@49) this@@18 $allocated))) (and (and (<= 0 n@@13) (state Heap@@49 ZeroMask)) (and (not (= this@@18 null)) (= Mask@0 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| ZeroMask) (store (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) this@@18 data (+ (select (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| ZeroMask) this@@18 data) FullPerm)) (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| ZeroMask) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| ZeroMask)))))) (and (and (and (state Heap@@49 Mask@0) (not (= this@@18 null))) (and (= Mask@1 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@0) (store (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@0) this@@18 first_3 (+ (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@0) this@@18 first_3) FullPerm)) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@0) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@0))) (state Heap@@49 Mask@1))) (and (and (not (= this@@18 null)) (= Mask@2 (PolymorphicMapType_28739 (|PolymorphicMapType_28739_14750_14751#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14647_37028#PolymorphicMapType_28739| Mask@1) (store (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@1) this@@18 len_2 (+ (select (|PolymorphicMapType_28739_14650_3005#PolymorphicMapType_28739| Mask@1) this@@18 len_2) FullPerm)) (|PolymorphicMapType_28739_14750_37028#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14750_3005#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14750_53#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14750_28792#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14750_107862#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14647_14751#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14647_53#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14647_28792#PolymorphicMapType_28739| Mask@1) (|PolymorphicMapType_28739_14647_108344#PolymorphicMapType_28739| Mask@1)))) (and (state Heap@@49 Mask@2) (state Heap@@49 Mask@2))))) (and (=> (= (ControlFlow 0 62) 61) anon29_Then_correct) (=> (= (ControlFlow 0 62) 53) anon29_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 63) 62) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
