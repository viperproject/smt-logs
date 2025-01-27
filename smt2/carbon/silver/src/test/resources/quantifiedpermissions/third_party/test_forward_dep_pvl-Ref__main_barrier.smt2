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
(declare-sort T@Field_35037_53 0)
(declare-sort T@Field_35050_35051 0)
(declare-sort T@Field_41084_41089 0)
(declare-sort T@Seq_41087 0)
(declare-sort T@Field_41248_3370 0)
(declare-sort T@Field_19594_117824 0)
(declare-sort T@Field_19594_117691 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_34998 0)) (((PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| (Array T@Ref T@Field_41084_41089 Real)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| (Array T@Ref T@Field_41248_3370 Real)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| (Array T@Ref T@Field_35037_53 Real)) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| (Array T@Ref T@Field_35050_35051 Real)) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| (Array T@Ref T@Field_19594_117691 Real)) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| (Array T@Ref T@Field_19594_117824 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35526 0)) (((PolymorphicMapType_35526 (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| (Array T@Ref T@Field_35037_53 Bool)) (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| (Array T@Ref T@Field_35050_35051 Bool)) (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| (Array T@Ref T@Field_41084_41089 Bool)) (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| (Array T@Ref T@Field_41248_3370 Bool)) (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| (Array T@Ref T@Field_19594_117691 Bool)) (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| (Array T@Ref T@Field_19594_117824 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34977 0)) (((PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| (Array T@Ref T@Field_35037_53 Bool)) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| (Array T@Ref T@Field_35050_35051 T@Ref)) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| (Array T@Ref T@Field_41084_41089 T@Seq_41087)) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| (Array T@Ref T@Field_41248_3370 Int)) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| (Array T@Ref T@Field_19594_117824 T@PolymorphicMapType_35526)) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| (Array T@Ref T@Field_19594_117691 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_35037_53)
(declare-fun Ref__a () T@Field_41084_41089)
(declare-fun Ref__b () T@Field_41084_41089)
(declare-fun Ref__c () T@Field_41084_41089)
(declare-fun Ref__Integer_value () T@Field_41248_3370)
(declare-fun |Seq#Length_19595| (T@Seq_41087) Int)
(declare-fun |Seq#Drop_19595| (T@Seq_41087 Int) T@Seq_41087)
(declare-sort T@Seq_3200 0)
(declare-fun |Seq#Length_3200| (T@Seq_3200) Int)
(declare-fun |Seq#Drop_3200| (T@Seq_3200 Int) T@Seq_3200)
(declare-fun succHeap (T@PolymorphicMapType_34977 T@PolymorphicMapType_34977) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34977 T@PolymorphicMapType_34977) Bool)
(declare-fun state (T@PolymorphicMapType_34977 T@PolymorphicMapType_34998) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_34998) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_35526)
(declare-fun |Seq#Index_19595| (T@Seq_41087 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3200| (T@Seq_3200 Int) Int)
(declare-fun |Seq#Empty_19595| () T@Seq_41087)
(declare-fun |Seq#Empty_3200| () T@Seq_3200)
(declare-fun |Seq#Update_19595| (T@Seq_41087 Int T@Ref) T@Seq_41087)
(declare-fun |Seq#Update_3200| (T@Seq_3200 Int Int) T@Seq_3200)
(declare-fun |Seq#Take_19595| (T@Seq_41087 Int) T@Seq_41087)
(declare-fun |Seq#Take_3200| (T@Seq_3200 Int) T@Seq_3200)
(declare-fun |Seq#Contains_3200| (T@Seq_3200 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3200)
(declare-fun |Seq#Contains_41087| (T@Seq_41087 T@Ref) Bool)
(declare-fun |Seq#Skolem_41087| (T@Seq_41087 T@Ref) Int)
(declare-fun |Seq#Skolem_3200| (T@Seq_3200 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34977 T@PolymorphicMapType_34977 T@PolymorphicMapType_34998) Bool)
(declare-fun IsPredicateField_19594_117782 (T@Field_19594_117691) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19594 (T@Field_19594_117691) T@Field_19594_117824)
(declare-fun HasDirectPerm_19594_117755 (T@PolymorphicMapType_34998 T@Ref T@Field_19594_117691) Bool)
(declare-fun IsWandField_19594_119733 (T@Field_19594_117691) Bool)
(declare-fun WandMaskField_19594 (T@Field_19594_117691) T@Field_19594_117824)
(declare-fun |Seq#Singleton_19595| (T@Ref) T@Seq_41087)
(declare-fun |Seq#Singleton_3200| (Int) T@Seq_3200)
(declare-fun |Seq#Append_41087| (T@Seq_41087 T@Seq_41087) T@Seq_41087)
(declare-fun |Seq#Append_3200| (T@Seq_3200 T@Seq_3200) T@Seq_3200)
(declare-fun dummyHeap () T@PolymorphicMapType_34977)
(declare-fun ZeroMask () T@PolymorphicMapType_34998)
(declare-fun InsidePredicate_35037_35037 (T@Field_19594_117691 T@FrameType T@Field_19594_117691 T@FrameType) Bool)
(declare-fun IsPredicateField_19594_41111 (T@Field_41084_41089) Bool)
(declare-fun IsWandField_19594_41137 (T@Field_41084_41089) Bool)
(declare-fun IsPredicateField_19606_3370 (T@Field_41248_3370) Bool)
(declare-fun IsWandField_19606_3370 (T@Field_41248_3370) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19594_123867 (T@Field_19594_117824) Bool)
(declare-fun IsWandField_19594_123883 (T@Field_19594_117824) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19594_35051 (T@Field_35050_35051) Bool)
(declare-fun IsWandField_19594_35051 (T@Field_35050_35051) Bool)
(declare-fun IsPredicateField_19594_53 (T@Field_35037_53) Bool)
(declare-fun IsWandField_19594_53 (T@Field_35037_53) Bool)
(declare-fun HasDirectPerm_19594_124404 (T@PolymorphicMapType_34998 T@Ref T@Field_19594_117824) Bool)
(declare-fun HasDirectPerm_19594_35051 (T@PolymorphicMapType_34998 T@Ref T@Field_35050_35051) Bool)
(declare-fun HasDirectPerm_19594_53 (T@PolymorphicMapType_34998 T@Ref T@Field_35037_53) Bool)
(declare-fun HasDirectPerm_19606_3370 (T@PolymorphicMapType_34998 T@Ref T@Field_41248_3370) Bool)
(declare-fun HasDirectPerm_19594_42046 (T@PolymorphicMapType_34998 T@Ref T@Field_41084_41089) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_34998 T@PolymorphicMapType_34998 T@PolymorphicMapType_34998) Bool)
(declare-fun |Seq#Equal_3200| (T@Seq_3200 T@Seq_3200) Bool)
(declare-fun |Seq#Equal_19595| (T@Seq_41087 T@Seq_41087) Bool)
(declare-fun |Seq#ContainsTrigger_19595| (T@Seq_41087 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3200| (T@Seq_3200 Int) Bool)
(declare-fun |Seq#SkolemDiff_41087| (T@Seq_41087 T@Seq_41087) Int)
(declare-fun |Seq#SkolemDiff_3200| (T@Seq_3200 T@Seq_3200) Int)
(assert (distinct Ref__a Ref__b Ref__c)
)
(assert (forall ((s T@Seq_41087) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19595| s)) (= (|Seq#Length_19595| (|Seq#Drop_19595| s n)) (- (|Seq#Length_19595| s) n))) (=> (< (|Seq#Length_19595| s) n) (= (|Seq#Length_19595| (|Seq#Drop_19595| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19595| (|Seq#Drop_19595| s n)) (|Seq#Length_19595| s))))
 :qid |stdinbpl.327:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19595| (|Seq#Drop_19595| s n)))
 :pattern ( (|Seq#Length_19595| s) (|Seq#Drop_19595| s n))
)))
(assert (forall ((s@@0 T@Seq_3200) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3200| s@@0)) (= (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)) (- (|Seq#Length_3200| s@@0) n@@0))) (=> (< (|Seq#Length_3200| s@@0) n@@0) (= (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)) (|Seq#Length_3200| s@@0))))
 :qid |stdinbpl.327:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3200| s@@0) (|Seq#Drop_3200| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_34977) (Heap1 T@PolymorphicMapType_34977) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_34977) (Mask T@PolymorphicMapType_34998) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34977) (Heap1@@0 T@PolymorphicMapType_34977) (Heap2 T@PolymorphicMapType_34977) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19594_117824) ) (!  (not (select (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19594_117691) ) (!  (not (select (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_41248_3370) ) (!  (not (select (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41084_41089) ) (!  (not (select (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_35050_35051) ) (!  (not (select (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_35037_53) ) (!  (not (select (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_41087) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_19595| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_19595| (|Seq#Drop_19595| s@@1 n@@1) j) (|Seq#Index_19595| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.348:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19595| (|Seq#Drop_19595| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3200) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3200| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3200| (|Seq#Drop_3200| s@@2 n@@2) j@@0) (|Seq#Index_3200| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.348:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3200| (|Seq#Drop_3200| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_19595| |Seq#Empty_19595|) 0))
(assert (= (|Seq#Length_3200| |Seq#Empty_3200|) 0))
(assert (forall ((s@@3 T@Seq_41087) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_19595| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_19595| (|Seq#Update_19595| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_19595| (|Seq#Update_19595| s@@3 i v) n@@3) (|Seq#Index_19595| s@@3 n@@3)))))
 :qid |stdinbpl.303:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19595| (|Seq#Update_19595| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_19595| s@@3 n@@3) (|Seq#Update_19595| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3200) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3200| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3200| (|Seq#Update_3200| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3200| (|Seq#Update_3200| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3200| s@@4 n@@4)))))
 :qid |stdinbpl.303:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3200| (|Seq#Update_3200| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3200| s@@4 n@@4) (|Seq#Update_3200| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_41087) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_19595| s@@5)) (= (|Seq#Length_19595| (|Seq#Take_19595| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_19595| s@@5) n@@5) (= (|Seq#Length_19595| (|Seq#Take_19595| s@@5 n@@5)) (|Seq#Length_19595| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_19595| (|Seq#Take_19595| s@@5 n@@5)) 0)))
 :qid |stdinbpl.314:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19595| (|Seq#Take_19595| s@@5 n@@5)))
 :pattern ( (|Seq#Take_19595| s@@5 n@@5) (|Seq#Length_19595| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3200) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3200| s@@6)) (= (|Seq#Length_3200| (|Seq#Take_3200| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3200| s@@6) n@@6) (= (|Seq#Length_3200| (|Seq#Take_3200| s@@6 n@@6)) (|Seq#Length_3200| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3200| (|Seq#Take_3200| s@@6 n@@6)) 0)))
 :qid |stdinbpl.314:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3200| (|Seq#Take_3200| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3200| s@@6 n@@6) (|Seq#Length_3200| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3200| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.588:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3200| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_41087) (x T@Ref) ) (!  (=> (|Seq#Contains_41087| s@@7 x) (and (and (<= 0 (|Seq#Skolem_41087| s@@7 x)) (< (|Seq#Skolem_41087| s@@7 x) (|Seq#Length_19595| s@@7))) (= (|Seq#Index_19595| s@@7 (|Seq#Skolem_41087| s@@7 x)) x)))
 :qid |stdinbpl.446:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_41087| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3200) (x@@0 Int) ) (!  (=> (|Seq#Contains_3200| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3200| s@@8 x@@0)) (< (|Seq#Skolem_3200| s@@8 x@@0) (|Seq#Length_3200| s@@8))) (= (|Seq#Index_3200| s@@8 (|Seq#Skolem_3200| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.446:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3200| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_41087) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_19595| s@@9 n@@7) s@@9))
 :qid |stdinbpl.430:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19595| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3200) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3200| s@@10 n@@8) s@@10))
 :qid |stdinbpl.430:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3200| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.283:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.281:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34977) (ExhaleHeap T@PolymorphicMapType_34977) (Mask@@0 T@PolymorphicMapType_34998) (pm_f_28 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19594_117755 Mask@@0 null pm_f_28) (IsPredicateField_19594_117782 pm_f_28)) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@0) null (PredicateMaskField_19594 pm_f_28)) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap) null (PredicateMaskField_19594 pm_f_28)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_19594_117782 pm_f_28) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap) null (PredicateMaskField_19594 pm_f_28)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34977) (ExhaleHeap@@0 T@PolymorphicMapType_34977) (Mask@@1 T@PolymorphicMapType_34998) (pm_f_28@@0 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19594_117755 Mask@@1 null pm_f_28@@0) (IsWandField_19594_119733 pm_f_28@@0)) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@1) null (WandMaskField_19594 pm_f_28@@0)) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@0) null (WandMaskField_19594 pm_f_28@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_19594_119733 pm_f_28@@0) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@0) null (WandMaskField_19594 pm_f_28@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_41087| (|Seq#Singleton_19595| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.571:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_41087| (|Seq#Singleton_19595| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3200| (|Seq#Singleton_3200| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.571:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3200| (|Seq#Singleton_3200| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_41087) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_19595| s@@11))) (= (|Seq#Index_19595| (|Seq#Take_19595| s@@11 n@@9) j@@3) (|Seq#Index_19595| s@@11 j@@3)))
 :qid |stdinbpl.322:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19595| (|Seq#Take_19595| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_19595| s@@11 j@@3) (|Seq#Take_19595| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3200) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3200| s@@12))) (= (|Seq#Index_3200| (|Seq#Take_3200| s@@12 n@@10) j@@4) (|Seq#Index_3200| s@@12 j@@4)))
 :qid |stdinbpl.322:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3200| (|Seq#Take_3200| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3200| s@@12 j@@4) (|Seq#Take_3200| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_41087) (t T@Seq_41087) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_19595| s@@13))) (< n@@11 (|Seq#Length_19595| (|Seq#Append_41087| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_19595| s@@13)) (|Seq#Length_19595| s@@13)) n@@11) (= (|Seq#Take_19595| (|Seq#Append_41087| s@@13 t) n@@11) (|Seq#Append_41087| s@@13 (|Seq#Take_19595| t (|Seq#Sub| n@@11 (|Seq#Length_19595| s@@13)))))))
 :qid |stdinbpl.407:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19595| (|Seq#Append_41087| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3200) (t@@0 T@Seq_3200) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3200| s@@14))) (< n@@12 (|Seq#Length_3200| (|Seq#Append_3200| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3200| s@@14)) (|Seq#Length_3200| s@@14)) n@@12) (= (|Seq#Take_3200| (|Seq#Append_3200| s@@14 t@@0) n@@12) (|Seq#Append_3200| s@@14 (|Seq#Take_3200| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3200| s@@14)))))))
 :qid |stdinbpl.407:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3200| (|Seq#Append_3200| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34977) (ExhaleHeap@@1 T@PolymorphicMapType_34977) (Mask@@2 T@PolymorphicMapType_34998) (o_36 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@2) o_36 $allocated) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@1) o_36 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@1) o_36 $allocated))
)))
(assert (forall ((p T@Field_19594_117691) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35037_35037 p v_1 p w))
 :qid |stdinbpl.225:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35037_35037 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_41087) (s1 T@Seq_41087) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19595|)) (not (= s1 |Seq#Empty_19595|))) (<= (|Seq#Length_19595| s0) n@@13)) (< n@@13 (|Seq#Length_19595| (|Seq#Append_41087| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_19595| s0)) (|Seq#Length_19595| s0)) n@@13) (= (|Seq#Index_19595| (|Seq#Append_41087| s0 s1) n@@13) (|Seq#Index_19595| s1 (|Seq#Sub| n@@13 (|Seq#Length_19595| s0))))))
 :qid |stdinbpl.294:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19595| (|Seq#Append_41087| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3200) (s1@@0 T@Seq_3200) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3200|)) (not (= s1@@0 |Seq#Empty_3200|))) (<= (|Seq#Length_3200| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3200| (|Seq#Append_3200| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3200| s0@@0)) (|Seq#Length_3200| s0@@0)) n@@14) (= (|Seq#Index_3200| (|Seq#Append_3200| s0@@0 s1@@0) n@@14) (|Seq#Index_3200| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3200| s0@@0))))))
 :qid |stdinbpl.294:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3200| (|Seq#Append_3200| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19594_41111 Ref__a)))
(assert  (not (IsWandField_19594_41137 Ref__a)))
(assert  (not (IsPredicateField_19594_41111 Ref__b)))
(assert  (not (IsWandField_19594_41137 Ref__b)))
(assert  (not (IsPredicateField_19594_41111 Ref__c)))
(assert  (not (IsWandField_19594_41137 Ref__c)))
(assert  (not (IsPredicateField_19606_3370 Ref__Integer_value)))
(assert  (not (IsWandField_19606_3370 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34977) (ExhaleHeap@@2 T@PolymorphicMapType_34977) (Mask@@3 T@PolymorphicMapType_34998) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_34998) (o_2@@5 T@Ref) (f_4@@5 T@Field_19594_117824) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_19594_123867 f_4@@5))) (not (IsWandField_19594_123883 f_4@@5))) (<= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_34998) (o_2@@6 T@Ref) (f_4@@6 T@Field_19594_117691) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_19594_117782 f_4@@6))) (not (IsWandField_19594_119733 f_4@@6))) (<= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_34998) (o_2@@7 T@Ref) (f_4@@7 T@Field_35050_35051) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_19594_35051 f_4@@7))) (not (IsWandField_19594_35051 f_4@@7))) (<= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_34998) (o_2@@8 T@Ref) (f_4@@8 T@Field_35037_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_19594_53 f_4@@8))) (not (IsWandField_19594_53 f_4@@8))) (<= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_34998) (o_2@@9 T@Ref) (f_4@@9 T@Field_41248_3370) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_19606_3370 f_4@@9))) (not (IsWandField_19606_3370 f_4@@9))) (<= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_34998) (o_2@@10 T@Ref) (f_4@@10 T@Field_41084_41089) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19594_41111 f_4@@10))) (not (IsWandField_19594_41137 f_4@@10))) (<= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_34998) (o_2@@11 T@Ref) (f_4@@11 T@Field_19594_117824) ) (! (= (HasDirectPerm_19594_124404 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19594_124404 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34998) (o_2@@12 T@Ref) (f_4@@12 T@Field_19594_117691) ) (! (= (HasDirectPerm_19594_117755 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19594_117755 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34998) (o_2@@13 T@Ref) (f_4@@13 T@Field_35050_35051) ) (! (= (HasDirectPerm_19594_35051 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19594_35051 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34998) (o_2@@14 T@Ref) (f_4@@14 T@Field_35037_53) ) (! (= (HasDirectPerm_19594_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19594_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_34998) (o_2@@15 T@Ref) (f_4@@15 T@Field_41248_3370) ) (! (= (HasDirectPerm_19606_3370 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19606_3370 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_34998) (o_2@@16 T@Ref) (f_4@@16 T@Field_41084_41089) ) (! (= (HasDirectPerm_19594_42046 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19594_42046 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.213:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3200| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.586:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3200| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34977) (ExhaleHeap@@3 T@PolymorphicMapType_34977) (Mask@@16 T@PolymorphicMapType_34998) (o_36@@0 T@Ref) (f_50 T@Field_19594_117824) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_19594_124404 Mask@@16 o_36@@0 f_50) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@4) o_36@@0 f_50) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@3) o_36@@0 f_50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@3) o_36@@0 f_50))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34977) (ExhaleHeap@@4 T@PolymorphicMapType_34977) (Mask@@17 T@PolymorphicMapType_34998) (o_36@@1 T@Ref) (f_50@@0 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_19594_117755 Mask@@17 o_36@@1 f_50@@0) (= (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@5) o_36@@1 f_50@@0) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@4) o_36@@1 f_50@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@4) o_36@@1 f_50@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34977) (ExhaleHeap@@5 T@PolymorphicMapType_34977) (Mask@@18 T@PolymorphicMapType_34998) (o_36@@2 T@Ref) (f_50@@1 T@Field_35050_35051) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_19594_35051 Mask@@18 o_36@@2 f_50@@1) (= (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@6) o_36@@2 f_50@@1) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@5) o_36@@2 f_50@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@5) o_36@@2 f_50@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34977) (ExhaleHeap@@6 T@PolymorphicMapType_34977) (Mask@@19 T@PolymorphicMapType_34998) (o_36@@3 T@Ref) (f_50@@2 T@Field_35037_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_19594_53 Mask@@19 o_36@@3 f_50@@2) (= (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@7) o_36@@3 f_50@@2) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@6) o_36@@3 f_50@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@6) o_36@@3 f_50@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34977) (ExhaleHeap@@7 T@PolymorphicMapType_34977) (Mask@@20 T@PolymorphicMapType_34998) (o_36@@4 T@Ref) (f_50@@3 T@Field_41248_3370) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_19606_3370 Mask@@20 o_36@@4 f_50@@3) (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@8) o_36@@4 f_50@@3) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@7) o_36@@4 f_50@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@7) o_36@@4 f_50@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34977) (ExhaleHeap@@8 T@PolymorphicMapType_34977) (Mask@@21 T@PolymorphicMapType_34998) (o_36@@5 T@Ref) (f_50@@4 T@Field_41084_41089) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_19594_42046 Mask@@21 o_36@@5 f_50@@4) (= (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@9) o_36@@5 f_50@@4) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@8) o_36@@5 f_50@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@8) o_36@@5 f_50@@4))
)))
(assert (forall ((s0@@1 T@Seq_41087) (s1@@1 T@Seq_41087) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_19595|)) (not (= s1@@1 |Seq#Empty_19595|))) (= (|Seq#Length_19595| (|Seq#Append_41087| s0@@1 s1@@1)) (+ (|Seq#Length_19595| s0@@1) (|Seq#Length_19595| s1@@1))))
 :qid |stdinbpl.263:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19595| (|Seq#Append_41087| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3200) (s1@@2 T@Seq_3200) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3200|)) (not (= s1@@2 |Seq#Empty_3200|))) (= (|Seq#Length_3200| (|Seq#Append_3200| s0@@2 s1@@2)) (+ (|Seq#Length_3200| s0@@2) (|Seq#Length_3200| s1@@2))))
 :qid |stdinbpl.263:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3200| (|Seq#Append_3200| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19594_117824) ) (! (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_19594_117691) ) (! (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_35050_35051) ) (! (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_35037_53) ) (! (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_41248_3370) ) (! (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_41084_41089) ) (! (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_41087) (t@@1 T@Seq_41087) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_19595| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_19595| s@@15)) (|Seq#Length_19595| s@@15)) n@@15) (= (|Seq#Drop_19595| (|Seq#Append_41087| s@@15 t@@1) n@@15) (|Seq#Drop_19595| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_19595| s@@15))))))
 :qid |stdinbpl.420:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19595| (|Seq#Append_41087| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3200) (t@@2 T@Seq_3200) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3200| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3200| s@@16)) (|Seq#Length_3200| s@@16)) n@@16) (= (|Seq#Drop_3200| (|Seq#Append_3200| s@@16 t@@2) n@@16) (|Seq#Drop_3200| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3200| s@@16))))))
 :qid |stdinbpl.420:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3200| (|Seq#Append_3200| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34998) (SummandMask1 T@PolymorphicMapType_34998) (SummandMask2 T@PolymorphicMapType_34998) (o_2@@23 T@Ref) (f_4@@23 T@Field_19594_117824) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34998) (SummandMask1@@0 T@PolymorphicMapType_34998) (SummandMask2@@0 T@PolymorphicMapType_34998) (o_2@@24 T@Ref) (f_4@@24 T@Field_19594_117691) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34998) (SummandMask1@@1 T@PolymorphicMapType_34998) (SummandMask2@@1 T@PolymorphicMapType_34998) (o_2@@25 T@Ref) (f_4@@25 T@Field_35050_35051) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34998) (SummandMask1@@2 T@PolymorphicMapType_34998) (SummandMask2@@2 T@PolymorphicMapType_34998) (o_2@@26 T@Ref) (f_4@@26 T@Field_35037_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34998) (SummandMask1@@3 T@PolymorphicMapType_34998) (SummandMask2@@3 T@PolymorphicMapType_34998) (o_2@@27 T@Ref) (f_4@@27 T@Field_41248_3370) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_34998) (SummandMask1@@4 T@PolymorphicMapType_34998) (SummandMask2@@4 T@PolymorphicMapType_34998) (o_2@@28 T@Ref) (f_4@@28 T@Field_41084_41089) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3200| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3200| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.585:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3200| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3200) (b T@Seq_3200) ) (!  (=> (|Seq#Equal_3200| a b) (= a b))
 :qid |stdinbpl.558:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3200| a b))
)))
(assert (forall ((a@@0 T@Seq_41087) (b@@0 T@Seq_41087) ) (!  (=> (|Seq#Equal_19595| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.558:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19595| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_41087) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_19595| s@@17))) (|Seq#ContainsTrigger_19595| s@@17 (|Seq#Index_19595| s@@17 i@@3)))
 :qid |stdinbpl.451:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19595| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3200) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3200| s@@18))) (|Seq#ContainsTrigger_3200| s@@18 (|Seq#Index_3200| s@@18 i@@4)))
 :qid |stdinbpl.451:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3200| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_41087) (s1@@3 T@Seq_41087) ) (!  (and (=> (= s0@@3 |Seq#Empty_19595|) (= (|Seq#Append_41087| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_19595|) (= (|Seq#Append_41087| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.269:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_41087| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3200) (s1@@4 T@Seq_3200) ) (!  (and (=> (= s0@@4 |Seq#Empty_3200|) (= (|Seq#Append_3200| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3200|) (= (|Seq#Append_3200| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.269:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3200| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_19595| (|Seq#Singleton_19595| t@@3) 0) t@@3)
 :qid |stdinbpl.273:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19595| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3200| (|Seq#Singleton_3200| t@@4) 0) t@@4)
 :qid |stdinbpl.273:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3200| t@@4))
)))
(assert (forall ((s@@19 T@Seq_41087) ) (! (<= 0 (|Seq#Length_19595| s@@19))
 :qid |stdinbpl.252:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19595| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3200) ) (! (<= 0 (|Seq#Length_3200| s@@20))
 :qid |stdinbpl.252:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3200| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34977) (ExhaleHeap@@9 T@PolymorphicMapType_34977) (Mask@@22 T@PolymorphicMapType_34998) (pm_f_28@@1 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_19594_117755 Mask@@22 null pm_f_28@@1) (IsPredicateField_19594_117782 pm_f_28@@1)) (and (and (and (and (and (forall ((o2_28 T@Ref) (f_50@@5 T@Field_35037_53) ) (!  (=> (select (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_28@@1))) o2_28 f_50@@5) (= (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@10) o2_28 f_50@@5) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28 f_50@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28 f_50@@5))
)) (forall ((o2_28@@0 T@Ref) (f_50@@6 T@Field_35050_35051) ) (!  (=> (select (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_28@@1))) o2_28@@0 f_50@@6) (= (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@10) o2_28@@0 f_50@@6) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@0 f_50@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@0 f_50@@6))
))) (forall ((o2_28@@1 T@Ref) (f_50@@7 T@Field_41084_41089) ) (!  (=> (select (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_28@@1))) o2_28@@1 f_50@@7) (= (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@10) o2_28@@1 f_50@@7) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@1 f_50@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@1 f_50@@7))
))) (forall ((o2_28@@2 T@Ref) (f_50@@8 T@Field_41248_3370) ) (!  (=> (select (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_28@@1))) o2_28@@2 f_50@@8) (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@10) o2_28@@2 f_50@@8) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@2 f_50@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@2 f_50@@8))
))) (forall ((o2_28@@3 T@Ref) (f_50@@9 T@Field_19594_117691) ) (!  (=> (select (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_28@@1))) o2_28@@3 f_50@@9) (= (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@10) o2_28@@3 f_50@@9) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@3 f_50@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@3 f_50@@9))
))) (forall ((o2_28@@4 T@Ref) (f_50@@10 T@Field_19594_117824) ) (!  (=> (select (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_28@@1))) o2_28@@4 f_50@@10) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) o2_28@@4 f_50@@10) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@4 f_50@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@9) o2_28@@4 f_50@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_19594_117782 pm_f_28@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34977) (ExhaleHeap@@10 T@PolymorphicMapType_34977) (Mask@@23 T@PolymorphicMapType_34998) (pm_f_28@@2 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_19594_117755 Mask@@23 null pm_f_28@@2) (IsWandField_19594_119733 pm_f_28@@2)) (and (and (and (and (and (forall ((o2_28@@5 T@Ref) (f_50@@11 T@Field_35037_53) ) (!  (=> (select (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_28@@2))) o2_28@@5 f_50@@11) (= (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@11) o2_28@@5 f_50@@11) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@5 f_50@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@5 f_50@@11))
)) (forall ((o2_28@@6 T@Ref) (f_50@@12 T@Field_35050_35051) ) (!  (=> (select (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_28@@2))) o2_28@@6 f_50@@12) (= (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@11) o2_28@@6 f_50@@12) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@6 f_50@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@6 f_50@@12))
))) (forall ((o2_28@@7 T@Ref) (f_50@@13 T@Field_41084_41089) ) (!  (=> (select (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_28@@2))) o2_28@@7 f_50@@13) (= (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@11) o2_28@@7 f_50@@13) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@7 f_50@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@7 f_50@@13))
))) (forall ((o2_28@@8 T@Ref) (f_50@@14 T@Field_41248_3370) ) (!  (=> (select (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_28@@2))) o2_28@@8 f_50@@14) (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@11) o2_28@@8 f_50@@14) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@8 f_50@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@8 f_50@@14))
))) (forall ((o2_28@@9 T@Ref) (f_50@@15 T@Field_19594_117691) ) (!  (=> (select (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_28@@2))) o2_28@@9 f_50@@15) (= (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@11) o2_28@@9 f_50@@15) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@9 f_50@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@9 f_50@@15))
))) (forall ((o2_28@@10 T@Ref) (f_50@@16 T@Field_19594_117824) ) (!  (=> (select (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_28@@2))) o2_28@@10 f_50@@16) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) o2_28@@10 f_50@@16) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@10 f_50@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@10) o2_28@@10 f_50@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_19594_119733 pm_f_28@@2))
)))
(assert (forall ((s0@@5 T@Seq_3200) (s1@@5 T@Seq_3200) ) (!  (=> (|Seq#Equal_3200| s0@@5 s1@@5) (and (= (|Seq#Length_3200| s0@@5) (|Seq#Length_3200| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3200| s0@@5))) (= (|Seq#Index_3200| s0@@5 j@@6) (|Seq#Index_3200| s1@@5 j@@6)))
 :qid |stdinbpl.548:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3200| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3200| s1@@5 j@@6))
))))
 :qid |stdinbpl.545:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3200| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_41087) (s1@@6 T@Seq_41087) ) (!  (=> (|Seq#Equal_19595| s0@@6 s1@@6) (and (= (|Seq#Length_19595| s0@@6) (|Seq#Length_19595| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_19595| s0@@6))) (= (|Seq#Index_19595| s0@@6 j@@7) (|Seq#Index_19595| s1@@6 j@@7)))
 :qid |stdinbpl.548:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19595| s0@@6 j@@7))
 :pattern ( (|Seq#Index_19595| s1@@6 j@@7))
))))
 :qid |stdinbpl.545:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19595| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_19595| (|Seq#Singleton_19595| t@@5)) 1)
 :qid |stdinbpl.260:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19595| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3200| (|Seq#Singleton_3200| t@@6)) 1)
 :qid |stdinbpl.260:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3200| t@@6))
)))
(assert (forall ((s@@21 T@Seq_41087) (t@@7 T@Seq_41087) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_19595| s@@21))) (= (|Seq#Take_19595| (|Seq#Append_41087| s@@21 t@@7) n@@17) (|Seq#Take_19595| s@@21 n@@17)))
 :qid |stdinbpl.402:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19595| (|Seq#Append_41087| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3200) (t@@8 T@Seq_3200) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3200| s@@22))) (= (|Seq#Take_3200| (|Seq#Append_3200| s@@22 t@@8) n@@18) (|Seq#Take_3200| s@@22 n@@18)))
 :qid |stdinbpl.402:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3200| (|Seq#Append_3200| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_41087) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_19595| s@@23))) (= (|Seq#Length_19595| (|Seq#Update_19595| s@@23 i@@5 v@@2)) (|Seq#Length_19595| s@@23)))
 :qid |stdinbpl.301:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19595| (|Seq#Update_19595| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_19595| s@@23) (|Seq#Update_19595| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3200) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3200| s@@24))) (= (|Seq#Length_3200| (|Seq#Update_3200| s@@24 i@@6 v@@3)) (|Seq#Length_3200| s@@24)))
 :qid |stdinbpl.301:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3200| (|Seq#Update_3200| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3200| s@@24) (|Seq#Update_3200| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34977) (o_47 T@Ref) (f_20 T@Field_19594_117691) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@12) (store (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@12) o_47 f_20 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@12) (store (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@12) o_47 f_20 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34977) (o_47@@0 T@Ref) (f_20@@0 T@Field_19594_117824) (v@@5 T@PolymorphicMapType_35526) ) (! (succHeap Heap@@13 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@13) (store (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@13) o_47@@0 f_20@@0 v@@5) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@13) (store (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@13) o_47@@0 f_20@@0 v@@5) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34977) (o_47@@1 T@Ref) (f_20@@1 T@Field_41248_3370) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@14) (store (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@14) o_47@@1 f_20@@1 v@@6) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@14) (store (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@14) o_47@@1 f_20@@1 v@@6) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34977) (o_47@@2 T@Ref) (f_20@@2 T@Field_41084_41089) (v@@7 T@Seq_41087) ) (! (succHeap Heap@@15 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@15) (store (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@15) o_47@@2 f_20@@2 v@@7) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@15) (store (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@15) o_47@@2 f_20@@2 v@@7) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34977) (o_47@@3 T@Ref) (f_20@@3 T@Field_35050_35051) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@16) (store (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@16) o_47@@3 f_20@@3 v@@8) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@16) (store (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@16) o_47@@3 f_20@@3 v@@8) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34977) (o_47@@4 T@Ref) (f_20@@4 T@Field_35037_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_34977 (store (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@17) o_47@@4 f_20@@4 v@@9) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (store (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@17) o_47@@4 f_20@@4 v@@9) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_41087) (t@@9 T@Seq_41087) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_19595| s@@25))) (= (|Seq#Drop_19595| (|Seq#Append_41087| s@@25 t@@9) n@@19) (|Seq#Append_41087| (|Seq#Drop_19595| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.416:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19595| (|Seq#Append_41087| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3200) (t@@10 T@Seq_3200) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3200| s@@26))) (= (|Seq#Drop_3200| (|Seq#Append_3200| s@@26 t@@10) n@@20) (|Seq#Append_3200| (|Seq#Drop_3200| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.416:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3200| (|Seq#Append_3200| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_41087) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_19595| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_19595| (|Seq#Drop_19595| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_19595| s@@27 i@@7))))
 :qid |stdinbpl.352:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19595| s@@27 n@@21) (|Seq#Index_19595| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3200) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3200| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3200| (|Seq#Drop_3200| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3200| s@@28 i@@8))))
 :qid |stdinbpl.352:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3200| s@@28 n@@22) (|Seq#Index_3200| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_41087) (s1@@7 T@Seq_41087) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_19595|)) (not (= s1@@7 |Seq#Empty_19595|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_19595| s0@@7))) (= (|Seq#Index_19595| (|Seq#Append_41087| s0@@7 s1@@7) n@@23) (|Seq#Index_19595| s0@@7 n@@23)))
 :qid |stdinbpl.292:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19595| (|Seq#Append_41087| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_19595| s0@@7 n@@23) (|Seq#Append_41087| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3200) (s1@@8 T@Seq_3200) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3200|)) (not (= s1@@8 |Seq#Empty_3200|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3200| s0@@8))) (= (|Seq#Index_3200| (|Seq#Append_3200| s0@@8 s1@@8) n@@24) (|Seq#Index_3200| s0@@8 n@@24)))
 :qid |stdinbpl.292:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3200| (|Seq#Append_3200| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3200| s0@@8 n@@24) (|Seq#Append_3200| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_41087) (s1@@9 T@Seq_41087) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_19595|)) (not (= s1@@9 |Seq#Empty_19595|))) (<= 0 m)) (< m (|Seq#Length_19595| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19595| s0@@9)) (|Seq#Length_19595| s0@@9)) m) (= (|Seq#Index_19595| (|Seq#Append_41087| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_19595| s0@@9))) (|Seq#Index_19595| s1@@9 m))))
 :qid |stdinbpl.297:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19595| s1@@9 m) (|Seq#Append_41087| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3200) (s1@@10 T@Seq_3200) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3200|)) (not (= s1@@10 |Seq#Empty_3200|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3200| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3200| s0@@10)) (|Seq#Length_3200| s0@@10)) m@@0) (= (|Seq#Index_3200| (|Seq#Append_3200| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3200| s0@@10))) (|Seq#Index_3200| s1@@10 m@@0))))
 :qid |stdinbpl.297:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3200| s1@@10 m@@0) (|Seq#Append_3200| s0@@10 s1@@10))
)))
(assert (forall ((o_47@@5 T@Ref) (f_65 T@Field_35050_35051) (Heap@@18 T@PolymorphicMapType_34977) ) (!  (=> (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@18) o_47@@5 $allocated) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@18) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@18) o_47@@5 f_65) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@18) o_47@@5 f_65))
)))
(assert (forall ((s@@29 T@Seq_41087) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_19595| s@@29))) (= (|Seq#Index_19595| s@@29 i@@9) x@@3)) (|Seq#Contains_41087| s@@29 x@@3))
 :qid |stdinbpl.449:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_41087| s@@29 x@@3) (|Seq#Index_19595| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3200) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3200| s@@30))) (= (|Seq#Index_3200| s@@30 i@@10) x@@4)) (|Seq#Contains_3200| s@@30 x@@4))
 :qid |stdinbpl.449:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3200| s@@30 x@@4) (|Seq#Index_3200| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_41087) (s1@@11 T@Seq_41087) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_19595| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19595| s0@@11 s1@@11))) (not (= (|Seq#Length_19595| s0@@11) (|Seq#Length_19595| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19595| s0@@11 s1@@11))) (= (|Seq#Length_19595| s0@@11) (|Seq#Length_19595| s1@@11))) (= (|Seq#SkolemDiff_41087| s0@@11 s1@@11) (|Seq#SkolemDiff_41087| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_41087| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_41087| s0@@11 s1@@11) (|Seq#Length_19595| s0@@11))) (not (= (|Seq#Index_19595| s0@@11 (|Seq#SkolemDiff_41087| s0@@11 s1@@11)) (|Seq#Index_19595| s1@@11 (|Seq#SkolemDiff_41087| s0@@11 s1@@11))))))
 :qid |stdinbpl.553:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19595| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3200) (s1@@12 T@Seq_3200) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3200| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3200| s0@@12 s1@@12))) (not (= (|Seq#Length_3200| s0@@12) (|Seq#Length_3200| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3200| s0@@12 s1@@12))) (= (|Seq#Length_3200| s0@@12) (|Seq#Length_3200| s1@@12))) (= (|Seq#SkolemDiff_3200| s0@@12 s1@@12) (|Seq#SkolemDiff_3200| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3200| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3200| s0@@12 s1@@12) (|Seq#Length_3200| s0@@12))) (not (= (|Seq#Index_3200| s0@@12 (|Seq#SkolemDiff_3200| s0@@12 s1@@12)) (|Seq#Index_3200| s1@@12 (|Seq#SkolemDiff_3200| s0@@12 s1@@12))))))
 :qid |stdinbpl.553:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3200| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_19594_117691) (v_1@@0 T@FrameType) (q T@Field_19594_117691) (w@@0 T@FrameType) (r T@Field_19594_117691) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35037_35037 p@@1 v_1@@0 q w@@0) (InsidePredicate_35037_35037 q w@@0 r u)) (InsidePredicate_35037_35037 p@@1 v_1@@0 r u))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35037_35037 p@@1 v_1@@0 q w@@0) (InsidePredicate_35037_35037 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_41087) ) (!  (=> (= (|Seq#Length_19595| s@@31) 0) (= s@@31 |Seq#Empty_19595|))
 :qid |stdinbpl.256:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19595| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3200) ) (!  (=> (= (|Seq#Length_3200| s@@32) 0) (= s@@32 |Seq#Empty_3200|))
 :qid |stdinbpl.256:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3200| s@@32))
)))
(assert (forall ((s@@33 T@Seq_41087) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_19595| s@@33 n@@25) |Seq#Empty_19595|))
 :qid |stdinbpl.432:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19595| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3200) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3200| s@@34 n@@26) |Seq#Empty_3200|))
 :qid |stdinbpl.432:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3200| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this_barrier () Int)
