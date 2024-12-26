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
(declare-sort T@Field_34767_53 0)
(declare-sort T@Field_34780_34781 0)
(declare-sort T@Field_43706_5587 0)
(declare-sort T@Field_43813_43814 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_43826_43831 0)
(declare-sort T@Field_20350_5602 0)
(declare-sort T@Field_20350_53 0)
(declare-sort T@Field_20350_34781 0)
(declare-sort T@Field_20345_20351 0)
(declare-sort T@Field_20345_43831 0)
(declare-datatypes ((T@PolymorphicMapType_34728 0)) (((PolymorphicMapType_34728 (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| (Array T@Ref T@Field_43706_5587 Real)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| (Array T@Ref T@Field_43813_43814 Real)) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| (Array T@Ref T@Field_20345_20351 Real)) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| (Array T@Ref T@Field_34767_53 Real)) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| (Array T@Ref T@Field_34780_34781 Real)) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| (Array T@Ref T@Field_20345_43831 Real)) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| (Array T@Ref T@Field_20350_5602 Real)) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| (Array T@Ref T@Field_20350_53 Real)) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| (Array T@Ref T@Field_20350_34781 Real)) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| (Array T@Ref T@Field_43826_43831 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35256 0)) (((PolymorphicMapType_35256 (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (Array T@Ref T@Field_43706_5587 Bool)) (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (Array T@Ref T@Field_34767_53 Bool)) (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (Array T@Ref T@Field_34780_34781 Bool)) (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (Array T@Ref T@Field_20345_20351 Bool)) (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (Array T@Ref T@Field_20345_43831 Bool)) (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (Array T@Ref T@Field_20350_5602 Bool)) (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (Array T@Ref T@Field_20350_53 Bool)) (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (Array T@Ref T@Field_20350_34781 Bool)) (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (Array T@Ref T@Field_43813_43814 Bool)) (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (Array T@Ref T@Field_43826_43831 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34707 0)) (((PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| (Array T@Ref T@Field_34767_53 Bool)) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| (Array T@Ref T@Field_34780_34781 T@Ref)) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| (Array T@Ref T@Field_43706_5587 Int)) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| (Array T@Ref T@Field_43813_43814 T@FrameType)) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| (Array T@Ref T@Field_43826_43831 T@PolymorphicMapType_35256)) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| (Array T@Ref T@Field_20350_5602 Int)) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| (Array T@Ref T@Field_20350_53 Bool)) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| (Array T@Ref T@Field_20350_34781 T@Ref)) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| (Array T@Ref T@Field_20345_20351 T@FrameType)) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| (Array T@Ref T@Field_20345_43831 T@PolymorphicMapType_35256)) ) ) ))
(declare-fun $allocated () T@Field_34767_53)
(declare-fun f_7 () T@Field_43706_5587)
(declare-fun g () T@Field_43706_5587)
(declare-fun unrelatedField () T@Field_43706_5587)
(declare-sort T@Seq_46049 0)
(declare-fun |Seq#Length_46049| (T@Seq_46049) Int)
(declare-fun |Seq#Drop_46049| (T@Seq_46049 Int) T@Seq_46049)
(declare-sort T@Seq_3464 0)
(declare-fun |Seq#Length_3464| (T@Seq_3464) Int)
(declare-fun |Seq#Drop_3464| (T@Seq_3464 Int) T@Seq_3464)
(declare-fun succHeap (T@PolymorphicMapType_34707 T@PolymorphicMapType_34707) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34707 T@PolymorphicMapType_34707) Bool)
(declare-fun state (T@PolymorphicMapType_34707 T@PolymorphicMapType_34728) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_34728) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_35256)
(declare-fun valid (T@Ref Bool) T@Field_43813_43814)
(declare-fun IsPredicateField_20350_20351 (T@Field_43813_43814) Bool)
(declare-fun |valid#trigger_20350| (T@PolymorphicMapType_34707 T@Field_43813_43814) Bool)
(declare-fun |valid#everUsed_20350| (T@Field_43813_43814) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_46049| (T@Seq_46049 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3464| (T@Seq_3464 Int) Int)
(declare-fun |Seq#Empty_46049| () T@Seq_46049)
(declare-fun |Seq#Empty_3464| () T@Seq_3464)
(declare-fun |Seq#Update_46049| (T@Seq_46049 Int T@Ref) T@Seq_46049)
(declare-fun |Seq#Update_3464| (T@Seq_3464 Int Int) T@Seq_3464)
(declare-fun |Set#Union_20528| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_20528| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_20528| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_46049| (T@Seq_46049 Int) T@Seq_46049)
(declare-fun |Seq#Take_3464| (T@Seq_3464 Int) T@Seq_3464)
(declare-fun |valid#sm| (T@Ref Bool) T@Field_43826_43831)
(declare-fun |Seq#Contains_3464| (T@Seq_3464 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3464)
(declare-fun |Set#Card_20528| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_20388| (T@Seq_46049 T@Ref) Bool)
(declare-fun |Seq#Skolem_20388| (T@Seq_46049 T@Ref) Int)
(declare-fun |Seq#Skolem_3464| (T@Seq_3464 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34707 T@PolymorphicMapType_34707 T@PolymorphicMapType_34728) Bool)
(declare-fun IsPredicateField_20345_110139 (T@Field_20345_20351) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20345 (T@Field_20345_20351) T@Field_20345_43831)
(declare-fun HasDirectPerm_20345_20351 (T@PolymorphicMapType_34728 T@Ref T@Field_20345_20351) Bool)
(declare-fun PredicateMaskField_20350 (T@Field_43813_43814) T@Field_43826_43831)
(declare-fun HasDirectPerm_20350_20351 (T@PolymorphicMapType_34728 T@Ref T@Field_43813_43814) Bool)
(declare-fun IsWandField_20345_113499 (T@Field_20345_20351) Bool)
(declare-fun WandMaskField_20345 (T@Field_20345_20351) T@Field_20345_43831)
(declare-fun IsWandField_20350_113142 (T@Field_43813_43814) Bool)
(declare-fun WandMaskField_20350 (T@Field_43813_43814) T@Field_43826_43831)
(declare-fun |Seq#Singleton_46049| (T@Ref) T@Seq_46049)
(declare-fun |Seq#Singleton_3464| (Int) T@Seq_3464)
(declare-fun |Seq#Append_46049| (T@Seq_46049 T@Seq_46049) T@Seq_46049)
(declare-fun |Seq#Append_3464| (T@Seq_3464 T@Seq_3464) T@Seq_3464)
(declare-fun dummyHeap () T@PolymorphicMapType_34707)
(declare-fun ZeroMask () T@PolymorphicMapType_34728)
(declare-fun InsidePredicate_43813_43813 (T@Field_43813_43814 T@FrameType T@Field_43813_43814 T@FrameType) Bool)
(declare-fun InsidePredicate_34767_34767 (T@Field_20345_20351 T@FrameType T@Field_20345_20351 T@FrameType) Bool)
(declare-fun IsPredicateField_20343_5587 (T@Field_43706_5587) Bool)
(declare-fun IsWandField_20343_5587 (T@Field_43706_5587) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20350_120431 (T@Field_43826_43831) Bool)
(declare-fun IsWandField_20350_120447 (T@Field_43826_43831) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20350_34781 (T@Field_20350_34781) Bool)
(declare-fun IsWandField_20350_34781 (T@Field_20350_34781) Bool)
(declare-fun IsPredicateField_20350_53 (T@Field_20350_53) Bool)
(declare-fun IsWandField_20350_53 (T@Field_20350_53) Bool)
(declare-fun IsPredicateField_20350_5587 (T@Field_20350_5602) Bool)
(declare-fun IsWandField_20350_5587 (T@Field_20350_5602) Bool)
(declare-fun IsPredicateField_20343_119600 (T@Field_20345_43831) Bool)
(declare-fun IsWandField_20343_119616 (T@Field_20345_43831) Bool)
(declare-fun IsPredicateField_20343_34781 (T@Field_34780_34781) Bool)
(declare-fun IsWandField_20343_34781 (T@Field_34780_34781) Bool)
(declare-fun IsPredicateField_20343_53 (T@Field_34767_53) Bool)
(declare-fun IsWandField_20343_53 (T@Field_34767_53) Bool)
(declare-fun HasDirectPerm_20345_109526 (T@PolymorphicMapType_34728 T@Ref T@Field_20345_43831) Bool)
(declare-fun HasDirectPerm_20345_34781 (T@PolymorphicMapType_34728 T@Ref T@Field_34780_34781) Bool)
(declare-fun HasDirectPerm_20345_53 (T@PolymorphicMapType_34728 T@Ref T@Field_34767_53) Bool)
(declare-fun HasDirectPerm_20345_5602 (T@PolymorphicMapType_34728 T@Ref T@Field_43706_5587) Bool)
(declare-fun HasDirectPerm_20350_108453 (T@PolymorphicMapType_34728 T@Ref T@Field_43826_43831) Bool)
(declare-fun HasDirectPerm_20350_34781 (T@PolymorphicMapType_34728 T@Ref T@Field_20350_34781) Bool)
(declare-fun HasDirectPerm_20350_53 (T@PolymorphicMapType_34728 T@Ref T@Field_20350_53) Bool)
(declare-fun HasDirectPerm_20350_5602 (T@PolymorphicMapType_34728 T@Ref T@Field_20350_5602) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_34728 T@PolymorphicMapType_34728 T@PolymorphicMapType_34728) Bool)
(declare-fun |Set#Difference_20528| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Seq#Equal_46049| (T@Seq_46049 T@Seq_46049) Bool)
(declare-fun |Seq#Equal_3464| (T@Seq_3464 T@Seq_3464) Bool)
(declare-fun |Set#UnionOne_20528| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_20388| (T@Seq_46049 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3464| (T@Seq_3464 Int) Bool)
(declare-fun getPredWandId_20350_20351 (T@Field_43813_43814) Int)
(declare-fun |Set#Empty_20528| () (Array T@Ref Bool))
(declare-fun |Seq#SkolemDiff_46049| (T@Seq_46049 T@Seq_46049) Int)
(declare-fun |Seq#SkolemDiff_3464| (T@Seq_3464 T@Seq_3464) Int)
(declare-fun InsidePredicate_43813_34767 (T@Field_43813_43814 T@FrameType T@Field_20345_20351 T@FrameType) Bool)
(declare-fun InsidePredicate_34767_43813 (T@Field_20345_20351 T@FrameType T@Field_43813_43814 T@FrameType) Bool)
(assert (distinct f_7 g unrelatedField)
)
(assert (forall ((s T@Seq_46049) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_46049| s)) (= (|Seq#Length_46049| (|Seq#Drop_46049| s n)) (- (|Seq#Length_46049| s) n))) (=> (< (|Seq#Length_46049| s) n) (= (|Seq#Length_46049| (|Seq#Drop_46049| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_46049| (|Seq#Drop_46049| s n)) (|Seq#Length_46049| s))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_46049| (|Seq#Drop_46049| s n)))
 :pattern ( (|Seq#Length_46049| s) (|Seq#Drop_46049| s n))
)))
(assert (forall ((s@@0 T@Seq_3464) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3464| s@@0)) (= (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)) (- (|Seq#Length_3464| s@@0) n@@0))) (=> (< (|Seq#Length_3464| s@@0) n@@0) (= (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)) (|Seq#Length_3464| s@@0))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3464| s@@0) (|Seq#Drop_3464| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_34707) (Heap1 T@PolymorphicMapType_34707) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_34707) (Mask T@PolymorphicMapType_34728) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34707) (Heap1@@0 T@PolymorphicMapType_34707) (Heap2 T@PolymorphicMapType_34707) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_43826_43831) ) (!  (not (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_43813_43814) ) (!  (not (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20350_34781) ) (!  (not (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20350_53) ) (!  (not (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20350_5602) ) (!  (not (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20345_43831) ) (!  (not (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20345_20351) ) (!  (not (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_34780_34781) ) (!  (not (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_34767_53) ) (!  (not (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_43706_5587) ) (!  (not (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) (b_24 Bool) ) (! (IsPredicateField_20350_20351 (valid this b_24))
 :qid |stdinbpl.828:15|
 :skolemid |119|
 :pattern ( (valid this b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34707) (this@@0 T@Ref) (b_24@@0 Bool) ) (! (|valid#everUsed_20350| (valid this@@0 b_24@@0))
 :qid |stdinbpl.847:15|
 :skolemid |123|
 :pattern ( (|valid#trigger_20350| Heap@@0 (valid this@@0 b_24@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.709:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_46049) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_46049| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_46049| (|Seq#Drop_46049| s@@1 n@@1) j) (|Seq#Index_46049| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_46049| (|Seq#Drop_46049| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3464) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3464| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3464| (|Seq#Drop_3464| s@@2 n@@2) j@@0) (|Seq#Index_3464| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3464| (|Seq#Drop_3464| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_46049| |Seq#Empty_46049|) 0))
(assert (= (|Seq#Length_3464| |Seq#Empty_3464|) 0))
(assert (forall ((s@@3 T@Seq_46049) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_46049| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_46049| (|Seq#Update_46049| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_46049| (|Seq#Update_46049| s@@3 i v) n@@3) (|Seq#Index_46049| s@@3 n@@3)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_46049| (|Seq#Update_46049| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_46049| s@@3 n@@3) (|Seq#Update_46049| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3464) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3464| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3464| (|Seq#Update_3464| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3464| (|Seq#Update_3464| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3464| s@@4 n@@4)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3464| (|Seq#Update_3464| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3464| s@@4 n@@4) (|Seq#Update_3464| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_20528| (|Set#Union_20528| a@@0 b@@0) b@@0) (|Set#Union_20528| a@@0 b@@0))
 :qid |stdinbpl.661:18|
 :skolemid |74|
 :pattern ( (|Set#Union_20528| (|Set#Union_20528| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_20528| (|Set#Intersection_20528| a@@1 b@@1) b@@1) (|Set#Intersection_20528| a@@1 b@@1))
 :qid |stdinbpl.665:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_20528| (|Set#Intersection_20528| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_20528| r) o) (= r o))
 :qid |stdinbpl.630:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_20528| r) o))
)))
(assert (forall ((s@@5 T@Seq_46049) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_46049| s@@5)) (= (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_46049| s@@5) n@@5) (= (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)) (|Seq#Length_46049| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)))
 :pattern ( (|Seq#Take_46049| s@@5 n@@5) (|Seq#Length_46049| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3464) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3464| s@@6)) (= (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3464| s@@6) n@@6) (= (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)) (|Seq#Length_3464| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3464| s@@6 n@@6) (|Seq#Length_3464| s@@6))
)))
(assert (forall ((this@@1 T@Ref) (b_24@@1 Bool) (this2 T@Ref) (b2 Bool) ) (!  (=> (= (valid this@@1 b_24@@1) (valid this2 b2)) (and (= this@@1 this2) (= b_24@@1 b2)))
 :qid |stdinbpl.838:15|
 :skolemid |121|
 :pattern ( (valid this@@1 b_24@@1) (valid this2 b2))
)))
(assert (forall ((this@@2 T@Ref) (b_24@@2 Bool) (this2@@0 T@Ref) (b2@@0 Bool) ) (!  (=> (= (|valid#sm| this@@2 b_24@@2) (|valid#sm| this2@@0 b2@@0)) (and (= this@@2 this2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.842:15|
 :skolemid |122|
 :pattern ( (|valid#sm| this@@2 b_24@@2) (|valid#sm| this2@@0 b2@@0))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3464| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.606:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3464| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_20528| (|Set#Union_20528| a@@2 b@@2)) (|Set#Card_20528| (|Set#Intersection_20528| a@@2 b@@2))) (+ (|Set#Card_20528| a@@2) (|Set#Card_20528| b@@2)))
 :qid |stdinbpl.669:18|
 :skolemid |78|
 :pattern ( (|Set#Card_20528| (|Set#Union_20528| a@@2 b@@2)))
 :pattern ( (|Set#Card_20528| (|Set#Intersection_20528| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_46049) (x T@Ref) ) (!  (=> (|Seq#Contains_20388| s@@7 x) (and (and (<= 0 (|Seq#Skolem_20388| s@@7 x)) (< (|Seq#Skolem_20388| s@@7 x) (|Seq#Length_46049| s@@7))) (= (|Seq#Index_46049| s@@7 (|Seq#Skolem_20388| s@@7 x)) x)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_20388| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3464) (x@@0 Int) ) (!  (=> (|Seq#Contains_3464| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3464| s@@8 x@@0)) (< (|Seq#Skolem_3464| s@@8 x@@0) (|Seq#Length_3464| s@@8))) (= (|Seq#Index_3464| s@@8 (|Seq#Skolem_3464| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3464| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_46049) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_46049| s@@9 n@@7) s@@9))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_46049| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3464) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3464| s@@10 n@@8) s@@10))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3464| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.301:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.712:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34707) (ExhaleHeap T@PolymorphicMapType_34707) (Mask@@0 T@PolymorphicMapType_34728) (pm_f_15 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20345_20351 Mask@@0 null pm_f_15) (IsPredicateField_20345_110139 pm_f_15)) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@1) null (PredicateMaskField_20345 pm_f_15)) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap) null (PredicateMaskField_20345 pm_f_15)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_20345_110139 pm_f_15) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap) null (PredicateMaskField_20345 pm_f_15)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34707) (ExhaleHeap@@0 T@PolymorphicMapType_34707) (Mask@@1 T@PolymorphicMapType_34728) (pm_f_15@@0 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20350_20351 Mask@@1 null pm_f_15@@0) (IsPredicateField_20350_20351 pm_f_15@@0)) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@2) null (PredicateMaskField_20350 pm_f_15@@0)) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@0) null (PredicateMaskField_20350 pm_f_15@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_20350_20351 pm_f_15@@0) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@0) null (PredicateMaskField_20350 pm_f_15@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34707) (ExhaleHeap@@1 T@PolymorphicMapType_34707) (Mask@@2 T@PolymorphicMapType_34728) (pm_f_15@@1 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_20345_20351 Mask@@2 null pm_f_15@@1) (IsWandField_20345_113499 pm_f_15@@1)) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@3) null (WandMaskField_20345 pm_f_15@@1)) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@1) null (WandMaskField_20345 pm_f_15@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_20345_113499 pm_f_15@@1) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@1) null (WandMaskField_20345 pm_f_15@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34707) (ExhaleHeap@@2 T@PolymorphicMapType_34707) (Mask@@3 T@PolymorphicMapType_34728) (pm_f_15@@2 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_20350_20351 Mask@@3 null pm_f_15@@2) (IsWandField_20350_113142 pm_f_15@@2)) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@4) null (WandMaskField_20350 pm_f_15@@2)) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@2) null (WandMaskField_20350 pm_f_15@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_20350_113142 pm_f_15@@2) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@2) null (WandMaskField_20350 pm_f_15@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_20388| (|Seq#Singleton_46049| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_20388| (|Seq#Singleton_46049| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3464| (|Seq#Singleton_3464| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3464| (|Seq#Singleton_3464| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_46049) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_46049| s@@11))) (= (|Seq#Index_46049| (|Seq#Take_46049| s@@11 n@@9) j@@3) (|Seq#Index_46049| s@@11 j@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_46049| (|Seq#Take_46049| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_46049| s@@11 j@@3) (|Seq#Take_46049| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3464) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3464| s@@12))) (= (|Seq#Index_3464| (|Seq#Take_3464| s@@12 n@@10) j@@4) (|Seq#Index_3464| s@@12 j@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3464| (|Seq#Take_3464| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3464| s@@12 j@@4) (|Seq#Take_3464| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_46049) (t T@Seq_46049) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_46049| s@@13))) (< n@@11 (|Seq#Length_46049| (|Seq#Append_46049| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_46049| s@@13)) (|Seq#Length_46049| s@@13)) n@@11) (= (|Seq#Take_46049| (|Seq#Append_46049| s@@13 t) n@@11) (|Seq#Append_46049| s@@13 (|Seq#Take_46049| t (|Seq#Sub| n@@11 (|Seq#Length_46049| s@@13)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_46049| (|Seq#Append_46049| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3464) (t@@0 T@Seq_3464) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3464| s@@14))) (< n@@12 (|Seq#Length_3464| (|Seq#Append_3464| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3464| s@@14)) (|Seq#Length_3464| s@@14)) n@@12) (= (|Seq#Take_3464| (|Seq#Append_3464| s@@14 t@@0) n@@12) (|Seq#Append_3464| s@@14 (|Seq#Take_3464| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3464| s@@14)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3464| (|Seq#Append_3464| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34707) (ExhaleHeap@@3 T@PolymorphicMapType_34707) (Mask@@4 T@PolymorphicMapType_34728) (pm_f_15@@3 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_20345_20351 Mask@@4 null pm_f_15@@3) (IsPredicateField_20345_110139 pm_f_15@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_15 T@Ref) (f_45 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15 f_45) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@5) o2_15 f_45) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15 f_45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15 f_45))
)) (forall ((o2_15@@0 T@Ref) (f_45@@0 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@0 f_45@@0) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@5) o2_15@@0 f_45@@0) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@0 f_45@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@0 f_45@@0))
))) (forall ((o2_15@@1 T@Ref) (f_45@@1 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@1 f_45@@1) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@5) o2_15@@1 f_45@@1) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@1 f_45@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@1 f_45@@1))
))) (forall ((o2_15@@2 T@Ref) (f_45@@2 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@2 f_45@@2) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@5) o2_15@@2 f_45@@2) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@2 f_45@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@2 f_45@@2))
))) (forall ((o2_15@@3 T@Ref) (f_45@@3 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@3 f_45@@3) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) o2_15@@3 f_45@@3) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@3 f_45@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@3 f_45@@3))
))) (forall ((o2_15@@4 T@Ref) (f_45@@4 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@4 f_45@@4) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@5) o2_15@@4 f_45@@4) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@4 f_45@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@4 f_45@@4))
))) (forall ((o2_15@@5 T@Ref) (f_45@@5 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@5 f_45@@5) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@5) o2_15@@5 f_45@@5) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@5 f_45@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@5 f_45@@5))
))) (forall ((o2_15@@6 T@Ref) (f_45@@6 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@6 f_45@@6) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@5) o2_15@@6 f_45@@6) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@6 f_45@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@6 f_45@@6))
))) (forall ((o2_15@@7 T@Ref) (f_45@@7 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@7 f_45@@7) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@5) o2_15@@7 f_45@@7) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@7 f_45@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@7 f_45@@7))
))) (forall ((o2_15@@8 T@Ref) (f_45@@8 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@8 f_45@@8) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@5) o2_15@@8 f_45@@8) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@8 f_45@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@8 f_45@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_20345_110139 pm_f_15@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34707) (ExhaleHeap@@4 T@PolymorphicMapType_34707) (Mask@@5 T@PolymorphicMapType_34728) (pm_f_15@@4 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_20350_20351 Mask@@5 null pm_f_15@@4) (IsPredicateField_20350_20351 pm_f_15@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_15@@9 T@Ref) (f_45@@9 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@9 f_45@@9) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@6) o2_15@@9 f_45@@9) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@9 f_45@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@9 f_45@@9))
)) (forall ((o2_15@@10 T@Ref) (f_45@@10 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@10 f_45@@10) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@6) o2_15@@10 f_45@@10) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@10 f_45@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@10 f_45@@10))
))) (forall ((o2_15@@11 T@Ref) (f_45@@11 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@11 f_45@@11) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@6) o2_15@@11 f_45@@11) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@11 f_45@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@11 f_45@@11))
))) (forall ((o2_15@@12 T@Ref) (f_45@@12 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@12 f_45@@12) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@6) o2_15@@12 f_45@@12) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@12 f_45@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@12 f_45@@12))
))) (forall ((o2_15@@13 T@Ref) (f_45@@13 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@13 f_45@@13) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@6) o2_15@@13 f_45@@13) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@13 f_45@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@13 f_45@@13))
))) (forall ((o2_15@@14 T@Ref) (f_45@@14 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@14 f_45@@14) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@6) o2_15@@14 f_45@@14) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@14 f_45@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@14 f_45@@14))
))) (forall ((o2_15@@15 T@Ref) (f_45@@15 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@15 f_45@@15) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@6) o2_15@@15 f_45@@15) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@15 f_45@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@15 f_45@@15))
))) (forall ((o2_15@@16 T@Ref) (f_45@@16 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@16 f_45@@16) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@6) o2_15@@16 f_45@@16) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@16 f_45@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@16 f_45@@16))
))) (forall ((o2_15@@17 T@Ref) (f_45@@17 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@17 f_45@@17) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@6) o2_15@@17 f_45@@17) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@17 f_45@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@17 f_45@@17))
))) (forall ((o2_15@@18 T@Ref) (f_45@@18 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@18 f_45@@18) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) o2_15@@18 f_45@@18) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@18 f_45@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@18 f_45@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_20350_20351 pm_f_15@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34707) (ExhaleHeap@@5 T@PolymorphicMapType_34707) (Mask@@6 T@PolymorphicMapType_34728) (pm_f_15@@5 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_20345_20351 Mask@@6 null pm_f_15@@5) (IsWandField_20345_113499 pm_f_15@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_15@@19 T@Ref) (f_45@@19 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@19 f_45@@19) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@7) o2_15@@19 f_45@@19) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@19 f_45@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@19 f_45@@19))
)) (forall ((o2_15@@20 T@Ref) (f_45@@20 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@20 f_45@@20) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@7) o2_15@@20 f_45@@20) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@20 f_45@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@20 f_45@@20))
))) (forall ((o2_15@@21 T@Ref) (f_45@@21 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@21 f_45@@21) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@7) o2_15@@21 f_45@@21) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@21 f_45@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@21 f_45@@21))
))) (forall ((o2_15@@22 T@Ref) (f_45@@22 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@22 f_45@@22) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@7) o2_15@@22 f_45@@22) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@22 f_45@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@22 f_45@@22))
))) (forall ((o2_15@@23 T@Ref) (f_45@@23 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@23 f_45@@23) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) o2_15@@23 f_45@@23) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@23 f_45@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@23 f_45@@23))
))) (forall ((o2_15@@24 T@Ref) (f_45@@24 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@24 f_45@@24) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@7) o2_15@@24 f_45@@24) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@24 f_45@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@24 f_45@@24))
))) (forall ((o2_15@@25 T@Ref) (f_45@@25 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@25 f_45@@25) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@7) o2_15@@25 f_45@@25) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@25 f_45@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@25 f_45@@25))
))) (forall ((o2_15@@26 T@Ref) (f_45@@26 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@26 f_45@@26) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@7) o2_15@@26 f_45@@26) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@26 f_45@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@26 f_45@@26))
))) (forall ((o2_15@@27 T@Ref) (f_45@@27 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@27 f_45@@27) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@7) o2_15@@27 f_45@@27) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@27 f_45@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@27 f_45@@27))
))) (forall ((o2_15@@28 T@Ref) (f_45@@28 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@28 f_45@@28) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@7) o2_15@@28 f_45@@28) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@28 f_45@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@28 f_45@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_20345_113499 pm_f_15@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34707) (ExhaleHeap@@6 T@PolymorphicMapType_34707) (Mask@@7 T@PolymorphicMapType_34728) (pm_f_15@@6 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_20350_20351 Mask@@7 null pm_f_15@@6) (IsWandField_20350_113142 pm_f_15@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_15@@29 T@Ref) (f_45@@29 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@29 f_45@@29) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@8) o2_15@@29 f_45@@29) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@29 f_45@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@29 f_45@@29))
)) (forall ((o2_15@@30 T@Ref) (f_45@@30 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@30 f_45@@30) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@8) o2_15@@30 f_45@@30) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@30 f_45@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@30 f_45@@30))
))) (forall ((o2_15@@31 T@Ref) (f_45@@31 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@31 f_45@@31) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@8) o2_15@@31 f_45@@31) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@31 f_45@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@31 f_45@@31))
))) (forall ((o2_15@@32 T@Ref) (f_45@@32 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@32 f_45@@32) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@8) o2_15@@32 f_45@@32) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@32 f_45@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@32 f_45@@32))
))) (forall ((o2_15@@33 T@Ref) (f_45@@33 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@33 f_45@@33) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@8) o2_15@@33 f_45@@33) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@33 f_45@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@33 f_45@@33))
))) (forall ((o2_15@@34 T@Ref) (f_45@@34 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@34 f_45@@34) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@8) o2_15@@34 f_45@@34) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@34 f_45@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@34 f_45@@34))
))) (forall ((o2_15@@35 T@Ref) (f_45@@35 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@35 f_45@@35) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@8) o2_15@@35 f_45@@35) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@35 f_45@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@35 f_45@@35))
))) (forall ((o2_15@@36 T@Ref) (f_45@@36 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@36 f_45@@36) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@8) o2_15@@36 f_45@@36) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@36 f_45@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@36 f_45@@36))
))) (forall ((o2_15@@37 T@Ref) (f_45@@37 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@37 f_45@@37) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@8) o2_15@@37 f_45@@37) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@37 f_45@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@37 f_45@@37))
))) (forall ((o2_15@@38 T@Ref) (f_45@@38 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@38 f_45@@38) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) o2_15@@38 f_45@@38) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@38 f_45@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@38 f_45@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_20350_113142 pm_f_15@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34707) (ExhaleHeap@@7 T@PolymorphicMapType_34707) (Mask@@8 T@PolymorphicMapType_34728) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@9) o_39 $allocated) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@7) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@7) o_39 $allocated))
)))
(assert (forall ((p T@Field_43813_43814) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43813_43813 p v_1 p w))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43813_43813 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_20345_20351) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_34767_34767 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34767_34767 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_46049) (s1 T@Seq_46049) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_46049|)) (not (= s1 |Seq#Empty_46049|))) (<= (|Seq#Length_46049| s0) n@@13)) (< n@@13 (|Seq#Length_46049| (|Seq#Append_46049| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_46049| s0)) (|Seq#Length_46049| s0)) n@@13) (= (|Seq#Index_46049| (|Seq#Append_46049| s0 s1) n@@13) (|Seq#Index_46049| s1 (|Seq#Sub| n@@13 (|Seq#Length_46049| s0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_46049| (|Seq#Append_46049| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3464) (s1@@0 T@Seq_3464) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3464|)) (not (= s1@@0 |Seq#Empty_3464|))) (<= (|Seq#Length_3464| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3464| (|Seq#Append_3464| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3464| s0@@0)) (|Seq#Length_3464| s0@@0)) n@@14) (= (|Seq#Index_3464| (|Seq#Append_3464| s0@@0 s1@@0) n@@14) (|Seq#Index_3464| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3464| s0@@0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3464| (|Seq#Append_3464| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_20343_5587 f_7)))
(assert  (not (IsWandField_20343_5587 f_7)))
(assert  (not (IsPredicateField_20343_5587 g)))
(assert  (not (IsWandField_20343_5587 g)))
(assert  (not (IsPredicateField_20343_5587 unrelatedField)))
(assert  (not (IsWandField_20343_5587 unrelatedField)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34707) (ExhaleHeap@@8 T@PolymorphicMapType_34707) (Mask@@9 T@PolymorphicMapType_34728) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_34728) (o_2@@9 T@Ref) (f_4@@9 T@Field_43826_43831) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_20350_120431 f_4@@9))) (not (IsWandField_20350_120447 f_4@@9))) (<= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34728) (o_2@@10 T@Ref) (f_4@@10 T@Field_20350_34781) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_20350_34781 f_4@@10))) (not (IsWandField_20350_34781 f_4@@10))) (<= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34728) (o_2@@11 T@Ref) (f_4@@11 T@Field_20350_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_20350_53 f_4@@11))) (not (IsWandField_20350_53 f_4@@11))) (<= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34728) (o_2@@12 T@Ref) (f_4@@12 T@Field_43813_43814) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_20350_20351 f_4@@12))) (not (IsWandField_20350_113142 f_4@@12))) (<= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_34728) (o_2@@13 T@Ref) (f_4@@13 T@Field_20350_5602) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_20350_5587 f_4@@13))) (not (IsWandField_20350_5587 f_4@@13))) (<= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_34728) (o_2@@14 T@Ref) (f_4@@14 T@Field_20345_43831) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_20343_119600 f_4@@14))) (not (IsWandField_20343_119616 f_4@@14))) (<= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_34728) (o_2@@15 T@Ref) (f_4@@15 T@Field_34780_34781) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_20343_34781 f_4@@15))) (not (IsWandField_20343_34781 f_4@@15))) (<= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_34728) (o_2@@16 T@Ref) (f_4@@16 T@Field_34767_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_20343_53 f_4@@16))) (not (IsWandField_20343_53 f_4@@16))) (<= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_34728) (o_2@@17 T@Ref) (f_4@@17 T@Field_20345_20351) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20345_110139 f_4@@17))) (not (IsWandField_20345_113499 f_4@@17))) (<= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_34728) (o_2@@18 T@Ref) (f_4@@18 T@Field_43706_5587) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20343_5587 f_4@@18))) (not (IsWandField_20343_5587 f_4@@18))) (<= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_34728) (o_2@@19 T@Ref) (f_4@@19 T@Field_20345_43831) ) (! (= (HasDirectPerm_20345_109526 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_109526 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_34728) (o_2@@20 T@Ref) (f_4@@20 T@Field_34780_34781) ) (! (= (HasDirectPerm_20345_34781 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_34781 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_34728) (o_2@@21 T@Ref) (f_4@@21 T@Field_34767_53) ) (! (= (HasDirectPerm_20345_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_34728) (o_2@@22 T@Ref) (f_4@@22 T@Field_43706_5587) ) (! (= (HasDirectPerm_20345_5602 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_5602 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_34728) (o_2@@23 T@Ref) (f_4@@23 T@Field_20345_20351) ) (! (= (HasDirectPerm_20345_20351 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_20351 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_34728) (o_2@@24 T@Ref) (f_4@@24 T@Field_43826_43831) ) (! (= (HasDirectPerm_20350_108453 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_108453 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_34728) (o_2@@25 T@Ref) (f_4@@25 T@Field_20350_34781) ) (! (= (HasDirectPerm_20350_34781 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_34781 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_34728) (o_2@@26 T@Ref) (f_4@@26 T@Field_20350_53) ) (! (= (HasDirectPerm_20350_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_34728) (o_2@@27 T@Ref) (f_4@@27 T@Field_20350_5602) ) (! (= (HasDirectPerm_20350_5602 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_5602 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_34728) (o_2@@28 T@Ref) (f_4@@28 T@Field_43813_43814) ) (! (= (HasDirectPerm_20350_20351 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_20351 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.231:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3464| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.604:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3464| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34707) (ExhaleHeap@@9 T@PolymorphicMapType_34707) (Mask@@30 T@PolymorphicMapType_34728) (o_39@@0 T@Ref) (f_45@@39 T@Field_20345_43831) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_20345_109526 Mask@@30 o_39@@0 f_45@@39) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@11) o_39@@0 f_45@@39) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@9) o_39@@0 f_45@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@9) o_39@@0 f_45@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34707) (ExhaleHeap@@10 T@PolymorphicMapType_34707) (Mask@@31 T@PolymorphicMapType_34728) (o_39@@1 T@Ref) (f_45@@40 T@Field_34780_34781) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_20345_34781 Mask@@31 o_39@@1 f_45@@40) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@12) o_39@@1 f_45@@40) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@10) o_39@@1 f_45@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@10) o_39@@1 f_45@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34707) (ExhaleHeap@@11 T@PolymorphicMapType_34707) (Mask@@32 T@PolymorphicMapType_34728) (o_39@@2 T@Ref) (f_45@@41 T@Field_34767_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_20345_53 Mask@@32 o_39@@2 f_45@@41) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@13) o_39@@2 f_45@@41) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@11) o_39@@2 f_45@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@11) o_39@@2 f_45@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34707) (ExhaleHeap@@12 T@PolymorphicMapType_34707) (Mask@@33 T@PolymorphicMapType_34728) (o_39@@3 T@Ref) (f_45@@42 T@Field_43706_5587) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_20345_5602 Mask@@33 o_39@@3 f_45@@42) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@14) o_39@@3 f_45@@42) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@12) o_39@@3 f_45@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@12) o_39@@3 f_45@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34707) (ExhaleHeap@@13 T@PolymorphicMapType_34707) (Mask@@34 T@PolymorphicMapType_34728) (o_39@@4 T@Ref) (f_45@@43 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_20345_20351 Mask@@34 o_39@@4 f_45@@43) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@15) o_39@@4 f_45@@43) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@13) o_39@@4 f_45@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@13) o_39@@4 f_45@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34707) (ExhaleHeap@@14 T@PolymorphicMapType_34707) (Mask@@35 T@PolymorphicMapType_34728) (o_39@@5 T@Ref) (f_45@@44 T@Field_43826_43831) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_20350_108453 Mask@@35 o_39@@5 f_45@@44) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@16) o_39@@5 f_45@@44) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@14) o_39@@5 f_45@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@14) o_39@@5 f_45@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34707) (ExhaleHeap@@15 T@PolymorphicMapType_34707) (Mask@@36 T@PolymorphicMapType_34728) (o_39@@6 T@Ref) (f_45@@45 T@Field_20350_34781) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_20350_34781 Mask@@36 o_39@@6 f_45@@45) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@17) o_39@@6 f_45@@45) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@15) o_39@@6 f_45@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@15) o_39@@6 f_45@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_34707) (ExhaleHeap@@16 T@PolymorphicMapType_34707) (Mask@@37 T@PolymorphicMapType_34728) (o_39@@7 T@Ref) (f_45@@46 T@Field_20350_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_20350_53 Mask@@37 o_39@@7 f_45@@46) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@18) o_39@@7 f_45@@46) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@16) o_39@@7 f_45@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@16) o_39@@7 f_45@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_34707) (ExhaleHeap@@17 T@PolymorphicMapType_34707) (Mask@@38 T@PolymorphicMapType_34728) (o_39@@8 T@Ref) (f_45@@47 T@Field_20350_5602) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_20350_5602 Mask@@38 o_39@@8 f_45@@47) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@19) o_39@@8 f_45@@47) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@17) o_39@@8 f_45@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@17) o_39@@8 f_45@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_34707) (ExhaleHeap@@18 T@PolymorphicMapType_34707) (Mask@@39 T@PolymorphicMapType_34728) (o_39@@9 T@Ref) (f_45@@48 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_20350_20351 Mask@@39 o_39@@9 f_45@@48) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@20) o_39@@9 f_45@@48) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@18) o_39@@9 f_45@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@18) o_39@@9 f_45@@48))
)))
(assert (forall ((s0@@1 T@Seq_46049) (s1@@1 T@Seq_46049) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_46049|)) (not (= s1@@1 |Seq#Empty_46049|))) (= (|Seq#Length_46049| (|Seq#Append_46049| s0@@1 s1@@1)) (+ (|Seq#Length_46049| s0@@1) (|Seq#Length_46049| s1@@1))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_46049| (|Seq#Append_46049| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3464) (s1@@2 T@Seq_3464) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3464|)) (not (= s1@@2 |Seq#Empty_3464|))) (= (|Seq#Length_3464| (|Seq#Append_3464| s0@@2 s1@@2)) (+ (|Seq#Length_3464| s0@@2) (|Seq#Length_3464| s1@@2))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3464| (|Seq#Append_3464| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_43826_43831) ) (! (= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_20350_34781) ) (! (= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20350_53) ) (! (= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_43813_43814) ) (! (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20350_5602) ) (! (= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_20345_43831) ) (! (= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_34780_34781) ) (! (= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_34767_53) ) (! (= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20345_20351) ) (! (= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_43706_5587) ) (! (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_46049) (t@@1 T@Seq_46049) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_46049| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_46049| s@@15)) (|Seq#Length_46049| s@@15)) n@@15) (= (|Seq#Drop_46049| (|Seq#Append_46049| s@@15 t@@1) n@@15) (|Seq#Drop_46049| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_46049| s@@15))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_46049| (|Seq#Append_46049| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3464) (t@@2 T@Seq_3464) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3464| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3464| s@@16)) (|Seq#Length_3464| s@@16)) n@@16) (= (|Seq#Drop_3464| (|Seq#Append_3464| s@@16 t@@2) n@@16) (|Seq#Drop_3464| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3464| s@@16))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3464| (|Seq#Append_3464| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34728) (SummandMask1 T@PolymorphicMapType_34728) (SummandMask2 T@PolymorphicMapType_34728) (o_2@@39 T@Ref) (f_4@@39 T@Field_43826_43831) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34728) (SummandMask1@@0 T@PolymorphicMapType_34728) (SummandMask2@@0 T@PolymorphicMapType_34728) (o_2@@40 T@Ref) (f_4@@40 T@Field_20350_34781) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34728) (SummandMask1@@1 T@PolymorphicMapType_34728) (SummandMask2@@1 T@PolymorphicMapType_34728) (o_2@@41 T@Ref) (f_4@@41 T@Field_20350_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34728) (SummandMask1@@2 T@PolymorphicMapType_34728) (SummandMask2@@2 T@PolymorphicMapType_34728) (o_2@@42 T@Ref) (f_4@@42 T@Field_43813_43814) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34728) (SummandMask1@@3 T@PolymorphicMapType_34728) (SummandMask2@@3 T@PolymorphicMapType_34728) (o_2@@43 T@Ref) (f_4@@43 T@Field_20350_5602) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_34728) (SummandMask1@@4 T@PolymorphicMapType_34728) (SummandMask2@@4 T@PolymorphicMapType_34728) (o_2@@44 T@Ref) (f_4@@44 T@Field_20345_43831) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_34728) (SummandMask1@@5 T@PolymorphicMapType_34728) (SummandMask2@@5 T@PolymorphicMapType_34728) (o_2@@45 T@Ref) (f_4@@45 T@Field_34780_34781) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_34728) (SummandMask1@@6 T@PolymorphicMapType_34728) (SummandMask2@@6 T@PolymorphicMapType_34728) (o_2@@46 T@Ref) (f_4@@46 T@Field_34767_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_34728) (SummandMask1@@7 T@PolymorphicMapType_34728) (SummandMask2@@7 T@PolymorphicMapType_34728) (o_2@@47 T@Ref) (f_4@@47 T@Field_20345_20351) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_34728) (SummandMask1@@8 T@PolymorphicMapType_34728) (SummandMask2@@8 T@PolymorphicMapType_34728) (o_2@@48 T@Ref) (f_4@@48 T@Field_43706_5587) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_20528| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.658:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_20528| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_20528| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_20528| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3464| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3464| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.603:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3464| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_20528| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.673:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_20528| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_20528| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_46049) (b@@5 T@Seq_46049) ) (!  (=> (|Seq#Equal_46049| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_46049| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3464) (b@@6 T@Seq_3464) ) (!  (=> (|Seq#Equal_3464| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3464| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@1 T@Ref) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_20528| a@@8 x@@3) y@@1))
 :qid |stdinbpl.638:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_20528| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_20528| a@@9 b@@7) y@@2))
 :qid |stdinbpl.648:18|
 :skolemid |71|
 :pattern ( (|Set#Union_20528| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_20528| a@@10 b@@8) y@@3))
 :qid |stdinbpl.650:18|
 :skolemid |72|
 :pattern ( (|Set#Union_20528| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_20528| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.634:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_20528| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_20528| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.675:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_20528| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_46049) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_46049| s@@17))) (|Seq#ContainsTrigger_20388| s@@17 (|Seq#Index_46049| s@@17 i@@3)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_46049| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3464) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3464| s@@18))) (|Seq#ContainsTrigger_3464| s@@18 (|Seq#Index_3464| s@@18 i@@4)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3464| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_20528| (|Set#Difference_20528| a@@13 b@@10)) (|Set#Card_20528| (|Set#Difference_20528| b@@10 a@@13))) (|Set#Card_20528| (|Set#Intersection_20528| a@@13 b@@10))) (|Set#Card_20528| (|Set#Union_20528| a@@13 b@@10))) (= (|Set#Card_20528| (|Set#Difference_20528| a@@13 b@@10)) (- (|Set#Card_20528| a@@13) (|Set#Card_20528| (|Set#Intersection_20528| a@@13 b@@10)))))
 :qid |stdinbpl.677:18|
 :skolemid |81|
 :pattern ( (|Set#Card_20528| (|Set#Difference_20528| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_46049) (s1@@3 T@Seq_46049) ) (!  (and (=> (= s0@@3 |Seq#Empty_46049|) (= (|Seq#Append_46049| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_46049|) (= (|Seq#Append_46049| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_46049| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3464) (s1@@4 T@Seq_3464) ) (!  (and (=> (= s0@@4 |Seq#Empty_3464|) (= (|Seq#Append_3464| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3464|) (= (|Seq#Append_3464| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3464| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_46049| (|Seq#Singleton_46049| t@@3) 0) t@@3)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_46049| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3464| (|Seq#Singleton_3464| t@@4) 0) t@@4)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3464| t@@4))
)))
(assert (forall ((s@@19 T@Seq_46049) ) (! (<= 0 (|Seq#Length_46049| s@@19))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_46049| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3464) ) (! (<= 0 (|Seq#Length_3464| s@@20))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3464| s@@20))
)))
(assert (forall ((s@@21 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_20528| s@@21))
 :qid |stdinbpl.620:18|
 :skolemid |58|
 :pattern ( (|Set#Card_20528| s@@21))
)))
(assert (forall ((this@@3 T@Ref) (b_24@@3 Bool) ) (! (= (getPredWandId_20350_20351 (valid this@@3 b_24@@3)) 0)
 :qid |stdinbpl.832:15|
 :skolemid |120|
 :pattern ( (valid this@@3 b_24@@3))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_20528| a@@14 x@@5) x@@5)
 :qid |stdinbpl.636:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_20528| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_46049) (s1@@5 T@Seq_46049) ) (!  (=> (|Seq#Equal_46049| s0@@5 s1@@5) (and (= (|Seq#Length_46049| s0@@5) (|Seq#Length_46049| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_46049| s0@@5))) (= (|Seq#Index_46049| s0@@5 j@@6) (|Seq#Index_46049| s1@@5 j@@6)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_46049| s0@@5 j@@6))
 :pattern ( (|Seq#Index_46049| s1@@5 j@@6))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_46049| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3464) (s1@@6 T@Seq_3464) ) (!  (=> (|Seq#Equal_3464| s0@@6 s1@@6) (and (= (|Seq#Length_3464| s0@@6) (|Seq#Length_3464| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3464| s0@@6))) (= (|Seq#Index_3464| s0@@6 j@@7) (|Seq#Index_3464| s1@@6 j@@7)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3464| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3464| s1@@6 j@@7))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3464| s0@@6 s1@@6))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_20528| (|Set#UnionOne_20528| a@@15 x@@6)) (|Set#Card_20528| a@@15)))
 :qid |stdinbpl.640:18|
 :skolemid |68|
 :pattern ( (|Set#Card_20528| (|Set#UnionOne_20528| a@@15 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_46049| (|Seq#Singleton_46049| t@@5)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_46049| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3464| (|Seq#Singleton_3464| t@@6)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3464| t@@6))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_20528| (|Set#Singleton_20528| r@@0)) 1)
 :qid |stdinbpl.631:18|
 :skolemid |64|
 :pattern ( (|Set#Card_20528| (|Set#Singleton_20528| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_20528| r@@1) r@@1)
 :qid |stdinbpl.629:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_20528| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_20528| a@@16 (|Set#Union_20528| a@@16 b@@11)) (|Set#Union_20528| a@@16 b@@11))
 :qid |stdinbpl.663:18|
 :skolemid |75|
 :pattern ( (|Set#Union_20528| a@@16 (|Set#Union_20528| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_20528| a@@17 (|Set#Intersection_20528| a@@17 b@@12)) (|Set#Intersection_20528| a@@17 b@@12))
 :qid |stdinbpl.667:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_20528| a@@17 (|Set#Intersection_20528| a@@17 b@@12)))
)))
(assert (forall ((this@@4 T@Ref) (b_24@@4 Bool) ) (! (= (PredicateMaskField_20350 (valid this@@4 b_24@@4)) (|valid#sm| this@@4 b_24@@4))
 :qid |stdinbpl.824:15|
 :skolemid |118|
 :pattern ( (PredicateMaskField_20350 (valid this@@4 b_24@@4)))
)))
(assert (forall ((s@@22 T@Seq_46049) (t@@7 T@Seq_46049) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_46049| s@@22))) (= (|Seq#Take_46049| (|Seq#Append_46049| s@@22 t@@7) n@@17) (|Seq#Take_46049| s@@22 n@@17)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_46049| (|Seq#Append_46049| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3464) (t@@8 T@Seq_3464) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3464| s@@23))) (= (|Seq#Take_3464| (|Seq#Append_3464| s@@23 t@@8) n@@18) (|Seq#Take_3464| s@@23 n@@18)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3464| (|Seq#Append_3464| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_20528| o@@3))
 :qid |stdinbpl.623:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_20528| o@@3))
)))
(assert (forall ((s@@24 T@Seq_46049) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_46049| s@@24))) (= (|Seq#Length_46049| (|Seq#Update_46049| s@@24 i@@5 v@@2)) (|Seq#Length_46049| s@@24)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_46049| (|Seq#Update_46049| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_46049| s@@24) (|Seq#Update_46049| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3464) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3464| s@@25))) (= (|Seq#Length_3464| (|Seq#Update_3464| s@@25 i@@6 v@@3)) (|Seq#Length_3464| s@@25)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3464| (|Seq#Update_3464| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3464| s@@25) (|Seq#Update_3464| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_34707) (o_38 T@Ref) (f_40 T@Field_43826_43831) (v@@4 T@PolymorphicMapType_35256) ) (! (succHeap Heap@@21 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@21) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@21) o_38 f_40 v@@4) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@21) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@21) o_38 f_40 v@@4) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_34707) (o_38@@0 T@Ref) (f_40@@0 T@Field_43813_43814) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@22) (store (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@22) o_38@@0 f_40@@0 v@@5) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@22) (store (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@22) o_38@@0 f_40@@0 v@@5) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_34707) (o_38@@1 T@Ref) (f_40@@1 T@Field_20350_5602) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@23) (store (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@23) o_38@@1 f_40@@1 v@@6) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@23) (store (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@23) o_38@@1 f_40@@1 v@@6) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_34707) (o_38@@2 T@Ref) (f_40@@2 T@Field_20350_34781) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@24) (store (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@24) o_38@@2 f_40@@2 v@@7) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@24) (store (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@24) o_38@@2 f_40@@2 v@@7) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_34707) (o_38@@3 T@Ref) (f_40@@3 T@Field_20350_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@25) (store (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@25) o_38@@3 f_40@@3 v@@8) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@25) (store (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@25) o_38@@3 f_40@@3 v@@8) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_34707) (o_38@@4 T@Ref) (f_40@@4 T@Field_20345_43831) (v@@9 T@PolymorphicMapType_35256) ) (! (succHeap Heap@@26 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@26) (store (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@26) o_38@@4 f_40@@4 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@26) (store (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@26) o_38@@4 f_40@@4 v@@9)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_34707) (o_38@@5 T@Ref) (f_40@@5 T@Field_20345_20351) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@27) (store (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@27) o_38@@5 f_40@@5 v@@10) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@27) (store (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@27) o_38@@5 f_40@@5 v@@10) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_34707) (o_38@@6 T@Ref) (f_40@@6 T@Field_43706_5587) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@28) (store (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@28) o_38@@6 f_40@@6 v@@11) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@28) (store (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@28) o_38@@6 f_40@@6 v@@11) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_34707) (o_38@@7 T@Ref) (f_40@@7 T@Field_34780_34781) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@29) (store (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@29) o_38@@7 f_40@@7 v@@12) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@29) (store (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@29) o_38@@7 f_40@@7 v@@12) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_34707) (o_38@@8 T@Ref) (f_40@@8 T@Field_34767_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_34707 (store (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@30) o_38@@8 f_40@@8 v@@13) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (store (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@30) o_38@@8 f_40@@8 v@@13) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@30)))
)))
(assert (forall ((s@@26 T@Seq_46049) (t@@9 T@Seq_46049) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_46049| s@@26))) (= (|Seq#Drop_46049| (|Seq#Append_46049| s@@26 t@@9) n@@19) (|Seq#Append_46049| (|Seq#Drop_46049| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_46049| (|Seq#Append_46049| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3464) (t@@10 T@Seq_3464) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3464| s@@27))) (= (|Seq#Drop_3464| (|Seq#Append_3464| s@@27 t@@10) n@@20) (|Seq#Append_3464| (|Seq#Drop_3464| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3464| (|Seq#Append_3464| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.707:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.708:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_46049) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_46049| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_46049| (|Seq#Drop_46049| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_46049| s@@28 i@@7))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_46049| s@@28 n@@21) (|Seq#Index_46049| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3464) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3464| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3464| (|Seq#Drop_3464| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3464| s@@29 i@@8))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3464| s@@29 n@@22) (|Seq#Index_3464| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_20528| s@@30) 0) (= s@@30 |Set#Empty_20528|)) (=> (not (= (|Set#Card_20528| s@@30) 0)) (exists ((x@@7 T@Ref) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.626:33|
 :skolemid |60|
))))
 :qid |stdinbpl.624:18|
 :skolemid |61|
 :pattern ( (|Set#Card_20528| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_46049) (s1@@7 T@Seq_46049) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_46049|)) (not (= s1@@7 |Seq#Empty_46049|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_46049| s0@@7))) (= (|Seq#Index_46049| (|Seq#Append_46049| s0@@7 s1@@7) n@@23) (|Seq#Index_46049| s0@@7 n@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_46049| (|Seq#Append_46049| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_46049| s0@@7 n@@23) (|Seq#Append_46049| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3464) (s1@@8 T@Seq_3464) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3464|)) (not (= s1@@8 |Seq#Empty_3464|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3464| s0@@8))) (= (|Seq#Index_3464| (|Seq#Append_3464| s0@@8 s1@@8) n@@24) (|Seq#Index_3464| s0@@8 n@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3464| (|Seq#Append_3464| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3464| s0@@8 n@@24) (|Seq#Append_3464| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_46049) (s1@@9 T@Seq_46049) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_46049|)) (not (= s1@@9 |Seq#Empty_46049|))) (<= 0 m)) (< m (|Seq#Length_46049| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_46049| s0@@9)) (|Seq#Length_46049| s0@@9)) m) (= (|Seq#Index_46049| (|Seq#Append_46049| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_46049| s0@@9))) (|Seq#Index_46049| s1@@9 m))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_46049| s1@@9 m) (|Seq#Append_46049| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3464) (s1@@10 T@Seq_3464) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3464|)) (not (= s1@@10 |Seq#Empty_3464|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3464| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3464| s0@@10)) (|Seq#Length_3464| s0@@10)) m@@0) (= (|Seq#Index_3464| (|Seq#Append_3464| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3464| s0@@10))) (|Seq#Index_3464| s1@@10 m@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3464| s1@@10 m@@0) (|Seq#Append_3464| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_20528| (|Set#UnionOne_20528| a@@20 x@@8)) (+ (|Set#Card_20528| a@@20) 1)))
 :qid |stdinbpl.642:18|
 :skolemid |69|
 :pattern ( (|Set#Card_20528| (|Set#UnionOne_20528| a@@20 x@@8)))
)))
(assert (forall ((o_38@@9 T@Ref) (f_44 T@Field_34780_34781) (Heap@@31 T@PolymorphicMapType_34707) ) (!  (=> (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@31) o_38@@9 $allocated) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@31) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@31) o_38@@9 f_44) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@31) o_38@@9 f_44))
)))
(assert (forall ((s@@31 T@Seq_46049) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_46049| s@@31))) (= (|Seq#Index_46049| s@@31 i@@9) x@@9)) (|Seq#Contains_20388| s@@31 x@@9))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_20388| s@@31 x@@9) (|Seq#Index_46049| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3464) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3464| s@@32))) (= (|Seq#Index_3464| s@@32 i@@10) x@@10)) (|Seq#Contains_3464| s@@32 x@@10))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3464| s@@32 x@@10) (|Seq#Index_3464| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_46049) (s1@@11 T@Seq_46049) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_46049| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46049| s0@@11 s1@@11))) (not (= (|Seq#Length_46049| s0@@11) (|Seq#Length_46049| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46049| s0@@11 s1@@11))) (= (|Seq#Length_46049| s0@@11) (|Seq#Length_46049| s1@@11))) (= (|Seq#SkolemDiff_46049| s0@@11 s1@@11) (|Seq#SkolemDiff_46049| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_46049| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_46049| s0@@11 s1@@11) (|Seq#Length_46049| s0@@11))) (not (= (|Seq#Index_46049| s0@@11 (|Seq#SkolemDiff_46049| s0@@11 s1@@11)) (|Seq#Index_46049| s1@@11 (|Seq#SkolemDiff_46049| s0@@11 s1@@11))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_46049| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3464) (s1@@12 T@Seq_3464) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3464| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3464| s0@@12 s1@@12))) (not (= (|Seq#Length_3464| s0@@12) (|Seq#Length_3464| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3464| s0@@12 s1@@12))) (= (|Seq#Length_3464| s0@@12) (|Seq#Length_3464| s1@@12))) (= (|Seq#SkolemDiff_3464| s0@@12 s1@@12) (|Seq#SkolemDiff_3464| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3464| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3464| s0@@12 s1@@12) (|Seq#Length_3464| s0@@12))) (not (= (|Seq#Index_3464| s0@@12 (|Seq#SkolemDiff_3464| s0@@12 s1@@12)) (|Seq#Index_3464| s1@@12 (|Seq#SkolemDiff_3464| s0@@12 s1@@12))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3464| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_43813_43814) (v_1@@1 T@FrameType) (q T@Field_43813_43814) (w@@1 T@FrameType) (r@@2 T@Field_43813_43814) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43813_43813 p@@2 v_1@@1 q w@@1) (InsidePredicate_43813_43813 q w@@1 r@@2 u)) (InsidePredicate_43813_43813 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_43813 p@@2 v_1@@1 q w@@1) (InsidePredicate_43813_43813 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_43813_43814) (v_1@@2 T@FrameType) (q@@0 T@Field_43813_43814) (w@@2 T@FrameType) (r@@3 T@Field_20345_20351) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_43813_43813 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_43813_34767 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_43813_34767 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_43813 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_43813_34767 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_43813_43814) (v_1@@3 T@FrameType) (q@@1 T@Field_20345_20351) (w@@3 T@FrameType) (r@@4 T@Field_43813_43814) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_43813_34767 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_34767_43813 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_43813_43813 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_34767 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_34767_43813 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_43813_43814) (v_1@@4 T@FrameType) (q@@2 T@Field_20345_20351) (w@@4 T@FrameType) (r@@5 T@Field_20345_20351) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_43813_34767 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_34767_34767 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_43813_34767 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_34767 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_34767_34767 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_20345_20351) (v_1@@5 T@FrameType) (q@@3 T@Field_43813_43814) (w@@5 T@FrameType) (r@@6 T@Field_43813_43814) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_43813 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_43813_43813 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_34767_43813 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_43813 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_43813_43813 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_20345_20351) (v_1@@6 T@FrameType) (q@@4 T@Field_43813_43814) (w@@6 T@FrameType) (r@@7 T@Field_20345_20351) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_43813 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_43813_34767 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_34767_34767 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_43813 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_43813_34767 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_20345_20351) (v_1@@7 T@FrameType) (q@@5 T@Field_20345_20351) (w@@7 T@FrameType) (r@@8 T@Field_43813_43814) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_34767 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_34767_43813 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_34767_43813 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_34767 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_34767_43813 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_20345_20351) (v_1@@8 T@FrameType) (q@@6 T@Field_20345_20351) (w@@8 T@FrameType) (r@@9 T@Field_20345_20351) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_34767 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_34767_34767 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_34767_34767 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_34767 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_34767_34767 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.713:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_46049) ) (!  (=> (= (|Seq#Length_46049| s@@33) 0) (= s@@33 |Seq#Empty_46049|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_46049| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3464) ) (!  (=> (= (|Seq#Length_3464| s@@34) 0) (= s@@34 |Seq#Empty_3464|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3464| s@@34))
)))
(assert (forall ((s@@35 T@Seq_46049) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_46049| s@@35 n@@25) |Seq#Empty_46049|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_46049| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3464) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3464| s@@36 n@@26) |Seq#Empty_3464|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3464| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_20528| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.646:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_20528| a@@22 b@@15) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@9 () T@PolymorphicMapType_34728)
(declare-fun this@@5 () T@Ref)
(declare-fun b_24@@5 () Bool)
(declare-fun Mask@8 () T@PolymorphicMapType_34728)
(declare-fun Mask@7 () T@PolymorphicMapType_34728)
(declare-fun Heap@10 () T@PolymorphicMapType_34707)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_34707)
(declare-fun Heap@9 () T@PolymorphicMapType_34707)
(declare-fun Heap@7 () T@PolymorphicMapType_34707)
(declare-fun Heap@8 () T@PolymorphicMapType_34707)
(declare-fun Heap@4 () T@PolymorphicMapType_34707)
(declare-fun Heap@5 () T@PolymorphicMapType_34707)
(declare-fun Heap@6 () T@PolymorphicMapType_34707)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@6 () T@PolymorphicMapType_34728)
(declare-fun FrameFragment_23932 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_5587 (Int) T@FrameType)
(declare-fun Mask@5 () T@PolymorphicMapType_34728)
(declare-fun Mask@3 () T@PolymorphicMapType_34728)
(declare-fun Mask@4 () T@PolymorphicMapType_34728)
(declare-fun Heap@3 () T@PolymorphicMapType_34707)
(declare-fun Heap@1 () T@PolymorphicMapType_34707)
(declare-fun Heap@2 () T@PolymorphicMapType_34707)
(declare-fun Mask@2 () T@PolymorphicMapType_34728)
(declare-fun Mask@0 () T@PolymorphicMapType_34728)
(declare-fun Mask@1 () T@PolymorphicMapType_34728)
(declare-fun Heap@@32 () T@PolymorphicMapType_34707)
(declare-fun Heap@0 () T@PolymorphicMapType_34707)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@1 () T@PolymorphicMapType_34728)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun xs () T@Seq_46049)
(declare-fun QPMask@0 () T@PolymorphicMapType_34728)
(declare-fun invRecv3 (T@Ref Bool) T@Ref)
(declare-fun qpRange3 (T@Ref Bool) Bool)
(declare-fun getPredWandId_20343_5587 (T@Field_43706_5587) Int)
(declare-fun getPredWandId_20343_20351 (T@Field_20345_20351) Int)
(declare-fun getPredWandId_20343_53 (T@Field_34767_53) Int)
(declare-fun getPredWandId_20343_34781 (T@Field_34780_34781) Int)
(declare-fun getPredWandId_20343_135160 (T@Field_20345_43831) Int)
(declare-fun getPredWandId_20350_5587 (T@Field_20350_5602) Int)
(declare-fun getPredWandId_20350_53 (T@Field_20350_53) Int)
(declare-fun getPredWandId_20350_34781 (T@Field_20350_34781) Int)
(declare-fun getPredWandId_20350_135969 (T@Field_43826_43831) Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(set-info :boogie-vc-id t1_2)
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
 (=> (= (ControlFlow 0 0) 48) (let ((anon32_correct true))
(let ((anon46_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 7) 4)) anon32_correct)))
(let ((anon46_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= FullPerm (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@9) null (valid this@@5 b_24@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@9) null (valid this@@5 b_24@@5))) (=> (= (ControlFlow 0 5) 4) anon32_correct))))))
(let ((anon30_correct  (=> (= Mask@8 (PolymorphicMapType_34728 (store (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@7) this@@5 unrelatedField (- (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@7) this@@5 unrelatedField) FullPerm)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@7) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@7))) (=> (and (IdenticalOnKnownLocations Heap@10 ExhaleHeap@0 Mask@8) (not (= this@@5 null))) (=> (and (and (= Mask@9 (PolymorphicMapType_34728 (store (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@8) this@@5 unrelatedField (+ (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@8) this@@5 unrelatedField) FullPerm)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@8) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@8))) (state ExhaleHeap@0 Mask@9)) (and (state ExhaleHeap@0 Mask@9) (state ExhaleHeap@0 Mask@9))) (and (=> (= (ControlFlow 0 8) 5) anon46_Then_correct) (=> (= (ControlFlow 0 8) 7) anon46_Else_correct)))))))
(let ((anon45_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 8)) anon30_correct)))
(let ((anon45_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@7) this@@5 unrelatedField))) (=> (<= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@7) this@@5 unrelatedField)) (=> (= (ControlFlow 0 9) 8) anon30_correct))))))
(let ((anon28_correct  (=> (and (state Heap@10 Mask@7) (state Heap@10 Mask@7)) (and (=> (= (ControlFlow 0 12) 9) anon45_Then_correct) (=> (= (ControlFlow 0 12) 11) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not b_24@@5) (= Heap@9 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@7) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5) (PolymorphicMapType_35256 (store (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) this@@5 g true) (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))))) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@7)))) (and (= Heap@10 Heap@9) (= (ControlFlow 0 14) 12))) anon28_correct)))
(let ((anon44_Then_correct  (=> (and (and b_24@@5 (= Heap@8 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@7) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5) (PolymorphicMapType_35256 (store (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) this@@5 f_7 true) (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))) (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@7) null (|valid#sm| this@@5 b_24@@5))))) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@7) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@7)))) (and (= Heap@10 Heap@8) (= (ControlFlow 0 13) 12))) anon28_correct)))
(let ((anon43_Else_correct  (=> (and (HasDirectPerm_20350_20351 Mask@7 null (valid this@@5 b_24@@5)) (= Heap@7 Heap@4)) (and (=> (= (ControlFlow 0 16) 13) anon44_Then_correct) (=> (= (ControlFlow 0 16) 14) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (and (and (not (HasDirectPerm_20350_20351 Mask@7 null (valid this@@5 b_24@@5))) (= Heap@5 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@4) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@4) null (|valid#sm| this@@5 b_24@@5) ZeroPMask) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@4) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@4)))) (and (= Heap@6 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@5) (store (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@5) null (valid this@@5 b_24@@5) freshVersion@0) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@5) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@5))) (= Heap@7 Heap@6))) (and (=> (= (ControlFlow 0 15) 13) anon44_Then_correct) (=> (= (ControlFlow 0 15) 14) anon44_Else_correct)))))
(let ((anon23_correct  (=> (= Mask@7 (PolymorphicMapType_34728 (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@6) (store (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@6) null (valid this@@5 b_24@@5) (+ (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@6) null (valid this@@5 b_24@@5)) FullPerm)) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@6) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@6))) (=> (and (and (state Heap@4 Mask@7) (state Heap@4 Mask@7)) (and (|valid#trigger_20350| Heap@4 (valid this@@5 b_24@@5)) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@4) null (valid this@@5 b_24@@5)) (FrameFragment_23932 (ite b_24@@5 (FrameFragment_5587 (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@4) this@@5 f_7)) (FrameFragment_5587 (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@4) this@@5 g))))))) (and (=> (= (ControlFlow 0 17) 15) anon43_Then_correct) (=> (= (ControlFlow 0 17) 16) anon43_Else_correct))))))
(let ((anon19_correct  (=> (= Mask@5 (PolymorphicMapType_34728 (store (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 f_7 (- (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 f_7) FullPerm)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@3))) (=> (and (= Mask@6 Mask@5) (= (ControlFlow 0 23) 17)) anon23_correct))))
(let ((anon41_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 26) 23)) anon19_correct)))
(let ((anon41_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 f_7)) (=> (= (ControlFlow 0 24) 23) anon19_correct))))))
(let ((anon40_Then_correct  (=> b_24@@5 (and (=> (= (ControlFlow 0 27) 24) anon41_Then_correct) (=> (= (ControlFlow 0 27) 26) anon41_Else_correct)))))
(let ((anon22_correct  (=> (= Mask@4 (PolymorphicMapType_34728 (store (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 g (- (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 g) FullPerm)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@3) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@3))) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 18) 17)) anon23_correct))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 21) 18)) anon22_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 g))) (=> (<= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 g)) (=> (= (ControlFlow 0 19) 18) anon22_correct))))))
(let ((anon40_Else_correct  (=> (not b_24@@5) (and (=> (= (ControlFlow 0 22) 19) anon42_Then_correct) (=> (= (ControlFlow 0 22) 21) anon42_Else_correct)))))
(let ((anon16_correct  (=> (state Heap@4 Mask@3) (and (=> (= (ControlFlow 0 28) 27) anon40_Then_correct) (=> (= (ControlFlow 0 28) 22) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (not b_24@@5) (and (=> (= (ControlFlow 0 31) (- 0 32)) (= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 g))) (=> (= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 g)) (=> (and (and (= Heap@3 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@1) (store (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@1) this@@5 g 2) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@1))) (state Heap@3 Mask@3)) (and (= Heap@4 Heap@3) (= (ControlFlow 0 31) 28))) anon16_correct))))))
(let ((anon39_Then_correct  (=> b_24@@5 (and (=> (= (ControlFlow 0 29) (- 0 30)) (= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@3) this@@5 f_7)) (=> (and (and (= Heap@2 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@1) (store (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@1) this@@5 f_7 1) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@1) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@1))) (state Heap@2 Mask@3)) (and (= Heap@4 Heap@2) (= (ControlFlow 0 29) 28))) anon16_correct))))))
(let ((anon13_correct  (=> (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 33) 29) anon39_Then_correct) (=> (= (ControlFlow 0 33) 31) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not b_24@@5) (not (= this@@5 null))) (=> (and (and (= Mask@2 (PolymorphicMapType_34728 (store (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@0) this@@5 g (+ (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@0) this@@5 g) FullPerm)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@0))) (state Heap@1 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 35) 33))) anon13_correct))))
(let ((anon38_Then_correct  (=> (and b_24@@5 (not (= this@@5 null))) (=> (and (and (= Mask@1 (PolymorphicMapType_34728 (store (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@0) this@@5 f_7 (+ (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@0) this@@5 f_7) FullPerm)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@0) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@0))) (state Heap@1 Mask@1)) (and (= Mask@3 Mask@1) (= (ControlFlow 0 34) 33))) anon13_correct))))
(let ((anon37_Else_correct  (=> (and (HasDirectPerm_20350_20351 Mask@0 null (valid this@@5 b_24@@5)) (= Heap@1 Heap@@32)) (and (=> (= (ControlFlow 0 37) 34) anon38_Then_correct) (=> (= (ControlFlow 0 37) 35) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (not (HasDirectPerm_20350_20351 Mask@0 null (valid this@@5 b_24@@5))) (=> (and (= Heap@0 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@32) (store (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@32) null (valid this@@5 b_24@@5) newVersion@0) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@32) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@32))) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 36) 34) anon38_Then_correct) (=> (= (ControlFlow 0 36) 35) anon38_Else_correct))))))
(let ((anon8_correct  (=> (= Mask@0 (PolymorphicMapType_34728 (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@1) (store (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this@@5 b_24@@5) (- (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this@@5 b_24@@5)) FullPerm)) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@1) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@1))) (and (=> (= (ControlFlow 0 38) 36) anon37_Then_correct) (=> (= (ControlFlow 0 38) 37) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 41) 38)) anon8_correct)))
(let ((anon36_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (<= FullPerm (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this@@5 b_24@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this@@5 b_24@@5))) (=> (= (ControlFlow 0 39) 38) anon8_correct))))))
(let ((anon35_Else_correct  (=> (and (|valid#trigger_20350| Heap@@32 (valid this@@5 b_24@@5)) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@32) null (valid this@@5 b_24@@5)) (FrameFragment_23932 (ite b_24@@5 (FrameFragment_5587 (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@32) this@@5 f_7)) (FrameFragment_5587 (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@32) this@@5 g)))))) (and (=> (= (ControlFlow 0 42) 39) anon36_Then_correct) (=> (= (ControlFlow 0 42) 41) anon36_Else_correct)))))
(let ((anon35_Then_correct true))
(let ((anon34_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (|Seq#Contains_20388| xs x_3)) (|Seq#Contains_20388| xs x_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= x_3 x_3_1)) (= b_24@@5  (not b_24@@5))))
 :qid |stdinbpl.1246:17|
 :skolemid |136|
 :pattern ( (neverTriggered3 x_3) (neverTriggered3 x_3_1))
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (|Seq#Contains_20388| xs x_3@@0)) (|Seq#Contains_20388| xs x_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= x_3@@0 x_3_1@@0)) (= b_24@@5  (not b_24@@5))))
 :qid |stdinbpl.1246:17|
 :skolemid |136|
 :pattern ( (neverTriggered3 x_3@@0) (neverTriggered3 x_3_1@@0))
)) (=> (forall ((x_3@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_20388| xs x_3@@1) (< NoPerm FullPerm)) (and (= (invRecv3 x_3@@1 b_24@@5) x_3@@1) (qpRange3 x_3@@1 b_24@@5)))
 :qid |stdinbpl.1252:22|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@32) null (valid x_3@@1 b_24@@5)))
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) null (valid x_3@@1 b_24@@5)))
 :pattern ( (|Seq#ContainsTrigger_20388| xs x_3@@1))
 :pattern ( (|Seq#Contains_20388| xs x_3@@1))
)) (=> (and (forall ((this_1_1 T@Ref) (b_1_1_1 Bool) ) (!  (=> (and (and (|Seq#Contains_20388| xs (invRecv3 this_1_1 b_1_1_1)) (< NoPerm FullPerm)) (qpRange3 this_1_1 b_1_1_1)) (and (= (invRecv3 this_1_1 b_1_1_1) this_1_1) (= b_24@@5 b_1_1_1)))
 :qid |stdinbpl.1256:22|
 :skolemid |138|
 :pattern ( (invRecv3 this_1_1 b_1_1_1))
)) (forall ((this_1_1@@0 T@Ref) (b_1_1_1@@0 Bool) ) (!  (=> (and (and (|Seq#Contains_20388| xs (invRecv3 this_1_1@@0 b_1_1_1@@0)) (< NoPerm FullPerm)) (qpRange3 this_1_1@@0 b_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv3 this_1_1@@0 b_1_1_1@@0) this_1_1@@0) (= b_24@@5 b_1_1_1@@0))) (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this_1_1@@0 b_1_1_1@@0)) (+ (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) null (valid this_1_1@@0 b_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.1262:22|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this_1_1@@0 b_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_43706_5587) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_20343_5587 f_5))) (not (= (getPredWandId_20343_5587 f_5) 0))) (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4 f_5) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@1) o_4 f_5)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@1) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_20345_20351) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_20345_110139 f_5@@0))) (not (= (getPredWandId_20343_20351 f_5@@0) 0))) (= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@0) o_4@@0 f_5@@0) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@1) o_4@@0 f_5@@0)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@0) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@1) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_34767_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_20343_53 f_5@@1))) (not (= (getPredWandId_20343_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@0) o_4@@1 f_5@@1) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@1) o_4@@1 f_5@@1)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@0) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@1) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_34780_34781) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_20343_34781 f_5@@2))) (not (= (getPredWandId_20343_34781 f_5@@2) 0))) (= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@0) o_4@@2 f_5@@2) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@1) o_4@@2 f_5@@2)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@0) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@1) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_20345_43831) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_20343_119600 f_5@@3))) (not (= (getPredWandId_20343_135160 f_5@@3) 0))) (= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@0) o_4@@3 f_5@@3) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@1) o_4@@3 f_5@@3)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@0) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@1) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_20350_5602) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_20350_5587 f_5@@4))) (not (= (getPredWandId_20350_5587 f_5@@4) 0))) (= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@0) o_4@@4 f_5@@4) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@1) o_4@@4 f_5@@4)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@0) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@1) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_43813_43814) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_20350_20351 f_5@@5))) (not (= (getPredWandId_20350_20351 f_5@@5) 0))) (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) o_4@@5 f_5@@5) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) o_4@@5 f_5@@5)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_20350_53) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_20350_53 f_5@@6))) (not (= (getPredWandId_20350_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@0) o_4@@6 f_5@@6) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@1) o_4@@6 f_5@@6)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@0) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@1) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_20350_34781) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_20350_34781 f_5@@7))) (not (= (getPredWandId_20350_34781 f_5@@7) 0))) (= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@0) o_4@@7 f_5@@7) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@1) o_4@@7 f_5@@7)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@0) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@1) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_43826_43831) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_20350_120431 f_5@@8))) (not (= (getPredWandId_20350_135969 f_5@@8) 0))) (= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@0) o_4@@8 f_5@@8) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@1) o_4@@8 f_5@@8)))
 :qid |stdinbpl.1268:29|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@0) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@1) o_4@@8 f_5@@8))
))) (forall ((this_1_1@@1 T@Ref) (b_1_1_1@@1 Bool) ) (!  (=> (not (and (and (|Seq#Contains_20388| xs (invRecv3 this_1_1@@1 b_1_1_1@@1)) (< NoPerm FullPerm)) (qpRange3 this_1_1@@1 b_1_1_1@@1))) (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this_1_1@@1 b_1_1_1@@1)) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) null (valid this_1_1@@1 b_1_1_1@@1))))
 :qid |stdinbpl.1272:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@1) null (valid this_1_1@@1 b_1_1_1@@1)))
))) (and (state Heap@@32 QPMask@1) (state Heap@@32 QPMask@1))) (and (=> (= (ControlFlow 0 43) 3) anon35_Then_correct) (=> (= (ControlFlow 0 43) 42) anon35_Else_correct)))))))))
(let ((anon34_Then_correct true))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_20388| xs x_1)) (|Seq#Contains_20388| xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.1204:15|
 :skolemid |130|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (|Seq#Contains_20388| xs x_1@@0)) (|Seq#Contains_20388| xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.1204:15|
 :skolemid |130|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_20388| xs x_1@@1) (< NoPerm FullPerm)) (and (qpRange2 x_1@@1) (= (invRecv2 x_1@@1) x_1@@1)))
 :qid |stdinbpl.1210:22|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@32) x_1@@1 unrelatedField))
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) x_1@@1 unrelatedField))
 :pattern ( (|Seq#ContainsTrigger_20388| xs x_1@@1))
 :pattern ( (|Seq#Contains_20388| xs x_1@@1))
)) (forall ((o_4@@9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_20388| xs (invRecv2 o_4@@9)) (< NoPerm FullPerm)) (qpRange2 o_4@@9)) (= (invRecv2 o_4@@9) o_4@@9))
 :qid |stdinbpl.1214:22|
 :skolemid |132|
 :pattern ( (invRecv2 o_4@@9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_20388| xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.1220:22|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@32) x_1@@2 unrelatedField))
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) x_1@@2 unrelatedField))
 :pattern ( (|Seq#ContainsTrigger_20388| xs x_1@@2))
 :pattern ( (|Seq#Contains_20388| xs x_1@@2))
)) (forall ((o_4@@10 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_20388| xs (invRecv2 o_4@@10)) (< NoPerm FullPerm)) (qpRange2 o_4@@10)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_4@@10) o_4@@10)) (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4@@10 unrelatedField) (+ (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_4@@10 unrelatedField) FullPerm)))) (=> (not (and (and (|Seq#Contains_20388| xs (invRecv2 o_4@@10)) (< NoPerm FullPerm)) (qpRange2 o_4@@10))) (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4@@10 unrelatedField) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_4@@10 unrelatedField))))
 :qid |stdinbpl.1226:22|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4@@10 unrelatedField))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@11 T@Ref) (f_5@@9 T@Field_34767_53) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ZeroMask) o_4@@11 f_5@@9) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@0) o_4@@11 f_5@@9)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ZeroMask) o_4@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| QPMask@0) o_4@@11 f_5@@9))
)) (forall ((o_4@@12 T@Ref) (f_5@@10 T@Field_34780_34781) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ZeroMask) o_4@@12 f_5@@10) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@0) o_4@@12 f_5@@10)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ZeroMask) o_4@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| QPMask@0) o_4@@12 f_5@@10))
))) (forall ((o_4@@13 T@Ref) (f_5@@11 T@Field_43706_5587) ) (!  (=> (not (= f_5@@11 unrelatedField)) (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_4@@13 f_5@@11) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4@@13 f_5@@11)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_4@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| QPMask@0) o_4@@13 f_5@@11))
))) (forall ((o_4@@14 T@Ref) (f_5@@12 T@Field_20345_20351) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ZeroMask) o_4@@14 f_5@@12) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@0) o_4@@14 f_5@@12)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ZeroMask) o_4@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| QPMask@0) o_4@@14 f_5@@12))
))) (forall ((o_4@@15 T@Ref) (f_5@@13 T@Field_20345_43831) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ZeroMask) o_4@@15 f_5@@13) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@0) o_4@@15 f_5@@13)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ZeroMask) o_4@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| QPMask@0) o_4@@15 f_5@@13))
))) (forall ((o_4@@16 T@Ref) (f_5@@14 T@Field_20350_53) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ZeroMask) o_4@@16 f_5@@14) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@0) o_4@@16 f_5@@14)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ZeroMask) o_4@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| QPMask@0) o_4@@16 f_5@@14))
))) (forall ((o_4@@17 T@Ref) (f_5@@15 T@Field_20350_34781) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ZeroMask) o_4@@17 f_5@@15) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@0) o_4@@17 f_5@@15)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ZeroMask) o_4@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| QPMask@0) o_4@@17 f_5@@15))
))) (forall ((o_4@@18 T@Ref) (f_5@@16 T@Field_20350_5602) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ZeroMask) o_4@@18 f_5@@16) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@0) o_4@@18 f_5@@16)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ZeroMask) o_4@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| QPMask@0) o_4@@18 f_5@@16))
))) (forall ((o_4@@19 T@Ref) (f_5@@17 T@Field_43813_43814) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ZeroMask) o_4@@19 f_5@@17) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) o_4@@19 f_5@@17)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ZeroMask) o_4@@19 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| QPMask@0) o_4@@19 f_5@@17))
))) (forall ((o_4@@20 T@Ref) (f_5@@18 T@Field_43826_43831) ) (!  (=> true (= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ZeroMask) o_4@@20 f_5@@18) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@0) o_4@@20 f_5@@18)))
 :qid |stdinbpl.1230:29|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ZeroMask) o_4@@20 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| QPMask@0) o_4@@20 f_5@@18))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 45) 2) anon34_Then_correct) (=> (= (ControlFlow 0 45) 43) anon34_Else_correct))))))))
