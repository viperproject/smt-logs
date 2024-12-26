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
(declare-sort T@Field_17859_53 0)
(declare-sort T@Field_17872_17873 0)
(declare-sort T@Field_24963_24964 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_30847_30852 0)
(declare-sort T@Field_9624_24964 0)
(declare-sort T@Field_9624_30852 0)
(declare-sort T@Field_24963_9625 0)
(declare-sort T@Field_24963_53 0)
(declare-datatypes ((T@PolymorphicMapType_17820 0)) (((PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| (Array T@Ref T@Field_24963_24964 Real)) (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| (Array T@Ref T@Field_17872_17873 Real)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| (Array T@Ref T@Field_24963_9625 Real)) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| (Array T@Ref T@Field_24963_53 Real)) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| (Array T@Ref T@Field_30847_30852 Real)) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| (Array T@Ref T@Field_9624_24964 Real)) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| (Array T@Ref T@Field_17859_53 Real)) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| (Array T@Ref T@Field_9624_30852 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18348 0)) (((PolymorphicMapType_18348 (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (Array T@Ref T@Field_17872_17873 Bool)) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (Array T@Ref T@Field_17859_53 Bool)) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (Array T@Ref T@Field_9624_24964 Bool)) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (Array T@Ref T@Field_9624_30852 Bool)) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (Array T@Ref T@Field_24963_9625 Bool)) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (Array T@Ref T@Field_24963_53 Bool)) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (Array T@Ref T@Field_24963_24964 Bool)) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (Array T@Ref T@Field_30847_30852 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17799 0)) (((PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| (Array T@Ref T@Field_17859_53 Bool)) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| (Array T@Ref T@Field_17872_17873 T@Ref)) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| (Array T@Ref T@Field_24963_24964 T@FrameType)) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| (Array T@Ref T@Field_30847_30852 T@PolymorphicMapType_18348)) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| (Array T@Ref T@Field_9624_24964 T@FrameType)) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| (Array T@Ref T@Field_9624_30852 T@PolymorphicMapType_18348)) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| (Array T@Ref T@Field_24963_9625 T@Ref)) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| (Array T@Ref T@Field_24963_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_17859_53)
(declare-fun data () T@Field_17872_17873)
(declare-fun next () T@Field_17872_17873)
(declare-sort T@Seq_24414 0)
(declare-fun |Seq#Length_9656| (T@Seq_24414) Int)
(declare-fun |Seq#Drop_9656| (T@Seq_24414 Int) T@Seq_24414)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_17799 T@PolymorphicMapType_17799) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_17799 T@PolymorphicMapType_17799) Bool)
(declare-fun state (T@PolymorphicMapType_17799 T@PolymorphicMapType_17820) Bool)
(declare-fun |contentNodes'| (T@PolymorphicMapType_17799 T@Ref T@Ref) T@Seq_24414)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |contentNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun null () T@Ref)
(declare-fun Lseg (T@Ref T@Ref) T@Field_24963_24964)
(declare-fun |Seq#Index_9656| (T@Seq_24414 Int) T@Ref)
(declare-fun |prio#frame| (T@FrameType T@Ref) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun prio (T@PolymorphicMapType_17799 T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_17820) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_17799 T@PolymorphicMapType_17799 T@PolymorphicMapType_17820) Bool)
(declare-fun IsPredicateField_9749_9750 (T@Field_24963_24964) Bool)
(declare-fun HasDirectPerm_24963_24964 (T@PolymorphicMapType_17820 T@Ref T@Field_24963_24964) Bool)
(declare-fun PredicateMaskField_9749 (T@Field_24963_24964) T@Field_30847_30852)
(declare-fun IsPredicateField_9624_66568 (T@Field_9624_24964) Bool)
(declare-fun HasDirectPerm_9624_24964 (T@PolymorphicMapType_17820 T@Ref T@Field_9624_24964) Bool)
(declare-fun PredicateMaskField_9624 (T@Field_9624_24964) T@Field_9624_30852)
(declare-fun IsWandField_24963_69854 (T@Field_24963_24964) Bool)
(declare-fun WandMaskField_24963 (T@Field_24963_24964) T@Field_30847_30852)
(declare-fun IsWandField_9624_69497 (T@Field_9624_24964) Bool)
(declare-fun WandMaskField_9624 (T@Field_9624_24964) T@Field_9624_30852)
(declare-fun ZeroPMask () T@PolymorphicMapType_18348)
(declare-fun |contentNodes#triggerStateless| (T@Ref T@Ref) T@Seq_24414)
(declare-fun |Lseg#trigger_9749| (T@PolymorphicMapType_17799 T@Field_24963_24964) Bool)
(declare-fun |contentNodes#frame| (T@FrameType T@Ref T@Ref) T@Seq_24414)
(declare-fun dummyFunction_24518 (T@Seq_24414) Bool)
(declare-fun |Lseg#everUsed_9749| (T@Field_24963_24964) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_9668| () T@Seq_24414)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun |prio'| (T@PolymorphicMapType_17799 T@Ref) Int)
(declare-fun dummyFunction_3150 (Int) Bool)
(declare-fun |prio#triggerStateless| (T@Ref) Int)
(declare-fun |Seq#Update_9656| (T@Seq_24414 Int T@Ref) T@Seq_24414)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_9656| (T@Seq_24414 Int) T@Seq_24414)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_24414| (T@Seq_24414 T@Ref) Bool)
(declare-fun |Seq#Skolem_24414| (T@Seq_24414 T@Ref) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Singleton_9625| (T@Ref) T@Seq_24414)
(declare-fun |Seq#Singleton_2867| (Int) T@Seq_2867)
(declare-fun |Lseg#sm| (T@Ref T@Ref) T@Field_30847_30852)
(declare-fun |Seq#Append_9625| (T@Seq_24414 T@Seq_24414) T@Seq_24414)
(declare-fun |Seq#Append_2867| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_17799)
(declare-fun ZeroMask () T@PolymorphicMapType_17820)
(declare-fun InsidePredicate_17859_17859 (T@Field_9624_24964 T@FrameType T@Field_9624_24964 T@FrameType) Bool)
(declare-fun InsidePredicate_9749_9749 (T@Field_24963_24964 T@FrameType T@Field_24963_24964 T@FrameType) Bool)
(declare-fun IsPredicateField_9624_9625 (T@Field_17872_17873) Bool)
(declare-fun IsWandField_9624_9625 (T@Field_17872_17873) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9624_75565 (T@Field_9624_30852) Bool)
(declare-fun IsWandField_9624_75581 (T@Field_9624_30852) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9624_53 (T@Field_17859_53) Bool)
(declare-fun IsWandField_9624_53 (T@Field_17859_53) Bool)
(declare-fun IsPredicateField_9749_74916 (T@Field_30847_30852) Bool)
(declare-fun IsWandField_9749_74932 (T@Field_30847_30852) Bool)
(declare-fun IsPredicateField_9749_53 (T@Field_24963_53) Bool)
(declare-fun IsWandField_9749_53 (T@Field_24963_53) Bool)
(declare-fun IsPredicateField_9749_9625 (T@Field_24963_9625) Bool)
(declare-fun IsWandField_9749_9625 (T@Field_24963_9625) Bool)
(declare-fun HasDirectPerm_24963_66323 (T@PolymorphicMapType_17820 T@Ref T@Field_30847_30852) Bool)
(declare-fun HasDirectPerm_24963_53 (T@PolymorphicMapType_17820 T@Ref T@Field_24963_53) Bool)
(declare-fun HasDirectPerm_24963_9625 (T@PolymorphicMapType_17820 T@Ref T@Field_24963_9625) Bool)
(declare-fun HasDirectPerm_9624_65383 (T@PolymorphicMapType_17820 T@Ref T@Field_9624_30852) Bool)
(declare-fun HasDirectPerm_9624_53 (T@PolymorphicMapType_17820 T@Ref T@Field_17859_53) Bool)
(declare-fun HasDirectPerm_9624_9625 (T@PolymorphicMapType_17820 T@Ref T@Field_17872_17873) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |Seq#Equal_9656| (T@Seq_24414 T@Seq_24414) Bool)
(declare-fun contentNodes (T@PolymorphicMapType_17799 T@Ref T@Ref) T@Seq_24414)
(declare-fun sumMask (T@PolymorphicMapType_17820 T@PolymorphicMapType_17820 T@PolymorphicMapType_17820) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_9656| (T@Seq_24414 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_9749_9750 (T@Field_24963_24964) Int)
(declare-fun |Seq#SkolemDiff_24414| (T@Seq_24414 T@Seq_24414) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_17859_9749 (T@Field_9624_24964 T@FrameType T@Field_24963_24964 T@FrameType) Bool)
(declare-fun InsidePredicate_9749_17859 (T@Field_24963_24964 T@FrameType T@Field_9624_24964 T@FrameType) Bool)
(assert (distinct data next)
)
(assert (forall ((s T@Seq_24414) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9656| s)) (= (|Seq#Length_9656| (|Seq#Drop_9656| s n)) (- (|Seq#Length_9656| s) n))) (=> (< (|Seq#Length_9656| s) n) (= (|Seq#Length_9656| (|Seq#Drop_9656| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9656| (|Seq#Drop_9656| s n)) (|Seq#Length_9656| s))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9656| (|Seq#Drop_9656| s n)))
 :pattern ( (|Seq#Length_9656| s) (|Seq#Drop_9656| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_17799) (Heap1 T@PolymorphicMapType_17799) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_17799) (Mask T@PolymorphicMapType_17820) (this T@Ref) (end T@Ref) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 0) (|contentNodes#trigger| (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap) null (Lseg this end)) this end))) (=> (not (= this end)) (forall ((i Int) (j_9 Int) ) (!  (=> (and (<= 0 i) (and (< i j_9) (< j_9 (|Seq#Length_9656| (|contentNodes'| Heap this end))))) (<= (prio Heap (|Seq#Index_9656| (|contentNodes'| Heap this end) i)) (prio Heap (|Seq#Index_9656| (|contentNodes'| Heap this end) j_9))))
 :qid |stdinbpl.641:143|
 :skolemid |68|
 :pattern ( (|Seq#Index_9656| (|contentNodes'| Heap this end) i) (|prio#frame| EmptyFrame (|Seq#Index_9656| (|contentNodes'| Heap this end) j_9)))
 :pattern ( (|prio#frame| EmptyFrame (|Seq#Index_9656| (|contentNodes'| Heap this end) i)) (|Seq#Index_9656| (|contentNodes'| Heap this end) j_9))
 :pattern ( (|prio#frame| EmptyFrame (|Seq#Index_9656| (|contentNodes'| Heap this end) i)) (|prio#frame| EmptyFrame (|Seq#Index_9656| (|contentNodes'| Heap this end) j_9)))
))))
 :qid |stdinbpl.639:15|
 :skolemid |69|
 :pattern ( (state Heap Mask) (|contentNodes'| Heap this end))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_17799) (Mask@@0 T@PolymorphicMapType_17820) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_17799) (ExhaleHeap T@PolymorphicMapType_17799) (Mask@@1 T@PolymorphicMapType_17820) (pm_f_4 T@Field_24963_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_24963_24964 Mask@@1 null pm_f_4) (IsPredicateField_9749_9750 pm_f_4)) (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_14 T@Field_17872_17873) ) (!  (=> (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4 f_14) (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@1) o2_4 f_14) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap) o2_4 f_14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap) o2_4 f_14))
)) (forall ((o2_4@@0 T@Ref) (f_14@@0 T@Field_17859_53) ) (!  (=> (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@0 f_14@@0) (= (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@1) o2_4@@0 f_14@@0) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap) o2_4@@0 f_14@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap) o2_4@@0 f_14@@0))
))) (forall ((o2_4@@1 T@Ref) (f_14@@1 T@Field_9624_24964) ) (!  (=> (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@1 f_14@@1) (= (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@1) o2_4@@1 f_14@@1) (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap) o2_4@@1 f_14@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap) o2_4@@1 f_14@@1))
))) (forall ((o2_4@@2 T@Ref) (f_14@@2 T@Field_9624_30852) ) (!  (=> (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@2 f_14@@2) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@1) o2_4@@2 f_14@@2) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap) o2_4@@2 f_14@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap) o2_4@@2 f_14@@2))
))) (forall ((o2_4@@3 T@Ref) (f_14@@3 T@Field_24963_9625) ) (!  (=> (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@3 f_14@@3) (= (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@1) o2_4@@3 f_14@@3) (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap) o2_4@@3 f_14@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap) o2_4@@3 f_14@@3))
))) (forall ((o2_4@@4 T@Ref) (f_14@@4 T@Field_24963_53) ) (!  (=> (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@4 f_14@@4) (= (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@1) o2_4@@4 f_14@@4) (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap) o2_4@@4 f_14@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap) o2_4@@4 f_14@@4))
))) (forall ((o2_4@@5 T@Ref) (f_14@@5 T@Field_24963_24964) ) (!  (=> (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@5 f_14@@5) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@1) o2_4@@5 f_14@@5) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap) o2_4@@5 f_14@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap) o2_4@@5 f_14@@5))
))) (forall ((o2_4@@6 T@Ref) (f_14@@6 T@Field_30847_30852) ) (!  (=> (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) null (PredicateMaskField_9749 pm_f_4))) o2_4@@6 f_14@@6) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@1) o2_4@@6 f_14@@6) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap) o2_4@@6 f_14@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap) o2_4@@6 f_14@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (IsPredicateField_9749_9750 pm_f_4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_17799) (ExhaleHeap@@0 T@PolymorphicMapType_17799) (Mask@@2 T@PolymorphicMapType_17820) (pm_f_4@@0 T@Field_9624_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_9624_24964 Mask@@2 null pm_f_4@@0) (IsPredicateField_9624_66568 pm_f_4@@0)) (and (and (and (and (and (and (and (forall ((o2_4@@7 T@Ref) (f_14@@7 T@Field_17872_17873) ) (!  (=> (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@7 f_14@@7) (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@2) o2_4@@7 f_14@@7) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@7 f_14@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@7 f_14@@7))
)) (forall ((o2_4@@8 T@Ref) (f_14@@8 T@Field_17859_53) ) (!  (=> (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@8 f_14@@8) (= (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@2) o2_4@@8 f_14@@8) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@8 f_14@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@8 f_14@@8))
))) (forall ((o2_4@@9 T@Ref) (f_14@@9 T@Field_9624_24964) ) (!  (=> (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@9 f_14@@9) (= (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@2) o2_4@@9 f_14@@9) (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@9 f_14@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@9 f_14@@9))
))) (forall ((o2_4@@10 T@Ref) (f_14@@10 T@Field_9624_30852) ) (!  (=> (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@10 f_14@@10) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) o2_4@@10 f_14@@10) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@10 f_14@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@10 f_14@@10))
))) (forall ((o2_4@@11 T@Ref) (f_14@@11 T@Field_24963_9625) ) (!  (=> (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@11 f_14@@11) (= (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@2) o2_4@@11 f_14@@11) (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@11 f_14@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@11 f_14@@11))
))) (forall ((o2_4@@12 T@Ref) (f_14@@12 T@Field_24963_53) ) (!  (=> (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@12 f_14@@12) (= (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@2) o2_4@@12 f_14@@12) (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@12 f_14@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@12 f_14@@12))
))) (forall ((o2_4@@13 T@Ref) (f_14@@13 T@Field_24963_24964) ) (!  (=> (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@13 f_14@@13) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@2) o2_4@@13 f_14@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@13 f_14@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@13 f_14@@13))
))) (forall ((o2_4@@14 T@Ref) (f_14@@14 T@Field_30847_30852) ) (!  (=> (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@2) null (PredicateMaskField_9624 pm_f_4@@0))) o2_4@@14 f_14@@14) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@2) o2_4@@14 f_14@@14) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@14 f_14@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@0) o2_4@@14 f_14@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (IsPredicateField_9624_66568 pm_f_4@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_17799) (ExhaleHeap@@1 T@PolymorphicMapType_17799) (Mask@@3 T@PolymorphicMapType_17820) (pm_f_4@@1 T@Field_24963_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_24963_24964 Mask@@3 null pm_f_4@@1) (IsWandField_24963_69854 pm_f_4@@1)) (and (and (and (and (and (and (and (forall ((o2_4@@15 T@Ref) (f_14@@15 T@Field_17872_17873) ) (!  (=> (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@15 f_14@@15) (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@3) o2_4@@15 f_14@@15) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@15 f_14@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@15 f_14@@15))
)) (forall ((o2_4@@16 T@Ref) (f_14@@16 T@Field_17859_53) ) (!  (=> (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@16 f_14@@16) (= (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@3) o2_4@@16 f_14@@16) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@16 f_14@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@16 f_14@@16))
))) (forall ((o2_4@@17 T@Ref) (f_14@@17 T@Field_9624_24964) ) (!  (=> (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@17 f_14@@17) (= (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@3) o2_4@@17 f_14@@17) (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@17 f_14@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@17 f_14@@17))
))) (forall ((o2_4@@18 T@Ref) (f_14@@18 T@Field_9624_30852) ) (!  (=> (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@18 f_14@@18) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@3) o2_4@@18 f_14@@18) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@18 f_14@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@18 f_14@@18))
))) (forall ((o2_4@@19 T@Ref) (f_14@@19 T@Field_24963_9625) ) (!  (=> (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@19 f_14@@19) (= (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@3) o2_4@@19 f_14@@19) (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@19 f_14@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@19 f_14@@19))
))) (forall ((o2_4@@20 T@Ref) (f_14@@20 T@Field_24963_53) ) (!  (=> (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@20 f_14@@20) (= (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@3) o2_4@@20 f_14@@20) (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@20 f_14@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@20 f_14@@20))
))) (forall ((o2_4@@21 T@Ref) (f_14@@21 T@Field_24963_24964) ) (!  (=> (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@21 f_14@@21) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@3) o2_4@@21 f_14@@21) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@21 f_14@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@21 f_14@@21))
))) (forall ((o2_4@@22 T@Ref) (f_14@@22 T@Field_30847_30852) ) (!  (=> (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) null (WandMaskField_24963 pm_f_4@@1))) o2_4@@22 f_14@@22) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@3) o2_4@@22 f_14@@22) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@22 f_14@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@1) o2_4@@22 f_14@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@3) (IsWandField_24963_69854 pm_f_4@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_17799) (ExhaleHeap@@2 T@PolymorphicMapType_17799) (Mask@@4 T@PolymorphicMapType_17820) (pm_f_4@@2 T@Field_9624_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_9624_24964 Mask@@4 null pm_f_4@@2) (IsWandField_9624_69497 pm_f_4@@2)) (and (and (and (and (and (and (and (forall ((o2_4@@23 T@Ref) (f_14@@23 T@Field_17872_17873) ) (!  (=> (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@23 f_14@@23) (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@4) o2_4@@23 f_14@@23) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@23 f_14@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@23 f_14@@23))
)) (forall ((o2_4@@24 T@Ref) (f_14@@24 T@Field_17859_53) ) (!  (=> (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@24 f_14@@24) (= (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@4) o2_4@@24 f_14@@24) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@24 f_14@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@24 f_14@@24))
))) (forall ((o2_4@@25 T@Ref) (f_14@@25 T@Field_9624_24964) ) (!  (=> (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@25 f_14@@25) (= (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@4) o2_4@@25 f_14@@25) (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@25 f_14@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@25 f_14@@25))
))) (forall ((o2_4@@26 T@Ref) (f_14@@26 T@Field_9624_30852) ) (!  (=> (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@26 f_14@@26) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) o2_4@@26 f_14@@26) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@26 f_14@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@26 f_14@@26))
))) (forall ((o2_4@@27 T@Ref) (f_14@@27 T@Field_24963_9625) ) (!  (=> (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@27 f_14@@27) (= (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@4) o2_4@@27 f_14@@27) (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@27 f_14@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@27 f_14@@27))
))) (forall ((o2_4@@28 T@Ref) (f_14@@28 T@Field_24963_53) ) (!  (=> (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@28 f_14@@28) (= (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@4) o2_4@@28 f_14@@28) (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@28 f_14@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@28 f_14@@28))
))) (forall ((o2_4@@29 T@Ref) (f_14@@29 T@Field_24963_24964) ) (!  (=> (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@29 f_14@@29) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@4) o2_4@@29 f_14@@29) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@29 f_14@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@29 f_14@@29))
))) (forall ((o2_4@@30 T@Ref) (f_14@@30 T@Field_30847_30852) ) (!  (=> (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@4) null (WandMaskField_9624 pm_f_4@@2))) o2_4@@30 f_14@@30) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@4) o2_4@@30 f_14@@30) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@30 f_14@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@2) o2_4@@30 f_14@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@4) (IsWandField_9624_69497 pm_f_4@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_17799) (Heap1@@0 T@PolymorphicMapType_17799) (Heap2 T@PolymorphicMapType_17799) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_30847_30852) ) (!  (not (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24963_24964) ) (!  (not (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_24963_53) ) (!  (not (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_24963_9625) ) (!  (not (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9624_30852) ) (!  (not (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9624_24964) ) (!  (not (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_17859_53) ) (!  (not (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_17872_17873) ) (!  (not (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_17799) (Mask@@5 T@PolymorphicMapType_17820) (this@@0 T@Ref) (end@@0 T@Ref) ) (!  (=> (state Heap@@5 Mask@@5) (= (|contentNodes'| Heap@@5 this@@0 end@@0) (|contentNodes#frame| (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@5) null (Lseg this@@0 end@@0)) this@@0 end@@0)))
 :qid |stdinbpl.621:15|
 :skolemid |64|
 :pattern ( (state Heap@@5 Mask@@5) (|contentNodes'| Heap@@5 this@@0 end@@0))
 :pattern ( (state Heap@@5 Mask@@5) (|contentNodes#triggerStateless| this@@0 end@@0) (|Lseg#trigger_9749| Heap@@5 (Lseg this@@0 end@@0)))
)))
(assert (forall ((this@@1 T@Ref) (end@@1 T@Ref) ) (! (IsPredicateField_9749_9750 (Lseg this@@1 end@@1))
 :qid |stdinbpl.1031:15|
 :skolemid |80|
 :pattern ( (Lseg this@@1 end@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_17799) (this@@2 T@Ref) (end@@2 T@Ref) ) (! (dummyFunction_24518 (|contentNodes#triggerStateless| this@@2 end@@2))
 :qid |stdinbpl.608:15|
 :skolemid |62|
 :pattern ( (|contentNodes'| Heap@@6 this@@2 end@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_17799) (this@@3 T@Ref) (end@@3 T@Ref) ) (! (|Lseg#everUsed_9749| (Lseg this@@3 end@@3))
 :qid |stdinbpl.1050:15|
 :skolemid |84|
 :pattern ( (|Lseg#trigger_9749| Heap@@7 (Lseg this@@3 end@@3)))
)))
(assert (forall ((s@@1 T@Seq_24414) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9656| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9656| (|Seq#Drop_9656| s@@1 n@@1) j) (|Seq#Index_9656| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9656| (|Seq#Drop_9656| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9656| |Seq#Empty_9668|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((Heap@@8 T@PolymorphicMapType_17799) (this@@4 T@Ref) ) (! (dummyFunction_3150 (|prio#triggerStateless| this@@4))
 :qid |stdinbpl.566:15|
 :skolemid |59|
 :pattern ( (|prio'| Heap@@8 this@@4))
)))
(assert (forall ((s@@3 T@Seq_24414) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9656| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_9656| (|Seq#Update_9656| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_9656| (|Seq#Update_9656| s@@3 i@@0 v) n@@3) (|Seq#Index_9656| s@@3 n@@3)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9656| (|Seq#Update_9656| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_9656| s@@3 n@@3) (|Seq#Update_9656| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_24414) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9656| s@@5)) (= (|Seq#Length_9656| (|Seq#Take_9656| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9656| s@@5) n@@5) (= (|Seq#Length_9656| (|Seq#Take_9656| s@@5 n@@5)) (|Seq#Length_9656| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9656| (|Seq#Take_9656| s@@5 n@@5)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9656| (|Seq#Take_9656| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9656| s@@5 n@@5) (|Seq#Length_9656| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.538:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_24414) (x T@Ref) ) (!  (=> (|Seq#Contains_24414| s@@7 x) (and (and (<= 0 (|Seq#Skolem_24414| s@@7 x)) (< (|Seq#Skolem_24414| s@@7 x) (|Seq#Length_9656| s@@7))) (= (|Seq#Index_9656| s@@7 (|Seq#Skolem_24414| s@@7 x)) x)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_24414| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_17799) (this@@5 T@Ref) ) (!  (and (= (prio Heap@@9 this@@5) (|prio'| Heap@@9 this@@5)) (dummyFunction_3150 (|prio#triggerStateless| this@@5)))
 :qid |stdinbpl.562:15|
 :skolemid |58|
 :pattern ( (prio Heap@@9 this@@5))
)))
(assert (forall ((s@@9 T@Seq_24414) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9656| s@@9 n@@7) s@@9))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9656| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2867| s@@10 n@@8) s@@10))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.233:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_17799) (ExhaleHeap@@3 T@PolymorphicMapType_17799) (Mask@@6 T@PolymorphicMapType_17820) (pm_f_4@@3 T@Field_24963_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_24963_24964 Mask@@6 null pm_f_4@@3) (IsPredicateField_9749_9750 pm_f_4@@3)) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@10) null (PredicateMaskField_9749 pm_f_4@@3)) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@3) null (PredicateMaskField_9749 pm_f_4@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (IsPredicateField_9749_9750 pm_f_4@@3) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@3) null (PredicateMaskField_9749 pm_f_4@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_17799) (ExhaleHeap@@4 T@PolymorphicMapType_17799) (Mask@@7 T@PolymorphicMapType_17820) (pm_f_4@@4 T@Field_9624_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_9624_24964 Mask@@7 null pm_f_4@@4) (IsPredicateField_9624_66568 pm_f_4@@4)) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@11) null (PredicateMaskField_9624 pm_f_4@@4)) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@4) null (PredicateMaskField_9624 pm_f_4@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (IsPredicateField_9624_66568 pm_f_4@@4) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@4) null (PredicateMaskField_9624 pm_f_4@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_17799) (ExhaleHeap@@5 T@PolymorphicMapType_17799) (Mask@@8 T@PolymorphicMapType_17820) (pm_f_4@@5 T@Field_24963_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (=> (and (HasDirectPerm_24963_24964 Mask@@8 null pm_f_4@@5) (IsWandField_24963_69854 pm_f_4@@5)) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@12) null (WandMaskField_24963 pm_f_4@@5)) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@5) null (WandMaskField_24963 pm_f_4@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@8) (IsWandField_24963_69854 pm_f_4@@5) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@5) null (WandMaskField_24963 pm_f_4@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_17799) (ExhaleHeap@@6 T@PolymorphicMapType_17799) (Mask@@9 T@PolymorphicMapType_17820) (pm_f_4@@6 T@Field_9624_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (=> (and (HasDirectPerm_9624_24964 Mask@@9 null pm_f_4@@6) (IsWandField_9624_69497 pm_f_4@@6)) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@13) null (WandMaskField_9624 pm_f_4@@6)) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@6) null (WandMaskField_9624 pm_f_4@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@9) (IsWandField_9624_69497 pm_f_4@@6) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@6) null (WandMaskField_9624 pm_f_4@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_24414| (|Seq#Singleton_9625| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_24414| (|Seq#Singleton_9625| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2867| x@@2) y@@0))
)))
(assert (forall ((this@@6 T@Ref) (end@@4 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (Lseg this@@6 end@@4) (Lseg this2 end2)) (and (= this@@6 this2) (= end@@4 end2)))
 :qid |stdinbpl.1041:15|
 :skolemid |82|
 :pattern ( (Lseg this@@6 end@@4) (Lseg this2 end2))
)))
(assert (forall ((this@@7 T@Ref) (end@@5 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|Lseg#sm| this@@7 end@@5) (|Lseg#sm| this2@@0 end2@@0)) (and (= this@@7 this2@@0) (= end@@5 end2@@0)))
 :qid |stdinbpl.1045:15|
 :skolemid |83|
 :pattern ( (|Lseg#sm| this@@7 end@@5) (|Lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((s@@11 T@Seq_24414) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9656| s@@11))) (= (|Seq#Index_9656| (|Seq#Take_9656| s@@11 n@@9) j@@3) (|Seq#Index_9656| s@@11 j@@3)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9656| (|Seq#Take_9656| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9656| s@@11 j@@3) (|Seq#Take_9656| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_24414) (t T@Seq_24414) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9656| s@@13))) (< n@@11 (|Seq#Length_9656| (|Seq#Append_9625| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9656| s@@13)) (|Seq#Length_9656| s@@13)) n@@11) (= (|Seq#Take_9656| (|Seq#Append_9625| s@@13 t) n@@11) (|Seq#Append_9625| s@@13 (|Seq#Take_9656| t (|Seq#Sub| n@@11 (|Seq#Length_9656| s@@13)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9656| (|Seq#Append_9625| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_2867| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12) (|Seq#Append_2867| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@14 T@PolymorphicMapType_17799) (ExhaleHeap@@7 T@PolymorphicMapType_17799) (Mask@@10 T@PolymorphicMapType_17820) (o_10 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@14) o_10 $allocated) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@7) o_10 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@7) o_10 $allocated))
)))
(assert (forall ((p T@Field_9624_24964) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17859_17859 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17859_17859 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24963_24964) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9749_9749 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9749_9749 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_24414) (s1 T@Seq_24414) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9668|)) (not (= s1 |Seq#Empty_9668|))) (<= (|Seq#Length_9656| s0) n@@13)) (< n@@13 (|Seq#Length_9656| (|Seq#Append_9625| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9656| s0)) (|Seq#Length_9656| s0)) n@@13) (= (|Seq#Index_9656| (|Seq#Append_9625| s0 s1) n@@13) (|Seq#Index_9656| s1 (|Seq#Sub| n@@13 (|Seq#Length_9656| s0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9656| (|Seq#Append_9625| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_2867| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9624_9625 data)))
(assert  (not (IsWandField_9624_9625 data)))
(assert  (not (IsPredicateField_9624_9625 next)))
(assert  (not (IsWandField_9624_9625 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_17799) (ExhaleHeap@@8 T@PolymorphicMapType_17799) (Mask@@11 T@PolymorphicMapType_17820) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_17820) (o_2@@7 T@Ref) (f_4@@7 T@Field_9624_30852) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9624_75565 f_4@@7))) (not (IsWandField_9624_75581 f_4@@7))) (<= (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_17820) (o_2@@8 T@Ref) (f_4@@8 T@Field_17859_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9624_53 f_4@@8))) (not (IsWandField_9624_53 f_4@@8))) (<= (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_17820) (o_2@@9 T@Ref) (f_4@@9 T@Field_17872_17873) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@@14) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9624_9625 f_4@@9))) (not (IsWandField_9624_9625 f_4@@9))) (<= (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@@14) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@@14) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_17820) (o_2@@10 T@Ref) (f_4@@10 T@Field_9624_24964) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Mask@@15) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9624_66568 f_4@@10))) (not (IsWandField_9624_69497 f_4@@10))) (<= (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Mask@@15) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Mask@@15) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_17820) (o_2@@11 T@Ref) (f_4@@11 T@Field_30847_30852) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Mask@@16) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9749_74916 f_4@@11))) (not (IsWandField_9749_74932 f_4@@11))) (<= (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Mask@@16) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Mask@@16) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_17820) (o_2@@12 T@Ref) (f_4@@12 T@Field_24963_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Mask@@17) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9749_53 f_4@@12))) (not (IsWandField_9749_53 f_4@@12))) (<= (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Mask@@17) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Mask@@17) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_17820) (o_2@@13 T@Ref) (f_4@@13 T@Field_24963_9625) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Mask@@18) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9749_9625 f_4@@13))) (not (IsWandField_9749_9625 f_4@@13))) (<= (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Mask@@18) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Mask@@18) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_17820) (o_2@@14 T@Ref) (f_4@@14 T@Field_24963_24964) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@@19) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9749_9750 f_4@@14))) (not (IsWandField_24963_69854 f_4@@14))) (<= (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@@19) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@@19) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_17799) (Mask@@20 T@PolymorphicMapType_17820) (this@@8 T@Ref) (end@@6 T@Ref) ) (!  (=> (and (state Heap@@16 Mask@@20) (or (< AssumeFunctionsAbove 0) (|contentNodes#trigger| (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@16) null (Lseg this@@8 end@@6)) this@@8 end@@6))) (=> (not (= this@@8 end@@6)) (< 0 (|Seq#Length_9656| (|contentNodes'| Heap@@16 this@@8 end@@6)))))
 :qid |stdinbpl.631:15|
 :skolemid |66|
 :pattern ( (state Heap@@16 Mask@@20) (|contentNodes'| Heap@@16 this@@8 end@@6))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_17820) (o_2@@15 T@Ref) (f_4@@15 T@Field_30847_30852) ) (! (= (HasDirectPerm_24963_66323 Mask@@21 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Mask@@21) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24963_66323 Mask@@21 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_17820) (o_2@@16 T@Ref) (f_4@@16 T@Field_24963_24964) ) (! (= (HasDirectPerm_24963_24964 Mask@@22 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@@22) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24963_24964 Mask@@22 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_17820) (o_2@@17 T@Ref) (f_4@@17 T@Field_24963_53) ) (! (= (HasDirectPerm_24963_53 Mask@@23 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Mask@@23) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24963_53 Mask@@23 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_17820) (o_2@@18 T@Ref) (f_4@@18 T@Field_24963_9625) ) (! (= (HasDirectPerm_24963_9625 Mask@@24 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Mask@@24) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24963_9625 Mask@@24 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_17820) (o_2@@19 T@Ref) (f_4@@19 T@Field_9624_30852) ) (! (= (HasDirectPerm_9624_65383 Mask@@25 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Mask@@25) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_65383 Mask@@25 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_17820) (o_2@@20 T@Ref) (f_4@@20 T@Field_9624_24964) ) (! (= (HasDirectPerm_9624_24964 Mask@@26 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Mask@@26) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_24964 Mask@@26 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_17820) (o_2@@21 T@Ref) (f_4@@21 T@Field_17859_53) ) (! (= (HasDirectPerm_9624_53 Mask@@27 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Mask@@27) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_53 Mask@@27 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_17820) (o_2@@22 T@Ref) (f_4@@22 T@Field_17872_17873) ) (! (= (HasDirectPerm_9624_9625 Mask@@28 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@@28) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9624_9625 Mask@@28 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.536:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_17799) (ExhaleHeap@@9 T@PolymorphicMapType_17799) (Mask@@29 T@PolymorphicMapType_17820) (o_10@@0 T@Ref) (f_14@@31 T@Field_30847_30852) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@29) (=> (HasDirectPerm_24963_66323 Mask@@29 o_10@@0 f_14@@31) (= (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@17) o_10@@0 f_14@@31) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@9) o_10@@0 f_14@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@9 Mask@@29) (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| ExhaleHeap@@9) o_10@@0 f_14@@31))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_17799) (ExhaleHeap@@10 T@PolymorphicMapType_17799) (Mask@@30 T@PolymorphicMapType_17820) (o_10@@1 T@Ref) (f_14@@32 T@Field_24963_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@30) (=> (HasDirectPerm_24963_24964 Mask@@30 o_10@@1 f_14@@32) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@18) o_10@@1 f_14@@32) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@10) o_10@@1 f_14@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@10 Mask@@30) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| ExhaleHeap@@10) o_10@@1 f_14@@32))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_17799) (ExhaleHeap@@11 T@PolymorphicMapType_17799) (Mask@@31 T@PolymorphicMapType_17820) (o_10@@2 T@Ref) (f_14@@33 T@Field_24963_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@31) (=> (HasDirectPerm_24963_53 Mask@@31 o_10@@2 f_14@@33) (= (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@19) o_10@@2 f_14@@33) (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@11) o_10@@2 f_14@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@11 Mask@@31) (select (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| ExhaleHeap@@11) o_10@@2 f_14@@33))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_17799) (ExhaleHeap@@12 T@PolymorphicMapType_17799) (Mask@@32 T@PolymorphicMapType_17820) (o_10@@3 T@Ref) (f_14@@34 T@Field_24963_9625) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@32) (=> (HasDirectPerm_24963_9625 Mask@@32 o_10@@3 f_14@@34) (= (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@20) o_10@@3 f_14@@34) (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@12) o_10@@3 f_14@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@12 Mask@@32) (select (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| ExhaleHeap@@12) o_10@@3 f_14@@34))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_17799) (ExhaleHeap@@13 T@PolymorphicMapType_17799) (Mask@@33 T@PolymorphicMapType_17820) (o_10@@4 T@Ref) (f_14@@35 T@Field_9624_30852) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@33) (=> (HasDirectPerm_9624_65383 Mask@@33 o_10@@4 f_14@@35) (= (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@21) o_10@@4 f_14@@35) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@13) o_10@@4 f_14@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@13 Mask@@33) (select (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| ExhaleHeap@@13) o_10@@4 f_14@@35))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_17799) (ExhaleHeap@@14 T@PolymorphicMapType_17799) (Mask@@34 T@PolymorphicMapType_17820) (o_10@@5 T@Ref) (f_14@@36 T@Field_9624_24964) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@34) (=> (HasDirectPerm_9624_24964 Mask@@34 o_10@@5 f_14@@36) (= (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@22) o_10@@5 f_14@@36) (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@14) o_10@@5 f_14@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@14 Mask@@34) (select (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| ExhaleHeap@@14) o_10@@5 f_14@@36))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_17799) (ExhaleHeap@@15 T@PolymorphicMapType_17799) (Mask@@35 T@PolymorphicMapType_17820) (o_10@@6 T@Ref) (f_14@@37 T@Field_17859_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@35) (=> (HasDirectPerm_9624_53 Mask@@35 o_10@@6 f_14@@37) (= (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@23) o_10@@6 f_14@@37) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@15) o_10@@6 f_14@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@15 Mask@@35) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| ExhaleHeap@@15) o_10@@6 f_14@@37))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_17799) (ExhaleHeap@@16 T@PolymorphicMapType_17799) (Mask@@36 T@PolymorphicMapType_17820) (o_10@@7 T@Ref) (f_14@@38 T@Field_17872_17873) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@36) (=> (HasDirectPerm_9624_9625 Mask@@36 o_10@@7 f_14@@38) (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@24) o_10@@7 f_14@@38) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@16) o_10@@7 f_14@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@16 Mask@@36) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| ExhaleHeap@@16) o_10@@7 f_14@@38))
)))
(assert (forall ((s0@@1 T@Seq_24414) (s1@@1 T@Seq_24414) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9668|)) (not (= s1@@1 |Seq#Empty_9668|))) (= (|Seq#Length_9656| (|Seq#Append_9625| s0@@1 s1@@1)) (+ (|Seq#Length_9656| s0@@1) (|Seq#Length_9656| s1@@1))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9656| (|Seq#Append_9625| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2867| s0@@2 s1@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_17799) (Mask@@37 T@PolymorphicMapType_17820) (this@@9 T@Ref) (end@@7 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@37) (or (< AssumeFunctionsAbove 0) (|contentNodes#trigger| (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@25) null (Lseg this@@9 end@@7)) this@@9 end@@7))) (= (= this@@9 end@@7) (|Seq#Equal_9656| (|contentNodes'| Heap@@25 this@@9 end@@7) |Seq#Empty_9668|)))
 :qid |stdinbpl.627:15|
 :skolemid |65|
 :pattern ( (state Heap@@25 Mask@@37) (|contentNodes'| Heap@@25 this@@9 end@@7))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_9624_30852) ) (! (= (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_17859_53) ) (! (= (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_17872_17873) ) (! (= (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_9624_24964) ) (! (= (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_30847_30852) ) (! (= (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_24963_53) ) (! (= (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_24963_9625) ) (! (= (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_24963_24964) ) (! (= (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((s@@15 T@Seq_24414) (t@@1 T@Seq_24414) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9656| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9656| s@@15)) (|Seq#Length_9656| s@@15)) n@@15) (= (|Seq#Drop_9656| (|Seq#Append_9625| s@@15 t@@1) n@@15) (|Seq#Drop_9656| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9656| s@@15))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9656| (|Seq#Append_9625| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_17799) (this@@10 T@Ref) (end@@8 T@Ref) ) (!  (and (= (contentNodes Heap@@26 this@@10 end@@8) (|contentNodes'| Heap@@26 this@@10 end@@8)) (dummyFunction_24518 (|contentNodes#triggerStateless| this@@10 end@@8)))
 :qid |stdinbpl.604:15|
 :skolemid |61|
 :pattern ( (contentNodes Heap@@26 this@@10 end@@8))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_17820) (SummandMask1 T@PolymorphicMapType_17820) (SummandMask2 T@PolymorphicMapType_17820) (o_2@@31 T@Ref) (f_4@@31 T@Field_9624_30852) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_17820) (SummandMask1@@0 T@PolymorphicMapType_17820) (SummandMask2@@0 T@PolymorphicMapType_17820) (o_2@@32 T@Ref) (f_4@@32 T@Field_17859_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_17820) (SummandMask1@@1 T@PolymorphicMapType_17820) (SummandMask2@@1 T@PolymorphicMapType_17820) (o_2@@33 T@Ref) (f_4@@33 T@Field_17872_17873) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_17820) (SummandMask1@@2 T@PolymorphicMapType_17820) (SummandMask2@@2 T@PolymorphicMapType_17820) (o_2@@34 T@Ref) (f_4@@34 T@Field_9624_24964) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_17820) (SummandMask1@@3 T@PolymorphicMapType_17820) (SummandMask2@@3 T@PolymorphicMapType_17820) (o_2@@35 T@Ref) (f_4@@35 T@Field_30847_30852) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_17820) (SummandMask1@@4 T@PolymorphicMapType_17820) (SummandMask2@@4 T@PolymorphicMapType_17820) (o_2@@36 T@Ref) (f_4@@36 T@Field_24963_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_17820) (SummandMask1@@5 T@PolymorphicMapType_17820) (SummandMask2@@5 T@PolymorphicMapType_17820) (o_2@@37 T@Ref) (f_4@@37 T@Field_24963_9625) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_17820) (SummandMask1@@6 T@PolymorphicMapType_17820) (SummandMask2@@6 T@PolymorphicMapType_17820) (o_2@@38 T@Ref) (f_4@@38 T@Field_24963_24964) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.535:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a b) (= a b))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a b))
)))
(assert (forall ((a@@0 T@Seq_24414) (b@@0 T@Seq_24414) ) (!  (=> (|Seq#Equal_9656| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_9656| a@@0 b@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_17799) (Mask@@38 T@PolymorphicMapType_17820) (this@@11 T@Ref) (end@@9 T@Ref) ) (!  (=> (and (state Heap@@27 Mask@@38) (< AssumeFunctionsAbove 0)) (= (contentNodes Heap@@27 this@@11 end@@9) (ite (= this@@11 end@@9) |Seq#Empty_9668| (|Seq#Append_9625| (|Seq#Singleton_9625| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@27) this@@11 data)) (ite (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@27) this@@11 next) null) |Seq#Empty_9668| (|contentNodes'| Heap@@27 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@27) this@@11 next) end@@9))))))
 :qid |stdinbpl.614:15|
 :skolemid |63|
 :pattern ( (state Heap@@27 Mask@@38) (contentNodes Heap@@27 this@@11 end@@9))
 :pattern ( (state Heap@@27 Mask@@38) (|contentNodes#triggerStateless| this@@11 end@@9) (|Lseg#trigger_9749| Heap@@27 (Lseg this@@11 end@@9)))
)))
(assert (forall ((s@@17 T@Seq_24414) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_9656| s@@17))) (|Seq#ContainsTrigger_9656| s@@17 (|Seq#Index_9656| s@@17 i@@4)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9656| s@@17 i@@4))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@5)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@5))
)))
(assert (forall ((s0@@3 T@Seq_24414) (s1@@3 T@Seq_24414) ) (!  (and (=> (= s0@@3 |Seq#Empty_9668|) (= (|Seq#Append_9625| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9668|) (= (|Seq#Append_9625| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_9625| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_2867| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2867| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9656| (|Seq#Singleton_9625| t@@3) 0) t@@3)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9625| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2867| t@@4) 0) t@@4)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2867| t@@4))
)))
(assert (forall ((s@@19 T@Seq_24414) ) (! (<= 0 (|Seq#Length_9656| s@@19))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9656| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((this@@12 T@Ref) (end@@10 T@Ref) ) (! (= (getPredWandId_9749_9750 (Lseg this@@12 end@@10)) 0)
 :qid |stdinbpl.1035:15|
 :skolemid |81|
 :pattern ( (Lseg this@@12 end@@10))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@5 s1@@5) (and (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_2867| s0@@5))) (= (|Seq#Index_2867| s0@@5 j@@6) (|Seq#Index_2867| s1@@5 j@@6)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@5 j@@6))
 :pattern ( (|Seq#Index_2867| s1@@5 j@@6))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_24414) (s1@@6 T@Seq_24414) ) (!  (=> (|Seq#Equal_9656| s0@@6 s1@@6) (and (= (|Seq#Length_9656| s0@@6) (|Seq#Length_9656| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_9656| s0@@6))) (= (|Seq#Index_9656| s0@@6 j@@7) (|Seq#Index_9656| s1@@6 j@@7)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9656| s0@@6 j@@7))
 :pattern ( (|Seq#Index_9656| s1@@6 j@@7))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_9656| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9656| (|Seq#Singleton_9625| t@@5)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9625| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2867| t@@6)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2867| t@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_17799) (Mask@@39 T@PolymorphicMapType_17820) (this@@13 T@Ref) ) (!  (=> (state Heap@@28 Mask@@39) (= (|prio'| Heap@@28 this@@13) (|prio#frame| EmptyFrame this@@13)))
 :qid |stdinbpl.573:15|
 :skolemid |60|
 :pattern ( (state Heap@@28 Mask@@39) (|prio'| Heap@@28 this@@13))
)))
(assert (forall ((this@@14 T@Ref) (end@@11 T@Ref) ) (! (= (PredicateMaskField_9749 (Lseg this@@14 end@@11)) (|Lseg#sm| this@@14 end@@11))
 :qid |stdinbpl.1027:15|
 :skolemid |79|
 :pattern ( (PredicateMaskField_9749 (Lseg this@@14 end@@11)))
)))
(assert (forall ((s@@21 T@Seq_24414) (t@@7 T@Seq_24414) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9656| s@@21))) (= (|Seq#Take_9656| (|Seq#Append_9625| s@@21 t@@7) n@@17) (|Seq#Take_9656| s@@21 n@@17)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9656| (|Seq#Append_9625| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_2867| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_24414) (i@@6 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_9656| s@@23))) (= (|Seq#Length_9656| (|Seq#Update_9656| s@@23 i@@6 v@@2)) (|Seq#Length_9656| s@@23)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9656| (|Seq#Update_9656| s@@23 i@@6 v@@2)))
 :pattern ( (|Seq#Length_9656| s@@23) (|Seq#Update_9656| s@@23 i@@6 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@7 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@7 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@7 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@7 v@@3))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_17799) (o_9 T@Ref) (f_15 T@Field_30847_30852) (v@@4 T@PolymorphicMapType_18348) ) (! (succHeap Heap@@29 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@29) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@29) o_9 f_15 v@@4) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@29) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@29) o_9 f_15 v@@4) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@29) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_17799) (o_9@@0 T@Ref) (f_15@@0 T@Field_24963_24964) (v@@5 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@30) (store (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@30) o_9@@0 f_15@@0 v@@5) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@30) (store (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@30) o_9@@0 f_15@@0 v@@5) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@30) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_17799) (o_9@@1 T@Ref) (f_15@@1 T@Field_24963_9625) (v@@6 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@31) (store (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@31) o_9@@1 f_15@@1 v@@6) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@31) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@31) (store (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@31) o_9@@1 f_15@@1 v@@6) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_17799) (o_9@@2 T@Ref) (f_15@@2 T@Field_24963_53) (v@@7 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@32) (store (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@32) o_9@@2 f_15@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@32) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@32) (store (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@32) o_9@@2 f_15@@2 v@@7)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_17799) (o_9@@3 T@Ref) (f_15@@3 T@Field_9624_30852) (v@@8 T@PolymorphicMapType_18348) ) (! (succHeap Heap@@33 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@33) (store (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@33) o_9@@3 f_15@@3 v@@8) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@33) (store (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@33) o_9@@3 f_15@@3 v@@8) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@33) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_17799) (o_9@@4 T@Ref) (f_15@@4 T@Field_9624_24964) (v@@9 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@34) (store (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@34) o_9@@4 f_15@@4 v@@9) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@34) (store (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@34) o_9@@4 f_15@@4 v@@9) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@34) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_17799) (o_9@@5 T@Ref) (f_15@@5 T@Field_17872_17873) (v@@10 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@35) (store (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@35) o_9@@5 f_15@@5 v@@10) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@35) (store (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@35) o_9@@5 f_15@@5 v@@10) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@35) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_17799) (o_9@@6 T@Ref) (f_15@@6 T@Field_17859_53) (v@@11 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_17799 (store (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@36) o_9@@6 f_15@@6 v@@11) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_17799 (store (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@36) o_9@@6 f_15@@6 v@@11) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@36) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@36)))
)))
(assert (forall ((s@@25 T@Seq_24414) (t@@9 T@Seq_24414) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9656| s@@25))) (= (|Seq#Drop_9656| (|Seq#Append_9625| s@@25 t@@9) n@@19) (|Seq#Append_9625| (|Seq#Drop_9656| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9656| (|Seq#Append_9625| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20) (|Seq#Append_2867| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_2867| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_24414) (n@@21 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@8)) (< i@@8 (|Seq#Length_9656| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@21) n@@21) i@@8) (= (|Seq#Index_9656| (|Seq#Drop_9656| s@@27 n@@21) (|Seq#Sub| i@@8 n@@21)) (|Seq#Index_9656| s@@27 i@@8))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9656| s@@27 n@@21) (|Seq#Index_9656| s@@27 i@@8))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@9)) (< i@@9 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@22) n@@22) i@@9) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@9 n@@22)) (|Seq#Index_2867| s@@28 i@@9))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@9))
)))
(assert (forall ((s0@@7 T@Seq_24414) (s1@@7 T@Seq_24414) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9668|)) (not (= s1@@7 |Seq#Empty_9668|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9656| s0@@7))) (= (|Seq#Index_9656| (|Seq#Append_9625| s0@@7 s1@@7) n@@23) (|Seq#Index_9656| s0@@7 n@@23)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9656| (|Seq#Append_9625| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9656| s0@@7 n@@23) (|Seq#Append_9625| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2867| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_2867| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_24414) (s1@@9 T@Seq_24414) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9668|)) (not (= s1@@9 |Seq#Empty_9668|))) (<= 0 m)) (< m (|Seq#Length_9656| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9656| s0@@9)) (|Seq#Length_9656| s0@@9)) m) (= (|Seq#Index_9656| (|Seq#Append_9625| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9656| s0@@9))) (|Seq#Index_9656| s1@@9 m))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9656| s1@@9 m) (|Seq#Append_9625| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_2867| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_2867| s0@@10 s1@@10))
)))
(assert (forall ((o_9@@7 T@Ref) (f_13 T@Field_17872_17873) (Heap@@37 T@PolymorphicMapType_17799) ) (!  (=> (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@37) o_9@@7 $allocated) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@37) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@37) o_9@@7 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@37) o_9@@7 f_13))
)))
(assert (forall ((s@@29 T@Seq_24414) (x@@3 T@Ref) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_9656| s@@29))) (= (|Seq#Index_9656| s@@29 i@@10) x@@3)) (|Seq#Contains_24414| s@@29 x@@3))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_24414| s@@29 x@@3) (|Seq#Index_9656| s@@29 i@@10))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@11) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@11))
)))
(assert (forall ((s0@@11 T@Seq_24414) (s1@@11 T@Seq_24414) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_9656| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_9656| s0@@11 s1@@11))) (not (= (|Seq#Length_9656| s0@@11) (|Seq#Length_9656| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_9656| s0@@11 s1@@11))) (= (|Seq#Length_9656| s0@@11) (|Seq#Length_9656| s1@@11))) (= (|Seq#SkolemDiff_24414| s0@@11 s1@@11) (|Seq#SkolemDiff_24414| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_24414| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_24414| s0@@11 s1@@11) (|Seq#Length_9656| s0@@11))) (not (= (|Seq#Index_9656| s0@@11 (|Seq#SkolemDiff_24414| s0@@11 s1@@11)) (|Seq#Index_9656| s1@@11 (|Seq#SkolemDiff_24414| s0@@11 s1@@11))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_9656| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_9624_24964) (v_1@@1 T@FrameType) (q T@Field_9624_24964) (w@@1 T@FrameType) (r T@Field_9624_24964) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17859_17859 p@@2 v_1@@1 q w@@1) (InsidePredicate_17859_17859 q w@@1 r u)) (InsidePredicate_17859_17859 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17859_17859 p@@2 v_1@@1 q w@@1) (InsidePredicate_17859_17859 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_9624_24964) (v_1@@2 T@FrameType) (q@@0 T@Field_9624_24964) (w@@2 T@FrameType) (r@@0 T@Field_24963_24964) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17859_17859 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17859_9749 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_17859_9749 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17859_17859 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17859_9749 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_9624_24964) (v_1@@3 T@FrameType) (q@@1 T@Field_24963_24964) (w@@3 T@FrameType) (r@@1 T@Field_9624_24964) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17859_9749 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9749_17859 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_17859_17859 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17859_9749 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9749_17859 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_9624_24964) (v_1@@4 T@FrameType) (q@@2 T@Field_24963_24964) (w@@4 T@FrameType) (r@@2 T@Field_24963_24964) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17859_9749 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9749_9749 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_17859_9749 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17859_9749 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9749_9749 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_24963_24964) (v_1@@5 T@FrameType) (q@@3 T@Field_9624_24964) (w@@5 T@FrameType) (r@@3 T@Field_9624_24964) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9749_17859 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17859_17859 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9749_17859 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9749_17859 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17859_17859 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_24963_24964) (v_1@@6 T@FrameType) (q@@4 T@Field_9624_24964) (w@@6 T@FrameType) (r@@4 T@Field_24963_24964) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9749_17859 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17859_9749 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9749_9749 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9749_17859 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17859_9749 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_24963_24964) (v_1@@7 T@FrameType) (q@@5 T@Field_24963_24964) (w@@7 T@FrameType) (r@@5 T@Field_9624_24964) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9749_9749 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9749_17859 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9749_17859 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9749_9749 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9749_17859 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_24963_24964) (v_1@@8 T@FrameType) (q@@6 T@Field_24963_24964) (w@@8 T@FrameType) (r@@6 T@Field_24963_24964) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9749_9749 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9749_9749 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9749_9749 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9749_9749 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9749_9749 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_17799) (Mask@@40 T@PolymorphicMapType_17820) (this@@15 T@Ref) (end@@12 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@40) (or (< AssumeFunctionsAbove 0) (|contentNodes#trigger| (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@38) null (Lseg this@@15 end@@12)) this@@15 end@@12))) (=> (not (= this@@15 end@@12)) (= (|Seq#Index_9656| (|contentNodes'| Heap@@38 this@@15 end@@12) 0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@38) this@@15 data))))
 :qid |stdinbpl.635:15|
 :skolemid |67|
 :pattern ( (state Heap@@38 Mask@@40) (|contentNodes'| Heap@@38 this@@15 end@@12))
)))
(assert (forall ((s@@31 T@Seq_24414) ) (!  (=> (= (|Seq#Length_9656| s@@31) 0) (= s@@31 |Seq#Empty_9668|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9656| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_24414) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9656| s@@33 n@@25) |Seq#Empty_9668|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9656| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_2_1 () Int)
(declare-fun j_2_1 () Int)
(declare-fun Result@0 () T@Seq_24414)
(declare-fun Heap@13 () T@PolymorphicMapType_17799)
(declare-fun j_14 () Int)
(declare-fun i_22 () Int)
(declare-fun Heap@15 () T@PolymorphicMapType_17799)
(declare-fun this@@16 () T@Ref)
(declare-fun Heap@17 () T@PolymorphicMapType_17799)
(declare-fun newPMask@7 () T@PolymorphicMapType_18348)
(declare-fun end@@13 () T@Ref)
(declare-fun Heap@16 () T@PolymorphicMapType_17799)
(declare-fun Heap@14 () T@PolymorphicMapType_17799)
(declare-fun Heap@12 () T@PolymorphicMapType_17799)
(declare-fun Mask@0 () T@PolymorphicMapType_17820)
(declare-fun Heap@10 () T@PolymorphicMapType_17799)
(declare-fun newPMask@6 () T@PolymorphicMapType_18348)
(declare-fun Heap@11 () T@PolymorphicMapType_17799)
(declare-fun Heap@9 () T@PolymorphicMapType_17799)
(declare-fun Heap@8 () T@PolymorphicMapType_17799)
(declare-fun Heap@6 () T@PolymorphicMapType_17799)
(declare-fun newPMask@5 () T@PolymorphicMapType_18348)
(declare-fun Heap@7 () T@PolymorphicMapType_17799)
(declare-fun Heap@5 () T@PolymorphicMapType_17799)
(declare-fun Heap@4 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingHeap@9 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingHeap@8 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingHeap@6 () T@PolymorphicMapType_17799)
(declare-fun newPMask@4 () T@PolymorphicMapType_18348)
(declare-fun UnfoldingHeap@7 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingHeap@5 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Heap@9 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Mask@7 () T@PolymorphicMapType_17820)
(declare-fun Unfolding1Heap@8 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Mask@6 () T@PolymorphicMapType_17820)
(declare-fun Unfolding1Heap@6 () T@PolymorphicMapType_17799)
(declare-fun newPMask@3 () T@PolymorphicMapType_18348)
(declare-fun Unfolding1Heap@7 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Heap@5 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Mask@5 () T@PolymorphicMapType_17820)
(declare-fun Unfolding1Mask@4 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_17820)
(declare-fun FrameFragment_9750 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_9625 (T@Ref) T@FrameType)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_17820)
(declare-fun Heap@3 () T@PolymorphicMapType_17799)
(declare-fun Heap@1 () T@PolymorphicMapType_17799)
(declare-fun newPMask@2 () T@PolymorphicMapType_18348)
(declare-fun Heap@2 () T@PolymorphicMapType_17799)
(declare-fun Heap@0 () T@PolymorphicMapType_17799)
(declare-fun Heap@@39 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingHeap@4 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingHeap@3 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingHeap@1 () T@PolymorphicMapType_17799)
(declare-fun newPMask@1 () T@PolymorphicMapType_18348)
(declare-fun UnfoldingHeap@2 () T@PolymorphicMapType_17799)
(declare-fun UnfoldingHeap@0 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Heap@4 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Mask@3 () T@PolymorphicMapType_17820)
(declare-fun Unfolding1Heap@3 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Mask@2 () T@PolymorphicMapType_17820)
(declare-fun Unfolding1Heap@1 () T@PolymorphicMapType_17799)
(declare-fun newPMask@0 () T@PolymorphicMapType_18348)
(declare-fun Unfolding1Heap@2 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Heap@0 () T@PolymorphicMapType_17799)
(declare-fun Unfolding1Mask@1 () T@PolymorphicMapType_17820)
(declare-fun Unfolding1Mask@0 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_17820)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_17820)
(set-info :boogie-vc-id |contentNodes#definedness|)
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
 (=> (= (ControlFlow 0 0) 101) (let ((anon56_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (<= 0 i_2_1) (and (< i_2_1 j_2_1) (< j_2_1 (|Seq#Length_9656| Result@0))))) (= (ControlFlow 0 23) 20)) anon56_correct)))
(let ((anon95_Then_correct  (=> (and (<= 0 i_2_1) (and (< i_2_1 j_2_1) (< j_2_1 (|Seq#Length_9656| Result@0)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= (prio Heap@13 (|Seq#Index_9656| Result@0 i_2_1)) (prio Heap@13 (|Seq#Index_9656| Result@0 j_2_1)))) (=> (<= (prio Heap@13 (|Seq#Index_9656| Result@0 i_2_1)) (prio Heap@13 (|Seq#Index_9656| Result@0 j_2_1))) (=> (= (ControlFlow 0 21) 20) anon56_correct))))))
(let ((anon93_Then_correct true))
(let ((anon92_Then_correct true))
(let ((anon52_correct true))
(let ((anon92_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j_14 (|Seq#Length_9656| Result@0))) (=> (< j_14 (|Seq#Length_9656| Result@0)) (and (=> (= (ControlFlow 0 14) 13) anon93_Then_correct) (=> (= (ControlFlow 0 14) 10) anon52_correct))))))))
(let ((anon91_Then_correct  (=> (and (<= 0 i_22) (and (< i_22 j_14) (< j_14 (|Seq#Length_9656| Result@0)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (>= i_22 0)) (=> (>= i_22 0) (and (=> (= (ControlFlow 0 17) (- 0 18)) (< i_22 (|Seq#Length_9656| Result@0))) (=> (< i_22 (|Seq#Length_9656| Result@0)) (and (=> (= (ControlFlow 0 17) 12) anon92_Then_correct) (=> (= (ControlFlow 0 17) 14) anon92_Else_correct)))))))))
(let ((anon91_Else_correct  (=> (and (not (and (<= 0 i_22) (and (< i_22 j_14) (< j_14 (|Seq#Length_9656| Result@0))))) (= (ControlFlow 0 11) 10)) anon52_correct)))
(let ((anon61_correct true))
(let ((anon97_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) null) (=> (and (= Heap@17 Heap@15) (= (ControlFlow 0 6) 3)) anon61_correct))))
(let ((anon97_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_7 T@Ref) (f_31 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7 f_31) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7 f_31)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@7) o_7 f_31))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@7) o_7 f_31))
)) (forall ((o_7@@0 T@Ref) (f_31@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@0 f_31@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@0 f_31@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@7) o_7@@0 f_31@@0))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@7) o_7@@0 f_31@@0))
))) (forall ((o_7@@1 T@Ref) (f_31@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@1 f_31@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@1 f_31@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@7) o_7@@1 f_31@@1))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@7) o_7@@1 f_31@@1))
))) (forall ((o_7@@2 T@Ref) (f_31@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@2 f_31@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@2 f_31@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@7) o_7@@2 f_31@@2))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@7) o_7@@2 f_31@@2))
))) (forall ((o_7@@3 T@Ref) (f_31@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@3 f_31@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@3 f_31@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@7) o_7@@3 f_31@@3))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@7) o_7@@3 f_31@@3))
))) (forall ((o_7@@4 T@Ref) (f_31@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@4 f_31@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@4 f_31@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@7) o_7@@4 f_31@@4))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@7) o_7@@4 f_31@@4))
))) (forall ((o_7@@5 T@Ref) (f_31@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@5 f_31@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@5 f_31@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@7) o_7@@5 f_31@@5))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@7) o_7@@5 f_31@@5))
))) (forall ((o_7@@6 T@Ref) (f_31@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13))) o_7@@6 f_31@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) this@@16 next) end@@13))) o_7@@6 f_31@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@7) o_7@@6 f_31@@6))
 :qid |stdinbpl.1010:33|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@7) o_7@@6 f_31@@6))
))) (= Heap@16 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@15) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@15) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@15) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@15) null (|Lseg#sm| this@@16 end@@13) newPMask@7) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@15) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@15) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@15) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@15)))) (and (= Heap@17 Heap@16) (= (ControlFlow 0 5) 3))) anon61_correct))))
(let ((anon96_Then_correct  (=> (not (= this@@16 end@@13)) (=> (and (= Heap@14 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@13) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@13) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@13) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) this@@16 data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@13) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@13) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@13) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@13) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@13))) (= Heap@15 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@14) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@14) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@14) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) this@@16 next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@14) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@14) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@14) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@14) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@14)))) (and (=> (= (ControlFlow 0 7) 5) anon97_Then_correct) (=> (= (ControlFlow 0 7) 6) anon97_Else_correct))))))
(let ((anon96_Else_correct  (=> (= this@@16 end@@13) (=> (and (= Heap@17 Heap@13) (= (ControlFlow 0 4) 3)) anon61_correct))))
(let ((anon94_Else_correct  (=> (forall ((i_3_1_1 Int) (j_3_1_1 Int) ) (!  (=> (and (<= 0 i_3_1_1) (and (< i_3_1_1 j_3_1_1) (< j_3_1_1 (|Seq#Length_9656| Result@0)))) (<= (prio Heap@13 (|Seq#Index_9656| Result@0 i_3_1_1)) (prio Heap@13 (|Seq#Index_9656| Result@0 j_3_1_1))))
 :qid |stdinbpl.998:22|
 :skolemid |77|
 :pattern ( (|Seq#Index_9656| Result@0 i_3_1_1) (|prio#frame| EmptyFrame (|Seq#Index_9656| Result@0 j_3_1_1)))
 :pattern ( (|prio#frame| EmptyFrame (|Seq#Index_9656| Result@0 i_3_1_1)) (|Seq#Index_9656| Result@0 j_3_1_1))
 :pattern ( (|prio#frame| EmptyFrame (|Seq#Index_9656| Result@0 i_3_1_1)) (|prio#frame| EmptyFrame (|Seq#Index_9656| Result@0 j_3_1_1)))
)) (and (=> (= (ControlFlow 0 9) 7) anon96_Then_correct) (=> (= (ControlFlow 0 9) 4) anon96_Else_correct)))))
(let ((anon89_Then_correct  (=> (not (= this@@16 end@@13)) (and (and (and (and (=> (= (ControlFlow 0 24) 9) anon94_Else_correct) (=> (= (ControlFlow 0 24) 21) anon95_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon95_Else_correct)) (=> (= (ControlFlow 0 24) 17) anon91_Then_correct)) (=> (= (ControlFlow 0 24) 11) anon91_Else_correct)))))
(let ((anon89_Else_correct  (=> (= this@@16 end@@13) (and (=> (= (ControlFlow 0 8) 7) anon96_Then_correct) (=> (= (ControlFlow 0 8) 4) anon96_Else_correct)))))
(let ((anon44_correct  (=> (state Heap@12 Mask@0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= (|Seq#Index_9656| Result@0 0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@12) this@@16 data))) (=> (= (|Seq#Index_9656| Result@0 0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@12) this@@16 data)) (=> (= Heap@13 Heap@12) (and (=> (= (ControlFlow 0 26) 24) anon89_Then_correct) (=> (= (ControlFlow 0 26) 8) anon89_Else_correct))))))))
(let ((anon88_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) null) (=> (and (= Heap@12 Heap@10) (= (ControlFlow 0 30) 26)) anon44_correct))))
(let ((anon88_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_11 T@Ref) (f_3 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11 f_3) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11 f_3)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@6) o_11 f_3))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@6) o_11 f_3))
)) (forall ((o_11@@0 T@Ref) (f_3@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@0 f_3@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@0 f_3@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@6) o_11@@0 f_3@@0))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@6) o_11@@0 f_3@@0))
))) (forall ((o_11@@1 T@Ref) (f_3@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@1 f_3@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@1 f_3@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@6) o_11@@1 f_3@@1))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@6) o_11@@1 f_3@@1))
))) (forall ((o_11@@2 T@Ref) (f_3@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@2 f_3@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@2 f_3@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@6) o_11@@2 f_3@@2))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@6) o_11@@2 f_3@@2))
))) (forall ((o_11@@3 T@Ref) (f_3@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@3 f_3@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@3 f_3@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@6) o_11@@3 f_3@@3))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@6) o_11@@3 f_3@@3))
))) (forall ((o_11@@4 T@Ref) (f_3@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@4 f_3@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@4 f_3@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@6) o_11@@4 f_3@@4))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@6) o_11@@4 f_3@@4))
))) (forall ((o_11@@5 T@Ref) (f_3@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@5 f_3@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@5 f_3@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@6) o_11@@5 f_3@@5))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@6) o_11@@5 f_3@@5))
))) (forall ((o_11@@6 T@Ref) (f_3@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13))) o_11@@6 f_3@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) this@@16 next) end@@13))) o_11@@6 f_3@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@6) o_11@@6 f_3@@6))
 :qid |stdinbpl.956:37|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@6) o_11@@6 f_3@@6))
))) (= Heap@11 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@10) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@10) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@10) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@10) null (|Lseg#sm| this@@16 end@@13) newPMask@6) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@10) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@10) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@10) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@10)))) (and (= Heap@12 Heap@11) (= (ControlFlow 0 29) 26))) anon44_correct))))
(let ((anon87_Then_correct  (=> (not (= this@@16 end@@13)) (=> (and (= Heap@9 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@8) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@8) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@8) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) this@@16 data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@8) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@8) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@8) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@8) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@8))) (= Heap@10 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@9) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@9) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@9) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) this@@16 next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@9) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@9) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@9) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@9) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@9)))) (and (=> (= (ControlFlow 0 31) 29) anon88_Then_correct) (=> (= (ControlFlow 0 31) 30) anon88_Else_correct))))))
(let ((anon87_Else_correct  (=> (= this@@16 end@@13) (=> (and (= Heap@12 Heap@8) (= (ControlFlow 0 28) 26)) anon44_correct))))
(let ((anon41_correct  (=> (state Heap@8 Mask@0) (and (=> (= (ControlFlow 0 32) 31) anon87_Then_correct) (=> (= (ControlFlow 0 32) 28) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) null) (=> (and (= Heap@8 Heap@6) (= (ControlFlow 0 35) 32)) anon41_correct))))
(let ((anon86_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o T@Ref) (f_85 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o f_85) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o f_85)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@5) o f_85))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@5) o f_85))
)) (forall ((o@@0 T@Ref) (f_85@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@0 f_85@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@0 f_85@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@5) o@@0 f_85@@0))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@5) o@@0 f_85@@0))
))) (forall ((o@@1 T@Ref) (f_85@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@1 f_85@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@1 f_85@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@5) o@@1 f_85@@1))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@5) o@@1 f_85@@1))
))) (forall ((o@@2 T@Ref) (f_85@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@2 f_85@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@2 f_85@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@5) o@@2 f_85@@2))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@5) o@@2 f_85@@2))
))) (forall ((o@@3 T@Ref) (f_85@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@3 f_85@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@3 f_85@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@5) o@@3 f_85@@3))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@5) o@@3 f_85@@3))
))) (forall ((o@@4 T@Ref) (f_85@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@4 f_85@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@4 f_85@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@5) o@@4 f_85@@4))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@5) o@@4 f_85@@4))
))) (forall ((o@@5 T@Ref) (f_85@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@5 f_85@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@5 f_85@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@5) o@@5 f_85@@5))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@5) o@@5 f_85@@5))
))) (forall ((o@@6 T@Ref) (f_85@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13))) o@@6 f_85@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) this@@16 next) end@@13))) o@@6 f_85@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@5) o@@6 f_85@@6))
 :qid |stdinbpl.941:37|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@5) o@@6 f_85@@6))
))) (= Heap@7 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@6) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@6) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@6) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@6) null (|Lseg#sm| this@@16 end@@13) newPMask@5) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@6) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@6) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@6) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@6)))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 34) 32))) anon41_correct))))
(let ((anon85_Then_correct  (=> (not (= this@@16 end@@13)) (=> (and (= Heap@5 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) this@@16 data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@4))) (= Heap@6 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@5) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@5) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@5) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) this@@16 next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@5) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@5) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@5) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@5) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@5)))) (and (=> (= (ControlFlow 0 36) 34) anon86_Then_correct) (=> (= (ControlFlow 0 36) 35) anon86_Else_correct))))))
(let ((anon85_Else_correct  (=> (= this@@16 end@@13) (=> (and (= Heap@8 Heap@4) (= (ControlFlow 0 33) 32)) anon41_correct))))
(let ((anon38_correct  (=> (state UnfoldingHeap@9 UnfoldingMask@7) (and (=> (= (ControlFlow 0 37) (- 0 38)) (HasDirectPerm_9624_9625 UnfoldingMask@7 this@@16 data)) (=> (HasDirectPerm_9624_9625 UnfoldingMask@7 this@@16 data) (and (=> (= (ControlFlow 0 37) 36) anon85_Then_correct) (=> (= (ControlFlow 0 37) 33) anon85_Else_correct)))))))
(let ((anon37_correct  (=> (and (and (state UnfoldingHeap@8 UnfoldingMask@6) (= UnfoldingMask@7 UnfoldingMask@6)) (and (= UnfoldingHeap@9 UnfoldingHeap@8) (= (ControlFlow 0 41) 37))) anon38_correct)))
(let ((anon84_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) null) (=> (and (= UnfoldingHeap@8 UnfoldingHeap@6) (= (ControlFlow 0 44) 41)) anon37_correct))))
(let ((anon84_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53 f_56) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53 f_56)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@4) o_53 f_56))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@4) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@0 f_56@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@4) o_53@@0 f_56@@0))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@4) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@1 f_56@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@4) o_53@@1 f_56@@1))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@4) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@2 f_56@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@4) o_53@@2 f_56@@2))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@4) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@3 f_56@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@4) o_53@@3 f_56@@3))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@4) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@4 f_56@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@4) o_53@@4 f_56@@4))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@4) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@5 f_56@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@4) o_53@@5 f_56@@5))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@4) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) next) end@@13))) o_53@@6 f_56@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@4) o_53@@6 f_56@@6))
 :qid |stdinbpl.921:41|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@4) o_53@@6 f_56@@6))
))) (= UnfoldingHeap@7 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| UnfoldingHeap@6) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| UnfoldingHeap@6) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@6) this@@16 next) end@@13) newPMask@4) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| UnfoldingHeap@6) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| UnfoldingHeap@6) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| UnfoldingHeap@6) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| UnfoldingHeap@6)))) (and (= UnfoldingHeap@8 UnfoldingHeap@7) (= (ControlFlow 0 43) 41))) anon37_correct))))
(let ((anon83_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (=> (and (= UnfoldingHeap@5 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@4))) (= UnfoldingHeap@6 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| UnfoldingHeap@5) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| UnfoldingHeap@5) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@5) this@@16 next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| UnfoldingHeap@5) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| UnfoldingHeap@5) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| UnfoldingHeap@5) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| UnfoldingHeap@5)))) (and (=> (= (ControlFlow 0 45) 43) anon84_Then_correct) (=> (= (ControlFlow 0 45) 44) anon84_Else_correct))))))
(let ((anon83_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13) (=> (and (= UnfoldingHeap@8 Heap@4) (= (ControlFlow 0 42) 41)) anon37_correct))))
(let ((anon34_correct  (=> (and (state Unfolding1Heap@9 Unfolding1Mask@7) (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (<= (prio Heap@4 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 data)) (prio Heap@4 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) data))))) (and (=> (= (ControlFlow 0 46) 45) anon83_Then_correct) (=> (= (ControlFlow 0 46) 42) anon83_Else_correct)))))
(let ((anon33_correct  (=> (and (and (state Unfolding1Heap@8 Unfolding1Mask@6) (= Unfolding1Mask@7 Unfolding1Mask@6)) (and (= Unfolding1Heap@9 Unfolding1Heap@8) (= (ControlFlow 0 49) 46))) anon34_correct)))
(let ((anon82_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) null) (=> (and (= Unfolding1Heap@8 Unfolding1Heap@6) (= (ControlFlow 0 52) 49)) anon33_correct))))
(let ((anon82_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_26 T@Ref) (f_29 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26 f_29) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26 f_29)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@3) o_26 f_29))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@3) o_26 f_29))
)) (forall ((o_26@@0 T@Ref) (f_29@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@0 f_29@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@0 f_29@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@3) o_26@@0 f_29@@0))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@3) o_26@@0 f_29@@0))
))) (forall ((o_26@@1 T@Ref) (f_29@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@1 f_29@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@1 f_29@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@3) o_26@@1 f_29@@1))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@3) o_26@@1 f_29@@1))
))) (forall ((o_26@@2 T@Ref) (f_29@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@2 f_29@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@2 f_29@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@3) o_26@@2 f_29@@2))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@3) o_26@@2 f_29@@2))
))) (forall ((o_26@@3 T@Ref) (f_29@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@3 f_29@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@3 f_29@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@3) o_26@@3 f_29@@3))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@3) o_26@@3 f_29@@3))
))) (forall ((o_26@@4 T@Ref) (f_29@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@4 f_29@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@4 f_29@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@3) o_26@@4 f_29@@4))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@3) o_26@@4 f_29@@4))
))) (forall ((o_26@@5 T@Ref) (f_29@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@5 f_29@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@5 f_29@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@3) o_26@@5 f_29@@5))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@3) o_26@@5 f_29@@5))
))) (forall ((o_26@@6 T@Ref) (f_29@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13))) o_26@@6 f_29@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) next) end@@13))) o_26@@6 f_29@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@3) o_26@@6 f_29@@6))
 :qid |stdinbpl.902:47|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@3) o_26@@6 f_29@@6))
))) (= Unfolding1Heap@7 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Unfolding1Heap@6) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Unfolding1Heap@6) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@6) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@6) this@@16 next) next) end@@13) newPMask@3) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Unfolding1Heap@6) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Unfolding1Heap@6) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Unfolding1Heap@6) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Unfolding1Heap@6)))) (and (= Unfolding1Heap@8 Unfolding1Heap@7) (= (ControlFlow 0 51) 49))) anon33_correct))))
(let ((anon81_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13)) (=> (and (= Unfolding1Heap@5 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@4) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@4) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@4))) (= Unfolding1Heap@6 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Unfolding1Heap@5) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Unfolding1Heap@5) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@5) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@5) this@@16 next) next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Unfolding1Heap@5) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Unfolding1Heap@5) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Unfolding1Heap@5) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Unfolding1Heap@5)))) (and (=> (= (ControlFlow 0 53) 51) anon82_Then_correct) (=> (= (ControlFlow 0 53) 52) anon82_Else_correct))))))
(let ((anon81_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13) (=> (and (= Unfolding1Heap@8 Heap@4) (= (ControlFlow 0 50) 49)) anon33_correct))))
(let ((anon80_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) null)) (= Unfolding1Mask@6 (PolymorphicMapType_17820 (store (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Unfolding1Mask@5) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13) (+ (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Unfolding1Mask@5) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13)) FullPerm)) (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Unfolding1Mask@5) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Unfolding1Mask@5) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Unfolding1Mask@5) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Unfolding1Mask@5) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Unfolding1Mask@5) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Unfolding1Mask@5) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Unfolding1Mask@5)))) (=> (and (and (InsidePredicate_9749_9749 (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13))) (state Heap@4 Unfolding1Mask@6)) (and (state Heap@4 Unfolding1Mask@6) (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13)) (<= (prio Heap@4 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) data)) (prio Heap@4 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) data)))))) (and (=> (= (ControlFlow 0 54) 53) anon81_Then_correct) (=> (= (ControlFlow 0 54) 50) anon81_Else_correct))))))
(let ((anon80_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) null) (= Unfolding1Mask@7 Unfolding1Mask@5)) (and (= Unfolding1Heap@9 Heap@4) (= (ControlFlow 0 48) 46))) anon34_correct)))
(let ((anon79_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (=> (and (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) null)) (= Unfolding1Mask@4 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@6) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) data (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@6) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) data) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| UnfoldingMask@6) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| UnfoldingMask@6) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| UnfoldingMask@6) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| UnfoldingMask@6) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| UnfoldingMask@6) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| UnfoldingMask@6)))) (=> (and (and (state Heap@4 Unfolding1Mask@4) (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) null))) (and (= Unfolding1Mask@5 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Unfolding1Mask@4) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Unfolding1Mask@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Unfolding1Mask@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Unfolding1Mask@4) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Unfolding1Mask@4) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Unfolding1Mask@4) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Unfolding1Mask@4) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Unfolding1Mask@4) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Unfolding1Mask@4))) (state Heap@4 Unfolding1Mask@5))) (and (=> (= (ControlFlow 0 55) 54) anon80_Then_correct) (=> (= (ControlFlow 0 55) 48) anon80_Else_correct)))))))
(let ((anon79_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13) (= Unfolding1Mask@7 UnfoldingMask@6)) (and (= Unfolding1Heap@9 Heap@4) (= (ControlFlow 0 47) 46))) anon34_correct)))
(let ((anon78_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) null)) (=> (and (= UnfoldingMask@6 (PolymorphicMapType_17820 (store (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@5) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13) (+ (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@5) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) FullPerm)) (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@5) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| UnfoldingMask@5) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| UnfoldingMask@5) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| UnfoldingMask@5) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| UnfoldingMask@5) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| UnfoldingMask@5) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| UnfoldingMask@5))) (InsidePredicate_9749_9749 (Lseg this@@16 end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg this@@16 end@@13)) (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)))) (=> (and (and (state Heap@4 UnfoldingMask@6) (state Heap@4 UnfoldingMask@6)) (and (|Lseg#trigger_9749| Heap@4 (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (FrameFragment_9750 (ite (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) data)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next)) (FrameFragment_9750 (ite (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) null)) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) next) end@@13)) EmptyFrame)))) EmptyFrame))))) (and (=> (= (ControlFlow 0 56) 55) anon79_Then_correct) (=> (= (ControlFlow 0 56) 47) anon79_Else_correct)))))))
(let ((anon78_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) null) (= UnfoldingMask@7 UnfoldingMask@5)) (and (= UnfoldingHeap@9 Heap@4) (= (ControlFlow 0 40) 37))) anon38_correct)))
(let ((anon77_Then_correct  (=> (not (= this@@16 end@@13)) (=> (and (not (= this@@16 null)) (= UnfoldingMask@4 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@0) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@0) this@@16 data (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@0) this@@16 data) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Mask@0)))) (=> (and (and (state Heap@4 UnfoldingMask@4) (not (= this@@16 null))) (and (= UnfoldingMask@5 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@4) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@4) this@@16 next (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@4) this@@16 next) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| UnfoldingMask@4) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| UnfoldingMask@4) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| UnfoldingMask@4) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| UnfoldingMask@4) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| UnfoldingMask@4) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| UnfoldingMask@4))) (state Heap@4 UnfoldingMask@5))) (and (=> (= (ControlFlow 0 57) 56) anon78_Then_correct) (=> (= (ControlFlow 0 57) 40) anon78_Else_correct)))))))
(let ((anon77_Else_correct  (=> (and (and (= this@@16 end@@13) (= UnfoldingMask@7 Mask@0)) (and (= UnfoldingHeap@9 Heap@4) (= (ControlFlow 0 39) 37))) anon38_correct)))
(let ((anon76_Then_correct  (=> (not (= this@@16 end@@13)) (and (=> (= (ControlFlow 0 58) (- 0 60)) (< 0 (|Seq#Length_9656| Result@0))) (=> (< 0 (|Seq#Length_9656| Result@0)) (=> (and (|Lseg#trigger_9749| Heap@4 (Lseg this@@16 end@@13)) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg this@@16 end@@13)) (FrameFragment_9750 (ite (not (= this@@16 end@@13)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 data)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next)) (FrameFragment_9750 (ite (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) null)) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13)) EmptyFrame)))) EmptyFrame)))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@0) null (Lseg this@@16 end@@13))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@0) null (Lseg this@@16 end@@13)))) (and (=> (= (ControlFlow 0 58) 57) anon77_Then_correct) (=> (= (ControlFlow 0 58) 39) anon77_Else_correct))))))))))
(let ((anon76_Else_correct  (=> (and (= this@@16 end@@13) (= Heap@13 Heap@4)) (and (=> (= (ControlFlow 0 25) 24) anon89_Then_correct) (=> (= (ControlFlow 0 25) 8) anon89_Else_correct)))))
(let ((anon75_Else_correct  (=> (= this@@16 end@@13) (and (=> (= (ControlFlow 0 63) 58) anon76_Then_correct) (=> (= (ControlFlow 0 63) 25) anon76_Else_correct)))))
(let ((anon75_Then_correct  (=> (not (= this@@16 end@@13)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (< 0 (|Seq#Length_9656| Result@0))) (=> (< 0 (|Seq#Length_9656| Result@0)) (and (=> (= (ControlFlow 0 61) 58) anon76_Then_correct) (=> (= (ControlFlow 0 61) 25) anon76_Else_correct)))))))
(let ((anon23_correct  (=> (= Result@0 (ite (= this@@16 end@@13) |Seq#Empty_9668| (|Seq#Append_9625| (|Seq#Singleton_9625| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 data)) (ite (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) null) |Seq#Empty_9668| (contentNodes Heap@4 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@4) this@@16 next) end@@13))))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (= (= this@@16 end@@13) (|Seq#Equal_9656| Result@0 |Seq#Empty_9668|))) (=> (= (= this@@16 end@@13) (|Seq#Equal_9656| Result@0 |Seq#Empty_9668|)) (and (=> (= (ControlFlow 0 64) 61) anon75_Then_correct) (=> (= (ControlFlow 0 64) 63) anon75_Else_correct)))))))
(let ((anon22_correct  (=> (state Heap@3 Mask@0) (=> (and (= Heap@4 Heap@3) (= (ControlFlow 0 67) 64)) anon23_correct))))
(let ((anon74_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 70) 67)) anon22_correct))))
(let ((anon74_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52 f_55) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52 f_55)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@2) o_52 f_55))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@2) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@2) o_52@@0 f_55@@0))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@2) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@2) o_52@@1 f_55@@1))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@2) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@2) o_52@@2 f_55@@2))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@2) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@2) o_52@@3 f_55@@3))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@2) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@2) o_52@@4 f_55@@4))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@2) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@2) o_52@@5 f_55@@5))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@2) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) this@@16 next) end@@13))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@2) o_52@@6 f_55@@6))
 :qid |stdinbpl.815:37|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@2) o_52@@6 f_55@@6))
))) (= Heap@2 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@1) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@1) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@1) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@1) null (|Lseg#sm| this@@16 end@@13) newPMask@2) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@1) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@1) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@1) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 69) 67))) anon22_correct))))
(let ((anon73_Then_correct  (=> (not (= this@@16 end@@13)) (=> (and (= Heap@0 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) this@@16 data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@39))) (= Heap@1 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@0) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@0) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@0) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) this@@16 next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@0) null (|Lseg#sm| this@@16 end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@0) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@0) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@0) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@0)))) (and (=> (= (ControlFlow 0 71) 69) anon74_Then_correct) (=> (= (ControlFlow 0 71) 70) anon74_Else_correct))))))
(let ((anon73_Else_correct  (=> (= this@@16 end@@13) (=> (and (= Heap@3 Heap@@39) (= (ControlFlow 0 68) 67)) anon22_correct))))
(let ((anon72_Else_correct  (=> (|contentNodes#trigger| (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| UnfoldingHeap@4) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@4) this@@16 next) end@@13)) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@4) this@@16 next) end@@13) (and (=> (= (ControlFlow 0 73) 71) anon73_Then_correct) (=> (= (ControlFlow 0 73) 68) anon73_Else_correct)))))
(let ((anon71_Then_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@4) this@@16 next) null) (and (=> (= (ControlFlow 0 72) 71) anon73_Then_correct) (=> (= (ControlFlow 0 72) 68) anon73_Else_correct)))))
(let ((anon62_Then_correct  (=> (= this@@16 end@@13) (=> (and (= Heap@4 Heap@@39) (= (ControlFlow 0 66) 64)) anon23_correct))))
(let ((anon72_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@3) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@4) this@@16 next) end@@13)))))))
(let ((anon71_Else_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@4) this@@16 next) null)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (HasDirectPerm_9624_9625 UnfoldingMask@3 this@@16 next)) (=> (HasDirectPerm_9624_9625 UnfoldingMask@3 this@@16 next) (and (=> (= (ControlFlow 0 74) 2) anon72_Then_correct) (=> (= (ControlFlow 0 74) 73) anon72_Else_correct)))))))
(let ((anon14_correct  (=> (state UnfoldingHeap@4 UnfoldingMask@3) (and (=> (= (ControlFlow 0 76) (- 0 78)) (HasDirectPerm_9624_9625 UnfoldingMask@3 this@@16 data)) (=> (HasDirectPerm_9624_9625 UnfoldingMask@3 this@@16 data) (and (=> (= (ControlFlow 0 76) (- 0 77)) (HasDirectPerm_9624_9625 UnfoldingMask@3 this@@16 next)) (=> (HasDirectPerm_9624_9625 UnfoldingMask@3 this@@16 next) (and (=> (= (ControlFlow 0 76) 72) anon71_Then_correct) (=> (= (ControlFlow 0 76) 74) anon71_Else_correct)))))))))
(let ((anon13_correct  (=> (and (and (state UnfoldingHeap@3 UnfoldingMask@2) (= UnfoldingMask@3 UnfoldingMask@2)) (and (= UnfoldingHeap@4 UnfoldingHeap@3) (= (ControlFlow 0 81) 76))) anon14_correct)))
(let ((anon70_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) null) (=> (and (= UnfoldingHeap@3 UnfoldingHeap@1) (= (ControlFlow 0 84) 81)) anon13_correct))))
(let ((anon70_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15 f_20) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15 f_20)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@1) o_15 f_20))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@1) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@1) o_15@@0 f_20@@0))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@1) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@1) o_15@@1 f_20@@1))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@1) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@1) o_15@@2 f_20@@2))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@1) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@1) o_15@@3 f_20@@3))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@1) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@1) o_15@@4 f_20@@4))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@1) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@1) o_15@@5 f_20@@5))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@1) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) next) end@@13))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@1) o_15@@6 f_20@@6))
 :qid |stdinbpl.771:41|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@1) o_15@@6 f_20@@6))
))) (= UnfoldingHeap@2 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| UnfoldingHeap@1) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| UnfoldingHeap@1) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@1) this@@16 next) end@@13) newPMask@1) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| UnfoldingHeap@1) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| UnfoldingHeap@1) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| UnfoldingHeap@1) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| UnfoldingHeap@1)))) (and (= UnfoldingHeap@3 UnfoldingHeap@2) (= (ControlFlow 0 83) 81))) anon13_correct))))
(let ((anon69_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (=> (and (= UnfoldingHeap@0 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@39))) (= UnfoldingHeap@1 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| UnfoldingHeap@0) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| UnfoldingHeap@0) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| UnfoldingHeap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| UnfoldingHeap@0) this@@16 next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| UnfoldingHeap@0) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| UnfoldingHeap@0) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| UnfoldingHeap@0) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| UnfoldingHeap@0)))) (and (=> (= (ControlFlow 0 85) 83) anon70_Then_correct) (=> (= (ControlFlow 0 85) 84) anon70_Else_correct))))))
(let ((anon69_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13) (=> (and (= UnfoldingHeap@3 Heap@@39) (= (ControlFlow 0 82) 81)) anon13_correct))))
(let ((anon10_correct  (=> (and (state Unfolding1Heap@4 Unfolding1Mask@3) (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (<= (prio Heap@@39 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 data)) (prio Heap@@39 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) data))))) (and (=> (= (ControlFlow 0 86) 85) anon69_Then_correct) (=> (= (ControlFlow 0 86) 82) anon69_Else_correct)))))
(let ((anon9_correct  (=> (and (and (state Unfolding1Heap@3 Unfolding1Mask@2) (= Unfolding1Mask@3 Unfolding1Mask@2)) (and (= Unfolding1Heap@4 Unfolding1Heap@3) (= (ControlFlow 0 89) 86))) anon10_correct)))
(let ((anon68_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) null) (=> (and (= Unfolding1Heap@3 Unfolding1Heap@1) (= (ControlFlow 0 92) 89)) anon9_correct))))
(let ((anon68_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) null)) (=> (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_17872_17873) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16 f_21) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16 f_21)) (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@0) o_16 f_21))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| newPMask@0) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_17859_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@0) o_16@@0 f_21@@0))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| newPMask@0) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_9624_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@0) o_16@@1 f_21@@1))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| newPMask@0) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_9624_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@0) o_16@@2 f_21@@2))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| newPMask@0) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_24963_9625) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@0) o_16@@3 f_21@@3))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| newPMask@0) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_24963_53) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@0) o_16@@4 f_21@@4))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| newPMask@0) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_24963_24964) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@0) o_16@@5 f_21@@5))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| newPMask@0) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_30847_30852) ) (!  (=> (or (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) next) end@@13))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@0) o_16@@6 f_21@@6))
 :qid |stdinbpl.752:47|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| newPMask@0) o_16@@6 f_21@@6))
))) (= Unfolding1Heap@2 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Unfolding1Heap@1) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Unfolding1Heap@1) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@1) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@1) this@@16 next) next) end@@13) newPMask@0) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Unfolding1Heap@1) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Unfolding1Heap@1) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Unfolding1Heap@1) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Unfolding1Heap@1)))) (and (= Unfolding1Heap@3 Unfolding1Heap@2) (= (ControlFlow 0 91) 89))) anon9_correct))))
(let ((anon67_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13)) (=> (and (= Unfolding1Heap@0 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) data true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Heap@@39) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Heap@@39) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Heap@@39))) (= Unfolding1Heap@1 (PolymorphicMapType_17799 (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Unfolding1Heap@0) (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Unfolding1Heap@0) (store (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13) (PolymorphicMapType_18348 (store (|PolymorphicMapType_18348_9624_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) next true) (|PolymorphicMapType_18348_9624_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_9624_67839#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_9625#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_53#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_24964#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))) (|PolymorphicMapType_18348_24963_68689#PolymorphicMapType_18348| (select (|PolymorphicMapType_17799_9754_31008#PolymorphicMapType_17799| Unfolding1Heap@0) null (|Lseg#sm| (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Unfolding1Heap@0) this@@16 next) next) end@@13))))) (|PolymorphicMapType_17799_9624_24964#PolymorphicMapType_17799| Unfolding1Heap@0) (|PolymorphicMapType_17799_9624_65425#PolymorphicMapType_17799| Unfolding1Heap@0) (|PolymorphicMapType_17799_24963_9625#PolymorphicMapType_17799| Unfolding1Heap@0) (|PolymorphicMapType_17799_24963_53#PolymorphicMapType_17799| Unfolding1Heap@0)))) (and (=> (= (ControlFlow 0 93) 91) anon68_Then_correct) (=> (= (ControlFlow 0 93) 92) anon68_Else_correct))))))
(let ((anon67_Else_correct  (=> (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13) (=> (and (= Unfolding1Heap@3 Heap@@39) (= (ControlFlow 0 90) 89)) anon9_correct))))
(let ((anon66_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) null)) (= Unfolding1Mask@2 (PolymorphicMapType_17820 (store (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Unfolding1Mask@1) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13) (+ (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Unfolding1Mask@1) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13)) FullPerm)) (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Unfolding1Mask@1) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Unfolding1Mask@1) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Unfolding1Mask@1) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Unfolding1Mask@1) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Unfolding1Mask@1) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Unfolding1Mask@1) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Unfolding1Mask@1)))) (=> (and (and (InsidePredicate_9749_9749 (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13))) (state Heap@@39 Unfolding1Mask@2)) (and (state Heap@@39 Unfolding1Mask@2) (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13)) (<= (prio Heap@@39 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) data)) (prio Heap@@39 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) data)))))) (and (=> (= (ControlFlow 0 94) 93) anon67_Then_correct) (=> (= (ControlFlow 0 94) 90) anon67_Else_correct))))))
(let ((anon66_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) null) (= Unfolding1Mask@3 Unfolding1Mask@1)) (and (= Unfolding1Heap@4 Heap@@39) (= (ControlFlow 0 88) 86))) anon10_correct)))
(let ((anon65_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (=> (and (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) null)) (= Unfolding1Mask@0 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@2) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@2) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) data (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@2) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) data) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| UnfoldingMask@2) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| UnfoldingMask@2) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| UnfoldingMask@2) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| UnfoldingMask@2) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| UnfoldingMask@2) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| UnfoldingMask@2)))) (=> (and (and (state Heap@@39 Unfolding1Mask@0) (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) null))) (and (= Unfolding1Mask@1 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Unfolding1Mask@0) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Unfolding1Mask@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Unfolding1Mask@0) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Unfolding1Mask@0) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Unfolding1Mask@0) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Unfolding1Mask@0) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Unfolding1Mask@0) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Unfolding1Mask@0) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Unfolding1Mask@0))) (state Heap@@39 Unfolding1Mask@1))) (and (=> (= (ControlFlow 0 95) 94) anon66_Then_correct) (=> (= (ControlFlow 0 95) 88) anon66_Else_correct)))))))
(let ((anon65_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13) (= Unfolding1Mask@3 UnfoldingMask@2)) (and (= Unfolding1Heap@4 Heap@@39) (= (ControlFlow 0 87) 86))) anon10_correct)))
(let ((anon64_Then_correct  (=> (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) null)) (=> (and (= UnfoldingMask@2 (PolymorphicMapType_17820 (store (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@1) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13) (+ (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@1) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) FullPerm)) (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@1) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| UnfoldingMask@1) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| UnfoldingMask@1) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| UnfoldingMask@1) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| UnfoldingMask@1) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| UnfoldingMask@1) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| UnfoldingMask@1))) (InsidePredicate_9749_9749 (Lseg this@@16 end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg this@@16 end@@13)) (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)))) (=> (and (and (state Heap@@39 UnfoldingMask@2) (state Heap@@39 UnfoldingMask@2)) (and (|Lseg#trigger_9749| Heap@@39 (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (FrameFragment_9750 (ite (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) data)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next)) (FrameFragment_9750 (ite (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) null)) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) next) end@@13)) EmptyFrame)))) EmptyFrame))))) (and (=> (= (ControlFlow 0 96) 95) anon65_Then_correct) (=> (= (ControlFlow 0 96) 87) anon65_Else_correct)))))))
(let ((anon64_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) null) (= UnfoldingMask@3 UnfoldingMask@1)) (and (= UnfoldingHeap@4 Heap@@39) (= (ControlFlow 0 80) 76))) anon14_correct)))
(let ((anon63_Then_correct  (=> (not (= this@@16 end@@13)) (=> (and (not (= this@@16 null)) (= UnfoldingMask@0 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@0) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@0) this@@16 data (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| Mask@0) this@@16 data) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| Mask@0) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| Mask@0)))) (=> (and (and (state Heap@@39 UnfoldingMask@0) (not (= this@@16 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_17820 (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| UnfoldingMask@0) (store (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@0) this@@16 next (+ (select (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| UnfoldingMask@0) this@@16 next) FullPerm)) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| UnfoldingMask@0) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| UnfoldingMask@0) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| UnfoldingMask@0) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| UnfoldingMask@0) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| UnfoldingMask@0) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| UnfoldingMask@0))) (state Heap@@39 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 97) 96) anon64_Then_correct) (=> (= (ControlFlow 0 97) 80) anon64_Else_correct)))))))
(let ((anon63_Else_correct  (=> (and (and (= this@@16 end@@13) (= UnfoldingMask@3 Mask@0)) (and (= UnfoldingHeap@4 Heap@@39) (= (ControlFlow 0 79) 76))) anon14_correct)))
(let ((anon62_Else_correct  (=> (not (= this@@16 end@@13)) (=> (and (|Lseg#trigger_9749| Heap@@39 (Lseg this@@16 end@@13)) (= (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg this@@16 end@@13)) (FrameFragment_9750 (ite (not (= this@@16 end@@13)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 data)) (CombineFrames (FrameFragment_9625 (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next)) (FrameFragment_9750 (ite (not (= (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) null)) (select (|PolymorphicMapType_17799_9749_9750#PolymorphicMapType_17799| Heap@@39) null (Lseg (select (|PolymorphicMapType_17799_9439_9440#PolymorphicMapType_17799| Heap@@39) this@@16 next) end@@13)) EmptyFrame)))) EmptyFrame)))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@0) null (Lseg this@@16 end@@13))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| Mask@0) null (Lseg this@@16 end@@13)))) (and (=> (= (ControlFlow 0 98) 97) anon63_Then_correct) (=> (= (ControlFlow 0 98) 79) anon63_Else_correct))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@39 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@39) this@@16 $allocated) (select (|PolymorphicMapType_17799_9436_53#PolymorphicMapType_17799| Heap@@39) end@@13 $allocated))) (and (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_17820 (store (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| ZeroMask) null (Lseg this@@16 end@@13) (+ (select (|PolymorphicMapType_17820_9749_9750#PolymorphicMapType_17820| ZeroMask) null (Lseg this@@16 end@@13)) FullPerm)) (|PolymorphicMapType_17820_9624_9625#PolymorphicMapType_17820| ZeroMask) (|PolymorphicMapType_17820_9749_9625#PolymorphicMapType_17820| ZeroMask) (|PolymorphicMapType_17820_9749_53#PolymorphicMapType_17820| ZeroMask) (|PolymorphicMapType_17820_9749_73410#PolymorphicMapType_17820| ZeroMask) (|PolymorphicMapType_17820_9624_9750#PolymorphicMapType_17820| ZeroMask) (|PolymorphicMapType_17820_9624_53#PolymorphicMapType_17820| ZeroMask) (|PolymorphicMapType_17820_9624_73741#PolymorphicMapType_17820| ZeroMask)))) (and (state Heap@@39 Mask@0) (state Heap@@39 Mask@0)))) (and (=> (= (ControlFlow 0 100) 66) anon62_Then_correct) (=> (= (ControlFlow 0 100) 98) anon62_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 101) 100) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