(declare-fun PostMask@12 () T@PolymorphicMapType_34998)
(declare-fun diz () T@Ref)
(declare-fun tid () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_34977)
(declare-fun Mask@12 () T@PolymorphicMapType_34998)
(declare-fun Heap@@19 () T@PolymorphicMapType_34977)
(declare-fun sys__result () Int)
(declare-fun PostMask@8 () T@PolymorphicMapType_34998)
(declare-fun PostMask@9 () T@PolymorphicMapType_34998)
(declare-fun perm@7 () Real)
(declare-fun PostMask@10 () T@PolymorphicMapType_34998)
(declare-fun PostMask@11 () T@PolymorphicMapType_34998)
(declare-fun PostMask@4 () T@PolymorphicMapType_34998)
(declare-fun perm@5 () Real)
(declare-fun PostMask@5 () T@PolymorphicMapType_34998)
(declare-fun perm@6 () Real)
(declare-fun PostMask@6 () T@PolymorphicMapType_34998)
(declare-fun PostMask@7 () T@PolymorphicMapType_34998)
(declare-fun PostMask@2 () T@PolymorphicMapType_34998)
(declare-fun perm@4 () Real)
(declare-fun PostMask@3 () T@PolymorphicMapType_34998)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gsize () Int)
(declare-fun gid () Int)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_34998)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_34998)
(declare-fun wildcard@5 () Real)
(declare-fun last_barrier () Int)
(declare-fun Mask@8 () T@PolymorphicMapType_34998)
(declare-fun Mask@9 () T@PolymorphicMapType_34998)
(declare-fun perm@3 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_34998)
(declare-fun Mask@11 () T@PolymorphicMapType_34998)
(declare-fun Mask@4 () T@PolymorphicMapType_34998)
(declare-fun perm@1 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_34998)
(declare-fun perm@2 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_34998)
(declare-fun Mask@7 () T@PolymorphicMapType_34998)
(declare-fun Mask@2 () T@PolymorphicMapType_34998)
(declare-fun perm@0 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_34998)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_34998)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_34998)
(declare-fun wildcard@2 () Real)
(declare-fun current_thread_id () Int)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__main_barrier)
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
 (=> (= (ControlFlow 0 0) 139) (let ((anon24_correct true))
(let ((anon65_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 26) 16)) anon24_correct)))
(let ((anon65_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 17) (- 0 25)) (HasDirectPerm_19594_42046 PostMask@12 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@12 diz Ref__b) (and (=> (= (ControlFlow 0 17) (- 0 24)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 17) (- 0 23)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 17) (- 0 22)) (HasDirectPerm_19606_3370 PostMask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_19606_3370 PostMask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 17) (- 0 21)) (HasDirectPerm_19594_42046 Mask@12 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@12 diz Ref__b) (and (=> (= (ControlFlow 0 17) (- 0 20)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_19606_3370 Mask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_19606_3370 Mask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| PostHeap@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value)) (= (ControlFlow 0 17) 16)) anon24_correct))))))))))))))))))))
(let ((anon22_correct  (=> (state PostHeap@0 PostMask@12) (and (=> (= (ControlFlow 0 27) 17) anon65_Then_correct) (=> (= (ControlFlow 0 27) 26) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 37) 27)) anon22_correct)))
(let ((anon64_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 28) (- 0 36)) (HasDirectPerm_19594_42046 PostMask@12 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@12 diz Ref__a) (and (=> (= (ControlFlow 0 28) (- 0 35)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 28) (- 0 34)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (and (=> (= (ControlFlow 0 28) (- 0 33)) (HasDirectPerm_19606_3370 PostMask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value)) (=> (HasDirectPerm_19606_3370 PostMask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 28) (- 0 32)) (HasDirectPerm_19594_42046 Mask@12 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@12 diz Ref__a) (and (=> (= (ControlFlow 0 28) (- 0 31)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 28) (- 0 30)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (HasDirectPerm_19606_3370 Mask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value)) (=> (HasDirectPerm_19606_3370 Mask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| PostHeap@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value)) (= (ControlFlow 0 28) 27)) anon22_correct))))))))))))))))))))
(let ((anon20_correct  (=> (state PostHeap@0 PostMask@12) (and (=> (= (ControlFlow 0 38) 28) anon64_Then_correct) (=> (= (ControlFlow 0 38) 37) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (>= 0 tid) (= (ControlFlow 0 45) 38)) anon20_correct)))
(let ((anon63_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 40) (- 0 44)) (HasDirectPerm_19594_42046 PostMask@12 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@12 diz Ref__a) (and (=> (= (ControlFlow 0 40) (- 0 43)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 40) (- 0 42)) (< (- tid 1) (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< (- tid 1) (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (HasDirectPerm_19606_3370 PostMask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value)) (=> (HasDirectPerm_19606_3370 PostMask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| PostHeap@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value) tid) (= (ControlFlow 0 40) 38)) anon20_correct))))))))))))
(let ((anon62_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 46) 40) anon63_Then_correct) (=> (= (ControlFlow 0 46) 45) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 39) 38)) anon20_correct)))
(let ((anon17_correct  (=> (state PostHeap@0 PostMask@12) (=> (and (= sys__result this_barrier) (state PostHeap@0 PostMask@12)) (and (=> (= (ControlFlow 0 47) 46) anon62_Then_correct) (=> (= (ControlFlow 0 47) 39) anon62_Else_correct))))))
(let ((anon61_Else_correct  (=> (not (= sys__result 0)) (=> (and (= PostMask@12 PostMask@8) (= (ControlFlow 0 59) 47)) anon17_correct))))
(let ((anon61_Then_correct  (=> (= sys__result 0) (and (=> (= (ControlFlow 0 48) (- 0 58)) (HasDirectPerm_19594_42046 PostMask@8 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@8 diz Ref__a) (and (=> (= (ControlFlow 0 48) (- 0 57)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 48) (- 0 56)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (=> (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) null)) (=> (and (= PostMask@9 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@8) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@8) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@8) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@8) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@8) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@8) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@8))) (state PostHeap@0 PostMask@9)) (and (=> (= (ControlFlow 0 48) (- 0 55)) (HasDirectPerm_19594_42046 PostMask@9 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@9 diz Ref__b) (and (=> (= (ControlFlow 0 48) (- 0 54)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 48) (- 0 53)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b))) (=> (= perm@7 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 48) (- 0 52)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (=> (> perm@7 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) null))) (=> (and (= PostMask@10 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@9) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@9) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@9) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) perm@7)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@9) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@9) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@9) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@9))) (state PostHeap@0 PostMask@10)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (HasDirectPerm_19594_42046 PostMask@10 diz Ref__c)) (=> (HasDirectPerm_19594_42046 PostMask@10 diz Ref__c) (and (=> (= (ControlFlow 0 48) (- 0 50)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 48) (- 0 49)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c))) (=> (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid) null)) (=> (and (and (= PostMask@11 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@10) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@10) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@10) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@10) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@10) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@10) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@10))) (state PostHeap@0 PostMask@11)) (and (= PostMask@12 PostMask@11) (= (ControlFlow 0 48) 47))) anon17_correct))))))))))))))))))))))))))))))
(let ((anon15_correct  (=> (state PostHeap@0 PostMask@8) (and (=> (= (ControlFlow 0 60) 48) anon61_Then_correct) (=> (= (ControlFlow 0 60) 59) anon61_Else_correct)))))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 62) (- 0 73)) (HasDirectPerm_19594_42046 PostMask@4 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@4 diz Ref__a) (and (=> (= (ControlFlow 0 62) (- 0 72)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 62) (- 0 71)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (=> (= perm@5 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 62) (- 0 70)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) null))) (=> (and (= PostMask@5 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@4) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@4) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@4) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) perm@5)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@4) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@4) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@4) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@4))) (state PostHeap@0 PostMask@5)) (and (=> (= (ControlFlow 0 62) (- 0 69)) (HasDirectPerm_19594_42046 PostMask@5 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@5 diz Ref__b) (and (=> (= (ControlFlow 0 62) (- 0 68)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 62) (- 0 67)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b))) (=> (= perm@6 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 62) (- 0 66)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (=> (> perm@6 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) null))) (=> (and (= PostMask@6 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@5) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) perm@6)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@5) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@5) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@5) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@5))) (state PostHeap@0 PostMask@6)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (HasDirectPerm_19594_42046 PostMask@6 diz Ref__c)) (=> (HasDirectPerm_19594_42046 PostMask@6 diz Ref__c) (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 62) (- 0 63)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c))) (=> (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid) null)) (=> (and (and (= PostMask@7 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@6) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@6) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@6) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@6) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@6) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@6) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@6))) (state PostHeap@0 PostMask@7)) (and (= PostMask@8 PostMask@7) (= (ControlFlow 0 62) 60))) anon15_correct))))))))))))))))))))))))))))))))
(let ((anon60_Else_correct  (=> (>= 0 tid) (=> (and (= PostMask@4 PostMask@2) (= (ControlFlow 0 79) 62)) anon14_correct))))
(let ((anon60_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 74) (- 0 78)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 74) (- 0 77)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 74) (- 0 76)) (< (- tid 1) (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< (- tid 1) (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (=> (= perm@4 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 74) (- 0 75)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (=> (> perm@4 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (- tid 1)) null))) (=> (and (and (= PostMask@3 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@2) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (- tid 1)) Ref__Integer_value) perm@4)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@2) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@2) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@2) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@2))) (state PostHeap@0 PostMask@3)) (and (= PostMask@4 PostMask@3) (= (ControlFlow 0 74) 62))) anon14_correct))))))))))))))
(let ((anon59_Then_correct  (=> (= sys__result 1) (and (=> (= (ControlFlow 0 80) 74) anon60_Then_correct) (=> (= (ControlFlow 0 80) 79) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (not (= sys__result 1)) (=> (and (= PostMask@8 PostMask@2) (= (ControlFlow 0 61) 60)) anon15_correct))))
(let ((anon58_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 81) (- 0 90)) (HasDirectPerm_19594_42046 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 81) (- 0 89)) (HasDirectPerm_19594_42046 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 81) (- 0 88)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 81) (- 0 87)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 81) (- 0 86)) (HasDirectPerm_19594_42046 Mask@12 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@12 diz Ref__a) (=> (and (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 81) (- 0 85)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 81) (- 0 84)) (HasDirectPerm_19594_42046 Mask@12 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@12 diz Ref__b) (=> (and (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 81) (- 0 83)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 81) (- 0 82)) (HasDirectPerm_19594_42046 Mask@12 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@12 diz Ref__c) (=> (and (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 81) 80) anon59_Then_correct) (=> (= (ControlFlow 0 81) 61) anon59_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon58_Else_correct true))
(let ((anon10_correct  (=> (state Heap@@19 Mask@12) (and (=> (= (ControlFlow 0 91) 81) anon58_Then_correct) (=> (= (ControlFlow 0 91) 2) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 97) 91)) anon10_correct)))
(let ((anon57_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 92) (- 0 96)) (HasDirectPerm_19594_42046 Mask@12 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@12 diz Ref__a) (and (=> (= (ControlFlow 0 92) (- 0 95)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 92) (- 0 94)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (HasDirectPerm_19606_3370 Mask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value)) (=> (HasDirectPerm_19606_3370 Mask@12 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value) (+ tid 1)) (= (ControlFlow 0 92) 91)) anon10_correct))))))))))))
(let ((anon8_correct  (=> (state Heap@@19 Mask@12) (and (=> (= (ControlFlow 0 98) 92) anon57_Then_correct) (=> (= (ControlFlow 0 98) 97) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (not (= last_barrier 0)) (=> (and (= Mask@12 Mask@8) (= (ControlFlow 0 110) 98)) anon8_correct))))
(let ((anon56_Then_correct  (=> (= last_barrier 0) (and (=> (= (ControlFlow 0 99) (- 0 109)) (HasDirectPerm_19594_42046 Mask@8 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@8 diz Ref__a) (and (=> (= (ControlFlow 0 99) (- 0 108)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 99) (- 0 107)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (=> (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) null)) (=> (and (= Mask@9 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@8) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@8) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@8) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@8) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@8) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@8) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@8))) (state Heap@@19 Mask@9)) (and (=> (= (ControlFlow 0 99) (- 0 106)) (HasDirectPerm_19594_42046 Mask@9 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@9 diz Ref__b) (and (=> (= (ControlFlow 0 99) (- 0 105)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 99) (- 0 104)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (=> (= perm@3 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 99) (- 0 103)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) null))) (=> (and (= Mask@10 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@9) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@9) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@9) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value) perm@3)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@9) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@9) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@9) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@9))) (state Heap@@19 Mask@10)) (and (=> (= (ControlFlow 0 99) (- 0 102)) (HasDirectPerm_19594_42046 Mask@10 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@10 diz Ref__c) (and (=> (= (ControlFlow 0 99) (- 0 101)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 99) (- 0 100)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (=> (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid) null)) (=> (and (and (= Mask@11 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@10) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@10) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@10) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@10) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@10) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@10) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@10))) (state Heap@@19 Mask@11)) (and (= Mask@12 Mask@11) (= (ControlFlow 0 99) 98))) anon8_correct))))))))))))))))))))))))))))))
(let ((anon6_correct  (=> (state Heap@@19 Mask@8) (and (=> (= (ControlFlow 0 111) 99) anon56_Then_correct) (=> (= (ControlFlow 0 111) 110) anon56_Else_correct)))))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 113) (- 0 124)) (HasDirectPerm_19594_42046 Mask@4 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@4 diz Ref__a) (and (=> (= (ControlFlow 0 113) (- 0 123)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 113) (- 0 122)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 113) (- 0 121)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) null))) (=> (and (= Mask@5 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@4) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@4) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@4) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid) Ref__Integer_value) perm@1)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@4))) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 113) (- 0 120)) (HasDirectPerm_19594_42046 Mask@5 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 113) (- 0 119)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 113) (- 0 118)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (=> (= perm@2 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 113) (- 0 117)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) null))) (=> (and (= Mask@6 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@5) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid) Ref__Integer_value) perm@2)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@5) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@5) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@5) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@5))) (state Heap@@19 Mask@6)) (and (=> (= (ControlFlow 0 113) (- 0 116)) (HasDirectPerm_19594_42046 Mask@6 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@6 diz Ref__c) (and (=> (= (ControlFlow 0 113) (- 0 115)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 113) (- 0 114)) (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (=> (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid) null)) (=> (and (and (= Mask@7 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@6) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@6) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@6) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@6) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@6) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@6) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@6))) (state Heap@@19 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 113) 111))) anon6_correct))))))))))))))))))))))))))))))))
(let ((anon55_Else_correct  (=> (>= 0 tid) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 130) 113)) anon5_correct))))
(let ((anon55_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 125) (- 0 129)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 125) (- 0 128)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 125) (- 0 127)) (< (- tid 1) (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< (- tid 1) (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (- tid 1)) null))) (=> (and (and (= Mask@3 (PolymorphicMapType_34998 (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@2) (store (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (- tid 1)) Ref__Integer_value) perm@0)) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@2) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@2) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@2) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@2))) (state Heap@@19 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 125) 113))) anon5_correct))))))))))))))
(let ((anon54_Then_correct  (=> (= last_barrier 1) (and (=> (= (ControlFlow 0 131) 125) anon55_Then_correct) (=> (= (ControlFlow 0 131) 130) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (not (= last_barrier 1)) (=> (and (= Mask@8 Mask@2) (= (ControlFlow 0 112) 111)) anon6_correct))))
(let ((anon2_correct  (=> (and (and (and (and (state Heap@@19 ZeroMask) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 132) (- 0 135)) (HasDirectPerm_19594_42046 Mask@0 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@0 diz Ref__a) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 132) (- 0 134)) (HasDirectPerm_19594_42046 Mask@1 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@1 diz Ref__b) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 132) (- 0 133)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (=> (= (ControlFlow 0 132) 131) anon54_Then_correct) (=> (= (ControlFlow 0 132) 112) anon54_Else_correct))))))))))))))))))
(let ((anon53_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 137) 132)) anon2_correct)))
(let ((anon53_Then_correct  (=> (= this_barrier 1) (=> (and (= last_barrier 0) (= (ControlFlow 0 136) 132)) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@19) diz $allocated)) (=> (and (and (not (= diz null)) (state Heap@@19 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 138) 136) anon53_Then_correct) (=> (= (ControlFlow 0 138) 137) anon53_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 139) 138)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
