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
(declare-sort T@Field_14714_53 0)
(declare-sort T@Field_14727_14728 0)
(declare-sort T@Field_20748_3181 0)
(declare-sort T@Field_9588_39852 0)
(declare-sort T@Field_9588_39719 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_14675 0)) (((PolymorphicMapType_14675 (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| (Array T@Ref T@Field_20748_3181 Real)) (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| (Array T@Ref T@Field_14714_53 Real)) (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| (Array T@Ref T@Field_14727_14728 Real)) (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| (Array T@Ref T@Field_9588_39719 Real)) (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| (Array T@Ref T@Field_9588_39852 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15203 0)) (((PolymorphicMapType_15203 (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| (Array T@Ref T@Field_14714_53 Bool)) (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| (Array T@Ref T@Field_14727_14728 Bool)) (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| (Array T@Ref T@Field_20748_3181 Bool)) (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| (Array T@Ref T@Field_9588_39719 Bool)) (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| (Array T@Ref T@Field_9588_39852 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14654 0)) (((PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| (Array T@Ref T@Field_14714_53 Bool)) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| (Array T@Ref T@Field_14727_14728 T@Ref)) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| (Array T@Ref T@Field_20748_3181 Int)) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| (Array T@Ref T@Field_9588_39852 T@PolymorphicMapType_15203)) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| (Array T@Ref T@Field_9588_39719 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_14714_53)
(declare-fun f_7 () T@Field_20748_3181)
(declare-sort T@Seq_20795 0)
(declare-fun |Seq#Length_9604| (T@Seq_20795) Int)
(declare-fun |Seq#Drop_9604| (T@Seq_20795 Int) T@Seq_20795)
(declare-sort T@Seq_3059 0)
(declare-fun |Seq#Length_3059| (T@Seq_3059) Int)
(declare-fun |Seq#Drop_3059| (T@Seq_3059 Int) T@Seq_3059)
(declare-fun succHeap (T@PolymorphicMapType_14654 T@PolymorphicMapType_14654) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14654 T@PolymorphicMapType_14654) Bool)
(declare-fun state (T@PolymorphicMapType_14654 T@PolymorphicMapType_14675) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14675) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15203)
(declare-fun |Seq#Index_9604| (T@Seq_20795 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3059| (T@Seq_3059 Int) Int)
(declare-fun |Seq#Empty_9604| () T@Seq_20795)
(declare-fun |Seq#Empty_3059| () T@Seq_3059)
(declare-fun |fun'| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun dummyFunction_3756 (Int) Bool)
(declare-fun |fun#triggerStateless| (T@Seq_20795) Int)
(declare-fun |fun_impl'| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |fun_impl#triggerStateless| (T@Seq_20795) Int)
(declare-fun |Seq#Update_9604| (T@Seq_20795 Int T@Ref) T@Seq_20795)
(declare-fun |Seq#Update_3059| (T@Seq_3059 Int Int) T@Seq_3059)
(declare-fun |Seq#Take_9604| (T@Seq_20795 Int) T@Seq_20795)
(declare-fun |Seq#Take_3059| (T@Seq_3059 Int) T@Seq_3059)
(declare-fun fun (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#ContainsTrigger_3059| (T@Seq_3059 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3059)
(declare-fun |Seq#Contains_3059| (T@Seq_3059 Int) Bool)
(declare-fun fun_impl (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |Seq#Contains_20795| (T@Seq_20795 T@Ref) Bool)
(declare-fun |Seq#Skolem_20795| (T@Seq_20795 T@Ref) Int)
(declare-fun |Seq#Skolem_3059| (T@Seq_3059 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14654 T@PolymorphicMapType_14654 T@PolymorphicMapType_14675) Bool)
(declare-fun IsPredicateField_9588_39810 (T@Field_9588_39719) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9588 (T@Field_9588_39719) T@Field_9588_39852)
(declare-fun HasDirectPerm_9588_39783 (T@PolymorphicMapType_14675 T@Ref T@Field_9588_39719) Bool)
(declare-fun IsWandField_9588_41557 (T@Field_9588_39719) Bool)
(declare-fun WandMaskField_9588 (T@Field_9588_39719) T@Field_9588_39852)
(declare-fun |Seq#Singleton_9683| (T@Ref) T@Seq_20795)
(declare-fun |Seq#Singleton_3059| (Int) T@Seq_3059)
(declare-fun |Seq#Append_20795| (T@Seq_20795 T@Seq_20795) T@Seq_20795)
(declare-fun |Seq#Append_3059| (T@Seq_3059 T@Seq_3059) T@Seq_3059)
(declare-fun dummyHeap () T@PolymorphicMapType_14654)
(declare-fun ZeroMask () T@PolymorphicMapType_14675)
(declare-fun InsidePredicate_14714_14714 (T@Field_9588_39719 T@FrameType T@Field_9588_39719 T@FrameType) Bool)
(declare-fun IsPredicateField_9588_3181 (T@Field_20748_3181) Bool)
(declare-fun IsWandField_9588_3181 (T@Field_20748_3181) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9588_45103 (T@Field_9588_39852) Bool)
(declare-fun IsWandField_9588_45119 (T@Field_9588_39852) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9588_14728 (T@Field_14727_14728) Bool)
(declare-fun IsWandField_9588_14728 (T@Field_14727_14728) Bool)
(declare-fun IsPredicateField_9588_53 (T@Field_14714_53) Bool)
(declare-fun IsWandField_9588_53 (T@Field_14714_53) Bool)
(declare-fun HasDirectPerm_9588_45557 (T@PolymorphicMapType_14675 T@Ref T@Field_9588_39852) Bool)
(declare-fun HasDirectPerm_9588_14728 (T@PolymorphicMapType_14675 T@Ref T@Field_14727_14728) Bool)
(declare-fun HasDirectPerm_9588_53 (T@PolymorphicMapType_14675 T@Ref T@Field_14714_53) Bool)
(declare-fun HasDirectPerm_9588_3181 (T@PolymorphicMapType_14675 T@Ref T@Field_20748_3181) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14675 T@PolymorphicMapType_14675 T@PolymorphicMapType_14675) Bool)
(declare-fun |Seq#Equal_20795| (T@Seq_20795 T@Seq_20795) Bool)
(declare-fun |Seq#Equal_3059| (T@Seq_3059 T@Seq_3059) Bool)
(declare-fun |Seq#ContainsTrigger_9604| (T@Seq_20795 T@Ref) Bool)
(declare-fun |fun#condqp1| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |sk_fun#condqp1| (Int Int) Int)
(declare-fun |fun_impl#condqp2| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |sk_fun_impl#condqp2| (Int Int) Int)
(declare-fun |fun#frame| (T@FrameType T@Seq_20795) Int)
(declare-fun FrameFragment_3558 (Int) T@FrameType)
(declare-fun |fun_impl#frame| (T@FrameType T@Seq_20795) Int)
(declare-fun |Seq#SkolemDiff_20795| (T@Seq_20795 T@Seq_20795) Int)
(declare-fun |Seq#SkolemDiff_3059| (T@Seq_3059 T@Seq_3059) Int)
(assert (forall ((s T@Seq_20795) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9604| s)) (= (|Seq#Length_9604| (|Seq#Drop_9604| s n)) (- (|Seq#Length_9604| s) n))) (=> (< (|Seq#Length_9604| s) n) (= (|Seq#Length_9604| (|Seq#Drop_9604| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9604| (|Seq#Drop_9604| s n)) (|Seq#Length_9604| s))))
 :qid |stdinbpl.313:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9604| (|Seq#Drop_9604| s n)))
 :pattern ( (|Seq#Length_9604| s) (|Seq#Drop_9604| s n))
)))
(assert (forall ((s@@0 T@Seq_3059) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3059| s@@0)) (= (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)) (- (|Seq#Length_3059| s@@0) n@@0))) (=> (< (|Seq#Length_3059| s@@0) n@@0) (= (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)) (|Seq#Length_3059| s@@0))))
 :qid |stdinbpl.313:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3059| s@@0) (|Seq#Drop_3059| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_14654) (Heap1 T@PolymorphicMapType_14654) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14654) (Mask T@PolymorphicMapType_14675) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14654) (Heap1@@0 T@PolymorphicMapType_14654) (Heap2 T@PolymorphicMapType_14654) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9588_39852) ) (!  (not (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9588_39719) ) (!  (not (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20748_3181) ) (!  (not (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14727_14728) ) (!  (not (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14714_53) ) (!  (not (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_20795) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9604| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9604| (|Seq#Drop_9604| s@@1 n@@1) j) (|Seq#Index_9604| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.334:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9604| (|Seq#Drop_9604| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3059) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3059| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3059| (|Seq#Drop_3059| s@@2 n@@2) j@@0) (|Seq#Index_3059| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.334:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3059| (|Seq#Drop_3059| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9604| |Seq#Empty_9604|) 0))
(assert (= (|Seq#Length_3059| |Seq#Empty_3059|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14654) (xs T@Seq_20795) ) (! (dummyFunction_3756 (|fun#triggerStateless| xs))
 :qid |stdinbpl.599:15|
 :skolemid |59|
 :pattern ( (|fun'| Heap@@0 xs))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14654) (xs@@0 T@Seq_20795) ) (! (dummyFunction_3756 (|fun_impl#triggerStateless| xs@@0))
 :qid |stdinbpl.797:15|
 :skolemid |77|
 :pattern ( (|fun_impl'| Heap@@1 xs@@0))
)))
(assert (forall ((s@@3 T@Seq_20795) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9604| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_9604| (|Seq#Update_9604| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_9604| (|Seq#Update_9604| s@@3 i v) n@@3) (|Seq#Index_9604| s@@3 n@@3)))))
 :qid |stdinbpl.289:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9604| (|Seq#Update_9604| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_9604| s@@3 n@@3) (|Seq#Update_9604| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3059) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3059| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3059| (|Seq#Update_3059| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3059| (|Seq#Update_3059| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3059| s@@4 n@@4)))))
 :qid |stdinbpl.289:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3059| (|Seq#Update_3059| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3059| s@@4 n@@4) (|Seq#Update_3059| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_20795) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9604| s@@5)) (= (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9604| s@@5) n@@5) (= (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)) (|Seq#Length_9604| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)) 0)))
 :qid |stdinbpl.300:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9604| s@@5 n@@5) (|Seq#Length_9604| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3059) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3059| s@@6)) (= (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3059| s@@6) n@@6) (= (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)) (|Seq#Length_3059| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)) 0)))
 :qid |stdinbpl.300:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3059| s@@6 n@@6) (|Seq#Length_3059| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14654) (Mask@@0 T@PolymorphicMapType_14675) (xs@@1 T@Seq_20795) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (and (< 0 (|Seq#Length_9604| xs@@1)) (forall ((i1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1) (not (= i1 i2_1)))) (not (= (|Seq#Index_9604| xs@@1 i1) (|Seq#Index_9604| xs@@1 i2_1))))
 :qid |stdinbpl.607:83|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Index_9604| xs@@1 i2_1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Index_9604| xs@@1 i2_1))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1) (|Seq#Index_9604| xs@@1 i1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1) (|Seq#Index_9604| xs@@1 i1))
 :pattern ( (|Seq#Index_9604| xs@@1 i1) (|Seq#Index_9604| xs@@1 i2_1))
))) (= (fun Heap@@2 xs@@1) (fun_impl Heap@@2 xs@@1))))
 :qid |stdinbpl.605:15|
 :skolemid |61|
 :pattern ( (state Heap@@2 Mask@@0) (fun Heap@@2 xs@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3059| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.574:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_20795) (x T@Ref) ) (!  (=> (|Seq#Contains_20795| s@@7 x) (and (and (<= 0 (|Seq#Skolem_20795| s@@7 x)) (< (|Seq#Skolem_20795| s@@7 x) (|Seq#Length_9604| s@@7))) (= (|Seq#Index_9604| s@@7 (|Seq#Skolem_20795| s@@7 x)) x)))
 :qid |stdinbpl.432:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_20795| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3059) (x@@0 Int) ) (!  (=> (|Seq#Contains_3059| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3059| s@@8 x@@0)) (< (|Seq#Skolem_3059| s@@8 x@@0) (|Seq#Length_3059| s@@8))) (= (|Seq#Index_3059| s@@8 (|Seq#Skolem_3059| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.432:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3059| s@@8 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14654) (xs@@2 T@Seq_20795) ) (!  (and (= (fun Heap@@3 xs@@2) (|fun'| Heap@@3 xs@@2)) (dummyFunction_3756 (|fun#triggerStateless| xs@@2)))
 :qid |stdinbpl.595:15|
 :skolemid |58|
 :pattern ( (fun Heap@@3 xs@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14654) (xs@@3 T@Seq_20795) ) (!  (and (= (fun_impl Heap@@4 xs@@3) (|fun_impl'| Heap@@4 xs@@3)) (dummyFunction_3756 (|fun_impl#triggerStateless| xs@@3)))
 :qid |stdinbpl.793:15|
 :skolemid |76|
 :pattern ( (fun_impl Heap@@4 xs@@3))
)))
(assert (forall ((s@@9 T@Seq_20795) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9604| s@@9 n@@7) s@@9))
 :qid |stdinbpl.416:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9604| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3059) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3059| s@@10 n@@8) s@@10))
 :qid |stdinbpl.416:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3059| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.269:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.267:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14654) (ExhaleHeap T@PolymorphicMapType_14654) (Mask@@1 T@PolymorphicMapType_14675) (pm_f_13 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_9588_39783 Mask@@1 null pm_f_13) (IsPredicateField_9588_39810 pm_f_13)) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@5) null (PredicateMaskField_9588 pm_f_13)) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap) null (PredicateMaskField_9588 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_9588_39810 pm_f_13) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap) null (PredicateMaskField_9588 pm_f_13)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14654) (ExhaleHeap@@0 T@PolymorphicMapType_14654) (Mask@@2 T@PolymorphicMapType_14675) (pm_f_13@@0 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_9588_39783 Mask@@2 null pm_f_13@@0) (IsWandField_9588_41557 pm_f_13@@0)) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@6) null (WandMaskField_9588 pm_f_13@@0)) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@0) null (WandMaskField_9588 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsWandField_9588_41557 pm_f_13@@0) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@0) null (WandMaskField_9588 pm_f_13@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_20795| (|Seq#Singleton_9683| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.557:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_20795| (|Seq#Singleton_9683| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3059| (|Seq#Singleton_3059| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.557:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3059| (|Seq#Singleton_3059| x@@2) y@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14654) (Mask@@3 T@PolymorphicMapType_14675) (xs@@4 T@Seq_20795) ) (!  (=> (and (state Heap@@7 Mask@@3) (< AssumeFunctionsAbove 1)) (=> (and (< 0 (|Seq#Length_9604| xs@@4)) (forall ((i1@@0 Int) (i2_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0) (not (= i1@@0 i2_1@@0)))) (not (= (|Seq#Index_9604| xs@@4 i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))))
 :qid |stdinbpl.805:83|
 :skolemid |78|
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0) (|Seq#Index_9604| xs@@4 i1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0) (|Seq#Index_9604| xs@@4 i1@@0))
 :pattern ( (|Seq#Index_9604| xs@@4 i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))
))) (= (fun_impl Heap@@7 xs@@4) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@7) (|Seq#Index_9604| xs@@4 0) f_7))))
 :qid |stdinbpl.803:15|
 :skolemid |79|
 :pattern ( (state Heap@@7 Mask@@3) (fun_impl Heap@@7 xs@@4))
)))
(assert (forall ((s@@11 T@Seq_20795) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9604| s@@11))) (= (|Seq#Index_9604| (|Seq#Take_9604| s@@11 n@@9) j@@3) (|Seq#Index_9604| s@@11 j@@3)))
 :qid |stdinbpl.308:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9604| (|Seq#Take_9604| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9604| s@@11 j@@3) (|Seq#Take_9604| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3059) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3059| s@@12))) (= (|Seq#Index_3059| (|Seq#Take_3059| s@@12 n@@10) j@@4) (|Seq#Index_3059| s@@12 j@@4)))
 :qid |stdinbpl.308:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3059| (|Seq#Take_3059| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3059| s@@12 j@@4) (|Seq#Take_3059| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_20795) (t T@Seq_20795) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9604| s@@13))) (< n@@11 (|Seq#Length_9604| (|Seq#Append_20795| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9604| s@@13)) (|Seq#Length_9604| s@@13)) n@@11) (= (|Seq#Take_9604| (|Seq#Append_20795| s@@13 t) n@@11) (|Seq#Append_20795| s@@13 (|Seq#Take_9604| t (|Seq#Sub| n@@11 (|Seq#Length_9604| s@@13)))))))
 :qid |stdinbpl.393:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9604| (|Seq#Append_20795| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3059) (t@@0 T@Seq_3059) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3059| s@@14))) (< n@@12 (|Seq#Length_3059| (|Seq#Append_3059| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3059| s@@14)) (|Seq#Length_3059| s@@14)) n@@12) (= (|Seq#Take_3059| (|Seq#Append_3059| s@@14 t@@0) n@@12) (|Seq#Append_3059| s@@14 (|Seq#Take_3059| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3059| s@@14)))))))
 :qid |stdinbpl.393:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3059| (|Seq#Append_3059| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14654) (ExhaleHeap@@1 T@PolymorphicMapType_14654) (Mask@@4 T@PolymorphicMapType_14675) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@8) o_22 $allocated) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_9588_39719) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14714_14714 p v_1 p w))
 :qid |stdinbpl.211:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14714_14714 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_20795) (s1 T@Seq_20795) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9604|)) (not (= s1 |Seq#Empty_9604|))) (<= (|Seq#Length_9604| s0) n@@13)) (< n@@13 (|Seq#Length_9604| (|Seq#Append_20795| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9604| s0)) (|Seq#Length_9604| s0)) n@@13) (= (|Seq#Index_9604| (|Seq#Append_20795| s0 s1) n@@13) (|Seq#Index_9604| s1 (|Seq#Sub| n@@13 (|Seq#Length_9604| s0))))))
 :qid |stdinbpl.280:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9604| (|Seq#Append_20795| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3059) (s1@@0 T@Seq_3059) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3059|)) (not (= s1@@0 |Seq#Empty_3059|))) (<= (|Seq#Length_3059| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3059| (|Seq#Append_3059| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3059| s0@@0)) (|Seq#Length_3059| s0@@0)) n@@14) (= (|Seq#Index_3059| (|Seq#Append_3059| s0@@0 s1@@0) n@@14) (|Seq#Index_3059| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3059| s0@@0))))))
 :qid |stdinbpl.280:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3059| (|Seq#Append_3059| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9588_3181 f_7)))
(assert  (not (IsWandField_9588_3181 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14654) (ExhaleHeap@@2 T@PolymorphicMapType_14654) (Mask@@5 T@PolymorphicMapType_14675) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_14675) (o_2@@4 T@Ref) (f_4@@4 T@Field_9588_39852) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9588_45103 f_4@@4))) (not (IsWandField_9588_45119 f_4@@4))) (<= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_14675) (o_2@@5 T@Ref) (f_4@@5 T@Field_9588_39719) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9588_39810 f_4@@5))) (not (IsWandField_9588_41557 f_4@@5))) (<= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_14675) (o_2@@6 T@Ref) (f_4@@6 T@Field_14727_14728) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9588_14728 f_4@@6))) (not (IsWandField_9588_14728 f_4@@6))) (<= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_14675) (o_2@@7 T@Ref) (f_4@@7 T@Field_14714_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9588_53 f_4@@7))) (not (IsWandField_9588_53 f_4@@7))) (<= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14675) (o_2@@8 T@Ref) (f_4@@8 T@Field_20748_3181) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9588_3181 f_4@@8))) (not (IsWandField_9588_3181 f_4@@8))) (<= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14675) (o_2@@9 T@Ref) (f_4@@9 T@Field_9588_39852) ) (! (= (HasDirectPerm_9588_45557 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_45557 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14675) (o_2@@10 T@Ref) (f_4@@10 T@Field_9588_39719) ) (! (= (HasDirectPerm_9588_39783 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_39783 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14675) (o_2@@11 T@Ref) (f_4@@11 T@Field_14727_14728) ) (! (= (HasDirectPerm_9588_14728 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_14728 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14675) (o_2@@12 T@Ref) (f_4@@12 T@Field_14714_53) ) (! (= (HasDirectPerm_9588_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14675) (o_2@@13 T@Ref) (f_4@@13 T@Field_20748_3181) ) (! (= (HasDirectPerm_9588_3181 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_3181 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14654) (ExhaleHeap@@3 T@PolymorphicMapType_14654) (Mask@@16 T@PolymorphicMapType_14675) (pm_f_13@@1 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_9588_39783 Mask@@16 null pm_f_13@@1) (IsPredicateField_9588_39810 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_14714_53) ) (!  (=> (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@10) o2_13 f_30) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_14727_14728) ) (!  (=> (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@10) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_20748_3181) ) (!  (=> (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@10) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_9588_39719) ) (!  (=> (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@10) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_9588_39852) ) (!  (=> (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@16) (IsPredicateField_9588_39810 pm_f_13@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14654) (ExhaleHeap@@4 T@PolymorphicMapType_14654) (Mask@@17 T@PolymorphicMapType_14675) (pm_f_13@@2 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_9588_39783 Mask@@17 null pm_f_13@@2) (IsWandField_9588_41557 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_14714_53) ) (!  (=> (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@11) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_14727_14728) ) (!  (=> (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@11) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_20748_3181) ) (!  (=> (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@11) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_9588_39719) ) (!  (=> (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@11) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_9588_39852) ) (!  (=> (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@17) (IsWandField_9588_41557 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.199:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3059| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.572:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3059| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14654) (ExhaleHeap@@5 T@PolymorphicMapType_14654) (Mask@@18 T@PolymorphicMapType_14675) (o_22@@0 T@Ref) (f_30@@9 T@Field_9588_39852) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_9588_45557 Mask@@18 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@12) o_22@@0 f_30@@9) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14654) (ExhaleHeap@@6 T@PolymorphicMapType_14654) (Mask@@19 T@PolymorphicMapType_14675) (o_22@@1 T@Ref) (f_30@@10 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_9588_39783 Mask@@19 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@13) o_22@@1 f_30@@10) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14654) (ExhaleHeap@@7 T@PolymorphicMapType_14654) (Mask@@20 T@PolymorphicMapType_14675) (o_22@@2 T@Ref) (f_30@@11 T@Field_14727_14728) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_9588_14728 Mask@@20 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@14) o_22@@2 f_30@@11) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14654) (ExhaleHeap@@8 T@PolymorphicMapType_14654) (Mask@@21 T@PolymorphicMapType_14675) (o_22@@3 T@Ref) (f_30@@12 T@Field_14714_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_9588_53 Mask@@21 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@15) o_22@@3 f_30@@12) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14654) (ExhaleHeap@@9 T@PolymorphicMapType_14654) (Mask@@22 T@PolymorphicMapType_14675) (o_22@@4 T@Ref) (f_30@@13 T@Field_20748_3181) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_9588_3181 Mask@@22 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@16) o_22@@4 f_30@@13) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((s0@@1 T@Seq_20795) (s1@@1 T@Seq_20795) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9604|)) (not (= s1@@1 |Seq#Empty_9604|))) (= (|Seq#Length_9604| (|Seq#Append_20795| s0@@1 s1@@1)) (+ (|Seq#Length_9604| s0@@1) (|Seq#Length_9604| s1@@1))))
 :qid |stdinbpl.249:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9604| (|Seq#Append_20795| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3059) (s1@@2 T@Seq_3059) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3059|)) (not (= s1@@2 |Seq#Empty_3059|))) (= (|Seq#Length_3059| (|Seq#Append_3059| s0@@2 s1@@2)) (+ (|Seq#Length_3059| s0@@2) (|Seq#Length_3059| s1@@2))))
 :qid |stdinbpl.249:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3059| (|Seq#Append_3059| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9588_39852) ) (! (= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9588_39719) ) (! (= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14727_14728) ) (! (= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14714_53) ) (! (= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_20748_3181) ) (! (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_20795) (t@@1 T@Seq_20795) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9604| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9604| s@@15)) (|Seq#Length_9604| s@@15)) n@@15) (= (|Seq#Drop_9604| (|Seq#Append_20795| s@@15 t@@1) n@@15) (|Seq#Drop_9604| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9604| s@@15))))))
 :qid |stdinbpl.406:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9604| (|Seq#Append_20795| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3059) (t@@2 T@Seq_3059) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3059| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3059| s@@16)) (|Seq#Length_3059| s@@16)) n@@16) (= (|Seq#Drop_3059| (|Seq#Append_3059| s@@16 t@@2) n@@16) (|Seq#Drop_3059| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3059| s@@16))))))
 :qid |stdinbpl.406:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3059| (|Seq#Append_3059| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14675) (SummandMask1 T@PolymorphicMapType_14675) (SummandMask2 T@PolymorphicMapType_14675) (o_2@@19 T@Ref) (f_4@@19 T@Field_9588_39852) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14675) (SummandMask1@@0 T@PolymorphicMapType_14675) (SummandMask2@@0 T@PolymorphicMapType_14675) (o_2@@20 T@Ref) (f_4@@20 T@Field_9588_39719) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14675) (SummandMask1@@1 T@PolymorphicMapType_14675) (SummandMask2@@1 T@PolymorphicMapType_14675) (o_2@@21 T@Ref) (f_4@@21 T@Field_14727_14728) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14675) (SummandMask1@@2 T@PolymorphicMapType_14675) (SummandMask2@@2 T@PolymorphicMapType_14675) (o_2@@22 T@Ref) (f_4@@22 T@Field_14714_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14675) (SummandMask1@@3 T@PolymorphicMapType_14675) (SummandMask2@@3 T@PolymorphicMapType_14675) (o_2@@23 T@Ref) (f_4@@23 T@Field_20748_3181) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3059| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3059| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.571:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3059| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_20795) (b T@Seq_20795) ) (!  (=> (|Seq#Equal_20795| a b) (= a b))
 :qid |stdinbpl.544:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_20795| a b))
)))
(assert (forall ((a@@0 T@Seq_3059) (b@@0 T@Seq_3059) ) (!  (=> (|Seq#Equal_3059| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.544:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3059| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_20795) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_9604| s@@17))) (|Seq#ContainsTrigger_9604| s@@17 (|Seq#Index_9604| s@@17 i@@3)))
 :qid |stdinbpl.437:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9604| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3059) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3059| s@@18))) (|Seq#ContainsTrigger_3059| s@@18 (|Seq#Index_3059| s@@18 i@@4)))
 :qid |stdinbpl.437:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3059| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_20795) (s1@@3 T@Seq_20795) ) (!  (and (=> (= s0@@3 |Seq#Empty_9604|) (= (|Seq#Append_20795| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9604|) (= (|Seq#Append_20795| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.255:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_20795| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3059) (s1@@4 T@Seq_3059) ) (!  (and (=> (= s0@@4 |Seq#Empty_3059|) (= (|Seq#Append_3059| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3059|) (= (|Seq#Append_3059| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.255:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3059| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9604| (|Seq#Singleton_9683| t@@3) 0) t@@3)
 :qid |stdinbpl.259:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9683| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3059| (|Seq#Singleton_3059| t@@4) 0) t@@4)
 :qid |stdinbpl.259:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3059| t@@4))
)))
(assert (forall ((s@@19 T@Seq_20795) ) (! (<= 0 (|Seq#Length_9604| s@@19))
 :qid |stdinbpl.238:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9604| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3059) ) (! (<= 0 (|Seq#Length_3059| s@@20))
 :qid |stdinbpl.238:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3059| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_20795) (s1@@5 T@Seq_20795) ) (!  (=> (|Seq#Equal_20795| s0@@5 s1@@5) (and (= (|Seq#Length_9604| s0@@5) (|Seq#Length_9604| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9604| s0@@5))) (= (|Seq#Index_9604| s0@@5 j@@6) (|Seq#Index_9604| s1@@5 j@@6)))
 :qid |stdinbpl.534:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9604| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9604| s1@@5 j@@6))
))))
 :qid |stdinbpl.531:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_20795| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3059) (s1@@6 T@Seq_3059) ) (!  (=> (|Seq#Equal_3059| s0@@6 s1@@6) (and (= (|Seq#Length_3059| s0@@6) (|Seq#Length_3059| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3059| s0@@6))) (= (|Seq#Index_3059| s0@@6 j@@7) (|Seq#Index_3059| s1@@6 j@@7)))
 :qid |stdinbpl.534:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3059| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3059| s1@@6 j@@7))
))))
 :qid |stdinbpl.531:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3059| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9604| (|Seq#Singleton_9683| t@@5)) 1)
 :qid |stdinbpl.246:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9683| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3059| (|Seq#Singleton_3059| t@@6)) 1)
 :qid |stdinbpl.246:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3059| t@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_14654) (Heap1Heap T@PolymorphicMapType_14654) (xs@@5 T@Seq_20795) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) (< (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)) (|Seq#Length_9604| xs@@5))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) (< (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)) (|Seq#Length_9604| xs@@5))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) (< (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)) (|Seq#Length_9604| xs@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap2Heap) (|Seq#Index_9604| xs@@5 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) f_7) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap1Heap) (|Seq#Index_9604| xs@@5 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) f_7)))) (= (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)))
 :qid |stdinbpl.625:15|
 :skolemid |63|
 :pattern ( (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_14654) (Heap1Heap@@0 T@PolymorphicMapType_14654) (xs@@6 T@Seq_20795) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) (< (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)) (|Seq#Length_9604| xs@@6))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) (< (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)) (|Seq#Length_9604| xs@@6))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) (< (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)) (|Seq#Length_9604| xs@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap2Heap@@0) (|Seq#Index_9604| xs@@6 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) f_7) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap1Heap@@0) (|Seq#Index_9604| xs@@6 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) f_7)))) (= (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)))
 :qid |stdinbpl.823:15|
 :skolemid |81|
 :pattern ( (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@21 T@Seq_20795) (t@@7 T@Seq_20795) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9604| s@@21))) (= (|Seq#Take_9604| (|Seq#Append_20795| s@@21 t@@7) n@@17) (|Seq#Take_9604| s@@21 n@@17)))
 :qid |stdinbpl.388:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9604| (|Seq#Append_20795| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3059) (t@@8 T@Seq_3059) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3059| s@@22))) (= (|Seq#Take_3059| (|Seq#Append_3059| s@@22 t@@8) n@@18) (|Seq#Take_3059| s@@22 n@@18)))
 :qid |stdinbpl.388:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3059| (|Seq#Append_3059| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_20795) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_9604| s@@23))) (= (|Seq#Length_9604| (|Seq#Update_9604| s@@23 i@@5 v@@2)) (|Seq#Length_9604| s@@23)))
 :qid |stdinbpl.287:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9604| (|Seq#Update_9604| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_9604| s@@23) (|Seq#Update_9604| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3059) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3059| s@@24))) (= (|Seq#Length_3059| (|Seq#Update_3059| s@@24 i@@6 v@@3)) (|Seq#Length_3059| s@@24)))
 :qid |stdinbpl.287:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3059| (|Seq#Update_3059| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3059| s@@24) (|Seq#Update_3059| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14654) (o_35 T@Ref) (f_11 T@Field_9588_39719) (v@@4 T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@17) (store (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@17) o_35 f_11 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@17) (store (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@17) o_35 f_11 v@@4)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14654) (o_35@@0 T@Ref) (f_11@@0 T@Field_9588_39852) (v@@5 T@PolymorphicMapType_15203) ) (! (succHeap Heap@@18 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@18) (store (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@18) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@18) (store (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@18) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14654) (o_35@@1 T@Ref) (f_11@@1 T@Field_20748_3181) (v@@6 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@19) (store (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@19) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@19) (store (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@19) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14654) (o_35@@2 T@Ref) (f_11@@2 T@Field_14727_14728) (v@@7 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@20) (store (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@20) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@20) (store (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@20) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14654) (o_35@@3 T@Ref) (f_11@@3 T@Field_14714_53) (v@@8 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_14654 (store (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@21) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (store (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@21) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_20795) (t@@9 T@Seq_20795) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9604| s@@25))) (= (|Seq#Drop_9604| (|Seq#Append_20795| s@@25 t@@9) n@@19) (|Seq#Append_20795| (|Seq#Drop_9604| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.402:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9604| (|Seq#Append_20795| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3059) (t@@10 T@Seq_3059) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3059| s@@26))) (= (|Seq#Drop_3059| (|Seq#Append_3059| s@@26 t@@10) n@@20) (|Seq#Append_3059| (|Seq#Drop_3059| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.402:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3059| (|Seq#Append_3059| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_20795) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_9604| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_9604| (|Seq#Drop_9604| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_9604| s@@27 i@@7))))
 :qid |stdinbpl.338:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9604| s@@27 n@@21) (|Seq#Index_9604| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3059) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3059| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3059| (|Seq#Drop_3059| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3059| s@@28 i@@8))))
 :qid |stdinbpl.338:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3059| s@@28 n@@22) (|Seq#Index_3059| s@@28 i@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14654) (Mask@@23 T@PolymorphicMapType_14675) (xs@@7 T@Seq_20795) ) (!  (=> (state Heap@@22 Mask@@23) (= (|fun'| Heap@@22 xs@@7) (|fun#frame| (FrameFragment_3558 (|fun#condqp1| Heap@@22 xs@@7)) xs@@7)))
 :qid |stdinbpl.615:15|
 :skolemid |62|
 :pattern ( (state Heap@@22 Mask@@23) (|fun'| Heap@@22 xs@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14654) (Mask@@24 T@PolymorphicMapType_14675) (xs@@8 T@Seq_20795) ) (!  (=> (state Heap@@23 Mask@@24) (= (|fun_impl'| Heap@@23 xs@@8) (|fun_impl#frame| (FrameFragment_3558 (|fun_impl#condqp2| Heap@@23 xs@@8)) xs@@8)))
 :qid |stdinbpl.813:15|
 :skolemid |80|
 :pattern ( (state Heap@@23 Mask@@24) (|fun_impl'| Heap@@23 xs@@8))
)))
(assert (forall ((s0@@7 T@Seq_20795) (s1@@7 T@Seq_20795) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9604|)) (not (= s1@@7 |Seq#Empty_9604|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9604| s0@@7))) (= (|Seq#Index_9604| (|Seq#Append_20795| s0@@7 s1@@7) n@@23) (|Seq#Index_9604| s0@@7 n@@23)))
 :qid |stdinbpl.278:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9604| (|Seq#Append_20795| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9604| s0@@7 n@@23) (|Seq#Append_20795| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3059) (s1@@8 T@Seq_3059) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3059|)) (not (= s1@@8 |Seq#Empty_3059|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3059| s0@@8))) (= (|Seq#Index_3059| (|Seq#Append_3059| s0@@8 s1@@8) n@@24) (|Seq#Index_3059| s0@@8 n@@24)))
 :qid |stdinbpl.278:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3059| (|Seq#Append_3059| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3059| s0@@8 n@@24) (|Seq#Append_3059| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_20795) (s1@@9 T@Seq_20795) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9604|)) (not (= s1@@9 |Seq#Empty_9604|))) (<= 0 m)) (< m (|Seq#Length_9604| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9604| s0@@9)) (|Seq#Length_9604| s0@@9)) m) (= (|Seq#Index_9604| (|Seq#Append_20795| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9604| s0@@9))) (|Seq#Index_9604| s1@@9 m))))
 :qid |stdinbpl.283:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9604| s1@@9 m) (|Seq#Append_20795| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3059) (s1@@10 T@Seq_3059) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3059|)) (not (= s1@@10 |Seq#Empty_3059|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3059| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3059| s0@@10)) (|Seq#Length_3059| s0@@10)) m@@0) (= (|Seq#Index_3059| (|Seq#Append_3059| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3059| s0@@10))) (|Seq#Index_3059| s1@@10 m@@0))))
 :qid |stdinbpl.283:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3059| s1@@10 m@@0) (|Seq#Append_3059| s0@@10 s1@@10))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_14727_14728) (Heap@@24 T@PolymorphicMapType_14654) ) (!  (=> (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@24) o_35@@4 $allocated) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@24) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@24) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@24) o_35@@4 f_31))
)))
(assert (forall ((s@@29 T@Seq_20795) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_9604| s@@29))) (= (|Seq#Index_9604| s@@29 i@@9) x@@3)) (|Seq#Contains_20795| s@@29 x@@3))
 :qid |stdinbpl.435:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_20795| s@@29 x@@3) (|Seq#Index_9604| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3059) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3059| s@@30))) (= (|Seq#Index_3059| s@@30 i@@10) x@@4)) (|Seq#Contains_3059| s@@30 x@@4))
 :qid |stdinbpl.435:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3059| s@@30 x@@4) (|Seq#Index_3059| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_20795) (s1@@11 T@Seq_20795) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_20795| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_20795| s0@@11 s1@@11))) (not (= (|Seq#Length_9604| s0@@11) (|Seq#Length_9604| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_20795| s0@@11 s1@@11))) (= (|Seq#Length_9604| s0@@11) (|Seq#Length_9604| s1@@11))) (= (|Seq#SkolemDiff_20795| s0@@11 s1@@11) (|Seq#SkolemDiff_20795| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_20795| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_20795| s0@@11 s1@@11) (|Seq#Length_9604| s0@@11))) (not (= (|Seq#Index_9604| s0@@11 (|Seq#SkolemDiff_20795| s0@@11 s1@@11)) (|Seq#Index_9604| s1@@11 (|Seq#SkolemDiff_20795| s0@@11 s1@@11))))))
 :qid |stdinbpl.539:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_20795| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3059) (s1@@12 T@Seq_3059) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3059| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3059| s0@@12 s1@@12))) (not (= (|Seq#Length_3059| s0@@12) (|Seq#Length_3059| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3059| s0@@12 s1@@12))) (= (|Seq#Length_3059| s0@@12) (|Seq#Length_3059| s1@@12))) (= (|Seq#SkolemDiff_3059| s0@@12 s1@@12) (|Seq#SkolemDiff_3059| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3059| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3059| s0@@12 s1@@12) (|Seq#Length_3059| s0@@12))) (not (= (|Seq#Index_3059| s0@@12 (|Seq#SkolemDiff_3059| s0@@12 s1@@12)) (|Seq#Index_3059| s1@@12 (|Seq#SkolemDiff_3059| s0@@12 s1@@12))))))
 :qid |stdinbpl.539:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3059| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9588_39719) (v_1@@0 T@FrameType) (q T@Field_9588_39719) (w@@0 T@FrameType) (r T@Field_9588_39719) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14714_14714 p@@1 v_1@@0 q w@@0) (InsidePredicate_14714_14714 q w@@0 r u)) (InsidePredicate_14714_14714 p@@1 v_1@@0 r u))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14714_14714 p@@1 v_1@@0 q w@@0) (InsidePredicate_14714_14714 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_20795) ) (!  (=> (= (|Seq#Length_9604| s@@31) 0) (= s@@31 |Seq#Empty_9604|))
 :qid |stdinbpl.242:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9604| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3059) ) (!  (=> (= (|Seq#Length_3059| s@@32) 0) (= s@@32 |Seq#Empty_3059|))
 :qid |stdinbpl.242:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3059| s@@32))
)))
(assert (forall ((s@@33 T@Seq_20795) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9604| s@@33 n@@25) |Seq#Empty_9604|))
 :qid |stdinbpl.418:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9604| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3059) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3059| s@@34 n@@26) |Seq#Empty_3059|))
 :qid |stdinbpl.418:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3059| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_6 () Int)
(declare-fun xs@@9 () T@Seq_20795)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_14675)
(declare-fun Heap@@25 () T@PolymorphicMapType_14654)
(declare-fun i1_18 () Int)
(declare-fun i2_8 () Int)
(set-info :boogie-vc-id |fun_impl#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (<= 0 i_6) (< i_6 (|Seq#Length_9604| xs@@9)))) (= (ControlFlow 0 16) 12)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (<= 0 i_6) (< i_6 (|Seq#Length_9604| xs@@9))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< i_6 (|Seq#Length_9604| xs@@9))) (=> (< i_6 (|Seq#Length_9604| xs@@9)) (=> (= (ControlFlow 0 13) 12) anon7_correct))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= 0 i_4_1) (< i_4_1 (|Seq#Length_9604| xs@@9)))) (and (<= 0 i_4_2) (< i_4_2 (|Seq#Length_9604| xs@@9)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_9604| xs@@9 i_4_1) (|Seq#Index_9604| xs@@9 i_4_2))))
 :qid |stdinbpl.885:15|
 :skolemid |83|
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (and (<= 0 i_4_1@@0) (< i_4_1@@0 (|Seq#Length_9604| xs@@9)))) (and (<= 0 i_4_2@@0) (< i_4_2@@0 (|Seq#Length_9604| xs@@9)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_9604| xs@@9 i_4_1@@0) (|Seq#Index_9604| xs@@9 i_4_2@@0))))
 :qid |stdinbpl.885:15|
 :skolemid |83|
)) (=> (and (and (forall ((i_4_1@@1 Int) ) (!  (=> (and (and (<= 0 i_4_1@@1) (< i_4_1@@1 (|Seq#Length_9604| xs@@9))) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_9604| xs@@9 i_4_1@@1)) (= (invRecv3 (|Seq#Index_9604| xs@@9 i_4_1@@1)) i_4_1@@1)))
 :qid |stdinbpl.891:22|
 :skolemid |84|
 :pattern ( (|Seq#Index_9604| xs@@9 i_4_1@@1))
 :pattern ( (|Seq#Index_9604| xs@@9 i_4_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_4)) (< (invRecv3 o_4) (|Seq#Length_9604| xs@@9))) (< NoPerm FullPerm)) (qpRange3 o_4)) (= (|Seq#Index_9604| xs@@9 (invRecv3 o_4)) o_4))
 :qid |stdinbpl.895:22|
 :skolemid |85|
 :pattern ( (invRecv3 o_4))
))) (and (forall ((i_4_1@@2 Int) ) (!  (=> (and (<= 0 i_4_1@@2) (< i_4_1@@2 (|Seq#Length_9604| xs@@9))) (not (= (|Seq#Index_9604| xs@@9 i_4_1@@2) null)))
 :qid |stdinbpl.901:22|
 :skolemid |86|
 :pattern ( (|Seq#Index_9604| xs@@9 i_4_1@@2))
 :pattern ( (|Seq#Index_9604| xs@@9 i_4_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_4@@0)) (< (invRecv3 o_4@@0) (|Seq#Length_9604| xs@@9))) (< NoPerm FullPerm)) (qpRange3 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_9604| xs@@9 (invRecv3 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv3 o_4@@0)) (< (invRecv3 o_4@@0) (|Seq#Length_9604| xs@@9))) (< NoPerm FullPerm)) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.907:22|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_14714_53) ) (!  (=> true (= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.911:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_14727_14728) ) (!  (=> true (= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.911:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_20748_3181) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.911:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_9588_39719) ) (!  (=> true (= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.911:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_9588_39852) ) (!  (=> true (= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.911:29|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@25 QPMask@0) (state Heap@@25 QPMask@0))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< 0 (|Seq#Length_9604| xs@@9))) (=> (< 0 (|Seq#Length_9604| xs@@9)) (=> (= (ControlFlow 0 9) (- 0 8)) (HasDirectPerm_9588_3181 QPMask@0 (|Seq#Index_9604| xs@@9 0) f_7))))))))))
(let ((anon9_Else_correct  (=> (and (forall ((i1_3 Int) (i2_3 Int) ) (!  (=> (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3) (not (= i1_3 i2_3)))) (not (= (|Seq#Index_9604| xs@@9 i1_3) (|Seq#Index_9604| xs@@9 i2_3))))
 :qid |stdinbpl.867:20|
 :skolemid |82|
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (|Seq#Index_9604| xs@@9 i2_3))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_3) (|Seq#Index_9604| xs@@9 i2_3))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3) (|Seq#Index_9604| xs@@9 i1_3))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_3) (|Seq#Index_9604| xs@@9 i1_3))
 :pattern ( (|Seq#Index_9604| xs@@9 i1_3) (|Seq#Index_9604| xs@@9 i2_3))
)) (state Heap@@25 ZeroMask)) (and (and (=> (= (ControlFlow 0 17) 9) anon11_Else_correct) (=> (= (ControlFlow 0 17) 13) anon12_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon12_Else_correct)))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_18) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_8) (not (= i1_18 i2_8))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i1_18) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@9)) i2_8) (not (= i1_18 i2_8)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_18 0)) (=> (>= i1_18 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_18 (|Seq#Length_9604| xs@@9))) (=> (< i1_18 (|Seq#Length_9604| xs@@9)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_8 0)) (=> (>= i2_8 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_8 (|Seq#Length_9604| xs@@9))) (=> (< i2_8 (|Seq#Length_9604| xs@@9)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@25 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 1)) (and (< 0 (|Seq#Length_9604| xs@@9)) (state Heap@@25 ZeroMask))) (and (and (=> (= (ControlFlow 0 18) 17) anon9_Else_correct) (=> (= (ControlFlow 0 18) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 18) 7) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
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
(declare-sort T@Field_14714_53 0)
(declare-sort T@Field_14727_14728 0)
(declare-sort T@Field_20748_3181 0)
(declare-sort T@Field_9588_39852 0)
(declare-sort T@Field_9588_39719 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_14675 0)) (((PolymorphicMapType_14675 (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| (Array T@Ref T@Field_20748_3181 Real)) (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| (Array T@Ref T@Field_14714_53 Real)) (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| (Array T@Ref T@Field_14727_14728 Real)) (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| (Array T@Ref T@Field_9588_39719 Real)) (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| (Array T@Ref T@Field_9588_39852 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15203 0)) (((PolymorphicMapType_15203 (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| (Array T@Ref T@Field_14714_53 Bool)) (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| (Array T@Ref T@Field_14727_14728 Bool)) (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| (Array T@Ref T@Field_20748_3181 Bool)) (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| (Array T@Ref T@Field_9588_39719 Bool)) (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| (Array T@Ref T@Field_9588_39852 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14654 0)) (((PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| (Array T@Ref T@Field_14714_53 Bool)) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| (Array T@Ref T@Field_14727_14728 T@Ref)) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| (Array T@Ref T@Field_20748_3181 Int)) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| (Array T@Ref T@Field_9588_39852 T@PolymorphicMapType_15203)) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| (Array T@Ref T@Field_9588_39719 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_14714_53)
(declare-fun f_7 () T@Field_20748_3181)
(declare-sort T@Seq_20795 0)
(declare-fun |Seq#Length_9604| (T@Seq_20795) Int)
(declare-fun |Seq#Drop_9604| (T@Seq_20795 Int) T@Seq_20795)
(declare-sort T@Seq_3059 0)
(declare-fun |Seq#Length_3059| (T@Seq_3059) Int)
(declare-fun |Seq#Drop_3059| (T@Seq_3059 Int) T@Seq_3059)
(declare-fun succHeap (T@PolymorphicMapType_14654 T@PolymorphicMapType_14654) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14654 T@PolymorphicMapType_14654) Bool)
(declare-fun state (T@PolymorphicMapType_14654 T@PolymorphicMapType_14675) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14675) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15203)
(declare-fun |Seq#Index_9604| (T@Seq_20795 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3059| (T@Seq_3059 Int) Int)
(declare-fun |Seq#Empty_9604| () T@Seq_20795)
(declare-fun |Seq#Empty_3059| () T@Seq_3059)
(declare-fun |fun'| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun dummyFunction_3756 (Int) Bool)
(declare-fun |fun#triggerStateless| (T@Seq_20795) Int)
(declare-fun |fun_impl'| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |fun_impl#triggerStateless| (T@Seq_20795) Int)
(declare-fun |Seq#Update_9604| (T@Seq_20795 Int T@Ref) T@Seq_20795)
(declare-fun |Seq#Update_3059| (T@Seq_3059 Int Int) T@Seq_3059)
(declare-fun |Seq#Take_9604| (T@Seq_20795 Int) T@Seq_20795)
(declare-fun |Seq#Take_3059| (T@Seq_3059 Int) T@Seq_3059)
(declare-fun fun (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#ContainsTrigger_3059| (T@Seq_3059 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3059)
(declare-fun |Seq#Contains_3059| (T@Seq_3059 Int) Bool)
(declare-fun fun_impl (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |Seq#Contains_20795| (T@Seq_20795 T@Ref) Bool)
(declare-fun |Seq#Skolem_20795| (T@Seq_20795 T@Ref) Int)
(declare-fun |Seq#Skolem_3059| (T@Seq_3059 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14654 T@PolymorphicMapType_14654 T@PolymorphicMapType_14675) Bool)
(declare-fun IsPredicateField_9588_39810 (T@Field_9588_39719) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9588 (T@Field_9588_39719) T@Field_9588_39852)
(declare-fun HasDirectPerm_9588_39783 (T@PolymorphicMapType_14675 T@Ref T@Field_9588_39719) Bool)
(declare-fun IsWandField_9588_41557 (T@Field_9588_39719) Bool)
(declare-fun WandMaskField_9588 (T@Field_9588_39719) T@Field_9588_39852)
(declare-fun |Seq#Singleton_9683| (T@Ref) T@Seq_20795)
(declare-fun |Seq#Singleton_3059| (Int) T@Seq_3059)
(declare-fun |Seq#Append_20795| (T@Seq_20795 T@Seq_20795) T@Seq_20795)
(declare-fun |Seq#Append_3059| (T@Seq_3059 T@Seq_3059) T@Seq_3059)
(declare-fun dummyHeap () T@PolymorphicMapType_14654)
(declare-fun ZeroMask () T@PolymorphicMapType_14675)
(declare-fun InsidePredicate_14714_14714 (T@Field_9588_39719 T@FrameType T@Field_9588_39719 T@FrameType) Bool)
(declare-fun IsPredicateField_9588_3181 (T@Field_20748_3181) Bool)
(declare-fun IsWandField_9588_3181 (T@Field_20748_3181) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9588_45103 (T@Field_9588_39852) Bool)
(declare-fun IsWandField_9588_45119 (T@Field_9588_39852) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9588_14728 (T@Field_14727_14728) Bool)
(declare-fun IsWandField_9588_14728 (T@Field_14727_14728) Bool)
(declare-fun IsPredicateField_9588_53 (T@Field_14714_53) Bool)
(declare-fun IsWandField_9588_53 (T@Field_14714_53) Bool)
(declare-fun HasDirectPerm_9588_45557 (T@PolymorphicMapType_14675 T@Ref T@Field_9588_39852) Bool)
(declare-fun HasDirectPerm_9588_14728 (T@PolymorphicMapType_14675 T@Ref T@Field_14727_14728) Bool)
(declare-fun HasDirectPerm_9588_53 (T@PolymorphicMapType_14675 T@Ref T@Field_14714_53) Bool)
(declare-fun HasDirectPerm_9588_3181 (T@PolymorphicMapType_14675 T@Ref T@Field_20748_3181) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14675 T@PolymorphicMapType_14675 T@PolymorphicMapType_14675) Bool)
(declare-fun |Seq#Equal_20795| (T@Seq_20795 T@Seq_20795) Bool)
(declare-fun |Seq#Equal_3059| (T@Seq_3059 T@Seq_3059) Bool)
(declare-fun |Seq#ContainsTrigger_9604| (T@Seq_20795 T@Ref) Bool)
(declare-fun |fun#condqp1| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |sk_fun#condqp1| (Int Int) Int)
(declare-fun |fun_impl#condqp2| (T@PolymorphicMapType_14654 T@Seq_20795) Int)
(declare-fun |sk_fun_impl#condqp2| (Int Int) Int)
(declare-fun |fun#frame| (T@FrameType T@Seq_20795) Int)
(declare-fun FrameFragment_3558 (Int) T@FrameType)
(declare-fun |fun_impl#frame| (T@FrameType T@Seq_20795) Int)
(declare-fun |Seq#SkolemDiff_20795| (T@Seq_20795 T@Seq_20795) Int)
(declare-fun |Seq#SkolemDiff_3059| (T@Seq_3059 T@Seq_3059) Int)
(assert (forall ((s T@Seq_20795) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9604| s)) (= (|Seq#Length_9604| (|Seq#Drop_9604| s n)) (- (|Seq#Length_9604| s) n))) (=> (< (|Seq#Length_9604| s) n) (= (|Seq#Length_9604| (|Seq#Drop_9604| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9604| (|Seq#Drop_9604| s n)) (|Seq#Length_9604| s))))
 :qid |stdinbpl.313:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9604| (|Seq#Drop_9604| s n)))
 :pattern ( (|Seq#Length_9604| s) (|Seq#Drop_9604| s n))
)))
(assert (forall ((s@@0 T@Seq_3059) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3059| s@@0)) (= (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)) (- (|Seq#Length_3059| s@@0) n@@0))) (=> (< (|Seq#Length_3059| s@@0) n@@0) (= (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)) (|Seq#Length_3059| s@@0))))
 :qid |stdinbpl.313:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3059| (|Seq#Drop_3059| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3059| s@@0) (|Seq#Drop_3059| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_14654) (Heap1 T@PolymorphicMapType_14654) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14654) (Mask T@PolymorphicMapType_14675) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14654) (Heap1@@0 T@PolymorphicMapType_14654) (Heap2 T@PolymorphicMapType_14654) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9588_39852) ) (!  (not (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9588_39719) ) (!  (not (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20748_3181) ) (!  (not (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14727_14728) ) (!  (not (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14714_53) ) (!  (not (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_20795) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9604| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9604| (|Seq#Drop_9604| s@@1 n@@1) j) (|Seq#Index_9604| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.334:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9604| (|Seq#Drop_9604| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3059) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3059| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3059| (|Seq#Drop_3059| s@@2 n@@2) j@@0) (|Seq#Index_3059| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.334:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3059| (|Seq#Drop_3059| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9604| |Seq#Empty_9604|) 0))
(assert (= (|Seq#Length_3059| |Seq#Empty_3059|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14654) (xs T@Seq_20795) ) (! (dummyFunction_3756 (|fun#triggerStateless| xs))
 :qid |stdinbpl.599:15|
 :skolemid |59|
 :pattern ( (|fun'| Heap@@0 xs))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14654) (xs@@0 T@Seq_20795) ) (! (dummyFunction_3756 (|fun_impl#triggerStateless| xs@@0))
 :qid |stdinbpl.797:15|
 :skolemid |77|
 :pattern ( (|fun_impl'| Heap@@1 xs@@0))
)))
(assert (forall ((s@@3 T@Seq_20795) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9604| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_9604| (|Seq#Update_9604| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_9604| (|Seq#Update_9604| s@@3 i v) n@@3) (|Seq#Index_9604| s@@3 n@@3)))))
 :qid |stdinbpl.289:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9604| (|Seq#Update_9604| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_9604| s@@3 n@@3) (|Seq#Update_9604| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3059) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3059| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3059| (|Seq#Update_3059| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3059| (|Seq#Update_3059| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3059| s@@4 n@@4)))))
 :qid |stdinbpl.289:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3059| (|Seq#Update_3059| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3059| s@@4 n@@4) (|Seq#Update_3059| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_20795) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9604| s@@5)) (= (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9604| s@@5) n@@5) (= (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)) (|Seq#Length_9604| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)) 0)))
 :qid |stdinbpl.300:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9604| (|Seq#Take_9604| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9604| s@@5 n@@5) (|Seq#Length_9604| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3059) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3059| s@@6)) (= (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3059| s@@6) n@@6) (= (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)) (|Seq#Length_3059| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)) 0)))
 :qid |stdinbpl.300:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3059| (|Seq#Take_3059| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3059| s@@6 n@@6) (|Seq#Length_3059| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14654) (Mask@@0 T@PolymorphicMapType_14675) (xs@@1 T@Seq_20795) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (and (< 0 (|Seq#Length_9604| xs@@1)) (forall ((i1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1) (not (= i1 i2_1)))) (not (= (|Seq#Index_9604| xs@@1 i1) (|Seq#Index_9604| xs@@1 i2_1))))
 :qid |stdinbpl.607:83|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Index_9604| xs@@1 i2_1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i1) (|Seq#Index_9604| xs@@1 i2_1))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1) (|Seq#Index_9604| xs@@1 i1))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@1)) i2_1) (|Seq#Index_9604| xs@@1 i1))
 :pattern ( (|Seq#Index_9604| xs@@1 i1) (|Seq#Index_9604| xs@@1 i2_1))
))) (= (fun Heap@@2 xs@@1) (fun_impl Heap@@2 xs@@1))))
 :qid |stdinbpl.605:15|
 :skolemid |61|
 :pattern ( (state Heap@@2 Mask@@0) (fun Heap@@2 xs@@1))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3059| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.574:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_20795) (x T@Ref) ) (!  (=> (|Seq#Contains_20795| s@@7 x) (and (and (<= 0 (|Seq#Skolem_20795| s@@7 x)) (< (|Seq#Skolem_20795| s@@7 x) (|Seq#Length_9604| s@@7))) (= (|Seq#Index_9604| s@@7 (|Seq#Skolem_20795| s@@7 x)) x)))
 :qid |stdinbpl.432:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_20795| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3059) (x@@0 Int) ) (!  (=> (|Seq#Contains_3059| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3059| s@@8 x@@0)) (< (|Seq#Skolem_3059| s@@8 x@@0) (|Seq#Length_3059| s@@8))) (= (|Seq#Index_3059| s@@8 (|Seq#Skolem_3059| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.432:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3059| s@@8 x@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14654) (xs@@2 T@Seq_20795) ) (!  (and (= (fun Heap@@3 xs@@2) (|fun'| Heap@@3 xs@@2)) (dummyFunction_3756 (|fun#triggerStateless| xs@@2)))
 :qid |stdinbpl.595:15|
 :skolemid |58|
 :pattern ( (fun Heap@@3 xs@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14654) (xs@@3 T@Seq_20795) ) (!  (and (= (fun_impl Heap@@4 xs@@3) (|fun_impl'| Heap@@4 xs@@3)) (dummyFunction_3756 (|fun_impl#triggerStateless| xs@@3)))
 :qid |stdinbpl.793:15|
 :skolemid |76|
 :pattern ( (fun_impl Heap@@4 xs@@3))
)))
(assert (forall ((s@@9 T@Seq_20795) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9604| s@@9 n@@7) s@@9))
 :qid |stdinbpl.416:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9604| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3059) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3059| s@@10 n@@8) s@@10))
 :qid |stdinbpl.416:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3059| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.269:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.267:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14654) (ExhaleHeap T@PolymorphicMapType_14654) (Mask@@1 T@PolymorphicMapType_14675) (pm_f_13 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_9588_39783 Mask@@1 null pm_f_13) (IsPredicateField_9588_39810 pm_f_13)) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@5) null (PredicateMaskField_9588 pm_f_13)) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap) null (PredicateMaskField_9588 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_9588_39810 pm_f_13) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap) null (PredicateMaskField_9588 pm_f_13)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14654) (ExhaleHeap@@0 T@PolymorphicMapType_14654) (Mask@@2 T@PolymorphicMapType_14675) (pm_f_13@@0 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_9588_39783 Mask@@2 null pm_f_13@@0) (IsWandField_9588_41557 pm_f_13@@0)) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@6) null (WandMaskField_9588 pm_f_13@@0)) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@0) null (WandMaskField_9588 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsWandField_9588_41557 pm_f_13@@0) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@0) null (WandMaskField_9588 pm_f_13@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_20795| (|Seq#Singleton_9683| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.557:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_20795| (|Seq#Singleton_9683| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3059| (|Seq#Singleton_3059| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.557:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3059| (|Seq#Singleton_3059| x@@2) y@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14654) (Mask@@3 T@PolymorphicMapType_14675) (xs@@4 T@Seq_20795) ) (!  (=> (and (state Heap@@7 Mask@@3) (< AssumeFunctionsAbove 1)) (=> (and (< 0 (|Seq#Length_9604| xs@@4)) (forall ((i1@@0 Int) (i2_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (and (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0) (not (= i1@@0 i2_1@@0)))) (not (= (|Seq#Index_9604| xs@@4 i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))))
 :qid |stdinbpl.805:83|
 :skolemid |78|
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0) (|Seq#Index_9604| xs@@4 i1@@0))
 :pattern ( (|Seq#Contains_3059| (|Seq#Range| 0 (|Seq#Length_9604| xs@@4)) i2_1@@0) (|Seq#Index_9604| xs@@4 i1@@0))
 :pattern ( (|Seq#Index_9604| xs@@4 i1@@0) (|Seq#Index_9604| xs@@4 i2_1@@0))
))) (= (fun_impl Heap@@7 xs@@4) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@7) (|Seq#Index_9604| xs@@4 0) f_7))))
 :qid |stdinbpl.803:15|
 :skolemid |79|
 :pattern ( (state Heap@@7 Mask@@3) (fun_impl Heap@@7 xs@@4))
)))
(assert (forall ((s@@11 T@Seq_20795) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9604| s@@11))) (= (|Seq#Index_9604| (|Seq#Take_9604| s@@11 n@@9) j@@3) (|Seq#Index_9604| s@@11 j@@3)))
 :qid |stdinbpl.308:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9604| (|Seq#Take_9604| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9604| s@@11 j@@3) (|Seq#Take_9604| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3059) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3059| s@@12))) (= (|Seq#Index_3059| (|Seq#Take_3059| s@@12 n@@10) j@@4) (|Seq#Index_3059| s@@12 j@@4)))
 :qid |stdinbpl.308:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3059| (|Seq#Take_3059| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3059| s@@12 j@@4) (|Seq#Take_3059| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_20795) (t T@Seq_20795) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9604| s@@13))) (< n@@11 (|Seq#Length_9604| (|Seq#Append_20795| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9604| s@@13)) (|Seq#Length_9604| s@@13)) n@@11) (= (|Seq#Take_9604| (|Seq#Append_20795| s@@13 t) n@@11) (|Seq#Append_20795| s@@13 (|Seq#Take_9604| t (|Seq#Sub| n@@11 (|Seq#Length_9604| s@@13)))))))
 :qid |stdinbpl.393:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9604| (|Seq#Append_20795| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3059) (t@@0 T@Seq_3059) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3059| s@@14))) (< n@@12 (|Seq#Length_3059| (|Seq#Append_3059| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3059| s@@14)) (|Seq#Length_3059| s@@14)) n@@12) (= (|Seq#Take_3059| (|Seq#Append_3059| s@@14 t@@0) n@@12) (|Seq#Append_3059| s@@14 (|Seq#Take_3059| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3059| s@@14)))))))
 :qid |stdinbpl.393:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3059| (|Seq#Append_3059| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14654) (ExhaleHeap@@1 T@PolymorphicMapType_14654) (Mask@@4 T@PolymorphicMapType_14675) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (=> (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@8) o_22 $allocated) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@4) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_9588_39719) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14714_14714 p v_1 p w))
 :qid |stdinbpl.211:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14714_14714 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_20795) (s1 T@Seq_20795) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9604|)) (not (= s1 |Seq#Empty_9604|))) (<= (|Seq#Length_9604| s0) n@@13)) (< n@@13 (|Seq#Length_9604| (|Seq#Append_20795| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9604| s0)) (|Seq#Length_9604| s0)) n@@13) (= (|Seq#Index_9604| (|Seq#Append_20795| s0 s1) n@@13) (|Seq#Index_9604| s1 (|Seq#Sub| n@@13 (|Seq#Length_9604| s0))))))
 :qid |stdinbpl.280:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9604| (|Seq#Append_20795| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3059) (s1@@0 T@Seq_3059) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3059|)) (not (= s1@@0 |Seq#Empty_3059|))) (<= (|Seq#Length_3059| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3059| (|Seq#Append_3059| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3059| s0@@0)) (|Seq#Length_3059| s0@@0)) n@@14) (= (|Seq#Index_3059| (|Seq#Append_3059| s0@@0 s1@@0) n@@14) (|Seq#Index_3059| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3059| s0@@0))))))
 :qid |stdinbpl.280:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3059| (|Seq#Append_3059| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9588_3181 f_7)))
(assert  (not (IsWandField_9588_3181 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14654) (ExhaleHeap@@2 T@PolymorphicMapType_14654) (Mask@@5 T@PolymorphicMapType_14675) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5) (succHeap Heap@@9 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_14675) (o_2@@4 T@Ref) (f_4@@4 T@Field_9588_39852) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@6) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9588_45103 f_4@@4))) (not (IsWandField_9588_45119 f_4@@4))) (<= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@6) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@6) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_14675) (o_2@@5 T@Ref) (f_4@@5 T@Field_9588_39719) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9588_39810 f_4@@5))) (not (IsWandField_9588_41557 f_4@@5))) (<= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_14675) (o_2@@6 T@Ref) (f_4@@6 T@Field_14727_14728) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9588_14728 f_4@@6))) (not (IsWandField_9588_14728 f_4@@6))) (<= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_14675) (o_2@@7 T@Ref) (f_4@@7 T@Field_14714_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9588_53 f_4@@7))) (not (IsWandField_9588_53 f_4@@7))) (<= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14675) (o_2@@8 T@Ref) (f_4@@8 T@Field_20748_3181) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9588_3181 f_4@@8))) (not (IsWandField_9588_3181 f_4@@8))) (<= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14675) (o_2@@9 T@Ref) (f_4@@9 T@Field_9588_39852) ) (! (= (HasDirectPerm_9588_45557 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_45557 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14675) (o_2@@10 T@Ref) (f_4@@10 T@Field_9588_39719) ) (! (= (HasDirectPerm_9588_39783 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_39783 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14675) (o_2@@11 T@Ref) (f_4@@11 T@Field_14727_14728) ) (! (= (HasDirectPerm_9588_14728 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_14728 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14675) (o_2@@12 T@Ref) (f_4@@12 T@Field_14714_53) ) (! (= (HasDirectPerm_9588_53 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_53 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14675) (o_2@@13 T@Ref) (f_4@@13 T@Field_20748_3181) ) (! (= (HasDirectPerm_9588_3181 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9588_3181 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14654) (ExhaleHeap@@3 T@PolymorphicMapType_14654) (Mask@@16 T@PolymorphicMapType_14675) (pm_f_13@@1 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_9588_39783 Mask@@16 null pm_f_13@@1) (IsPredicateField_9588_39810 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_14714_53) ) (!  (=> (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@10) o2_13 f_30) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_14727_14728) ) (!  (=> (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@10) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_20748_3181) ) (!  (=> (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@10) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_9588_39719) ) (!  (=> (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@10) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_9588_39852) ) (!  (=> (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) null (PredicateMaskField_9588 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@10) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@16) (IsPredicateField_9588_39810 pm_f_13@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14654) (ExhaleHeap@@4 T@PolymorphicMapType_14654) (Mask@@17 T@PolymorphicMapType_14675) (pm_f_13@@2 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_9588_39783 Mask@@17 null pm_f_13@@2) (IsWandField_9588_41557 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_14714_53) ) (!  (=> (select (|PolymorphicMapType_15203_14714_53#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@11) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_14727_14728) ) (!  (=> (select (|PolymorphicMapType_15203_14714_14728#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@11) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_20748_3181) ) (!  (=> (select (|PolymorphicMapType_15203_14714_3181#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@11) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_9588_39719) ) (!  (=> (select (|PolymorphicMapType_15203_14714_39719#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@11) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_9588_39852) ) (!  (=> (select (|PolymorphicMapType_15203_14714_41030#PolymorphicMapType_15203| (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) null (WandMaskField_9588 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@11) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@17) (IsWandField_9588_41557 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.199:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3059| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.572:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3059| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14654) (ExhaleHeap@@5 T@PolymorphicMapType_14654) (Mask@@18 T@PolymorphicMapType_14675) (o_22@@0 T@Ref) (f_30@@9 T@Field_9588_39852) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_9588_45557 Mask@@18 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@12) o_22@@0 f_30@@9) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14654) (ExhaleHeap@@6 T@PolymorphicMapType_14654) (Mask@@19 T@PolymorphicMapType_14675) (o_22@@1 T@Ref) (f_30@@10 T@Field_9588_39719) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_9588_39783 Mask@@19 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@13) o_22@@1 f_30@@10) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14654) (ExhaleHeap@@7 T@PolymorphicMapType_14654) (Mask@@20 T@PolymorphicMapType_14675) (o_22@@2 T@Ref) (f_30@@11 T@Field_14727_14728) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_9588_14728 Mask@@20 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@14) o_22@@2 f_30@@11) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14654) (ExhaleHeap@@8 T@PolymorphicMapType_14654) (Mask@@21 T@PolymorphicMapType_14675) (o_22@@3 T@Ref) (f_30@@12 T@Field_14714_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_9588_53 Mask@@21 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@15) o_22@@3 f_30@@12) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14654) (ExhaleHeap@@9 T@PolymorphicMapType_14654) (Mask@@22 T@PolymorphicMapType_14675) (o_22@@4 T@Ref) (f_30@@13 T@Field_20748_3181) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_9588_3181 Mask@@22 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@16) o_22@@4 f_30@@13) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((s0@@1 T@Seq_20795) (s1@@1 T@Seq_20795) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9604|)) (not (= s1@@1 |Seq#Empty_9604|))) (= (|Seq#Length_9604| (|Seq#Append_20795| s0@@1 s1@@1)) (+ (|Seq#Length_9604| s0@@1) (|Seq#Length_9604| s1@@1))))
 :qid |stdinbpl.249:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9604| (|Seq#Append_20795| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3059) (s1@@2 T@Seq_3059) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3059|)) (not (= s1@@2 |Seq#Empty_3059|))) (= (|Seq#Length_3059| (|Seq#Append_3059| s0@@2 s1@@2)) (+ (|Seq#Length_3059| s0@@2) (|Seq#Length_3059| s1@@2))))
 :qid |stdinbpl.249:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3059| (|Seq#Append_3059| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9588_39852) ) (! (= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9588_39719) ) (! (= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_14727_14728) ) (! (= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_14714_53) ) (! (= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_20748_3181) ) (! (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_20795) (t@@1 T@Seq_20795) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9604| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9604| s@@15)) (|Seq#Length_9604| s@@15)) n@@15) (= (|Seq#Drop_9604| (|Seq#Append_20795| s@@15 t@@1) n@@15) (|Seq#Drop_9604| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9604| s@@15))))))
 :qid |stdinbpl.406:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9604| (|Seq#Append_20795| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3059) (t@@2 T@Seq_3059) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3059| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3059| s@@16)) (|Seq#Length_3059| s@@16)) n@@16) (= (|Seq#Drop_3059| (|Seq#Append_3059| s@@16 t@@2) n@@16) (|Seq#Drop_3059| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3059| s@@16))))))
 :qid |stdinbpl.406:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3059| (|Seq#Append_3059| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14675) (SummandMask1 T@PolymorphicMapType_14675) (SummandMask2 T@PolymorphicMapType_14675) (o_2@@19 T@Ref) (f_4@@19 T@Field_9588_39852) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14675_9588_43974#PolymorphicMapType_14675| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14675) (SummandMask1@@0 T@PolymorphicMapType_14675) (SummandMask2@@0 T@PolymorphicMapType_14675) (o_2@@20 T@Ref) (f_4@@20 T@Field_9588_39719) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14675_9588_39719#PolymorphicMapType_14675| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14675) (SummandMask1@@1 T@PolymorphicMapType_14675) (SummandMask2@@1 T@PolymorphicMapType_14675) (o_2@@21 T@Ref) (f_4@@21 T@Field_14727_14728) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14675_9588_14728#PolymorphicMapType_14675| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14675) (SummandMask1@@2 T@PolymorphicMapType_14675) (SummandMask2@@2 T@PolymorphicMapType_14675) (o_2@@22 T@Ref) (f_4@@22 T@Field_14714_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14675_9588_53#PolymorphicMapType_14675| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14675) (SummandMask1@@3 T@PolymorphicMapType_14675) (SummandMask2@@3 T@PolymorphicMapType_14675) (o_2@@23 T@Ref) (f_4@@23 T@Field_20748_3181) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14675_9588_3181#PolymorphicMapType_14675| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3059| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3059| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.571:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3059| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_20795) (b T@Seq_20795) ) (!  (=> (|Seq#Equal_20795| a b) (= a b))
 :qid |stdinbpl.544:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_20795| a b))
)))
(assert (forall ((a@@0 T@Seq_3059) (b@@0 T@Seq_3059) ) (!  (=> (|Seq#Equal_3059| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.544:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3059| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_20795) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_9604| s@@17))) (|Seq#ContainsTrigger_9604| s@@17 (|Seq#Index_9604| s@@17 i@@3)))
 :qid |stdinbpl.437:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9604| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3059) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3059| s@@18))) (|Seq#ContainsTrigger_3059| s@@18 (|Seq#Index_3059| s@@18 i@@4)))
 :qid |stdinbpl.437:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3059| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_20795) (s1@@3 T@Seq_20795) ) (!  (and (=> (= s0@@3 |Seq#Empty_9604|) (= (|Seq#Append_20795| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9604|) (= (|Seq#Append_20795| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.255:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_20795| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3059) (s1@@4 T@Seq_3059) ) (!  (and (=> (= s0@@4 |Seq#Empty_3059|) (= (|Seq#Append_3059| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3059|) (= (|Seq#Append_3059| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.255:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3059| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9604| (|Seq#Singleton_9683| t@@3) 0) t@@3)
 :qid |stdinbpl.259:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9683| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3059| (|Seq#Singleton_3059| t@@4) 0) t@@4)
 :qid |stdinbpl.259:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3059| t@@4))
)))
(assert (forall ((s@@19 T@Seq_20795) ) (! (<= 0 (|Seq#Length_9604| s@@19))
 :qid |stdinbpl.238:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9604| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3059) ) (! (<= 0 (|Seq#Length_3059| s@@20))
 :qid |stdinbpl.238:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3059| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_20795) (s1@@5 T@Seq_20795) ) (!  (=> (|Seq#Equal_20795| s0@@5 s1@@5) (and (= (|Seq#Length_9604| s0@@5) (|Seq#Length_9604| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9604| s0@@5))) (= (|Seq#Index_9604| s0@@5 j@@6) (|Seq#Index_9604| s1@@5 j@@6)))
 :qid |stdinbpl.534:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9604| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9604| s1@@5 j@@6))
))))
 :qid |stdinbpl.531:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_20795| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3059) (s1@@6 T@Seq_3059) ) (!  (=> (|Seq#Equal_3059| s0@@6 s1@@6) (and (= (|Seq#Length_3059| s0@@6) (|Seq#Length_3059| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3059| s0@@6))) (= (|Seq#Index_3059| s0@@6 j@@7) (|Seq#Index_3059| s1@@6 j@@7)))
 :qid |stdinbpl.534:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3059| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3059| s1@@6 j@@7))
))))
 :qid |stdinbpl.531:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3059| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9604| (|Seq#Singleton_9683| t@@5)) 1)
 :qid |stdinbpl.246:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9683| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3059| (|Seq#Singleton_3059| t@@6)) 1)
 :qid |stdinbpl.246:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3059| t@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_14654) (Heap1Heap T@PolymorphicMapType_14654) (xs@@5 T@Seq_20795) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) (< (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)) (|Seq#Length_9604| xs@@5))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) (< (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)) (|Seq#Length_9604| xs@@5))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) (< (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)) (|Seq#Length_9604| xs@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap2Heap) (|Seq#Index_9604| xs@@5 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) f_7) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap1Heap) (|Seq#Index_9604| xs@@5 (|sk_fun#condqp1| (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5))) f_7)))) (= (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5)))
 :qid |stdinbpl.625:15|
 :skolemid |63|
 :pattern ( (|fun#condqp1| Heap2Heap xs@@5) (|fun#condqp1| Heap1Heap xs@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_14654) (Heap1Heap@@0 T@PolymorphicMapType_14654) (xs@@6 T@Seq_20795) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) (< (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)) (|Seq#Length_9604| xs@@6))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) (< (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)) (|Seq#Length_9604| xs@@6))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) (< (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)) (|Seq#Length_9604| xs@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap2Heap@@0) (|Seq#Index_9604| xs@@6 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) f_7) (select (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap1Heap@@0) (|Seq#Index_9604| xs@@6 (|sk_fun_impl#condqp2| (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6))) f_7)))) (= (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6)))
 :qid |stdinbpl.823:15|
 :skolemid |81|
 :pattern ( (|fun_impl#condqp2| Heap2Heap@@0 xs@@6) (|fun_impl#condqp2| Heap1Heap@@0 xs@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((s@@21 T@Seq_20795) (t@@7 T@Seq_20795) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9604| s@@21))) (= (|Seq#Take_9604| (|Seq#Append_20795| s@@21 t@@7) n@@17) (|Seq#Take_9604| s@@21 n@@17)))
 :qid |stdinbpl.388:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9604| (|Seq#Append_20795| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3059) (t@@8 T@Seq_3059) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3059| s@@22))) (= (|Seq#Take_3059| (|Seq#Append_3059| s@@22 t@@8) n@@18) (|Seq#Take_3059| s@@22 n@@18)))
 :qid |stdinbpl.388:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3059| (|Seq#Append_3059| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_20795) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_9604| s@@23))) (= (|Seq#Length_9604| (|Seq#Update_9604| s@@23 i@@5 v@@2)) (|Seq#Length_9604| s@@23)))
 :qid |stdinbpl.287:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9604| (|Seq#Update_9604| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_9604| s@@23) (|Seq#Update_9604| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3059) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3059| s@@24))) (= (|Seq#Length_3059| (|Seq#Update_3059| s@@24 i@@6 v@@3)) (|Seq#Length_3059| s@@24)))
 :qid |stdinbpl.287:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3059| (|Seq#Update_3059| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3059| s@@24) (|Seq#Update_3059| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14654) (o_35 T@Ref) (f_11 T@Field_9588_39719) (v@@4 T@FrameType) ) (! (succHeap Heap@@17 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@17) (store (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@17) o_35 f_11 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@17) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@17) (store (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@17) o_35 f_11 v@@4)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14654) (o_35@@0 T@Ref) (f_11@@0 T@Field_9588_39852) (v@@5 T@PolymorphicMapType_15203) ) (! (succHeap Heap@@18 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@18) (store (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@18) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@18) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@18) (store (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@18) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14654) (o_35@@1 T@Ref) (f_11@@1 T@Field_20748_3181) (v@@6 Int) ) (! (succHeap Heap@@19 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@19) (store (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@19) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@19) (store (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@19) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@19) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14654) (o_35@@2 T@Ref) (f_11@@2 T@Field_14727_14728) (v@@7 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@20) (store (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@20) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@20) (store (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@20) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@20) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14654) (o_35@@3 T@Ref) (f_11@@3 T@Field_14714_53) (v@@8 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_14654 (store (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@21) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14654 (store (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@21) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_3181#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_9588_39896#PolymorphicMapType_14654| Heap@@21) (|PolymorphicMapType_14654_14714_39719#PolymorphicMapType_14654| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_20795) (t@@9 T@Seq_20795) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9604| s@@25))) (= (|Seq#Drop_9604| (|Seq#Append_20795| s@@25 t@@9) n@@19) (|Seq#Append_20795| (|Seq#Drop_9604| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.402:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9604| (|Seq#Append_20795| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3059) (t@@10 T@Seq_3059) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3059| s@@26))) (= (|Seq#Drop_3059| (|Seq#Append_3059| s@@26 t@@10) n@@20) (|Seq#Append_3059| (|Seq#Drop_3059| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.402:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3059| (|Seq#Append_3059| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_20795) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_9604| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_9604| (|Seq#Drop_9604| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_9604| s@@27 i@@7))))
 :qid |stdinbpl.338:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9604| s@@27 n@@21) (|Seq#Index_9604| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3059) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3059| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3059| (|Seq#Drop_3059| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3059| s@@28 i@@8))))
 :qid |stdinbpl.338:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3059| s@@28 n@@22) (|Seq#Index_3059| s@@28 i@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14654) (Mask@@23 T@PolymorphicMapType_14675) (xs@@7 T@Seq_20795) ) (!  (=> (state Heap@@22 Mask@@23) (= (|fun'| Heap@@22 xs@@7) (|fun#frame| (FrameFragment_3558 (|fun#condqp1| Heap@@22 xs@@7)) xs@@7)))
 :qid |stdinbpl.615:15|
 :skolemid |62|
 :pattern ( (state Heap@@22 Mask@@23) (|fun'| Heap@@22 xs@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14654) (Mask@@24 T@PolymorphicMapType_14675) (xs@@8 T@Seq_20795) ) (!  (=> (state Heap@@23 Mask@@24) (= (|fun_impl'| Heap@@23 xs@@8) (|fun_impl#frame| (FrameFragment_3558 (|fun_impl#condqp2| Heap@@23 xs@@8)) xs@@8)))
 :qid |stdinbpl.813:15|
 :skolemid |80|
 :pattern ( (state Heap@@23 Mask@@24) (|fun_impl'| Heap@@23 xs@@8))
)))
(assert (forall ((s0@@7 T@Seq_20795) (s1@@7 T@Seq_20795) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9604|)) (not (= s1@@7 |Seq#Empty_9604|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9604| s0@@7))) (= (|Seq#Index_9604| (|Seq#Append_20795| s0@@7 s1@@7) n@@23) (|Seq#Index_9604| s0@@7 n@@23)))
 :qid |stdinbpl.278:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9604| (|Seq#Append_20795| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9604| s0@@7 n@@23) (|Seq#Append_20795| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3059) (s1@@8 T@Seq_3059) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3059|)) (not (= s1@@8 |Seq#Empty_3059|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3059| s0@@8))) (= (|Seq#Index_3059| (|Seq#Append_3059| s0@@8 s1@@8) n@@24) (|Seq#Index_3059| s0@@8 n@@24)))
 :qid |stdinbpl.278:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3059| (|Seq#Append_3059| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3059| s0@@8 n@@24) (|Seq#Append_3059| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_20795) (s1@@9 T@Seq_20795) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9604|)) (not (= s1@@9 |Seq#Empty_9604|))) (<= 0 m)) (< m (|Seq#Length_9604| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9604| s0@@9)) (|Seq#Length_9604| s0@@9)) m) (= (|Seq#Index_9604| (|Seq#Append_20795| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9604| s0@@9))) (|Seq#Index_9604| s1@@9 m))))
 :qid |stdinbpl.283:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9604| s1@@9 m) (|Seq#Append_20795| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3059) (s1@@10 T@Seq_3059) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3059|)) (not (= s1@@10 |Seq#Empty_3059|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3059| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3059| s0@@10)) (|Seq#Length_3059| s0@@10)) m@@0) (= (|Seq#Index_3059| (|Seq#Append_3059| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3059| s0@@10))) (|Seq#Index_3059| s1@@10 m@@0))))
 :qid |stdinbpl.283:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3059| s1@@10 m@@0) (|Seq#Append_3059| s0@@10 s1@@10))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_14727_14728) (Heap@@24 T@PolymorphicMapType_14654) ) (!  (=> (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@24) o_35@@4 $allocated) (select (|PolymorphicMapType_14654_9384_53#PolymorphicMapType_14654| Heap@@24) (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@24) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14654_9387_9388#PolymorphicMapType_14654| Heap@@24) o_35@@4 f_31))
)))
(assert (forall ((s@@29 T@Seq_20795) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_9604| s@@29))) (= (|Seq#Index_9604| s@@29 i@@9) x@@3)) (|Seq#Contains_20795| s@@29 x@@3))
 :qid |stdinbpl.435:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_20795| s@@29 x@@3) (|Seq#Index_9604| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3059) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3059| s@@30))) (= (|Seq#Index_3059| s@@30 i@@10) x@@4)) (|Seq#Contains_3059| s@@30 x@@4))
 :qid |stdinbpl.435:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3059| s@@30 x@@4) (|Seq#Index_3059| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_20795) (s1@@11 T@Seq_20795) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_20795| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_20795| s0@@11 s1@@11))) (not (= (|Seq#Length_9604| s0@@11) (|Seq#Length_9604| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_20795| s0@@11 s1@@11))) (= (|Seq#Length_9604| s0@@11) (|Seq#Length_9604| s1@@11))) (= (|Seq#SkolemDiff_20795| s0@@11 s1@@11) (|Seq#SkolemDiff_20795| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_20795| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_20795| s0@@11 s1@@11) (|Seq#Length_9604| s0@@11))) (not (= (|Seq#Index_9604| s0@@11 (|Seq#SkolemDiff_20795| s0@@11 s1@@11)) (|Seq#Index_9604| s1@@11 (|Seq#SkolemDiff_20795| s0@@11 s1@@11))))))
 :qid |stdinbpl.539:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_20795| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3059) (s1@@12 T@Seq_3059) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3059| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3059| s0@@12 s1@@12))) (not (= (|Seq#Length_3059| s0@@12) (|Seq#Length_3059| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3059| s0@@12 s1@@12))) (= (|Seq#Length_3059| s0@@12) (|Seq#Length_3059| s1@@12))) (= (|Seq#SkolemDiff_3059| s0@@12 s1@@12) (|Seq#SkolemDiff_3059| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3059| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3059| s0@@12 s1@@12) (|Seq#Length_3059| s0@@12))) (not (= (|Seq#Index_3059| s0@@12 (|Seq#SkolemDiff_3059| s0@@12 s1@@12)) (|Seq#Index_3059| s1@@12 (|Seq#SkolemDiff_3059| s0@@12 s1@@12))))))
 :qid |stdinbpl.539:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3059| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9588_39719) (v_1@@0 T@FrameType) (q T@Field_9588_39719) (w@@0 T@FrameType) (r T@Field_9588_39719) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14714_14714 p@@1 v_1@@0 q w@@0) (InsidePredicate_14714_14714 q w@@0 r u)) (InsidePredicate_14714_14714 p@@1 v_1@@0 r u))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14714_14714 p@@1 v_1@@0 q w@@0) (InsidePredicate_14714_14714 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_20795) ) (!  (=> (= (|Seq#Length_9604| s@@31) 0) (= s@@31 |Seq#Empty_9604|))
 :qid |stdinbpl.242:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9604| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3059) ) (!  (=> (= (|Seq#Length_3059| s@@32) 0) (= s@@32 |Seq#Empty_3059|))
 :qid |stdinbpl.242:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3059| s@@32))
)))
(assert (forall ((s@@33 T@Seq_20795) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9604| s@@33 n@@25) |Seq#Empty_9604|))
 :qid |stdinbpl.418:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9604| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3059) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3059| s@@34 n@@26) |Seq#Empty_3059|))
 :qid |stdinbpl.418:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3059| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