(let ((anon33_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@32) this@@5 $allocated)) (and (|Seq#Contains_20388| xs this@@5) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 47) 1) anon33_Then_correct) (=> (= (ControlFlow 0 47) 45) anon33_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 48) 47) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
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
(declare-sort T@Field_34767_53 0)
(declare-sort T@Field_34780_34781 0)
(declare-sort T@Field_43706_5587 0)
(declare-sort T@Field_43813_43814 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_43826_43831 0)
(declare-sort T@Field_20350_5602 0)
(declare-sort T@Field_20350_53 0)
(declare-sort T@Field_20350_34781 0)
(declare-sort T@Field_20345_20351 0)
(declare-sort T@Field_20345_43831 0)
(declare-datatypes ((T@PolymorphicMapType_34728 0)) (((PolymorphicMapType_34728 (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| (Array T@Ref T@Field_43706_5587 Real)) (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| (Array T@Ref T@Field_43813_43814 Real)) (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| (Array T@Ref T@Field_20345_20351 Real)) (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| (Array T@Ref T@Field_34767_53 Real)) (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| (Array T@Ref T@Field_34780_34781 Real)) (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| (Array T@Ref T@Field_20345_43831 Real)) (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| (Array T@Ref T@Field_20350_5602 Real)) (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| (Array T@Ref T@Field_20350_53 Real)) (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| (Array T@Ref T@Field_20350_34781 Real)) (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| (Array T@Ref T@Field_43826_43831 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35256 0)) (((PolymorphicMapType_35256 (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (Array T@Ref T@Field_43706_5587 Bool)) (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (Array T@Ref T@Field_34767_53 Bool)) (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (Array T@Ref T@Field_34780_34781 Bool)) (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (Array T@Ref T@Field_20345_20351 Bool)) (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (Array T@Ref T@Field_20345_43831 Bool)) (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (Array T@Ref T@Field_20350_5602 Bool)) (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (Array T@Ref T@Field_20350_53 Bool)) (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (Array T@Ref T@Field_20350_34781 Bool)) (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (Array T@Ref T@Field_43813_43814 Bool)) (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (Array T@Ref T@Field_43826_43831 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34707 0)) (((PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| (Array T@Ref T@Field_34767_53 Bool)) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| (Array T@Ref T@Field_34780_34781 T@Ref)) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| (Array T@Ref T@Field_43706_5587 Int)) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| (Array T@Ref T@Field_43813_43814 T@FrameType)) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| (Array T@Ref T@Field_43826_43831 T@PolymorphicMapType_35256)) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| (Array T@Ref T@Field_20350_5602 Int)) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| (Array T@Ref T@Field_20350_53 Bool)) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| (Array T@Ref T@Field_20350_34781 T@Ref)) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| (Array T@Ref T@Field_20345_20351 T@FrameType)) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| (Array T@Ref T@Field_20345_43831 T@PolymorphicMapType_35256)) ) ) ))
(declare-fun $allocated () T@Field_34767_53)
(declare-fun f_7 () T@Field_43706_5587)
(declare-fun g () T@Field_43706_5587)
(declare-fun unrelatedField () T@Field_43706_5587)
(declare-sort T@Seq_46049 0)
(declare-fun |Seq#Length_46049| (T@Seq_46049) Int)
(declare-fun |Seq#Drop_46049| (T@Seq_46049 Int) T@Seq_46049)
(declare-sort T@Seq_3464 0)
(declare-fun |Seq#Length_3464| (T@Seq_3464) Int)
(declare-fun |Seq#Drop_3464| (T@Seq_3464 Int) T@Seq_3464)
(declare-fun succHeap (T@PolymorphicMapType_34707 T@PolymorphicMapType_34707) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34707 T@PolymorphicMapType_34707) Bool)
(declare-fun state (T@PolymorphicMapType_34707 T@PolymorphicMapType_34728) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_34728) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_35256)
(declare-fun valid (T@Ref Bool) T@Field_43813_43814)
(declare-fun IsPredicateField_20350_20351 (T@Field_43813_43814) Bool)
(declare-fun |valid#trigger_20350| (T@PolymorphicMapType_34707 T@Field_43813_43814) Bool)
(declare-fun |valid#everUsed_20350| (T@Field_43813_43814) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_46049| (T@Seq_46049 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3464| (T@Seq_3464 Int) Int)
(declare-fun |Seq#Empty_46049| () T@Seq_46049)
(declare-fun |Seq#Empty_3464| () T@Seq_3464)
(declare-fun |Seq#Update_46049| (T@Seq_46049 Int T@Ref) T@Seq_46049)
(declare-fun |Seq#Update_3464| (T@Seq_3464 Int Int) T@Seq_3464)
(declare-fun |Set#Union_20528| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_20528| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_20528| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_46049| (T@Seq_46049 Int) T@Seq_46049)
(declare-fun |Seq#Take_3464| (T@Seq_3464 Int) T@Seq_3464)
(declare-fun |valid#sm| (T@Ref Bool) T@Field_43826_43831)
(declare-fun |Seq#Contains_3464| (T@Seq_3464 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3464)
(declare-fun |Set#Card_20528| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_20388| (T@Seq_46049 T@Ref) Bool)
(declare-fun |Seq#Skolem_20388| (T@Seq_46049 T@Ref) Int)
(declare-fun |Seq#Skolem_3464| (T@Seq_3464 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34707 T@PolymorphicMapType_34707 T@PolymorphicMapType_34728) Bool)
(declare-fun IsPredicateField_20345_110139 (T@Field_20345_20351) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20345 (T@Field_20345_20351) T@Field_20345_43831)
(declare-fun HasDirectPerm_20345_20351 (T@PolymorphicMapType_34728 T@Ref T@Field_20345_20351) Bool)
(declare-fun PredicateMaskField_20350 (T@Field_43813_43814) T@Field_43826_43831)
(declare-fun HasDirectPerm_20350_20351 (T@PolymorphicMapType_34728 T@Ref T@Field_43813_43814) Bool)
(declare-fun IsWandField_20345_113499 (T@Field_20345_20351) Bool)
(declare-fun WandMaskField_20345 (T@Field_20345_20351) T@Field_20345_43831)
(declare-fun IsWandField_20350_113142 (T@Field_43813_43814) Bool)
(declare-fun WandMaskField_20350 (T@Field_43813_43814) T@Field_43826_43831)
(declare-fun |Seq#Singleton_46049| (T@Ref) T@Seq_46049)
(declare-fun |Seq#Singleton_3464| (Int) T@Seq_3464)
(declare-fun |Seq#Append_46049| (T@Seq_46049 T@Seq_46049) T@Seq_46049)
(declare-fun |Seq#Append_3464| (T@Seq_3464 T@Seq_3464) T@Seq_3464)
(declare-fun dummyHeap () T@PolymorphicMapType_34707)
(declare-fun ZeroMask () T@PolymorphicMapType_34728)
(declare-fun InsidePredicate_43813_43813 (T@Field_43813_43814 T@FrameType T@Field_43813_43814 T@FrameType) Bool)
(declare-fun InsidePredicate_34767_34767 (T@Field_20345_20351 T@FrameType T@Field_20345_20351 T@FrameType) Bool)
(declare-fun IsPredicateField_20343_5587 (T@Field_43706_5587) Bool)
(declare-fun IsWandField_20343_5587 (T@Field_43706_5587) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20350_120431 (T@Field_43826_43831) Bool)
(declare-fun IsWandField_20350_120447 (T@Field_43826_43831) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20350_34781 (T@Field_20350_34781) Bool)
(declare-fun IsWandField_20350_34781 (T@Field_20350_34781) Bool)
(declare-fun IsPredicateField_20350_53 (T@Field_20350_53) Bool)
(declare-fun IsWandField_20350_53 (T@Field_20350_53) Bool)
(declare-fun IsPredicateField_20350_5587 (T@Field_20350_5602) Bool)
(declare-fun IsWandField_20350_5587 (T@Field_20350_5602) Bool)
(declare-fun IsPredicateField_20343_119600 (T@Field_20345_43831) Bool)
(declare-fun IsWandField_20343_119616 (T@Field_20345_43831) Bool)
(declare-fun IsPredicateField_20343_34781 (T@Field_34780_34781) Bool)
(declare-fun IsWandField_20343_34781 (T@Field_34780_34781) Bool)
(declare-fun IsPredicateField_20343_53 (T@Field_34767_53) Bool)
(declare-fun IsWandField_20343_53 (T@Field_34767_53) Bool)
(declare-fun HasDirectPerm_20345_109526 (T@PolymorphicMapType_34728 T@Ref T@Field_20345_43831) Bool)
(declare-fun HasDirectPerm_20345_34781 (T@PolymorphicMapType_34728 T@Ref T@Field_34780_34781) Bool)
(declare-fun HasDirectPerm_20345_53 (T@PolymorphicMapType_34728 T@Ref T@Field_34767_53) Bool)
(declare-fun HasDirectPerm_20345_5602 (T@PolymorphicMapType_34728 T@Ref T@Field_43706_5587) Bool)
(declare-fun HasDirectPerm_20350_108453 (T@PolymorphicMapType_34728 T@Ref T@Field_43826_43831) Bool)
(declare-fun HasDirectPerm_20350_34781 (T@PolymorphicMapType_34728 T@Ref T@Field_20350_34781) Bool)
(declare-fun HasDirectPerm_20350_53 (T@PolymorphicMapType_34728 T@Ref T@Field_20350_53) Bool)
(declare-fun HasDirectPerm_20350_5602 (T@PolymorphicMapType_34728 T@Ref T@Field_20350_5602) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_34728 T@PolymorphicMapType_34728 T@PolymorphicMapType_34728) Bool)
(declare-fun |Set#Difference_20528| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Seq#Equal_46049| (T@Seq_46049 T@Seq_46049) Bool)
(declare-fun |Seq#Equal_3464| (T@Seq_3464 T@Seq_3464) Bool)
(declare-fun |Set#UnionOne_20528| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_20388| (T@Seq_46049 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3464| (T@Seq_3464 Int) Bool)
(declare-fun getPredWandId_20350_20351 (T@Field_43813_43814) Int)
(declare-fun |Set#Empty_20528| () (Array T@Ref Bool))
(declare-fun |Seq#SkolemDiff_46049| (T@Seq_46049 T@Seq_46049) Int)
(declare-fun |Seq#SkolemDiff_3464| (T@Seq_3464 T@Seq_3464) Int)
(declare-fun InsidePredicate_43813_34767 (T@Field_43813_43814 T@FrameType T@Field_20345_20351 T@FrameType) Bool)
(declare-fun InsidePredicate_34767_43813 (T@Field_20345_20351 T@FrameType T@Field_43813_43814 T@FrameType) Bool)
(assert (distinct f_7 g unrelatedField)
)
(assert (forall ((s T@Seq_46049) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_46049| s)) (= (|Seq#Length_46049| (|Seq#Drop_46049| s n)) (- (|Seq#Length_46049| s) n))) (=> (< (|Seq#Length_46049| s) n) (= (|Seq#Length_46049| (|Seq#Drop_46049| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_46049| (|Seq#Drop_46049| s n)) (|Seq#Length_46049| s))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_46049| (|Seq#Drop_46049| s n)))
 :pattern ( (|Seq#Length_46049| s) (|Seq#Drop_46049| s n))
)))
(assert (forall ((s@@0 T@Seq_3464) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3464| s@@0)) (= (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)) (- (|Seq#Length_3464| s@@0) n@@0))) (=> (< (|Seq#Length_3464| s@@0) n@@0) (= (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)) (|Seq#Length_3464| s@@0))))
 :qid |stdinbpl.345:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3464| (|Seq#Drop_3464| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3464| s@@0) (|Seq#Drop_3464| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_34707) (Heap1 T@PolymorphicMapType_34707) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_34707) (Mask T@PolymorphicMapType_34728) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34707) (Heap1@@0 T@PolymorphicMapType_34707) (Heap2 T@PolymorphicMapType_34707) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_43826_43831) ) (!  (not (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_43813_43814) ) (!  (not (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20350_34781) ) (!  (not (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20350_53) ) (!  (not (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20350_5602) ) (!  (not (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_20345_43831) ) (!  (not (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_20345_20351) ) (!  (not (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_34780_34781) ) (!  (not (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_34767_53) ) (!  (not (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_43706_5587) ) (!  (not (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) (b_24 Bool) ) (! (IsPredicateField_20350_20351 (valid this b_24))
 :qid |stdinbpl.828:15|
 :skolemid |119|
 :pattern ( (valid this b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34707) (this@@0 T@Ref) (b_24@@0 Bool) ) (! (|valid#everUsed_20350| (valid this@@0 b_24@@0))
 :qid |stdinbpl.847:15|
 :skolemid |123|
 :pattern ( (|valid#trigger_20350| Heap@@0 (valid this@@0 b_24@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.709:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_46049) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_46049| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_46049| (|Seq#Drop_46049| s@@1 n@@1) j) (|Seq#Index_46049| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_46049| (|Seq#Drop_46049| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3464) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3464| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3464| (|Seq#Drop_3464| s@@2 n@@2) j@@0) (|Seq#Index_3464| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.366:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3464| (|Seq#Drop_3464| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_46049| |Seq#Empty_46049|) 0))
(assert (= (|Seq#Length_3464| |Seq#Empty_3464|) 0))
(assert (forall ((s@@3 T@Seq_46049) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_46049| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_46049| (|Seq#Update_46049| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_46049| (|Seq#Update_46049| s@@3 i v) n@@3) (|Seq#Index_46049| s@@3 n@@3)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_46049| (|Seq#Update_46049| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_46049| s@@3 n@@3) (|Seq#Update_46049| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3464) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3464| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3464| (|Seq#Update_3464| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3464| (|Seq#Update_3464| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3464| s@@4 n@@4)))))
 :qid |stdinbpl.321:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3464| (|Seq#Update_3464| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3464| s@@4 n@@4) (|Seq#Update_3464| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_20528| (|Set#Union_20528| a@@0 b@@0) b@@0) (|Set#Union_20528| a@@0 b@@0))
 :qid |stdinbpl.661:18|
 :skolemid |74|
 :pattern ( (|Set#Union_20528| (|Set#Union_20528| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_20528| (|Set#Intersection_20528| a@@1 b@@1) b@@1) (|Set#Intersection_20528| a@@1 b@@1))
 :qid |stdinbpl.665:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_20528| (|Set#Intersection_20528| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_20528| r) o) (= r o))
 :qid |stdinbpl.630:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_20528| r) o))
)))
(assert (forall ((s@@5 T@Seq_46049) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_46049| s@@5)) (= (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_46049| s@@5) n@@5) (= (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)) (|Seq#Length_46049| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_46049| (|Seq#Take_46049| s@@5 n@@5)))
 :pattern ( (|Seq#Take_46049| s@@5 n@@5) (|Seq#Length_46049| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3464) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3464| s@@6)) (= (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3464| s@@6) n@@6) (= (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)) (|Seq#Length_3464| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)) 0)))
 :qid |stdinbpl.332:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3464| (|Seq#Take_3464| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3464| s@@6 n@@6) (|Seq#Length_3464| s@@6))
)))
(assert (forall ((this@@1 T@Ref) (b_24@@1 Bool) (this2 T@Ref) (b2 Bool) ) (!  (=> (= (valid this@@1 b_24@@1) (valid this2 b2)) (and (= this@@1 this2) (= b_24@@1 b2)))
 :qid |stdinbpl.838:15|
 :skolemid |121|
 :pattern ( (valid this@@1 b_24@@1) (valid this2 b2))
)))
(assert (forall ((this@@2 T@Ref) (b_24@@2 Bool) (this2@@0 T@Ref) (b2@@0 Bool) ) (!  (=> (= (|valid#sm| this@@2 b_24@@2) (|valid#sm| this2@@0 b2@@0)) (and (= this@@2 this2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.842:15|
 :skolemid |122|
 :pattern ( (|valid#sm| this@@2 b_24@@2) (|valid#sm| this2@@0 b2@@0))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3464| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.606:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3464| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_20528| (|Set#Union_20528| a@@2 b@@2)) (|Set#Card_20528| (|Set#Intersection_20528| a@@2 b@@2))) (+ (|Set#Card_20528| a@@2) (|Set#Card_20528| b@@2)))
 :qid |stdinbpl.669:18|
 :skolemid |78|
 :pattern ( (|Set#Card_20528| (|Set#Union_20528| a@@2 b@@2)))
 :pattern ( (|Set#Card_20528| (|Set#Intersection_20528| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_46049) (x T@Ref) ) (!  (=> (|Seq#Contains_20388| s@@7 x) (and (and (<= 0 (|Seq#Skolem_20388| s@@7 x)) (< (|Seq#Skolem_20388| s@@7 x) (|Seq#Length_46049| s@@7))) (= (|Seq#Index_46049| s@@7 (|Seq#Skolem_20388| s@@7 x)) x)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_20388| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3464) (x@@0 Int) ) (!  (=> (|Seq#Contains_3464| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3464| s@@8 x@@0)) (< (|Seq#Skolem_3464| s@@8 x@@0) (|Seq#Length_3464| s@@8))) (= (|Seq#Index_3464| s@@8 (|Seq#Skolem_3464| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.464:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3464| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_46049) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_46049| s@@9 n@@7) s@@9))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_46049| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3464) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3464| s@@10 n@@8) s@@10))
 :qid |stdinbpl.448:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3464| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.301:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.299:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.712:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34707) (ExhaleHeap T@PolymorphicMapType_34707) (Mask@@0 T@PolymorphicMapType_34728) (pm_f_15 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_20345_20351 Mask@@0 null pm_f_15) (IsPredicateField_20345_110139 pm_f_15)) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@1) null (PredicateMaskField_20345 pm_f_15)) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap) null (PredicateMaskField_20345 pm_f_15)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_20345_110139 pm_f_15) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap) null (PredicateMaskField_20345 pm_f_15)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34707) (ExhaleHeap@@0 T@PolymorphicMapType_34707) (Mask@@1 T@PolymorphicMapType_34728) (pm_f_15@@0 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20350_20351 Mask@@1 null pm_f_15@@0) (IsPredicateField_20350_20351 pm_f_15@@0)) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@2) null (PredicateMaskField_20350 pm_f_15@@0)) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@0) null (PredicateMaskField_20350 pm_f_15@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_20350_20351 pm_f_15@@0) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@0) null (PredicateMaskField_20350 pm_f_15@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34707) (ExhaleHeap@@1 T@PolymorphicMapType_34707) (Mask@@2 T@PolymorphicMapType_34728) (pm_f_15@@1 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_20345_20351 Mask@@2 null pm_f_15@@1) (IsWandField_20345_113499 pm_f_15@@1)) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@3) null (WandMaskField_20345 pm_f_15@@1)) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@1) null (WandMaskField_20345 pm_f_15@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_20345_113499 pm_f_15@@1) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@1) null (WandMaskField_20345 pm_f_15@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34707) (ExhaleHeap@@2 T@PolymorphicMapType_34707) (Mask@@3 T@PolymorphicMapType_34728) (pm_f_15@@2 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_20350_20351 Mask@@3 null pm_f_15@@2) (IsWandField_20350_113142 pm_f_15@@2)) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@4) null (WandMaskField_20350 pm_f_15@@2)) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@2) null (WandMaskField_20350 pm_f_15@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_20350_113142 pm_f_15@@2) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@2) null (WandMaskField_20350 pm_f_15@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_20388| (|Seq#Singleton_46049| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_20388| (|Seq#Singleton_46049| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3464| (|Seq#Singleton_3464| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.589:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3464| (|Seq#Singleton_3464| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_46049) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_46049| s@@11))) (= (|Seq#Index_46049| (|Seq#Take_46049| s@@11 n@@9) j@@3) (|Seq#Index_46049| s@@11 j@@3)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_46049| (|Seq#Take_46049| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_46049| s@@11 j@@3) (|Seq#Take_46049| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3464) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3464| s@@12))) (= (|Seq#Index_3464| (|Seq#Take_3464| s@@12 n@@10) j@@4) (|Seq#Index_3464| s@@12 j@@4)))
 :qid |stdinbpl.340:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3464| (|Seq#Take_3464| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3464| s@@12 j@@4) (|Seq#Take_3464| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_46049) (t T@Seq_46049) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_46049| s@@13))) (< n@@11 (|Seq#Length_46049| (|Seq#Append_46049| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_46049| s@@13)) (|Seq#Length_46049| s@@13)) n@@11) (= (|Seq#Take_46049| (|Seq#Append_46049| s@@13 t) n@@11) (|Seq#Append_46049| s@@13 (|Seq#Take_46049| t (|Seq#Sub| n@@11 (|Seq#Length_46049| s@@13)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_46049| (|Seq#Append_46049| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3464) (t@@0 T@Seq_3464) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3464| s@@14))) (< n@@12 (|Seq#Length_3464| (|Seq#Append_3464| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3464| s@@14)) (|Seq#Length_3464| s@@14)) n@@12) (= (|Seq#Take_3464| (|Seq#Append_3464| s@@14 t@@0) n@@12) (|Seq#Append_3464| s@@14 (|Seq#Take_3464| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3464| s@@14)))))))
 :qid |stdinbpl.425:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3464| (|Seq#Append_3464| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34707) (ExhaleHeap@@3 T@PolymorphicMapType_34707) (Mask@@4 T@PolymorphicMapType_34728) (pm_f_15@@3 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_20345_20351 Mask@@4 null pm_f_15@@3) (IsPredicateField_20345_110139 pm_f_15@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_15 T@Ref) (f_45 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15 f_45) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@5) o2_15 f_45) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15 f_45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15 f_45))
)) (forall ((o2_15@@0 T@Ref) (f_45@@0 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@0 f_45@@0) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@5) o2_15@@0 f_45@@0) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@0 f_45@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@0 f_45@@0))
))) (forall ((o2_15@@1 T@Ref) (f_45@@1 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@1 f_45@@1) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@5) o2_15@@1 f_45@@1) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@1 f_45@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@1 f_45@@1))
))) (forall ((o2_15@@2 T@Ref) (f_45@@2 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@2 f_45@@2) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@5) o2_15@@2 f_45@@2) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@2 f_45@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@2 f_45@@2))
))) (forall ((o2_15@@3 T@Ref) (f_45@@3 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@3 f_45@@3) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) o2_15@@3 f_45@@3) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@3 f_45@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@3 f_45@@3))
))) (forall ((o2_15@@4 T@Ref) (f_45@@4 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@4 f_45@@4) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@5) o2_15@@4 f_45@@4) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@4 f_45@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@4 f_45@@4))
))) (forall ((o2_15@@5 T@Ref) (f_45@@5 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@5 f_45@@5) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@5) o2_15@@5 f_45@@5) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@5 f_45@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@5 f_45@@5))
))) (forall ((o2_15@@6 T@Ref) (f_45@@6 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@6 f_45@@6) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@5) o2_15@@6 f_45@@6) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@6 f_45@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@6 f_45@@6))
))) (forall ((o2_15@@7 T@Ref) (f_45@@7 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@7 f_45@@7) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@5) o2_15@@7 f_45@@7) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@7 f_45@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@7 f_45@@7))
))) (forall ((o2_15@@8 T@Ref) (f_45@@8 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@5) null (PredicateMaskField_20345 pm_f_15@@3))) o2_15@@8 f_45@@8) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@5) o2_15@@8 f_45@@8) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@8 f_45@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@3) o2_15@@8 f_45@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_20345_110139 pm_f_15@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34707) (ExhaleHeap@@4 T@PolymorphicMapType_34707) (Mask@@5 T@PolymorphicMapType_34728) (pm_f_15@@4 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_20350_20351 Mask@@5 null pm_f_15@@4) (IsPredicateField_20350_20351 pm_f_15@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_15@@9 T@Ref) (f_45@@9 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@9 f_45@@9) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@6) o2_15@@9 f_45@@9) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@9 f_45@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@9 f_45@@9))
)) (forall ((o2_15@@10 T@Ref) (f_45@@10 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@10 f_45@@10) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@6) o2_15@@10 f_45@@10) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@10 f_45@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@10 f_45@@10))
))) (forall ((o2_15@@11 T@Ref) (f_45@@11 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@11 f_45@@11) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@6) o2_15@@11 f_45@@11) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@11 f_45@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@11 f_45@@11))
))) (forall ((o2_15@@12 T@Ref) (f_45@@12 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@12 f_45@@12) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@6) o2_15@@12 f_45@@12) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@12 f_45@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@12 f_45@@12))
))) (forall ((o2_15@@13 T@Ref) (f_45@@13 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@13 f_45@@13) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@6) o2_15@@13 f_45@@13) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@13 f_45@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@13 f_45@@13))
))) (forall ((o2_15@@14 T@Ref) (f_45@@14 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@14 f_45@@14) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@6) o2_15@@14 f_45@@14) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@14 f_45@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@14 f_45@@14))
))) (forall ((o2_15@@15 T@Ref) (f_45@@15 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@15 f_45@@15) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@6) o2_15@@15 f_45@@15) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@15 f_45@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@15 f_45@@15))
))) (forall ((o2_15@@16 T@Ref) (f_45@@16 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@16 f_45@@16) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@6) o2_15@@16 f_45@@16) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@16 f_45@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@16 f_45@@16))
))) (forall ((o2_15@@17 T@Ref) (f_45@@17 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@17 f_45@@17) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@6) o2_15@@17 f_45@@17) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@17 f_45@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@17 f_45@@17))
))) (forall ((o2_15@@18 T@Ref) (f_45@@18 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) null (PredicateMaskField_20350 pm_f_15@@4))) o2_15@@18 f_45@@18) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@6) o2_15@@18 f_45@@18) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@18 f_45@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@4) o2_15@@18 f_45@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_20350_20351 pm_f_15@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34707) (ExhaleHeap@@5 T@PolymorphicMapType_34707) (Mask@@6 T@PolymorphicMapType_34728) (pm_f_15@@5 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_20345_20351 Mask@@6 null pm_f_15@@5) (IsWandField_20345_113499 pm_f_15@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_15@@19 T@Ref) (f_45@@19 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@19 f_45@@19) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@7) o2_15@@19 f_45@@19) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@19 f_45@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@19 f_45@@19))
)) (forall ((o2_15@@20 T@Ref) (f_45@@20 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@20 f_45@@20) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@7) o2_15@@20 f_45@@20) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@20 f_45@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@20 f_45@@20))
))) (forall ((o2_15@@21 T@Ref) (f_45@@21 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@21 f_45@@21) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@7) o2_15@@21 f_45@@21) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@21 f_45@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@21 f_45@@21))
))) (forall ((o2_15@@22 T@Ref) (f_45@@22 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@22 f_45@@22) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@7) o2_15@@22 f_45@@22) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@22 f_45@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@22 f_45@@22))
))) (forall ((o2_15@@23 T@Ref) (f_45@@23 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@23 f_45@@23) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) o2_15@@23 f_45@@23) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@23 f_45@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@23 f_45@@23))
))) (forall ((o2_15@@24 T@Ref) (f_45@@24 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@24 f_45@@24) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@7) o2_15@@24 f_45@@24) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@24 f_45@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@24 f_45@@24))
))) (forall ((o2_15@@25 T@Ref) (f_45@@25 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@25 f_45@@25) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@7) o2_15@@25 f_45@@25) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@25 f_45@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@25 f_45@@25))
))) (forall ((o2_15@@26 T@Ref) (f_45@@26 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@26 f_45@@26) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@7) o2_15@@26 f_45@@26) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@26 f_45@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@26 f_45@@26))
))) (forall ((o2_15@@27 T@Ref) (f_45@@27 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@27 f_45@@27) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@7) o2_15@@27 f_45@@27) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@27 f_45@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@27 f_45@@27))
))) (forall ((o2_15@@28 T@Ref) (f_45@@28 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@7) null (WandMaskField_20345 pm_f_15@@5))) o2_15@@28 f_45@@28) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@7) o2_15@@28 f_45@@28) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@28 f_45@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@5) o2_15@@28 f_45@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_20345_113499 pm_f_15@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34707) (ExhaleHeap@@6 T@PolymorphicMapType_34707) (Mask@@7 T@PolymorphicMapType_34728) (pm_f_15@@6 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_20350_20351 Mask@@7 null pm_f_15@@6) (IsWandField_20350_113142 pm_f_15@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_15@@29 T@Ref) (f_45@@29 T@Field_43706_5587) ) (!  (=> (select (|PolymorphicMapType_35256_20343_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@29 f_45@@29) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@8) o2_15@@29 f_45@@29) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@29 f_45@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@29 f_45@@29))
)) (forall ((o2_15@@30 T@Ref) (f_45@@30 T@Field_34767_53) ) (!  (=> (select (|PolymorphicMapType_35256_20343_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@30 f_45@@30) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@8) o2_15@@30 f_45@@30) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@30 f_45@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@30 f_45@@30))
))) (forall ((o2_15@@31 T@Ref) (f_45@@31 T@Field_34780_34781) ) (!  (=> (select (|PolymorphicMapType_35256_20343_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@31 f_45@@31) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@8) o2_15@@31 f_45@@31) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@31 f_45@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@31 f_45@@31))
))) (forall ((o2_15@@32 T@Ref) (f_45@@32 T@Field_20345_20351) ) (!  (=> (select (|PolymorphicMapType_35256_20343_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@32 f_45@@32) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@8) o2_15@@32 f_45@@32) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@32 f_45@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@32 f_45@@32))
))) (forall ((o2_15@@33 T@Ref) (f_45@@33 T@Field_20345_43831) ) (!  (=> (select (|PolymorphicMapType_35256_20343_111286#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@33 f_45@@33) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@8) o2_15@@33 f_45@@33) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@33 f_45@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@33 f_45@@33))
))) (forall ((o2_15@@34 T@Ref) (f_45@@34 T@Field_20350_5602) ) (!  (=> (select (|PolymorphicMapType_35256_43813_5587#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@34 f_45@@34) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@8) o2_15@@34 f_45@@34) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@34 f_45@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@34 f_45@@34))
))) (forall ((o2_15@@35 T@Ref) (f_45@@35 T@Field_20350_53) ) (!  (=> (select (|PolymorphicMapType_35256_43813_53#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@35 f_45@@35) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@8) o2_15@@35 f_45@@35) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@35 f_45@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@35 f_45@@35))
))) (forall ((o2_15@@36 T@Ref) (f_45@@36 T@Field_20350_34781) ) (!  (=> (select (|PolymorphicMapType_35256_43813_34781#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@36 f_45@@36) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@8) o2_15@@36 f_45@@36) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@36 f_45@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@36 f_45@@36))
))) (forall ((o2_15@@37 T@Ref) (f_45@@37 T@Field_43813_43814) ) (!  (=> (select (|PolymorphicMapType_35256_43813_43814#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@37 f_45@@37) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@8) o2_15@@37 f_45@@37) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@37 f_45@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@37 f_45@@37))
))) (forall ((o2_15@@38 T@Ref) (f_45@@38 T@Field_43826_43831) ) (!  (=> (select (|PolymorphicMapType_35256_43813_112334#PolymorphicMapType_35256| (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) null (WandMaskField_20350 pm_f_15@@6))) o2_15@@38 f_45@@38) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@8) o2_15@@38 f_45@@38) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@38 f_45@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@6) o2_15@@38 f_45@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_20350_113142 pm_f_15@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34707) (ExhaleHeap@@7 T@PolymorphicMapType_34707) (Mask@@8 T@PolymorphicMapType_34728) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@9) o_39 $allocated) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@7) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@7) o_39 $allocated))
)))
(assert (forall ((p T@Field_43813_43814) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43813_43813 p v_1 p w))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43813_43813 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_20345_20351) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_34767_34767 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.243:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34767_34767 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_46049) (s1 T@Seq_46049) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_46049|)) (not (= s1 |Seq#Empty_46049|))) (<= (|Seq#Length_46049| s0) n@@13)) (< n@@13 (|Seq#Length_46049| (|Seq#Append_46049| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_46049| s0)) (|Seq#Length_46049| s0)) n@@13) (= (|Seq#Index_46049| (|Seq#Append_46049| s0 s1) n@@13) (|Seq#Index_46049| s1 (|Seq#Sub| n@@13 (|Seq#Length_46049| s0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_46049| (|Seq#Append_46049| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3464) (s1@@0 T@Seq_3464) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3464|)) (not (= s1@@0 |Seq#Empty_3464|))) (<= (|Seq#Length_3464| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3464| (|Seq#Append_3464| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3464| s0@@0)) (|Seq#Length_3464| s0@@0)) n@@14) (= (|Seq#Index_3464| (|Seq#Append_3464| s0@@0 s1@@0) n@@14) (|Seq#Index_3464| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3464| s0@@0))))))
 :qid |stdinbpl.312:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3464| (|Seq#Append_3464| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_20343_5587 f_7)))
(assert  (not (IsWandField_20343_5587 f_7)))
(assert  (not (IsPredicateField_20343_5587 g)))
(assert  (not (IsWandField_20343_5587 g)))
(assert  (not (IsPredicateField_20343_5587 unrelatedField)))
(assert  (not (IsWandField_20343_5587 unrelatedField)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34707) (ExhaleHeap@@8 T@PolymorphicMapType_34707) (Mask@@9 T@PolymorphicMapType_34728) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_34728) (o_2@@9 T@Ref) (f_4@@9 T@Field_43826_43831) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_20350_120431 f_4@@9))) (not (IsWandField_20350_120447 f_4@@9))) (<= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34728) (o_2@@10 T@Ref) (f_4@@10 T@Field_20350_34781) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_20350_34781 f_4@@10))) (not (IsWandField_20350_34781 f_4@@10))) (<= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34728) (o_2@@11 T@Ref) (f_4@@11 T@Field_20350_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_20350_53 f_4@@11))) (not (IsWandField_20350_53 f_4@@11))) (<= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34728) (o_2@@12 T@Ref) (f_4@@12 T@Field_43813_43814) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_20350_20351 f_4@@12))) (not (IsWandField_20350_113142 f_4@@12))) (<= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_34728) (o_2@@13 T@Ref) (f_4@@13 T@Field_20350_5602) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_20350_5587 f_4@@13))) (not (IsWandField_20350_5587 f_4@@13))) (<= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_34728) (o_2@@14 T@Ref) (f_4@@14 T@Field_20345_43831) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_20343_119600 f_4@@14))) (not (IsWandField_20343_119616 f_4@@14))) (<= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_34728) (o_2@@15 T@Ref) (f_4@@15 T@Field_34780_34781) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_20343_34781 f_4@@15))) (not (IsWandField_20343_34781 f_4@@15))) (<= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_34728) (o_2@@16 T@Ref) (f_4@@16 T@Field_34767_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_20343_53 f_4@@16))) (not (IsWandField_20343_53 f_4@@16))) (<= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_34728) (o_2@@17 T@Ref) (f_4@@17 T@Field_20345_20351) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20345_110139 f_4@@17))) (not (IsWandField_20345_113499 f_4@@17))) (<= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_34728) (o_2@@18 T@Ref) (f_4@@18 T@Field_43706_5587) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20343_5587 f_4@@18))) (not (IsWandField_20343_5587 f_4@@18))) (<= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_34728) (o_2@@19 T@Ref) (f_4@@19 T@Field_20345_43831) ) (! (= (HasDirectPerm_20345_109526 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_109526 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_34728) (o_2@@20 T@Ref) (f_4@@20 T@Field_34780_34781) ) (! (= (HasDirectPerm_20345_34781 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_34781 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_34728) (o_2@@21 T@Ref) (f_4@@21 T@Field_34767_53) ) (! (= (HasDirectPerm_20345_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_34728) (o_2@@22 T@Ref) (f_4@@22 T@Field_43706_5587) ) (! (= (HasDirectPerm_20345_5602 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_5602 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_34728) (o_2@@23 T@Ref) (f_4@@23 T@Field_20345_20351) ) (! (= (HasDirectPerm_20345_20351 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20345_20351 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_34728) (o_2@@24 T@Ref) (f_4@@24 T@Field_43826_43831) ) (! (= (HasDirectPerm_20350_108453 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_108453 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_34728) (o_2@@25 T@Ref) (f_4@@25 T@Field_20350_34781) ) (! (= (HasDirectPerm_20350_34781 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_34781 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_34728) (o_2@@26 T@Ref) (f_4@@26 T@Field_20350_53) ) (! (= (HasDirectPerm_20350_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_34728) (o_2@@27 T@Ref) (f_4@@27 T@Field_20350_5602) ) (! (= (HasDirectPerm_20350_5602 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_5602 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_34728) (o_2@@28 T@Ref) (f_4@@28 T@Field_43813_43814) ) (! (= (HasDirectPerm_20350_20351 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20350_20351 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.231:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3464| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.604:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3464| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34707) (ExhaleHeap@@9 T@PolymorphicMapType_34707) (Mask@@30 T@PolymorphicMapType_34728) (o_39@@0 T@Ref) (f_45@@39 T@Field_20345_43831) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_20345_109526 Mask@@30 o_39@@0 f_45@@39) (= (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@11) o_39@@0 f_45@@39) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@9) o_39@@0 f_45@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| ExhaleHeap@@9) o_39@@0 f_45@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34707) (ExhaleHeap@@10 T@PolymorphicMapType_34707) (Mask@@31 T@PolymorphicMapType_34728) (o_39@@1 T@Ref) (f_45@@40 T@Field_34780_34781) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_20345_34781 Mask@@31 o_39@@1 f_45@@40) (= (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@12) o_39@@1 f_45@@40) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@10) o_39@@1 f_45@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| ExhaleHeap@@10) o_39@@1 f_45@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34707) (ExhaleHeap@@11 T@PolymorphicMapType_34707) (Mask@@32 T@PolymorphicMapType_34728) (o_39@@2 T@Ref) (f_45@@41 T@Field_34767_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_20345_53 Mask@@32 o_39@@2 f_45@@41) (= (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@13) o_39@@2 f_45@@41) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@11) o_39@@2 f_45@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| ExhaleHeap@@11) o_39@@2 f_45@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34707) (ExhaleHeap@@12 T@PolymorphicMapType_34707) (Mask@@33 T@PolymorphicMapType_34728) (o_39@@3 T@Ref) (f_45@@42 T@Field_43706_5587) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_20345_5602 Mask@@33 o_39@@3 f_45@@42) (= (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@14) o_39@@3 f_45@@42) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@12) o_39@@3 f_45@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| ExhaleHeap@@12) o_39@@3 f_45@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34707) (ExhaleHeap@@13 T@PolymorphicMapType_34707) (Mask@@34 T@PolymorphicMapType_34728) (o_39@@4 T@Ref) (f_45@@43 T@Field_20345_20351) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_20345_20351 Mask@@34 o_39@@4 f_45@@43) (= (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@15) o_39@@4 f_45@@43) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@13) o_39@@4 f_45@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| ExhaleHeap@@13) o_39@@4 f_45@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34707) (ExhaleHeap@@14 T@PolymorphicMapType_34707) (Mask@@35 T@PolymorphicMapType_34728) (o_39@@5 T@Ref) (f_45@@44 T@Field_43826_43831) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_20350_108453 Mask@@35 o_39@@5 f_45@@44) (= (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@16) o_39@@5 f_45@@44) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@14) o_39@@5 f_45@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| ExhaleHeap@@14) o_39@@5 f_45@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34707) (ExhaleHeap@@15 T@PolymorphicMapType_34707) (Mask@@36 T@PolymorphicMapType_34728) (o_39@@6 T@Ref) (f_45@@45 T@Field_20350_34781) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_20350_34781 Mask@@36 o_39@@6 f_45@@45) (= (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@17) o_39@@6 f_45@@45) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@15) o_39@@6 f_45@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| ExhaleHeap@@15) o_39@@6 f_45@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_34707) (ExhaleHeap@@16 T@PolymorphicMapType_34707) (Mask@@37 T@PolymorphicMapType_34728) (o_39@@7 T@Ref) (f_45@@46 T@Field_20350_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_20350_53 Mask@@37 o_39@@7 f_45@@46) (= (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@18) o_39@@7 f_45@@46) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@16) o_39@@7 f_45@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| ExhaleHeap@@16) o_39@@7 f_45@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_34707) (ExhaleHeap@@17 T@PolymorphicMapType_34707) (Mask@@38 T@PolymorphicMapType_34728) (o_39@@8 T@Ref) (f_45@@47 T@Field_20350_5602) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_20350_5602 Mask@@38 o_39@@8 f_45@@47) (= (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@19) o_39@@8 f_45@@47) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@17) o_39@@8 f_45@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| ExhaleHeap@@17) o_39@@8 f_45@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_34707) (ExhaleHeap@@18 T@PolymorphicMapType_34707) (Mask@@39 T@PolymorphicMapType_34728) (o_39@@9 T@Ref) (f_45@@48 T@Field_43813_43814) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_20350_20351 Mask@@39 o_39@@9 f_45@@48) (= (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@20) o_39@@9 f_45@@48) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@18) o_39@@9 f_45@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| ExhaleHeap@@18) o_39@@9 f_45@@48))
)))
(assert (forall ((s0@@1 T@Seq_46049) (s1@@1 T@Seq_46049) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_46049|)) (not (= s1@@1 |Seq#Empty_46049|))) (= (|Seq#Length_46049| (|Seq#Append_46049| s0@@1 s1@@1)) (+ (|Seq#Length_46049| s0@@1) (|Seq#Length_46049| s1@@1))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_46049| (|Seq#Append_46049| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3464) (s1@@2 T@Seq_3464) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3464|)) (not (= s1@@2 |Seq#Empty_3464|))) (= (|Seq#Length_3464| (|Seq#Append_3464| s0@@2 s1@@2)) (+ (|Seq#Length_3464| s0@@2) (|Seq#Length_3464| s1@@2))))
 :qid |stdinbpl.281:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3464| (|Seq#Append_3464| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_43826_43831) ) (! (= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_20350_34781) ) (! (= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20350_53) ) (! (= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_43813_43814) ) (! (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_20350_5602) ) (! (= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_20345_43831) ) (! (= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_34780_34781) ) (! (= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_34767_53) ) (! (= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20345_20351) ) (! (= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_43706_5587) ) (! (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_46049) (t@@1 T@Seq_46049) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_46049| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_46049| s@@15)) (|Seq#Length_46049| s@@15)) n@@15) (= (|Seq#Drop_46049| (|Seq#Append_46049| s@@15 t@@1) n@@15) (|Seq#Drop_46049| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_46049| s@@15))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_46049| (|Seq#Append_46049| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3464) (t@@2 T@Seq_3464) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3464| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3464| s@@16)) (|Seq#Length_3464| s@@16)) n@@16) (= (|Seq#Drop_3464| (|Seq#Append_3464| s@@16 t@@2) n@@16) (|Seq#Drop_3464| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3464| s@@16))))))
 :qid |stdinbpl.438:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3464| (|Seq#Append_3464| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34728) (SummandMask1 T@PolymorphicMapType_34728) (SummandMask2 T@PolymorphicMapType_34728) (o_2@@39 T@Ref) (f_4@@39 T@Field_43826_43831) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34728_20350_118139#PolymorphicMapType_34728| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34728) (SummandMask1@@0 T@PolymorphicMapType_34728) (SummandMask2@@0 T@PolymorphicMapType_34728) (o_2@@40 T@Ref) (f_4@@40 T@Field_20350_34781) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34728_20350_34781#PolymorphicMapType_34728| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34728) (SummandMask1@@1 T@PolymorphicMapType_34728) (SummandMask2@@1 T@PolymorphicMapType_34728) (o_2@@41 T@Ref) (f_4@@41 T@Field_20350_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34728_20350_53#PolymorphicMapType_34728| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34728) (SummandMask1@@2 T@PolymorphicMapType_34728) (SummandMask2@@2 T@PolymorphicMapType_34728) (o_2@@42 T@Ref) (f_4@@42 T@Field_43813_43814) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34728_20350_20351#PolymorphicMapType_34728| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34728) (SummandMask1@@3 T@PolymorphicMapType_34728) (SummandMask2@@3 T@PolymorphicMapType_34728) (o_2@@43 T@Ref) (f_4@@43 T@Field_20350_5602) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34728_20350_5587#PolymorphicMapType_34728| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_34728) (SummandMask1@@4 T@PolymorphicMapType_34728) (SummandMask2@@4 T@PolymorphicMapType_34728) (o_2@@44 T@Ref) (f_4@@44 T@Field_20345_43831) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34728_20343_117728#PolymorphicMapType_34728| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_34728) (SummandMask1@@5 T@PolymorphicMapType_34728) (SummandMask2@@5 T@PolymorphicMapType_34728) (o_2@@45 T@Ref) (f_4@@45 T@Field_34780_34781) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34728_20343_34781#PolymorphicMapType_34728| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_34728) (SummandMask1@@6 T@PolymorphicMapType_34728) (SummandMask2@@6 T@PolymorphicMapType_34728) (o_2@@46 T@Ref) (f_4@@46 T@Field_34767_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34728_20343_53#PolymorphicMapType_34728| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_34728) (SummandMask1@@7 T@PolymorphicMapType_34728) (SummandMask2@@7 T@PolymorphicMapType_34728) (o_2@@47 T@Ref) (f_4@@47 T@Field_20345_20351) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34728_20343_20351#PolymorphicMapType_34728| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_34728) (SummandMask1@@8 T@PolymorphicMapType_34728) (SummandMask2@@8 T@PolymorphicMapType_34728) (o_2@@48 T@Ref) (f_4@@48 T@Field_43706_5587) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34728_20343_5587#PolymorphicMapType_34728| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_20528| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.658:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_20528| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_20528| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_20528| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3464| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3464| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.603:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3464| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_20528| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.673:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_20528| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_20528| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_46049) (b@@5 T@Seq_46049) ) (!  (=> (|Seq#Equal_46049| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_46049| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3464) (b@@6 T@Seq_3464) ) (!  (=> (|Seq#Equal_3464| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.576:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3464| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@1 T@Ref) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_20528| a@@8 x@@3) y@@1))
 :qid |stdinbpl.638:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_20528| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_20528| a@@9 b@@7) y@@2))
 :qid |stdinbpl.648:18|
 :skolemid |71|
 :pattern ( (|Set#Union_20528| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_20528| a@@10 b@@8) y@@3))
 :qid |stdinbpl.650:18|
 :skolemid |72|
 :pattern ( (|Set#Union_20528| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_20528| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.634:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_20528| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_20528| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.675:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_20528| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_46049) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_46049| s@@17))) (|Seq#ContainsTrigger_20388| s@@17 (|Seq#Index_46049| s@@17 i@@3)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_46049| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3464) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3464| s@@18))) (|Seq#ContainsTrigger_3464| s@@18 (|Seq#Index_3464| s@@18 i@@4)))
 :qid |stdinbpl.469:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3464| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_20528| (|Set#Difference_20528| a@@13 b@@10)) (|Set#Card_20528| (|Set#Difference_20528| b@@10 a@@13))) (|Set#Card_20528| (|Set#Intersection_20528| a@@13 b@@10))) (|Set#Card_20528| (|Set#Union_20528| a@@13 b@@10))) (= (|Set#Card_20528| (|Set#Difference_20528| a@@13 b@@10)) (- (|Set#Card_20528| a@@13) (|Set#Card_20528| (|Set#Intersection_20528| a@@13 b@@10)))))
 :qid |stdinbpl.677:18|
 :skolemid |81|
 :pattern ( (|Set#Card_20528| (|Set#Difference_20528| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_46049) (s1@@3 T@Seq_46049) ) (!  (and (=> (= s0@@3 |Seq#Empty_46049|) (= (|Seq#Append_46049| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_46049|) (= (|Seq#Append_46049| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_46049| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3464) (s1@@4 T@Seq_3464) ) (!  (and (=> (= s0@@4 |Seq#Empty_3464|) (= (|Seq#Append_3464| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3464|) (= (|Seq#Append_3464| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.287:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3464| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_46049| (|Seq#Singleton_46049| t@@3) 0) t@@3)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_46049| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3464| (|Seq#Singleton_3464| t@@4) 0) t@@4)
 :qid |stdinbpl.291:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3464| t@@4))
)))
(assert (forall ((s@@19 T@Seq_46049) ) (! (<= 0 (|Seq#Length_46049| s@@19))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_46049| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3464) ) (! (<= 0 (|Seq#Length_3464| s@@20))
 :qid |stdinbpl.270:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3464| s@@20))
)))
(assert (forall ((s@@21 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_20528| s@@21))
 :qid |stdinbpl.620:18|
 :skolemid |58|
 :pattern ( (|Set#Card_20528| s@@21))
)))
(assert (forall ((this@@3 T@Ref) (b_24@@3 Bool) ) (! (= (getPredWandId_20350_20351 (valid this@@3 b_24@@3)) 0)
 :qid |stdinbpl.832:15|
 :skolemid |120|
 :pattern ( (valid this@@3 b_24@@3))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_20528| a@@14 x@@5) x@@5)
 :qid |stdinbpl.636:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_20528| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_46049) (s1@@5 T@Seq_46049) ) (!  (=> (|Seq#Equal_46049| s0@@5 s1@@5) (and (= (|Seq#Length_46049| s0@@5) (|Seq#Length_46049| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_46049| s0@@5))) (= (|Seq#Index_46049| s0@@5 j@@6) (|Seq#Index_46049| s1@@5 j@@6)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_46049| s0@@5 j@@6))
 :pattern ( (|Seq#Index_46049| s1@@5 j@@6))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_46049| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3464) (s1@@6 T@Seq_3464) ) (!  (=> (|Seq#Equal_3464| s0@@6 s1@@6) (and (= (|Seq#Length_3464| s0@@6) (|Seq#Length_3464| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3464| s0@@6))) (= (|Seq#Index_3464| s0@@6 j@@7) (|Seq#Index_3464| s1@@6 j@@7)))
 :qid |stdinbpl.566:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3464| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3464| s1@@6 j@@7))
))))
 :qid |stdinbpl.563:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3464| s0@@6 s1@@6))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_20528| (|Set#UnionOne_20528| a@@15 x@@6)) (|Set#Card_20528| a@@15)))
 :qid |stdinbpl.640:18|
 :skolemid |68|
 :pattern ( (|Set#Card_20528| (|Set#UnionOne_20528| a@@15 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_46049| (|Seq#Singleton_46049| t@@5)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_46049| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3464| (|Seq#Singleton_3464| t@@6)) 1)
 :qid |stdinbpl.278:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3464| t@@6))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_20528| (|Set#Singleton_20528| r@@0)) 1)
 :qid |stdinbpl.631:18|
 :skolemid |64|
 :pattern ( (|Set#Card_20528| (|Set#Singleton_20528| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_20528| r@@1) r@@1)
 :qid |stdinbpl.629:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_20528| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_20528| a@@16 (|Set#Union_20528| a@@16 b@@11)) (|Set#Union_20528| a@@16 b@@11))
 :qid |stdinbpl.663:18|
 :skolemid |75|
 :pattern ( (|Set#Union_20528| a@@16 (|Set#Union_20528| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_20528| a@@17 (|Set#Intersection_20528| a@@17 b@@12)) (|Set#Intersection_20528| a@@17 b@@12))
 :qid |stdinbpl.667:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_20528| a@@17 (|Set#Intersection_20528| a@@17 b@@12)))
)))
(assert (forall ((this@@4 T@Ref) (b_24@@4 Bool) ) (! (= (PredicateMaskField_20350 (valid this@@4 b_24@@4)) (|valid#sm| this@@4 b_24@@4))
 :qid |stdinbpl.824:15|
 :skolemid |118|
 :pattern ( (PredicateMaskField_20350 (valid this@@4 b_24@@4)))
)))
(assert (forall ((s@@22 T@Seq_46049) (t@@7 T@Seq_46049) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_46049| s@@22))) (= (|Seq#Take_46049| (|Seq#Append_46049| s@@22 t@@7) n@@17) (|Seq#Take_46049| s@@22 n@@17)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_46049| (|Seq#Append_46049| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3464) (t@@8 T@Seq_3464) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3464| s@@23))) (= (|Seq#Take_3464| (|Seq#Append_3464| s@@23 t@@8) n@@18) (|Seq#Take_3464| s@@23 n@@18)))
 :qid |stdinbpl.420:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3464| (|Seq#Append_3464| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_20528| o@@3))
 :qid |stdinbpl.623:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_20528| o@@3))
)))
(assert (forall ((s@@24 T@Seq_46049) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_46049| s@@24))) (= (|Seq#Length_46049| (|Seq#Update_46049| s@@24 i@@5 v@@2)) (|Seq#Length_46049| s@@24)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_46049| (|Seq#Update_46049| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_46049| s@@24) (|Seq#Update_46049| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3464) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3464| s@@25))) (= (|Seq#Length_3464| (|Seq#Update_3464| s@@25 i@@6 v@@3)) (|Seq#Length_3464| s@@25)))
 :qid |stdinbpl.319:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3464| (|Seq#Update_3464| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3464| s@@25) (|Seq#Update_3464| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_34707) (o_38 T@Ref) (f_40 T@Field_43826_43831) (v@@4 T@PolymorphicMapType_35256) ) (! (succHeap Heap@@21 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@21) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@21) o_38 f_40 v@@4) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@21) (store (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@21) o_38 f_40 v@@4) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@21) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_34707) (o_38@@0 T@Ref) (f_40@@0 T@Field_43813_43814) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@22) (store (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@22) o_38@@0 f_40@@0 v@@5) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@22) (store (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@22) o_38@@0 f_40@@0 v@@5) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@22) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_34707) (o_38@@1 T@Ref) (f_40@@1 T@Field_20350_5602) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@23) (store (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@23) o_38@@1 f_40@@1 v@@6) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@23) (store (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@23) o_38@@1 f_40@@1 v@@6) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@23) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_34707) (o_38@@2 T@Ref) (f_40@@2 T@Field_20350_34781) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@24) (store (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@24) o_38@@2 f_40@@2 v@@7) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@24) (store (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@24) o_38@@2 f_40@@2 v@@7) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@24) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_34707) (o_38@@3 T@Ref) (f_40@@3 T@Field_20350_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@25) (store (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@25) o_38@@3 f_40@@3 v@@8) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@25) (store (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@25) o_38@@3 f_40@@3 v@@8) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@25) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_34707) (o_38@@4 T@Ref) (f_40@@4 T@Field_20345_43831) (v@@9 T@PolymorphicMapType_35256) ) (! (succHeap Heap@@26 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@26) (store (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@26) o_38@@4 f_40@@4 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@26) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@26) (store (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@26) o_38@@4 f_40@@4 v@@9)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_34707) (o_38@@5 T@Ref) (f_40@@5 T@Field_20345_20351) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@27) (store (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@27) o_38@@5 f_40@@5 v@@10) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@27) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@27) (store (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@27) o_38@@5 f_40@@5 v@@10) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_34707) (o_38@@6 T@Ref) (f_40@@6 T@Field_43706_5587) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@28) (store (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@28) o_38@@6 f_40@@6 v@@11) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@28) (store (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@28) o_38@@6 f_40@@6 v@@11) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@28) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_34707) (o_38@@7 T@Ref) (f_40@@7 T@Field_34780_34781) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@29) (store (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@29) o_38@@7 f_40@@7 v@@12) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@29) (store (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@29) o_38@@7 f_40@@7 v@@12) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@29) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_34707) (o_38@@8 T@Ref) (f_40@@8 T@Field_34767_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_34707 (store (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@30) o_38@@8 f_40@@8 v@@13) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34707 (store (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@30) o_38@@8 f_40@@8 v@@13) (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20347_5617#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20354_50085#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_5602#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_53#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20350_34781#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_20351#PolymorphicMapType_34707| Heap@@30) (|PolymorphicMapType_34707_20345_109568#PolymorphicMapType_34707| Heap@@30)))
)))
(assert (forall ((s@@26 T@Seq_46049) (t@@9 T@Seq_46049) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_46049| s@@26))) (= (|Seq#Drop_46049| (|Seq#Append_46049| s@@26 t@@9) n@@19) (|Seq#Append_46049| (|Seq#Drop_46049| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_46049| (|Seq#Append_46049| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3464) (t@@10 T@Seq_3464) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3464| s@@27))) (= (|Seq#Drop_3464| (|Seq#Append_3464| s@@27 t@@10) n@@20) (|Seq#Append_3464| (|Seq#Drop_3464| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.434:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3464| (|Seq#Append_3464| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.707:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.708:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_46049) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_46049| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_46049| (|Seq#Drop_46049| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_46049| s@@28 i@@7))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_46049| s@@28 n@@21) (|Seq#Index_46049| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3464) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3464| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3464| (|Seq#Drop_3464| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3464| s@@29 i@@8))))
 :qid |stdinbpl.370:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3464| s@@29 n@@22) (|Seq#Index_3464| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_20528| s@@30) 0) (= s@@30 |Set#Empty_20528|)) (=> (not (= (|Set#Card_20528| s@@30) 0)) (exists ((x@@7 T@Ref) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.626:33|
 :skolemid |60|
))))
 :qid |stdinbpl.624:18|
 :skolemid |61|
 :pattern ( (|Set#Card_20528| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_46049) (s1@@7 T@Seq_46049) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_46049|)) (not (= s1@@7 |Seq#Empty_46049|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_46049| s0@@7))) (= (|Seq#Index_46049| (|Seq#Append_46049| s0@@7 s1@@7) n@@23) (|Seq#Index_46049| s0@@7 n@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_46049| (|Seq#Append_46049| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_46049| s0@@7 n@@23) (|Seq#Append_46049| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3464) (s1@@8 T@Seq_3464) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3464|)) (not (= s1@@8 |Seq#Empty_3464|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3464| s0@@8))) (= (|Seq#Index_3464| (|Seq#Append_3464| s0@@8 s1@@8) n@@24) (|Seq#Index_3464| s0@@8 n@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3464| (|Seq#Append_3464| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3464| s0@@8 n@@24) (|Seq#Append_3464| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_46049) (s1@@9 T@Seq_46049) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_46049|)) (not (= s1@@9 |Seq#Empty_46049|))) (<= 0 m)) (< m (|Seq#Length_46049| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_46049| s0@@9)) (|Seq#Length_46049| s0@@9)) m) (= (|Seq#Index_46049| (|Seq#Append_46049| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_46049| s0@@9))) (|Seq#Index_46049| s1@@9 m))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_46049| s1@@9 m) (|Seq#Append_46049| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3464) (s1@@10 T@Seq_3464) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3464|)) (not (= s1@@10 |Seq#Empty_3464|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3464| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3464| s0@@10)) (|Seq#Length_3464| s0@@10)) m@@0) (= (|Seq#Index_3464| (|Seq#Append_3464| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3464| s0@@10))) (|Seq#Index_3464| s1@@10 m@@0))))
 :qid |stdinbpl.315:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3464| s1@@10 m@@0) (|Seq#Append_3464| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_20528| (|Set#UnionOne_20528| a@@20 x@@8)) (+ (|Set#Card_20528| a@@20) 1)))
 :qid |stdinbpl.642:18|
 :skolemid |69|
 :pattern ( (|Set#Card_20528| (|Set#UnionOne_20528| a@@20 x@@8)))
)))
(assert (forall ((o_38@@9 T@Ref) (f_44 T@Field_34780_34781) (Heap@@31 T@PolymorphicMapType_34707) ) (!  (=> (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@31) o_38@@9 $allocated) (select (|PolymorphicMapType_34707_19914_53#PolymorphicMapType_34707| Heap@@31) (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@31) o_38@@9 f_44) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34707_19917_19918#PolymorphicMapType_34707| Heap@@31) o_38@@9 f_44))
)))
(assert (forall ((s@@31 T@Seq_46049) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_46049| s@@31))) (= (|Seq#Index_46049| s@@31 i@@9) x@@9)) (|Seq#Contains_20388| s@@31 x@@9))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_20388| s@@31 x@@9) (|Seq#Index_46049| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3464) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3464| s@@32))) (= (|Seq#Index_3464| s@@32 i@@10) x@@10)) (|Seq#Contains_3464| s@@32 x@@10))
 :qid |stdinbpl.467:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3464| s@@32 x@@10) (|Seq#Index_3464| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_46049) (s1@@11 T@Seq_46049) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_46049| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46049| s0@@11 s1@@11))) (not (= (|Seq#Length_46049| s0@@11) (|Seq#Length_46049| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_46049| s0@@11 s1@@11))) (= (|Seq#Length_46049| s0@@11) (|Seq#Length_46049| s1@@11))) (= (|Seq#SkolemDiff_46049| s0@@11 s1@@11) (|Seq#SkolemDiff_46049| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_46049| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_46049| s0@@11 s1@@11) (|Seq#Length_46049| s0@@11))) (not (= (|Seq#Index_46049| s0@@11 (|Seq#SkolemDiff_46049| s0@@11 s1@@11)) (|Seq#Index_46049| s1@@11 (|Seq#SkolemDiff_46049| s0@@11 s1@@11))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_46049| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3464) (s1@@12 T@Seq_3464) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3464| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3464| s0@@12 s1@@12))) (not (= (|Seq#Length_3464| s0@@12) (|Seq#Length_3464| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3464| s0@@12 s1@@12))) (= (|Seq#Length_3464| s0@@12) (|Seq#Length_3464| s1@@12))) (= (|Seq#SkolemDiff_3464| s0@@12 s1@@12) (|Seq#SkolemDiff_3464| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3464| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3464| s0@@12 s1@@12) (|Seq#Length_3464| s0@@12))) (not (= (|Seq#Index_3464| s0@@12 (|Seq#SkolemDiff_3464| s0@@12 s1@@12)) (|Seq#Index_3464| s1@@12 (|Seq#SkolemDiff_3464| s0@@12 s1@@12))))))
 :qid |stdinbpl.571:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3464| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_43813_43814) (v_1@@1 T@FrameType) (q T@Field_43813_43814) (w@@1 T@FrameType) (r@@2 T@Field_43813_43814) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43813_43813 p@@2 v_1@@1 q w@@1) (InsidePredicate_43813_43813 q w@@1 r@@2 u)) (InsidePredicate_43813_43813 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_43813 p@@2 v_1@@1 q w@@1) (InsidePredicate_43813_43813 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_43813_43814) (v_1@@2 T@FrameType) (q@@0 T@Field_43813_43814) (w@@2 T@FrameType) (r@@3 T@Field_20345_20351) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_43813_43813 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_43813_34767 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_43813_34767 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_43813 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_43813_34767 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_43813_43814) (v_1@@3 T@FrameType) (q@@1 T@Field_20345_20351) (w@@3 T@FrameType) (r@@4 T@Field_43813_43814) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_43813_34767 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_34767_43813 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_43813_43813 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_34767 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_34767_43813 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_43813_43814) (v_1@@4 T@FrameType) (q@@2 T@Field_20345_20351) (w@@4 T@FrameType) (r@@5 T@Field_20345_20351) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_43813_34767 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_34767_34767 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_43813_34767 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43813_34767 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_34767_34767 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_20345_20351) (v_1@@5 T@FrameType) (q@@3 T@Field_43813_43814) (w@@5 T@FrameType) (r@@6 T@Field_43813_43814) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_43813 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_43813_43813 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_34767_43813 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_43813 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_43813_43813 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_20345_20351) (v_1@@6 T@FrameType) (q@@4 T@Field_43813_43814) (w@@6 T@FrameType) (r@@7 T@Field_20345_20351) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_43813 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_43813_34767 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_34767_34767 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_43813 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_43813_34767 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_20345_20351) (v_1@@7 T@FrameType) (q@@5 T@Field_20345_20351) (w@@7 T@FrameType) (r@@8 T@Field_43813_43814) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_34767 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_34767_43813 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_34767_43813 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_34767 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_34767_43813 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_20345_20351) (v_1@@8 T@FrameType) (q@@6 T@Field_20345_20351) (w@@8 T@FrameType) (r@@9 T@Field_20345_20351) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_34767_34767 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_34767_34767 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_34767_34767 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.238:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34767_34767 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_34767_34767 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.713:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_46049) ) (!  (=> (= (|Seq#Length_46049| s@@33) 0) (= s@@33 |Seq#Empty_46049|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_46049| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3464) ) (!  (=> (= (|Seq#Length_3464| s@@34) 0) (= s@@34 |Seq#Empty_3464|))
 :qid |stdinbpl.274:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3464| s@@34))
)))
(assert (forall ((s@@35 T@Seq_46049) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_46049| s@@35 n@@25) |Seq#Empty_46049|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_46049| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3464) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3464| s@@36 n@@26) |Seq#Empty_3464|))
 :qid |stdinbpl.450:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3464| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_20528| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.646:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_20528| a@@22 b@@15) o@@4))
)))
; Valid

