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
(declare-sort T@Field_14257_53 0)
(declare-sort T@Field_14270_14271 0)
(declare-sort T@Field_20285_20290 0)
(declare-sort T@Seq_20288 0)
(declare-sort T@Field_20399_3117 0)
(declare-sort T@Field_8667_43825 0)
(declare-sort T@Field_8667_43692 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_14218 0)) (((PolymorphicMapType_14218 (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| (Array T@Ref T@Field_20285_20290 Real)) (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| (Array T@Ref T@Field_20399_3117 Real)) (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| (Array T@Ref T@Field_14257_53 Real)) (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| (Array T@Ref T@Field_14270_14271 Real)) (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| (Array T@Ref T@Field_8667_43692 Real)) (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| (Array T@Ref T@Field_8667_43825 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14746 0)) (((PolymorphicMapType_14746 (|PolymorphicMapType_14746_14257_53#PolymorphicMapType_14746| (Array T@Ref T@Field_14257_53 Bool)) (|PolymorphicMapType_14746_14257_14271#PolymorphicMapType_14746| (Array T@Ref T@Field_14270_14271 Bool)) (|PolymorphicMapType_14746_14257_20290#PolymorphicMapType_14746| (Array T@Ref T@Field_20285_20290 Bool)) (|PolymorphicMapType_14746_14257_3117#PolymorphicMapType_14746| (Array T@Ref T@Field_20399_3117 Bool)) (|PolymorphicMapType_14746_14257_43692#PolymorphicMapType_14746| (Array T@Ref T@Field_8667_43692 Bool)) (|PolymorphicMapType_14746_14257_45207#PolymorphicMapType_14746| (Array T@Ref T@Field_8667_43825 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14197 0)) (((PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| (Array T@Ref T@Field_14257_53 Bool)) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| (Array T@Ref T@Field_14270_14271 T@Ref)) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| (Array T@Ref T@Field_20285_20290 T@Seq_20288)) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| (Array T@Ref T@Field_20399_3117 Int)) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| (Array T@Ref T@Field_8667_43825 T@PolymorphicMapType_14746)) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| (Array T@Ref T@Field_8667_43692 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_14257_53)
(declare-fun Map__keys () T@Field_20285_20290)
(declare-fun Map__values () T@Field_20285_20290)
(declare-fun Ref__Integer_value () T@Field_20399_3117)
(declare-fun |Seq#Length_8668| (T@Seq_20288) Int)
(declare-fun |Seq#Drop_8668| (T@Seq_20288 Int) T@Seq_20288)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_14197 T@PolymorphicMapType_14197) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14197 T@PolymorphicMapType_14197) Bool)
(declare-fun state (T@PolymorphicMapType_14197 T@PolymorphicMapType_14218) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14218) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14746)
(declare-fun |Seq#Index_8668| (T@Seq_20288 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_8668| () T@Seq_20288)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-fun |Seq#Update_8668| (T@Seq_20288 Int T@Ref) T@Seq_20288)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun Map__indexOfLoop (T@PolymorphicMapType_14197 T@Ref Int Bool Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun Map__EMPTY (T@PolymorphicMapType_14197) Int)
(declare-fun Map__DELETED (T@PolymorphicMapType_14197) Int)
(declare-fun |Map__indexOfLoop'| (T@PolymorphicMapType_14197 T@Ref Int Bool Int) Int)
(declare-fun |Seq#Take_8668| (T@Seq_20288 Int) T@Seq_20288)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Contains_20288| (T@Seq_20288 T@Ref) Bool)
(declare-fun |Seq#Skolem_20288| (T@Seq_20288 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14197 T@PolymorphicMapType_14197 T@PolymorphicMapType_14218) Bool)
(declare-fun IsPredicateField_8667_43783 (T@Field_8667_43692) Bool)
(declare-fun PredicateMaskField_8667 (T@Field_8667_43692) T@Field_8667_43825)
(declare-fun HasDirectPerm_8667_43756 (T@PolymorphicMapType_14218 T@Ref T@Field_8667_43692) Bool)
(declare-fun IsWandField_8667_45734 (T@Field_8667_43692) Bool)
(declare-fun WandMaskField_8667 (T@Field_8667_43692) T@Field_8667_43825)
(declare-fun |Map__EMPTY'| (T@PolymorphicMapType_14197) Int)
(declare-fun |Map__EMPTY#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Map__DELETED'| (T@PolymorphicMapType_14197) Int)
(declare-fun |Map__DELETED#trigger| (T@FrameType) Bool)
(declare-fun |Seq#Singleton_8668| (T@Ref) T@Seq_20288)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |Seq#Append_20288| (T@Seq_20288 T@Seq_20288) T@Seq_20288)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_14197)
(declare-fun ZeroMask () T@PolymorphicMapType_14218)
(declare-fun InsidePredicate_14257_14257 (T@Field_8667_43692 T@FrameType T@Field_8667_43692 T@FrameType) Bool)
(declare-fun IsPredicateField_8667_20312 (T@Field_20285_20290) Bool)
(declare-fun IsWandField_8667_20338 (T@Field_20285_20290) Bool)
(declare-fun IsPredicateField_8675_3117 (T@Field_20399_3117) Bool)
(declare-fun IsWandField_8675_3117 (T@Field_20399_3117) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8667_49868 (T@Field_8667_43825) Bool)
(declare-fun IsWandField_8667_49884 (T@Field_8667_43825) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8667_14271 (T@Field_14270_14271) Bool)
(declare-fun IsWandField_8667_14271 (T@Field_14270_14271) Bool)
(declare-fun IsPredicateField_8667_53 (T@Field_14257_53) Bool)
(declare-fun IsWandField_8667_53 (T@Field_14257_53) Bool)
(declare-fun |Map__indexOfLoop#trigger| (T@FrameType T@Ref Int Bool Int) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_23581 (T@Seq_20288) T@FrameType)
(declare-fun FrameFragment_4160 (Int) T@FrameType)
(declare-fun |Map__indexOfLoop#condqp1| (T@PolymorphicMapType_14197 T@Ref Int Bool Int) Int)
(declare-fun |Map__indexOfLoop#condqp2| (T@PolymorphicMapType_14197 T@Ref Int Bool Int) Int)
(declare-fun HasDirectPerm_8667_50405 (T@PolymorphicMapType_14218 T@Ref T@Field_8667_43825) Bool)
(declare-fun HasDirectPerm_8667_14271 (T@PolymorphicMapType_14218 T@Ref T@Field_14270_14271) Bool)
(declare-fun HasDirectPerm_8667_53 (T@PolymorphicMapType_14218 T@Ref T@Field_14257_53) Bool)
(declare-fun HasDirectPerm_8675_3117 (T@PolymorphicMapType_14218 T@Ref T@Field_20399_3117) Bool)
(declare-fun HasDirectPerm_8667_27665 (T@PolymorphicMapType_14218 T@Ref T@Field_20285_20290) Bool)
(declare-fun dummyFunction_3291 (Int) Bool)
(declare-fun |Map__indexOfLoop#triggerStateless| (T@Ref Int Bool Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |Map__EMPTY#triggerStateless| () Int)
(declare-fun |Map__DELETED#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_14218 T@PolymorphicMapType_14218 T@PolymorphicMapType_14218) Bool)
(declare-fun |Seq#Equal_20288| (T@Seq_20288 T@Seq_20288) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |Seq#ContainsTrigger_8668| (T@Seq_20288 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Map__indexOfLoop#frame| (T@FrameType T@Ref Int Bool Int) Int)
(declare-fun |Map__EMPTY#frame| (T@FrameType) Int)
(declare-fun |Map__DELETED#frame| (T@FrameType) Int)
(declare-fun |Seq#SkolemDiff_20288| (T@Seq_20288 T@Seq_20288) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun |sk_Map__indexOfLoop#condqp1| (Int Int) Int)
(declare-fun |sk_Map__indexOfLoop#condqp2| (Int Int) Int)
(assert (distinct Map__keys Map__values)
)
(assert (forall ((s T@Seq_20288) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8668| s)) (= (|Seq#Length_8668| (|Seq#Drop_8668| s n)) (- (|Seq#Length_8668| s) n))) (=> (< (|Seq#Length_8668| s) n) (= (|Seq#Length_8668| (|Seq#Drop_8668| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8668| (|Seq#Drop_8668| s n)) (|Seq#Length_8668| s))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8668| (|Seq#Drop_8668| s n)))
 :pattern ( (|Seq#Length_8668| s) (|Seq#Drop_8668| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_14197) (Heap1 T@PolymorphicMapType_14197) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14197) (Mask T@PolymorphicMapType_14218) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14197) (Heap1@@0 T@PolymorphicMapType_14197) (Heap2 T@PolymorphicMapType_14197) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8667_43825) ) (!  (not (select (|PolymorphicMapType_14746_14257_45207#PolymorphicMapType_14746| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14746_14257_45207#PolymorphicMapType_14746| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8667_43692) ) (!  (not (select (|PolymorphicMapType_14746_14257_43692#PolymorphicMapType_14746| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14746_14257_43692#PolymorphicMapType_14746| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20399_3117) ) (!  (not (select (|PolymorphicMapType_14746_14257_3117#PolymorphicMapType_14746| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14746_14257_3117#PolymorphicMapType_14746| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20285_20290) ) (!  (not (select (|PolymorphicMapType_14746_14257_20290#PolymorphicMapType_14746| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14746_14257_20290#PolymorphicMapType_14746| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14270_14271) ) (!  (not (select (|PolymorphicMapType_14746_14257_14271#PolymorphicMapType_14746| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14746_14257_14271#PolymorphicMapType_14746| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14257_53) ) (!  (not (select (|PolymorphicMapType_14746_14257_53#PolymorphicMapType_14746| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14746_14257_53#PolymorphicMapType_14746| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_20288) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8668| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8668| (|Seq#Drop_8668| s@@1 n@@1) j) (|Seq#Index_8668| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8668| (|Seq#Drop_8668| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8668| |Seq#Empty_8668|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((s@@3 T@Seq_20288) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8668| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8668| (|Seq#Update_8668| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8668| (|Seq#Update_8668| s@@3 i v) n@@3) (|Seq#Index_8668| s@@3 n@@3)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8668| (|Seq#Update_8668| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8668| s@@3 n@@3) (|Seq#Update_8668| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@0 v@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14197) (Mask@@0 T@PolymorphicMapType_14218) (diz T@Ref) (hash Int) (ignoreDeleted Bool) (cap Int) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (and (and (and (and (and (and (and (and (not (= diz null)) (> (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys)) 0)) (> (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values)) 0)) (= (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values)))) (forall ((i@@1 Int) (j_9 Int) ) (!  (=> (and (<= 0 i@@1) (and (< i@@1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys))) (and (<= 0 j_9) (and (< j_9 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys))) (not (= i@@1 j_9)))))) (not (= (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) i@@1) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) j_9))))
 :qid |stdinbpl.730:242|
 :skolemid |70|
 :pattern ( (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) i@@1) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) j_9))
))) (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values))) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values))) (not (= i_1 j_1)))))) (not (= (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values) i_1) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values) j_1))))
 :qid |stdinbpl.733:17|
 :skolemid |71|
 :pattern ( (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values) i_1) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__values) j_1))
))) (forall ((i1 Int) ) (!  (=> (and (>= i1 0) (< i1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys)))) (or (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@0) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) i1) Ref__Integer_value) (Map__EMPTY Heap@@0)) (or (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@0) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) i1) Ref__Integer_value) (Map__DELETED Heap@@0)) (>= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@0) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) i1) Ref__Integer_value) 0))))
 :qid |stdinbpl.736:17|
 :skolemid |72|
 :pattern ( (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys) i1))
))) (and (>= hash 0) (< hash (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys))))) (< cap (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys)))) (= (Map__indexOfLoop Heap@@0 diz hash ignoreDeleted cap) (ite (<= cap 0) (Map__EMPTY Heap@@0) (|Map__indexOfLoop'| Heap@@0 diz (mod (+ hash 1) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@0) diz Map__keys))) ignoreDeleted (- cap 1))))))
 :qid |stdinbpl.728:15|
 :skolemid |73|
 :pattern ( (state Heap@@0 Mask@@0) (Map__indexOfLoop Heap@@0 diz hash ignoreDeleted cap))
)))
(assert (forall ((s@@5 T@Seq_20288) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8668| s@@5)) (= (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8668| s@@5) n@@5) (= (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)) (|Seq#Length_8668| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8668| (|Seq#Take_8668| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8668| s@@5 n@@5) (|Seq#Length_8668| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2963| s@@6)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2963| s@@6) n@@6) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) (|Seq#Length_2963| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2963| s@@6 n@@6) (|Seq#Length_2963| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.563:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_20288) (x T@Ref) ) (!  (=> (|Seq#Contains_20288| s@@7 x) (and (and (<= 0 (|Seq#Skolem_20288| s@@7 x)) (< (|Seq#Skolem_20288| s@@7 x) (|Seq#Length_8668| s@@7))) (= (|Seq#Index_8668| s@@7 (|Seq#Skolem_20288| s@@7 x)) x)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_20288| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@0)) (< (|Seq#Skolem_2963| s@@8 x@@0) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_20288) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8668| s@@9 n@@7) s@@9))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8668| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.258:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14197) (ExhaleHeap T@PolymorphicMapType_14197) (Mask@@1 T@PolymorphicMapType_14218) (pm_f_3 T@Field_8667_43692) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8667_43756 Mask@@1 null pm_f_3) (IsPredicateField_8667_43783 pm_f_3)) (= (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@1) null (PredicateMaskField_8667 pm_f_3)) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap) null (PredicateMaskField_8667 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (IsPredicateField_8667_43783 pm_f_3) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap) null (PredicateMaskField_8667 pm_f_3)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14197) (ExhaleHeap@@0 T@PolymorphicMapType_14197) (Mask@@2 T@PolymorphicMapType_14218) (pm_f_3@@0 T@Field_8667_43692) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8667_43756 Mask@@2 null pm_f_3@@0) (IsWandField_8667_45734 pm_f_3@@0)) (= (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@2) null (WandMaskField_8667 pm_f_3@@0)) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@0) null (WandMaskField_8667 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (IsWandField_8667_45734 pm_f_3@@0) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@0) null (WandMaskField_8667 pm_f_3@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14197) (Mask@@3 T@PolymorphicMapType_14218) ) (!  (=> (and (state Heap@@3 Mask@@3) (or (< AssumeFunctionsAbove 1) (|Map__EMPTY#trigger| EmptyFrame))) (= (|Map__EMPTY'| Heap@@3) (- 0 1)))
 :qid |stdinbpl.613:15|
 :skolemid |62|
 :pattern ( (state Heap@@3 Mask@@3) (|Map__EMPTY'| Heap@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14197) (Mask@@4 T@PolymorphicMapType_14218) ) (!  (=> (and (state Heap@@4 Mask@@4) (or (< AssumeFunctionsAbove 2) (|Map__DELETED#trigger| EmptyFrame))) (= (|Map__DELETED'| Heap@@4) (- 0 2)))
 :qid |stdinbpl.677:15|
 :skolemid |67|
 :pattern ( (state Heap@@4 Mask@@4) (|Map__DELETED'| Heap@@4))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_20288| (|Seq#Singleton_8668| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_20288| (|Seq#Singleton_8668| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_20288) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8668| s@@11))) (= (|Seq#Index_8668| (|Seq#Take_8668| s@@11 n@@9) j@@3) (|Seq#Index_8668| s@@11 j@@3)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8668| (|Seq#Take_8668| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8668| s@@11 j@@3) (|Seq#Take_8668| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_20288) (t T@Seq_20288) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8668| s@@13))) (< n@@11 (|Seq#Length_8668| (|Seq#Append_20288| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8668| s@@13)) (|Seq#Length_8668| s@@13)) n@@11) (= (|Seq#Take_8668| (|Seq#Append_20288| s@@13 t) n@@11) (|Seq#Append_20288| s@@13 (|Seq#Take_8668| t (|Seq#Sub| n@@11 (|Seq#Length_8668| s@@13)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8668| (|Seq#Append_20288| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14197) (ExhaleHeap@@1 T@PolymorphicMapType_14197) (Mask@@5 T@PolymorphicMapType_14218) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@5) (=> (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@5) o_8 $allocated) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@5) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_8667_43692) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14257_14257 p v_1 p w))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14257_14257 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_20288) (s1 T@Seq_20288) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8668|)) (not (= s1 |Seq#Empty_8668|))) (<= (|Seq#Length_8668| s0) n@@13)) (< n@@13 (|Seq#Length_8668| (|Seq#Append_20288| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8668| s0)) (|Seq#Length_8668| s0)) n@@13) (= (|Seq#Index_8668| (|Seq#Append_20288| s0 s1) n@@13) (|Seq#Index_8668| s1 (|Seq#Sub| n@@13 (|Seq#Length_8668| s0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8668| (|Seq#Append_20288| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8667_20312 Map__keys)))
(assert  (not (IsWandField_8667_20338 Map__keys)))
(assert  (not (IsPredicateField_8667_20312 Map__values)))
(assert  (not (IsWandField_8667_20338 Map__values)))
(assert  (not (IsPredicateField_8675_3117 Ref__Integer_value)))
(assert  (not (IsWandField_8675_3117 Ref__Integer_value)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14197) (ExhaleHeap@@2 T@PolymorphicMapType_14197) (Mask@@6 T@PolymorphicMapType_14218) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@6) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_14218) (o_2@@5 T@Ref) (f_4@@5 T@Field_8667_43825) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| Mask@@7) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8667_49868 f_4@@5))) (not (IsWandField_8667_49884 f_4@@5))) (<= (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| Mask@@7) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| Mask@@7) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_14218) (o_2@@6 T@Ref) (f_4@@6 T@Field_8667_43692) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| Mask@@8) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8667_43783 f_4@@6))) (not (IsWandField_8667_45734 f_4@@6))) (<= (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| Mask@@8) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| Mask@@8) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_14218) (o_2@@7 T@Ref) (f_4@@7 T@Field_14270_14271) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| Mask@@9) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8667_14271 f_4@@7))) (not (IsWandField_8667_14271 f_4@@7))) (<= (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| Mask@@9) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| Mask@@9) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14218) (o_2@@8 T@Ref) (f_4@@8 T@Field_14257_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| Mask@@10) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8667_53 f_4@@8))) (not (IsWandField_8667_53 f_4@@8))) (<= (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| Mask@@10) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| Mask@@10) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14218) (o_2@@9 T@Ref) (f_4@@9 T@Field_20399_3117) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8675_3117 f_4@@9))) (not (IsWandField_8675_3117 f_4@@9))) (<= (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14218) (o_2@@10 T@Ref) (f_4@@10 T@Field_20285_20290) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8667_20312 f_4@@10))) (not (IsWandField_8667_20338 f_4@@10))) (<= (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14197) (Mask@@13 T@PolymorphicMapType_14218) (diz@@0 T@Ref) (hash@@0 Int) (ignoreDeleted@@0 Bool) (cap@@0 Int) ) (!  (=> (and (state Heap@@7 Mask@@13) (or (< AssumeFunctionsAbove 0) (|Map__indexOfLoop#trigger| (CombineFrames (FrameFragment_23581 (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys)) (CombineFrames (FrameFragment_23581 (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values)) (CombineFrames (FrameFragment_4160 (|Map__indexOfLoop#condqp1| Heap@@7 diz@@0 hash@@0 ignoreDeleted@@0 cap@@0)) (FrameFragment_4160 (|Map__indexOfLoop#condqp2| Heap@@7 diz@@0 hash@@0 ignoreDeleted@@0 cap@@0))))) diz@@0 hash@@0 ignoreDeleted@@0 cap@@0))) (=> (and (and (and (and (and (and (and (and (not (= diz@@0 null)) (> (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys)) 0)) (> (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values)) 0)) (= (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values)))) (forall ((i_2_1 Int) (j_2_1 Int) ) (!  (=> (and (<= 0 i_2_1) (and (< i_2_1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys))) (and (<= 0 j_2_1) (and (< j_2_1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys))) (not (= i_2_1 j_2_1)))))) (not (= (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) i_2_1) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) j_2_1))))
 :qid |stdinbpl.772:580|
 :skolemid |77|
 :pattern ( (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) i_2_1) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) j_2_1))
))) (forall ((i_3 Int) (j_3_1 Int) ) (!  (=> (and (<= 0 i_3) (and (< i_3 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values))) (and (<= 0 j_3_1) (and (< j_3_1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values))) (not (= i_3 j_3_1)))))) (not (= (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values) i_3) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values) j_3_1))))
 :qid |stdinbpl.775:17|
 :skolemid |78|
 :pattern ( (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values) i_3) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__values) j_3_1))
))) (forall ((i1_1_1 Int) ) (!  (=> (and (>= i1_1_1 0) (< i1_1_1 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys)))) (or (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@7) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) i1_1_1) Ref__Integer_value) (Map__EMPTY Heap@@7)) (or (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@7) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) i1_1_1) Ref__Integer_value) (Map__DELETED Heap@@7)) (>= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@7) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) i1_1_1) Ref__Integer_value) 0))))
 :qid |stdinbpl.778:17|
 :skolemid |79|
 :pattern ( (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys) i1_1_1))
))) (and (>= hash@@0 0) (< hash@@0 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys))))) (< cap@@0 (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys)))) (or (= (|Map__indexOfLoop'| Heap@@7 diz@@0 hash@@0 ignoreDeleted@@0 cap@@0) (Map__EMPTY Heap@@7)) (and (>= (|Map__indexOfLoop'| Heap@@7 diz@@0 hash@@0 ignoreDeleted@@0 cap@@0) 0) (< (|Map__indexOfLoop'| Heap@@7 diz@@0 hash@@0 ignoreDeleted@@0 cap@@0) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@7) diz@@0 Map__keys)))))))
 :qid |stdinbpl.770:15|
 :skolemid |80|
 :pattern ( (state Heap@@7 Mask@@13) (|Map__indexOfLoop'| Heap@@7 diz@@0 hash@@0 ignoreDeleted@@0 cap@@0))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14218) (o_2@@11 T@Ref) (f_4@@11 T@Field_8667_43825) ) (! (= (HasDirectPerm_8667_50405 Mask@@14 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| Mask@@14) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8667_50405 Mask@@14 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14218) (o_2@@12 T@Ref) (f_4@@12 T@Field_8667_43692) ) (! (= (HasDirectPerm_8667_43756 Mask@@15 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| Mask@@15) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8667_43756 Mask@@15 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14218) (o_2@@13 T@Ref) (f_4@@13 T@Field_14270_14271) ) (! (= (HasDirectPerm_8667_14271 Mask@@16 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| Mask@@16) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8667_14271 Mask@@16 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14218) (o_2@@14 T@Ref) (f_4@@14 T@Field_14257_53) ) (! (= (HasDirectPerm_8667_53 Mask@@17 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| Mask@@17) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8667_53 Mask@@17 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14218) (o_2@@15 T@Ref) (f_4@@15 T@Field_20399_3117) ) (! (= (HasDirectPerm_8675_3117 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8675_3117 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14218) (o_2@@16 T@Ref) (f_4@@16 T@Field_20285_20290) ) (! (= (HasDirectPerm_8667_27665 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8667_27665 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14197) (diz@@1 T@Ref) (hash@@1 Int) (ignoreDeleted@@1 Bool) (cap@@1 Int) ) (! (dummyFunction_3291 (|Map__indexOfLoop#triggerStateless| diz@@1 hash@@1 ignoreDeleted@@1 cap@@1))
 :qid |stdinbpl.722:15|
 :skolemid |69|
 :pattern ( (|Map__indexOfLoop'| Heap@@8 diz@@1 hash@@1 ignoreDeleted@@1 cap@@1))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.188:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.561:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14197) (ExhaleHeap@@3 T@PolymorphicMapType_14197) (Mask@@20 T@PolymorphicMapType_14218) (o_8@@0 T@Ref) (f_12 T@Field_8667_43825) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@20) (=> (HasDirectPerm_8667_50405 Mask@@20 o_8@@0 f_12) (= (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@9) o_8@@0 f_12) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@3) o_8@@0 f_12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@20) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@3) o_8@@0 f_12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14197) (ExhaleHeap@@4 T@PolymorphicMapType_14197) (Mask@@21 T@PolymorphicMapType_14218) (o_8@@1 T@Ref) (f_12@@0 T@Field_8667_43692) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@21) (=> (HasDirectPerm_8667_43756 Mask@@21 o_8@@1 f_12@@0) (= (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@10) o_8@@1 f_12@@0) (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| ExhaleHeap@@4) o_8@@1 f_12@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@21) (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| ExhaleHeap@@4) o_8@@1 f_12@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14197) (ExhaleHeap@@5 T@PolymorphicMapType_14197) (Mask@@22 T@PolymorphicMapType_14218) (o_8@@2 T@Ref) (f_12@@1 T@Field_14270_14271) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_8667_14271 Mask@@22 o_8@@2 f_12@@1) (= (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@11) o_8@@2 f_12@@1) (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| ExhaleHeap@@5) o_8@@2 f_12@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| ExhaleHeap@@5) o_8@@2 f_12@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14197) (ExhaleHeap@@6 T@PolymorphicMapType_14197) (Mask@@23 T@PolymorphicMapType_14218) (o_8@@3 T@Ref) (f_12@@2 T@Field_14257_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_8667_53 Mask@@23 o_8@@3 f_12@@2) (= (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@12) o_8@@3 f_12@@2) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@6) o_8@@3 f_12@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@6) o_8@@3 f_12@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14197) (ExhaleHeap@@7 T@PolymorphicMapType_14197) (Mask@@24 T@PolymorphicMapType_14218) (o_8@@4 T@Ref) (f_12@@3 T@Field_20399_3117) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_8675_3117 Mask@@24 o_8@@4 f_12@@3) (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@13) o_8@@4 f_12@@3) (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| ExhaleHeap@@7) o_8@@4 f_12@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| ExhaleHeap@@7) o_8@@4 f_12@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14197) (ExhaleHeap@@8 T@PolymorphicMapType_14197) (Mask@@25 T@PolymorphicMapType_14218) (o_8@@5 T@Ref) (f_12@@4 T@Field_20285_20290) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_8667_27665 Mask@@25 o_8@@5 f_12@@4) (= (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@14) o_8@@5 f_12@@4) (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| ExhaleHeap@@8) o_8@@5 f_12@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| ExhaleHeap@@8) o_8@@5 f_12@@4))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14197) ) (!  (and (= (Map__EMPTY Heap@@15) (|Map__EMPTY'| Heap@@15)) (dummyFunction_3291 |Map__EMPTY#triggerStateless|))
 :qid |stdinbpl.590:15|
 :skolemid |58|
 :pattern ( (Map__EMPTY Heap@@15))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14197) ) (!  (and (= (Map__DELETED Heap@@16) (|Map__DELETED'| Heap@@16)) (dummyFunction_3291 |Map__DELETED#triggerStateless|))
 :qid |stdinbpl.654:15|
 :skolemid |63|
 :pattern ( (Map__DELETED Heap@@16))
)))
(assert (forall ((s0@@1 T@Seq_20288) (s1@@1 T@Seq_20288) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8668|)) (not (= s1@@1 |Seq#Empty_8668|))) (= (|Seq#Length_8668| (|Seq#Append_20288| s0@@1 s1@@1)) (+ (|Seq#Length_8668| s0@@1) (|Seq#Length_8668| s1@@1))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8668| (|Seq#Append_20288| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8667_43825) ) (! (= (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_8667_43692) ) (! (= (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_14270_14271) ) (! (= (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_14257_53) ) (! (= (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_20399_3117) ) (! (= (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_20285_20290) ) (! (= (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_20288) (t@@1 T@Seq_20288) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8668| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8668| s@@15)) (|Seq#Length_8668| s@@15)) n@@15) (= (|Seq#Drop_8668| (|Seq#Append_20288| s@@15 t@@1) n@@15) (|Seq#Drop_8668| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8668| s@@15))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8668| (|Seq#Append_20288| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14197) (diz@@2 T@Ref) (hash@@2 Int) (ignoreDeleted@@2 Bool) (cap@@2 Int) ) (!  (and (= (Map__indexOfLoop Heap@@17 diz@@2 hash@@2 ignoreDeleted@@2 cap@@2) (|Map__indexOfLoop'| Heap@@17 diz@@2 hash@@2 ignoreDeleted@@2 cap@@2)) (dummyFunction_3291 (|Map__indexOfLoop#triggerStateless| diz@@2 hash@@2 ignoreDeleted@@2 cap@@2)))
 :qid |stdinbpl.718:15|
 :skolemid |68|
 :pattern ( (Map__indexOfLoop Heap@@17 diz@@2 hash@@2 ignoreDeleted@@2 cap@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14218) (SummandMask1 T@PolymorphicMapType_14218) (SummandMask2 T@PolymorphicMapType_14218) (o_2@@23 T@Ref) (f_4@@23 T@Field_8667_43825) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14218) (SummandMask1@@0 T@PolymorphicMapType_14218) (SummandMask2@@0 T@PolymorphicMapType_14218) (o_2@@24 T@Ref) (f_4@@24 T@Field_8667_43692) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14218) (SummandMask1@@1 T@PolymorphicMapType_14218) (SummandMask2@@1 T@PolymorphicMapType_14218) (o_2@@25 T@Ref) (f_4@@25 T@Field_14270_14271) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14218) (SummandMask1@@2 T@PolymorphicMapType_14218) (SummandMask2@@2 T@PolymorphicMapType_14218) (o_2@@26 T@Ref) (f_4@@26 T@Field_14257_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14218) (SummandMask1@@3 T@PolymorphicMapType_14218) (SummandMask2@@3 T@PolymorphicMapType_14218) (o_2@@27 T@Ref) (f_4@@27 T@Field_20399_3117) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14218) (SummandMask1@@4 T@PolymorphicMapType_14218) (SummandMask2@@4 T@PolymorphicMapType_14218) (o_2@@28 T@Ref) (f_4@@28 T@Field_20285_20290) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.560:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_20288) (b T@Seq_20288) ) (!  (=> (|Seq#Equal_20288| a b) (= a b))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_20288| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_20288) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_8668| s@@17))) (|Seq#ContainsTrigger_8668| s@@17 (|Seq#Index_8668| s@@17 i@@4)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8668| s@@17 i@@4))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@5)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@5))
)))
(assert (forall ((s0@@3 T@Seq_20288) (s1@@3 T@Seq_20288) ) (!  (and (=> (= s0@@3 |Seq#Empty_8668|) (= (|Seq#Append_20288| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8668|) (= (|Seq#Append_20288| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_20288| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14197) (Mask@@26 T@PolymorphicMapType_14218) (diz@@3 T@Ref) (hash@@3 Int) (ignoreDeleted@@3 Bool) (cap@@3 Int) ) (!  (=> (state Heap@@18 Mask@@26) (= (|Map__indexOfLoop'| Heap@@18 diz@@3 hash@@3 ignoreDeleted@@3 cap@@3) (|Map__indexOfLoop#frame| (CombineFrames (FrameFragment_23581 (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@18) diz@@3 Map__keys)) (CombineFrames (FrameFragment_23581 (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@18) diz@@3 Map__values)) (CombineFrames (FrameFragment_4160 (|Map__indexOfLoop#condqp1| Heap@@18 diz@@3 hash@@3 ignoreDeleted@@3 cap@@3)) (FrameFragment_4160 (|Map__indexOfLoop#condqp2| Heap@@18 diz@@3 hash@@3 ignoreDeleted@@3 cap@@3))))) diz@@3 hash@@3 ignoreDeleted@@3 cap@@3)))
 :qid |stdinbpl.744:15|
 :skolemid |74|
 :pattern ( (state Heap@@18 Mask@@26) (|Map__indexOfLoop'| Heap@@18 diz@@3 hash@@3 ignoreDeleted@@3 cap@@3))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8668| (|Seq#Singleton_8668| t@@3) 0) t@@3)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8668| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_20288) ) (! (<= 0 (|Seq#Length_8668| s@@19))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8668| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14197) (ExhaleHeap@@9 T@PolymorphicMapType_14197) (Mask@@27 T@PolymorphicMapType_14218) (pm_f_3@@1 T@Field_8667_43692) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@27) (=> (and (HasDirectPerm_8667_43756 Mask@@27 null pm_f_3@@1) (IsPredicateField_8667_43783 pm_f_3@@1)) (and (and (and (and (and (forall ((o2_3 T@Ref) (f_12@@5 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_14746_14257_53#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) null (PredicateMaskField_8667 pm_f_3@@1))) o2_3 f_12@@5) (= (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@19) o2_3 f_12@@5) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3 f_12@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3 f_12@@5))
)) (forall ((o2_3@@0 T@Ref) (f_12@@6 T@Field_14270_14271) ) (!  (=> (select (|PolymorphicMapType_14746_14257_14271#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) null (PredicateMaskField_8667 pm_f_3@@1))) o2_3@@0 f_12@@6) (= (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@19) o2_3@@0 f_12@@6) (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@0 f_12@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@0 f_12@@6))
))) (forall ((o2_3@@1 T@Ref) (f_12@@7 T@Field_20285_20290) ) (!  (=> (select (|PolymorphicMapType_14746_14257_20290#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) null (PredicateMaskField_8667 pm_f_3@@1))) o2_3@@1 f_12@@7) (= (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@19) o2_3@@1 f_12@@7) (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@1 f_12@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@1 f_12@@7))
))) (forall ((o2_3@@2 T@Ref) (f_12@@8 T@Field_20399_3117) ) (!  (=> (select (|PolymorphicMapType_14746_14257_3117#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) null (PredicateMaskField_8667 pm_f_3@@1))) o2_3@@2 f_12@@8) (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@19) o2_3@@2 f_12@@8) (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@2 f_12@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@2 f_12@@8))
))) (forall ((o2_3@@3 T@Ref) (f_12@@9 T@Field_8667_43692) ) (!  (=> (select (|PolymorphicMapType_14746_14257_43692#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) null (PredicateMaskField_8667 pm_f_3@@1))) o2_3@@3 f_12@@9) (= (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@19) o2_3@@3 f_12@@9) (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@3 f_12@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@3 f_12@@9))
))) (forall ((o2_3@@4 T@Ref) (f_12@@10 T@Field_8667_43825) ) (!  (=> (select (|PolymorphicMapType_14746_14257_45207#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) null (PredicateMaskField_8667 pm_f_3@@1))) o2_3@@4 f_12@@10) (= (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@19) o2_3@@4 f_12@@10) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@4 f_12@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@9) o2_3@@4 f_12@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@27) (IsPredicateField_8667_43783 pm_f_3@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14197) (ExhaleHeap@@10 T@PolymorphicMapType_14197) (Mask@@28 T@PolymorphicMapType_14218) (pm_f_3@@2 T@Field_8667_43692) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@28) (=> (and (HasDirectPerm_8667_43756 Mask@@28 null pm_f_3@@2) (IsWandField_8667_45734 pm_f_3@@2)) (and (and (and (and (and (forall ((o2_3@@5 T@Ref) (f_12@@11 T@Field_14257_53) ) (!  (=> (select (|PolymorphicMapType_14746_14257_53#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) null (WandMaskField_8667 pm_f_3@@2))) o2_3@@5 f_12@@11) (= (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@20) o2_3@@5 f_12@@11) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@5 f_12@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@5 f_12@@11))
)) (forall ((o2_3@@6 T@Ref) (f_12@@12 T@Field_14270_14271) ) (!  (=> (select (|PolymorphicMapType_14746_14257_14271#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) null (WandMaskField_8667 pm_f_3@@2))) o2_3@@6 f_12@@12) (= (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@20) o2_3@@6 f_12@@12) (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@6 f_12@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@6 f_12@@12))
))) (forall ((o2_3@@7 T@Ref) (f_12@@13 T@Field_20285_20290) ) (!  (=> (select (|PolymorphicMapType_14746_14257_20290#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) null (WandMaskField_8667 pm_f_3@@2))) o2_3@@7 f_12@@13) (= (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@20) o2_3@@7 f_12@@13) (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@7 f_12@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@7 f_12@@13))
))) (forall ((o2_3@@8 T@Ref) (f_12@@14 T@Field_20399_3117) ) (!  (=> (select (|PolymorphicMapType_14746_14257_3117#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) null (WandMaskField_8667 pm_f_3@@2))) o2_3@@8 f_12@@14) (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@20) o2_3@@8 f_12@@14) (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@8 f_12@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@8 f_12@@14))
))) (forall ((o2_3@@9 T@Ref) (f_12@@15 T@Field_8667_43692) ) (!  (=> (select (|PolymorphicMapType_14746_14257_43692#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) null (WandMaskField_8667 pm_f_3@@2))) o2_3@@9 f_12@@15) (= (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@20) o2_3@@9 f_12@@15) (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@9 f_12@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@9 f_12@@15))
))) (forall ((o2_3@@10 T@Ref) (f_12@@16 T@Field_8667_43825) ) (!  (=> (select (|PolymorphicMapType_14746_14257_45207#PolymorphicMapType_14746| (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) null (WandMaskField_8667 pm_f_3@@2))) o2_3@@10 f_12@@16) (= (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@20) o2_3@@10 f_12@@16) (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@10 f_12@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| ExhaleHeap@@10) o2_3@@10 f_12@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@28) (IsWandField_8667_45734 pm_f_3@@2))
)))
(assert (forall ((s0@@5 T@Seq_20288) (s1@@5 T@Seq_20288) ) (!  (=> (|Seq#Equal_20288| s0@@5 s1@@5) (and (= (|Seq#Length_8668| s0@@5) (|Seq#Length_8668| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8668| s0@@5))) (= (|Seq#Index_8668| s0@@5 j@@6) (|Seq#Index_8668| s1@@5 j@@6)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8668| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8668| s1@@5 j@@6))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_20288| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2963) (s1@@6 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@6 s1@@6) (and (= (|Seq#Length_2963| s0@@6) (|Seq#Length_2963| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2963| s0@@6))) (= (|Seq#Index_2963| s0@@6 j@@7) (|Seq#Index_2963| s1@@6 j@@7)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2963| s1@@6 j@@7))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8668| (|Seq#Singleton_8668| t@@5)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8668| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14197) ) (! (dummyFunction_3291 |Map__EMPTY#triggerStateless|)
 :qid |stdinbpl.594:15|
 :skolemid |59|
 :pattern ( (|Map__EMPTY'| Heap@@21))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14197) ) (! (dummyFunction_3291 |Map__DELETED#triggerStateless|)
 :qid |stdinbpl.658:15|
 :skolemid |64|
 :pattern ( (|Map__DELETED'| Heap@@22))
)))
(assert (forall ((s@@21 T@Seq_20288) (t@@7 T@Seq_20288) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8668| s@@21))) (= (|Seq#Take_8668| (|Seq#Append_20288| s@@21 t@@7) n@@17) (|Seq#Take_8668| s@@21 n@@17)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8668| (|Seq#Append_20288| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14197) (Mask@@29 T@PolymorphicMapType_14218) ) (!  (=> (state Heap@@23 Mask@@29) (= (|Map__EMPTY'| Heap@@23) (|Map__EMPTY#frame| EmptyFrame)))
 :qid |stdinbpl.607:15|
 :skolemid |61|
 :pattern ( (state Heap@@23 Mask@@29) (|Map__EMPTY'| Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14197) (Mask@@30 T@PolymorphicMapType_14218) ) (!  (=> (state Heap@@24 Mask@@30) (= (|Map__DELETED'| Heap@@24) (|Map__DELETED#frame| EmptyFrame)))
 :qid |stdinbpl.671:15|
 :skolemid |66|
 :pattern ( (state Heap@@24 Mask@@30) (|Map__DELETED'| Heap@@24))
)))
(assert (forall ((s@@23 T@Seq_20288) (i@@6 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_8668| s@@23))) (= (|Seq#Length_8668| (|Seq#Update_8668| s@@23 i@@6 v@@2)) (|Seq#Length_8668| s@@23)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8668| (|Seq#Update_8668| s@@23 i@@6 v@@2)))
 :pattern ( (|Seq#Length_8668| s@@23) (|Seq#Update_8668| s@@23 i@@6 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@7 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@7 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@7 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@7 v@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14197) (o_7 T@Ref) (f_2 T@Field_8667_43692) (v@@4 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@25) (store (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@25) o_7 f_2 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@25) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@25) (store (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@25) o_7 f_2 v@@4)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14197) (o_7@@0 T@Ref) (f_2@@0 T@Field_8667_43825) (v@@5 T@PolymorphicMapType_14746) ) (! (succHeap Heap@@26 (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@26) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@26) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@26) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@26) (store (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@26) o_7@@0 f_2@@0 v@@5) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@26) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@26) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@26) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@26) (store (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@26) o_7@@0 f_2@@0 v@@5) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14197) (o_7@@1 T@Ref) (f_2@@1 T@Field_20399_3117) (v@@6 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@27) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@27) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@27) (store (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@27) o_7@@1 f_2@@1 v@@6) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@27) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@27) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@27) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@27) (store (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@27) o_7@@1 f_2@@1 v@@6) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@27) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14197) (o_7@@2 T@Ref) (f_2@@2 T@Field_20285_20290) (v@@7 T@Seq_20288) ) (! (succHeap Heap@@28 (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@28) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@28) (store (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@28) o_7@@2 f_2@@2 v@@7) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@28) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@28) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@28) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@28) (store (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@28) o_7@@2 f_2@@2 v@@7) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@28) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@28) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14197) (o_7@@3 T@Ref) (f_2@@3 T@Field_14270_14271) (v@@8 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@29) (store (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@29) o_7@@3 f_2@@3 v@@8) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@29) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@29) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@29) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14197 (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@29) (store (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@29) o_7@@3 f_2@@3 v@@8) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@29) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@29) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@29) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14197) (o_7@@4 T@Ref) (f_2@@4 T@Field_14257_53) (v@@9 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_14197 (store (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@30) o_7@@4 f_2@@4 v@@9) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14197 (store (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@30) o_7@@4 f_2@@4 v@@9) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@30) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@30)))
)))
(assert (forall ((s@@25 T@Seq_20288) (t@@9 T@Seq_20288) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8668| s@@25))) (= (|Seq#Drop_8668| (|Seq#Append_20288| s@@25 t@@9) n@@19) (|Seq#Append_20288| (|Seq#Drop_8668| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8668| (|Seq#Append_20288| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_20288) (n@@21 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@8)) (< i@@8 (|Seq#Length_8668| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@21) n@@21) i@@8) (= (|Seq#Index_8668| (|Seq#Drop_8668| s@@27 n@@21) (|Seq#Sub| i@@8 n@@21)) (|Seq#Index_8668| s@@27 i@@8))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8668| s@@27 n@@21) (|Seq#Index_8668| s@@27 i@@8))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@9 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@9)) (< i@@9 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@9 n@@22) n@@22) i@@9) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@9 n@@22)) (|Seq#Index_2963| s@@28 i@@9))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@9))
)))
(assert (forall ((s0@@7 T@Seq_20288) (s1@@7 T@Seq_20288) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8668|)) (not (= s1@@7 |Seq#Empty_8668|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8668| s0@@7))) (= (|Seq#Index_8668| (|Seq#Append_20288| s0@@7 s1@@7) n@@23) (|Seq#Index_8668| s0@@7 n@@23)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8668| (|Seq#Append_20288| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8668| s0@@7 n@@23) (|Seq#Append_20288| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_20288) (s1@@9 T@Seq_20288) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8668|)) (not (= s1@@9 |Seq#Empty_8668|))) (<= 0 m)) (< m (|Seq#Length_8668| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8668| s0@@9)) (|Seq#Length_8668| s0@@9)) m) (= (|Seq#Index_8668| (|Seq#Append_20288| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8668| s0@@9))) (|Seq#Index_8668| s1@@9 m))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8668| s1@@9 m) (|Seq#Append_20288| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((o_7@@5 T@Ref) (f_11 T@Field_14270_14271) (Heap@@31 T@PolymorphicMapType_14197) ) (!  (=> (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@31) o_7@@5 $allocated) (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@31) (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@31) o_7@@5 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@31) o_7@@5 f_11))
)))
(assert (forall ((s@@29 T@Seq_20288) (x@@3 T@Ref) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_8668| s@@29))) (= (|Seq#Index_8668| s@@29 i@@10) x@@3)) (|Seq#Contains_20288| s@@29 x@@3))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_20288| s@@29 x@@3) (|Seq#Index_8668| s@@29 i@@10))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@4 Int) (i@@11 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@11) x@@4)) (|Seq#Contains_2963| s@@30 x@@4))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@4) (|Seq#Index_2963| s@@30 i@@11))
)))
(assert (forall ((s0@@11 T@Seq_20288) (s1@@11 T@Seq_20288) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_20288| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_20288| s0@@11 s1@@11))) (not (= (|Seq#Length_8668| s0@@11) (|Seq#Length_8668| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_20288| s0@@11 s1@@11))) (= (|Seq#Length_8668| s0@@11) (|Seq#Length_8668| s1@@11))) (= (|Seq#SkolemDiff_20288| s0@@11 s1@@11) (|Seq#SkolemDiff_20288| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_20288| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_20288| s0@@11 s1@@11) (|Seq#Length_8668| s0@@11))) (not (= (|Seq#Index_8668| s0@@11 (|Seq#SkolemDiff_20288| s0@@11 s1@@11)) (|Seq#Index_8668| s1@@11 (|Seq#SkolemDiff_20288| s0@@11 s1@@11))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_20288| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_8667_43692) (v_1@@0 T@FrameType) (q T@Field_8667_43692) (w@@0 T@FrameType) (r T@Field_8667_43692) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14257_14257 p@@1 v_1@@0 q w@@0) (InsidePredicate_14257_14257 q w@@0 r u)) (InsidePredicate_14257_14257 p@@1 v_1@@0 r u))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14257_14257 p@@1 v_1@@0 q w@@0) (InsidePredicate_14257_14257 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_20288) ) (!  (=> (= (|Seq#Length_8668| s@@31) 0) (= s@@31 |Seq#Empty_8668|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8668| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_20288) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8668| s@@33 n@@25) |Seq#Empty_8668|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8668| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2963) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2963| s@@34 n@@26) |Seq#Empty_2963|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14197) (Mask@@31 T@PolymorphicMapType_14218) ) (!  (=> (and (state Heap@@32 Mask@@31) (< AssumeFunctionsAbove 1)) (= (Map__EMPTY Heap@@32) (- 0 1)))
 :qid |stdinbpl.600:15|
 :skolemid |60|
 :pattern ( (state Heap@@32 Mask@@31) (Map__EMPTY Heap@@32))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14197) (Mask@@32 T@PolymorphicMapType_14218) ) (!  (=> (and (state Heap@@33 Mask@@32) (< AssumeFunctionsAbove 2)) (= (Map__DELETED Heap@@33) (- 0 2)))
 :qid |stdinbpl.664:15|
 :skolemid |65|
 :pattern ( (state Heap@@33 Mask@@32) (Map__DELETED Heap@@33))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_14197) (Heap1Heap T@PolymorphicMapType_14197) (diz@@4 T@Ref) (hash@@4 Int) (ignoreDeleted@@4 Bool) (cap@@4 Int) ) (!  (=> (and (=  (and (and (>= (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)) 0) (< (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap2Heap) diz@@4 Map__keys)))) (< NoPerm FullPerm))  (and (and (>= (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)) 0) (< (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap1Heap) diz@@4 Map__keys)))) (< NoPerm FullPerm))) (=> (and (and (>= (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)) 0) (< (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap2Heap) diz@@4 Map__keys)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap2Heap) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap2Heap) diz@@4 Map__keys) (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4))) Ref__Integer_value) (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap1Heap) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap1Heap) diz@@4 Map__keys) (|sk_Map__indexOfLoop#condqp1| (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4))) Ref__Integer_value)))) (= (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4)))
 :qid |stdinbpl.754:15|
 :skolemid |75|
 :pattern ( (|Map__indexOfLoop#condqp1| Heap2Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (|Map__indexOfLoop#condqp1| Heap1Heap diz@@4 hash@@4 ignoreDeleted@@4 cap@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_14197) (Heap1Heap@@0 T@PolymorphicMapType_14197) (diz@@5 T@Ref) (hash@@5 Int) (ignoreDeleted@@5 Bool) (cap@@5 Int) ) (!  (=> (and (=  (and (and (>= (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)) 0) (< (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap2Heap@@0) diz@@5 Map__values)))) (< NoPerm FullPerm))  (and (and (>= (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)) 0) (< (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap1Heap@@0) diz@@5 Map__values)))) (< NoPerm FullPerm))) (=> (and (and (>= (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)) 0) (< (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)) (|Seq#Length_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap2Heap@@0) diz@@5 Map__values)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap2Heap@@0) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap2Heap@@0) diz@@5 Map__values) (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5))) Ref__Integer_value) (select (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap1Heap@@0) (|Seq#Index_8668| (select (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap1Heap@@0) diz@@5 Map__values) (|sk_Map__indexOfLoop#condqp2| (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5))) Ref__Integer_value)))) (= (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5)))
 :qid |stdinbpl.764:15|
 :skolemid |76|
 :pattern ( (|Map__indexOfLoop#condqp2| Heap2Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (|Map__indexOfLoop#condqp2| Heap1Heap@@0 diz@@5 hash@@5 ignoreDeleted@@5 cap@@5) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@34 () T@PolymorphicMapType_14197)
(declare-fun diz@@6 () T@Ref)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_14197)
(declare-fun Mask@0 () T@PolymorphicMapType_14218)
(declare-fun Mask@1 () T@PolymorphicMapType_14218)
(set-info :boogie-vc-id Map__Map)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@34) diz@@6 $allocated) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@34) freshObj@0 $allocated))) (and (= Heap@0 (PolymorphicMapType_14197 (store (|PolymorphicMapType_14197_8471_53#PolymorphicMapType_14197| Heap@@34) freshObj@0 $allocated true) (|PolymorphicMapType_14197_8474_8475#PolymorphicMapType_14197| Heap@@34) (|PolymorphicMapType_14197_8667_22128#PolymorphicMapType_14197| Heap@@34) (|PolymorphicMapType_14197_8675_3117#PolymorphicMapType_14197| Heap@@34) (|PolymorphicMapType_14197_8667_43869#PolymorphicMapType_14197| Heap@@34) (|PolymorphicMapType_14197_14257_43692#PolymorphicMapType_14197| Heap@@34))) (= Mask@0 (PolymorphicMapType_14218 (store (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| ZeroMask) freshObj@0 Map__keys (+ (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| ZeroMask) freshObj@0 Map__keys) FullPerm)) (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| ZeroMask) (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| ZeroMask) (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| ZeroMask) (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| ZeroMask) (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| ZeroMask))))) (and (and (= Mask@1 (PolymorphicMapType_14218 (store (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| Mask@0) freshObj@0 Map__values (+ (select (|PolymorphicMapType_14218_8667_27305#PolymorphicMapType_14218| Mask@0) freshObj@0 Map__values) FullPerm)) (|PolymorphicMapType_14218_8675_3117#PolymorphicMapType_14218| Mask@0) (|PolymorphicMapType_14218_8667_53#PolymorphicMapType_14218| Mask@0) (|PolymorphicMapType_14218_8667_14271#PolymorphicMapType_14218| Mask@0) (|PolymorphicMapType_14218_8667_43692#PolymorphicMapType_14218| Mask@0) (|PolymorphicMapType_14218_8667_48519#PolymorphicMapType_14218| Mask@0))) (state Heap@0 Mask@1)) (and (state Heap@0 Mask@1) (= (ControlFlow 0 3) (- 0 4))))) (not (= freshObj@0 null))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@34 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
