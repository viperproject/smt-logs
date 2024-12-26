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
(assert (forall ((Heap@@0 T@PolymorphicMapType_34977) (ExhaleHeap T@PolymorphicMapType_34977) (Mask@@0 T@PolymorphicMapType_34998) (pm_f_15 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19594_117755 Mask@@0 null pm_f_15) (IsPredicateField_19594_117782 pm_f_15)) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@0) null (PredicateMaskField_19594 pm_f_15)) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap) null (PredicateMaskField_19594 pm_f_15)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_19594_117782 pm_f_15) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap) null (PredicateMaskField_19594 pm_f_15)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34977) (ExhaleHeap@@0 T@PolymorphicMapType_34977) (Mask@@1 T@PolymorphicMapType_34998) (pm_f_15@@0 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19594_117755 Mask@@1 null pm_f_15@@0) (IsWandField_19594_119733 pm_f_15@@0)) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@1) null (WandMaskField_19594 pm_f_15@@0)) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@0) null (WandMaskField_19594 pm_f_15@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_19594_119733 pm_f_15@@0) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@0) null (WandMaskField_19594 pm_f_15@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_34977) (ExhaleHeap@@1 T@PolymorphicMapType_34977) (Mask@@2 T@PolymorphicMapType_34998) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@2) o_39 $allocated) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@1) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@1) o_39 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_34977) (ExhaleHeap@@3 T@PolymorphicMapType_34977) (Mask@@16 T@PolymorphicMapType_34998) (o_39@@0 T@Ref) (f_45 T@Field_19594_117824) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_19594_124404 Mask@@16 o_39@@0 f_45) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@4) o_39@@0 f_45) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@3) o_39@@0 f_45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@3) o_39@@0 f_45))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34977) (ExhaleHeap@@4 T@PolymorphicMapType_34977) (Mask@@17 T@PolymorphicMapType_34998) (o_39@@1 T@Ref) (f_45@@0 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_19594_117755 Mask@@17 o_39@@1 f_45@@0) (= (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@5) o_39@@1 f_45@@0) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@4) o_39@@1 f_45@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@4) o_39@@1 f_45@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34977) (ExhaleHeap@@5 T@PolymorphicMapType_34977) (Mask@@18 T@PolymorphicMapType_34998) (o_39@@2 T@Ref) (f_45@@1 T@Field_35050_35051) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_19594_35051 Mask@@18 o_39@@2 f_45@@1) (= (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@6) o_39@@2 f_45@@1) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@5) o_39@@2 f_45@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@5) o_39@@2 f_45@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34977) (ExhaleHeap@@6 T@PolymorphicMapType_34977) (Mask@@19 T@PolymorphicMapType_34998) (o_39@@3 T@Ref) (f_45@@2 T@Field_35037_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_19594_53 Mask@@19 o_39@@3 f_45@@2) (= (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@7) o_39@@3 f_45@@2) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@6) o_39@@3 f_45@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@6) o_39@@3 f_45@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34977) (ExhaleHeap@@7 T@PolymorphicMapType_34977) (Mask@@20 T@PolymorphicMapType_34998) (o_39@@4 T@Ref) (f_45@@3 T@Field_41248_3370) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_19606_3370 Mask@@20 o_39@@4 f_45@@3) (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@8) o_39@@4 f_45@@3) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@7) o_39@@4 f_45@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@7) o_39@@4 f_45@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34977) (ExhaleHeap@@8 T@PolymorphicMapType_34977) (Mask@@21 T@PolymorphicMapType_34998) (o_39@@5 T@Ref) (f_45@@4 T@Field_41084_41089) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_19594_42046 Mask@@21 o_39@@5 f_45@@4) (= (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@9) o_39@@5 f_45@@4) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@8) o_39@@5 f_45@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@8) o_39@@5 f_45@@4))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_34977) (ExhaleHeap@@9 T@PolymorphicMapType_34977) (Mask@@22 T@PolymorphicMapType_34998) (pm_f_15@@1 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_19594_117755 Mask@@22 null pm_f_15@@1) (IsPredicateField_19594_117782 pm_f_15@@1)) (and (and (and (and (and (forall ((o2_15 T@Ref) (f_45@@5 T@Field_35037_53) ) (!  (=> (select (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_15@@1))) o2_15 f_45@@5) (= (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@10) o2_15 f_45@@5) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15 f_45@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15 f_45@@5))
)) (forall ((o2_15@@0 T@Ref) (f_45@@6 T@Field_35050_35051) ) (!  (=> (select (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_15@@1))) o2_15@@0 f_45@@6) (= (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@10) o2_15@@0 f_45@@6) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@0 f_45@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@0 f_45@@6))
))) (forall ((o2_15@@1 T@Ref) (f_45@@7 T@Field_41084_41089) ) (!  (=> (select (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_15@@1))) o2_15@@1 f_45@@7) (= (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@10) o2_15@@1 f_45@@7) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@1 f_45@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@1 f_45@@7))
))) (forall ((o2_15@@2 T@Ref) (f_45@@8 T@Field_41248_3370) ) (!  (=> (select (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_15@@1))) o2_15@@2 f_45@@8) (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@10) o2_15@@2 f_45@@8) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@2 f_45@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@2 f_45@@8))
))) (forall ((o2_15@@3 T@Ref) (f_45@@9 T@Field_19594_117691) ) (!  (=> (select (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_15@@1))) o2_15@@3 f_45@@9) (= (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@10) o2_15@@3 f_45@@9) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@3 f_45@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@3 f_45@@9))
))) (forall ((o2_15@@4 T@Ref) (f_45@@10 T@Field_19594_117824) ) (!  (=> (select (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) null (PredicateMaskField_19594 pm_f_15@@1))) o2_15@@4 f_45@@10) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@10) o2_15@@4 f_45@@10) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@4 f_45@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@9) o2_15@@4 f_45@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_19594_117782 pm_f_15@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34977) (ExhaleHeap@@10 T@PolymorphicMapType_34977) (Mask@@23 T@PolymorphicMapType_34998) (pm_f_15@@2 T@Field_19594_117691) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_19594_117755 Mask@@23 null pm_f_15@@2) (IsWandField_19594_119733 pm_f_15@@2)) (and (and (and (and (and (forall ((o2_15@@5 T@Ref) (f_45@@11 T@Field_35037_53) ) (!  (=> (select (|PolymorphicMapType_35526_35037_53#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_15@@2))) o2_15@@5 f_45@@11) (= (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@11) o2_15@@5 f_45@@11) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@5 f_45@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@5 f_45@@11))
)) (forall ((o2_15@@6 T@Ref) (f_45@@12 T@Field_35050_35051) ) (!  (=> (select (|PolymorphicMapType_35526_35037_35051#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_15@@2))) o2_15@@6 f_45@@12) (= (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@11) o2_15@@6 f_45@@12) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@6 f_45@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@6 f_45@@12))
))) (forall ((o2_15@@7 T@Ref) (f_45@@13 T@Field_41084_41089) ) (!  (=> (select (|PolymorphicMapType_35526_35037_41089#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_15@@2))) o2_15@@7 f_45@@13) (= (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@11) o2_15@@7 f_45@@13) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@7 f_45@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@7 f_45@@13))
))) (forall ((o2_15@@8 T@Ref) (f_45@@14 T@Field_41248_3370) ) (!  (=> (select (|PolymorphicMapType_35526_35037_3370#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_15@@2))) o2_15@@8 f_45@@14) (= (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@11) o2_15@@8 f_45@@14) (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@8 f_45@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@8 f_45@@14))
))) (forall ((o2_15@@9 T@Ref) (f_45@@15 T@Field_19594_117691) ) (!  (=> (select (|PolymorphicMapType_35526_35037_117691#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_15@@2))) o2_15@@9 f_45@@15) (= (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@11) o2_15@@9 f_45@@15) (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@9 f_45@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@9 f_45@@15))
))) (forall ((o2_15@@10 T@Ref) (f_45@@16 T@Field_19594_117824) ) (!  (=> (select (|PolymorphicMapType_35526_35037_119206#PolymorphicMapType_35526| (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) null (WandMaskField_19594 pm_f_15@@2))) o2_15@@10 f_45@@16) (= (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@11) o2_15@@10 f_45@@16) (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@10 f_45@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| ExhaleHeap@@10) o2_15@@10 f_45@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_19594_119733 pm_f_15@@2))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_34977) (o_38 T@Ref) (f_40 T@Field_19594_117691) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@12) (store (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@12) o_38 f_40 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@12) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@12) (store (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@12) o_38 f_40 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34977) (o_38@@0 T@Ref) (f_40@@0 T@Field_19594_117824) (v@@5 T@PolymorphicMapType_35526) ) (! (succHeap Heap@@13 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@13) (store (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@13) o_38@@0 f_40@@0 v@@5) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@13) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@13) (store (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@13) o_38@@0 f_40@@0 v@@5) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34977) (o_38@@1 T@Ref) (f_40@@1 T@Field_41248_3370) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@14) (store (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@14) o_38@@1 f_40@@1 v@@6) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@14) (store (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@14) o_38@@1 f_40@@1 v@@6) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@14) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34977) (o_38@@2 T@Ref) (f_40@@2 T@Field_41084_41089) (v@@7 T@Seq_41087) ) (! (succHeap Heap@@15 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@15) (store (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@15) o_38@@2 f_40@@2 v@@7) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@15) (store (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@15) o_38@@2 f_40@@2 v@@7) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@15) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34977) (o_38@@3 T@Ref) (f_40@@3 T@Field_35050_35051) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@16) (store (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@16) o_38@@3 f_40@@3 v@@8) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@16) (store (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@16) o_38@@3 f_40@@3 v@@8) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@16) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34977) (o_38@@4 T@Ref) (f_40@@4 T@Field_35037_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_34977 (store (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@17) o_38@@4 f_40@@4 v@@9) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34977 (store (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@17) o_38@@4 f_40@@4 v@@9) (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_19594_117868#PolymorphicMapType_34977| Heap@@17) (|PolymorphicMapType_34977_35037_117691#PolymorphicMapType_34977| Heap@@17)))
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
(assert (forall ((o_38@@5 T@Ref) (f_44 T@Field_35050_35051) (Heap@@18 T@PolymorphicMapType_34977) ) (!  (=> (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@18) o_38@@5 $allocated) (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@18) (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@18) o_38@@5 f_44) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34977_19381_19382#PolymorphicMapType_34977| Heap@@18) o_38@@5 f_44))
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
(declare-fun tid_18 () Int)
(declare-fun gsize () Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_34998)
(declare-fun diz () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_34977)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_34998)
(declare-fun tid_12 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_34998)
(declare-fun tid_10 () Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun PostMask@2 () T@PolymorphicMapType_34998)
(declare-fun tid_8 () Int)
(declare-fun tcount () Int)
(declare-fun gid () Int)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_34998)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_34998)
(declare-fun wildcard@5 () Real)
(declare-fun QPMask@2 () T@PolymorphicMapType_34998)
(declare-fun Heap@@19 () T@PolymorphicMapType_34977)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_34998)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_34998)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_34998)
(declare-fun dummyFunction_3370 (Int) Bool)
(declare-fun neverTriggered8 (Int) Bool)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_34998)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_34998)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_34998)
(declare-fun neverTriggered11 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_34998)
(declare-fun tid_6 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_34998)
(declare-fun tid_4 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_34998)
(declare-fun tid_2 () Int)
(declare-fun i_4 () Int)
(declare-fun j_6 () Int)
(declare-fun i_2 () Int)
(declare-fun j@@8 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_34998)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_34998)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__main_resources_of_1)
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
 (=> (= (ControlFlow 0 0) 152) (let ((anon52_correct true))
(let ((anon84_Else_correct  (=> (and (not (and (<= 0 tid_18) (< tid_18 gsize))) (= (ControlFlow 0 118) 113)) anon52_correct)))
(let ((anon84_Then_correct  (=> (and (<= 0 tid_18) (< tid_18 gsize)) (and (=> (= (ControlFlow 0 114) (- 0 117)) (HasDirectPerm_19594_42046 QPMask@9 diz Ref__c)) (=> (HasDirectPerm_19594_42046 QPMask@9 diz Ref__c) (and (=> (= (ControlFlow 0 114) (- 0 116)) (>= tid_18 0)) (=> (>= tid_18 0) (and (=> (= (ControlFlow 0 114) (- 0 115)) (< tid_18 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c)))) (=> (< tid_18 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c))) (=> (= (ControlFlow 0 114) 113) anon52_correct))))))))))
(let ((anon83_Else_correct  (=> (= (ControlFlow 0 112) (- 0 111)) (forall ((tid_13 Int) (tid_13_1 Int) ) (!  (=> (and (and (and (and (not (= tid_13 tid_13_1)) (and (<= 0 tid_13) (< tid_13 gsize))) (and (<= 0 tid_13_1) (< tid_13_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid_13) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) tid_13_1))))
 :qid |stdinbpl.2428:15|
 :skolemid |101|
)))))
(let ((anon81_Else_correct  (and (=> (= (ControlFlow 0 119) (- 0 121)) (forall ((tid_11 Int) (tid_11_1 Int) ) (!  (=> (and (and (and (and (not (= tid_11 tid_11_1)) (and (<= 0 tid_11) (< tid_11 gsize))) (and (<= 0 tid_11_1) (< tid_11_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11_1))))
 :qid |stdinbpl.2374:15|
 :skolemid |94|
))) (=> (forall ((tid_11@@0 Int) (tid_11_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_11@@0 tid_11_1@@0)) (and (<= 0 tid_11@@0) (< tid_11@@0 gsize))) (and (<= 0 tid_11_1@@0) (< tid_11_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11_1@@0))))
 :qid |stdinbpl.2374:15|
 :skolemid |94|
)) (=> (and (forall ((tid_11@@1 Int) ) (!  (=> (and (and (<= 0 tid_11@@1) (< tid_11@@1 gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange6 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@1)) (= (invRecv6 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@1)) tid_11@@1)))
 :qid |stdinbpl.2380:22|
 :skolemid |95|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4)) (< (invRecv6 o_4) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange6 o_4)) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) (invRecv6 o_4)) o_4))
 :qid |stdinbpl.2384:22|
 :skolemid |96|
 :pattern ( (invRecv6 o_4))
))) (and (=> (= (ControlFlow 0 119) (- 0 120)) (forall ((tid_11@@2 Int) ) (!  (=> (and (<= 0 tid_11@@2) (< tid_11@@2 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2390:15|
 :skolemid |97|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@2))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@2))
))) (=> (forall ((tid_11@@3 Int) ) (!  (=> (and (<= 0 tid_11@@3) (< tid_11@@3 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2390:15|
 :skolemid |97|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@3))
)) (=> (and (forall ((tid_11@@4 Int) ) (!  (=> (and (and (<= 0 tid_11@@4) (< tid_11@@4 gsize)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@4) null)))
 :qid |stdinbpl.2396:22|
 :skolemid |98|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) tid_11@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_4@@0)) (< (invRecv6 o_4@@0) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange6 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) (invRecv6 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@9) o_4@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@0 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv6 o_4@@0)) (< (invRecv6 o_4@@0) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange6 o_4@@0))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@9) o_4@@0 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@0 Ref__Integer_value))))
 :qid |stdinbpl.2402:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@9) o_4@@0 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@8) o_4@@1 f_5) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@9) o_4@@1 f_5)))
 :qid |stdinbpl.2406:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@8) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@9) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@8) o_4@@2 f_5@@0) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@9) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2406:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@8) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@9) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@8) o_4@@3 f_5@@1) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@9) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2406:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@8) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@9) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_41248_3370) ) (!  (=> (not (= f_5@@2 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@4 f_5@@2) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@9) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2406:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@9) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@8) o_4@@5 f_5@@3) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@9) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2406:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@8) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@9) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@8) o_4@@6 f_5@@4) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@9) o_4@@6 f_5@@4)))
 :qid |stdinbpl.2406:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@8) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@9) o_4@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@9) (state PostHeap@0 QPMask@9))) (and (and (=> (= (ControlFlow 0 119) 112) anon83_Else_correct) (=> (= (ControlFlow 0 119) 114) anon84_Then_correct)) (=> (= (ControlFlow 0 119) 118) anon84_Else_correct)))))))))))
(let ((anon48_correct true))
(let ((anon82_Else_correct  (=> (and (not (and (<= 0 tid_12) (< tid_12 gsize))) (= (ControlFlow 0 110) 105)) anon48_correct)))
(let ((anon82_Then_correct  (=> (and (<= 0 tid_12) (< tid_12 gsize)) (and (=> (= (ControlFlow 0 106) (- 0 109)) (HasDirectPerm_19594_42046 QPMask@8 diz Ref__b)) (=> (HasDirectPerm_19594_42046 QPMask@8 diz Ref__b) (and (=> (= (ControlFlow 0 106) (- 0 108)) (>= tid_12 0)) (=> (>= tid_12 0) (and (=> (= (ControlFlow 0 106) (- 0 107)) (< tid_12 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b)))) (=> (< tid_12 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b))) (=> (= (ControlFlow 0 106) 105) anon48_correct))))))))))
(let ((anon79_Else_correct  (and (=> (= (ControlFlow 0 122) (- 0 124)) (forall ((tid_9 Int) (tid_9_1 Int) ) (!  (=> (and (and (and (and (not (= tid_9 tid_9_1)) (and (<= 0 tid_9) (< tid_9 gsize))) (and (<= 0 tid_9_1) (< tid_9_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9_1))))
 :qid |stdinbpl.2320:15|
 :skolemid |87|
))) (=> (forall ((tid_9@@0 Int) (tid_9_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_9@@0 tid_9_1@@0)) (and (<= 0 tid_9@@0) (< tid_9@@0 gsize))) (and (<= 0 tid_9_1@@0) (< tid_9_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9_1@@0))))
 :qid |stdinbpl.2320:15|
 :skolemid |87|
)) (=> (and (forall ((tid_9@@1 Int) ) (!  (=> (and (and (<= 0 tid_9@@1) (< tid_9@@1 gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange5 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@1)) (= (invRecv5 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@1)) tid_9@@1)))
 :qid |stdinbpl.2326:22|
 :skolemid |88|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@1))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@7)) (< (invRecv5 o_4@@7) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_4@@7)) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (invRecv5 o_4@@7)) o_4@@7))
 :qid |stdinbpl.2330:22|
 :skolemid |89|
 :pattern ( (invRecv5 o_4@@7))
))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (forall ((tid_9@@2 Int) ) (!  (=> (and (<= 0 tid_9@@2) (< tid_9@@2 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2336:15|
 :skolemid |90|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@2))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@2))
))) (=> (forall ((tid_9@@3 Int) ) (!  (=> (and (<= 0 tid_9@@3) (< tid_9@@3 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2336:15|
 :skolemid |90|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@3))
)) (=> (and (forall ((tid_9@@4 Int) ) (!  (=> (and (and (<= 0 tid_9@@4) (< tid_9@@4 gsize)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@4) null)))
 :qid |stdinbpl.2342:22|
 :skolemid |91|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_9@@4))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@8)) (< (invRecv5 o_4@@8) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_4@@8)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (invRecv5 o_4@@8)) o_4@@8)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@8 Ref__Integer_value) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@8 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@8)) (< (invRecv5 o_4@@8) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange5 o_4@@8))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@8 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@8 Ref__Integer_value))))
 :qid |stdinbpl.2348:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@8 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@7) o_4@@9 f_5@@5) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@8) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2352:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@7) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@8) o_4@@9 f_5@@5))
)) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@7) o_4@@10 f_5@@6) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@8) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2352:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@7) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@8) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@7) o_4@@11 f_5@@7) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@8) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2352:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@7) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@8) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_41248_3370) ) (!  (=> (not (= f_5@@8 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@12 f_5@@8) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2352:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@8) o_4@@12 f_5@@8))
))) (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@7) o_4@@13 f_5@@9) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@8) o_4@@13 f_5@@9)))
 :qid |stdinbpl.2352:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@7) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@8) o_4@@13 f_5@@9))
))) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@7) o_4@@14 f_5@@10) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@8) o_4@@14 f_5@@10)))
 :qid |stdinbpl.2352:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@7) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@8) o_4@@14 f_5@@10))
))) (and (state PostHeap@0 QPMask@8) (state PostHeap@0 QPMask@8))) (and (and (=> (= (ControlFlow 0 122) 119) anon81_Else_correct) (=> (= (ControlFlow 0 122) 106) anon82_Then_correct)) (=> (= (ControlFlow 0 122) 110) anon82_Else_correct)))))))))))
(let ((anon44_correct true))
(let ((anon80_Else_correct  (=> (and (not (and (<= 0 tid_10) (< tid_10 gsize))) (= (ControlFlow 0 104) 99)) anon44_correct)))
(let ((anon80_Then_correct  (=> (and (<= 0 tid_10) (< tid_10 gsize)) (and (=> (= (ControlFlow 0 100) (- 0 103)) (HasDirectPerm_19594_42046 QPMask@7 diz Ref__a)) (=> (HasDirectPerm_19594_42046 QPMask@7 diz Ref__a) (and (=> (= (ControlFlow 0 100) (- 0 102)) (>= tid_10 0)) (=> (>= tid_10 0) (and (=> (= (ControlFlow 0 100) (- 0 101)) (< tid_10 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< tid_10 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (=> (= (ControlFlow 0 100) 99) anon44_correct))))))))))
(let ((anon77_Else_correct  (and (=> (= (ControlFlow 0 125) (- 0 127)) (forall ((tid_7 Int) (tid_7_1 Int) ) (!  (=> (and (and (and (and (not (= tid_7 tid_7_1)) (and (<= 0 tid_7) (< tid_7 (- gsize 1)))) (and (<= 0 tid_7_1) (< tid_7_1 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7_1))))
 :qid |stdinbpl.2266:15|
 :skolemid |80|
))) (=> (forall ((tid_7@@0 Int) (tid_7_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_7@@0 tid_7_1@@0)) (and (<= 0 tid_7@@0) (< tid_7@@0 (- gsize 1)))) (and (<= 0 tid_7_1@@0) (< tid_7_1@@0 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7_1@@0))))
 :qid |stdinbpl.2266:15|
 :skolemid |80|
)) (=> (and (forall ((tid_7@@1 Int) ) (!  (=> (and (and (<= 0 tid_7@@1) (< tid_7@@1 (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange4 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@1)) (= (invRecv4 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@1)) tid_7@@1)))
 :qid |stdinbpl.2272:22|
 :skolemid |81|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@1))
)) (forall ((o_4@@15 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 o_4@@15)) (< (invRecv4 o_4@@15) (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@15)) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (invRecv4 o_4@@15)) o_4@@15))
 :qid |stdinbpl.2276:22|
 :skolemid |82|
 :pattern ( (invRecv4 o_4@@15))
))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (forall ((tid_7@@2 Int) ) (!  (=> (and (<= 0 tid_7@@2) (< tid_7@@2 (- gsize 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2282:15|
 :skolemid |83|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@2))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@2))
))) (=> (forall ((tid_7@@3 Int) ) (!  (=> (and (<= 0 tid_7@@3) (< tid_7@@3 (- gsize 1))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2282:15|
 :skolemid |83|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@3))
)) (=> (and (forall ((tid_7@@4 Int) ) (!  (=> (and (and (<= 0 tid_7@@4) (< tid_7@@4 (- gsize 1))) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@4) null)))
 :qid |stdinbpl.2288:22|
 :skolemid |84|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) tid_7@@4))
)) (forall ((o_4@@16 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv4 o_4@@16)) (< (invRecv4 o_4@@16) (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@16)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (invRecv4 o_4@@16)) o_4@@16)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@16 Ref__Integer_value) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@2) o_4@@16 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv4 o_4@@16)) (< (invRecv4 o_4@@16) (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange4 o_4@@16))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@16 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@2) o_4@@16 Ref__Integer_value))))
 :qid |stdinbpl.2294:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@16 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@2) o_4@@17 f_5@@11) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@7) o_4@@17 f_5@@11)))
 :qid |stdinbpl.2298:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@2) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@7) o_4@@17 f_5@@11))
)) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@2) o_4@@18 f_5@@12) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@7) o_4@@18 f_5@@12)))
 :qid |stdinbpl.2298:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@2) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@7) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@2) o_4@@19 f_5@@13) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@7) o_4@@19 f_5@@13)))
 :qid |stdinbpl.2298:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@2) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@7) o_4@@19 f_5@@13))
))) (forall ((o_4@@20 T@Ref) (f_5@@14 T@Field_41248_3370) ) (!  (=> (not (= f_5@@14 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@2) o_4@@20 f_5@@14) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@20 f_5@@14)))
 :qid |stdinbpl.2298:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@2) o_4@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@7) o_4@@20 f_5@@14))
))) (forall ((o_4@@21 T@Ref) (f_5@@15 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@2) o_4@@21 f_5@@15) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@7) o_4@@21 f_5@@15)))
 :qid |stdinbpl.2298:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@2) o_4@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@7) o_4@@21 f_5@@15))
))) (forall ((o_4@@22 T@Ref) (f_5@@16 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@2) o_4@@22 f_5@@16) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@7) o_4@@22 f_5@@16)))
 :qid |stdinbpl.2298:29|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@2) o_4@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@7) o_4@@22 f_5@@16))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (and (=> (= (ControlFlow 0 125) 122) anon79_Else_correct) (=> (= (ControlFlow 0 125) 100) anon80_Then_correct)) (=> (= (ControlFlow 0 125) 104) anon80_Else_correct)))))))))))
(let ((anon40_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (<= 0 tid_8) (< tid_8 (- gsize 1)))) (= (ControlFlow 0 98) 93)) anon40_correct)))
(let ((anon78_Then_correct  (=> (and (<= 0 tid_8) (< tid_8 (- gsize 1))) (and (=> (= (ControlFlow 0 94) (- 0 97)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 94) (- 0 96)) (>= tid_8 0)) (=> (>= tid_8 0) (and (=> (= (ControlFlow 0 94) (- 0 95)) (< tid_8 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)))) (=> (< tid_8 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a))) (=> (= (ControlFlow 0 94) 93) anon40_correct))))))))))
(let ((anon76_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= tcount gsize)) (=> (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)))) (and (=> (= (ControlFlow 0 128) (- 0 137)) (HasDirectPerm_19594_42046 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@0) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 128) (- 0 136)) (HasDirectPerm_19594_42046 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| PostMask@1) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 128) (- 0 135)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 128) (- 0 134)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 128) (- 0 133)) (HasDirectPerm_19594_42046 QPMask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 QPMask@2 diz Ref__a) (=> (and (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 128) (- 0 132)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 128) (- 0 131)) (HasDirectPerm_19594_42046 QPMask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 QPMask@2 diz Ref__b) (=> (and (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 128) (- 0 130)) (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 128) (- 0 129)) (HasDirectPerm_19594_42046 QPMask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 QPMask@2 diz Ref__c) (=> (and (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (and (=> (= (ControlFlow 0 128) 125) anon77_Else_correct) (=> (= (ControlFlow 0 128) 94) anon78_Then_correct)) (=> (= (ControlFlow 0 128) 98) anon78_Else_correct))))))))))))))))))))))))))))))))))
(let ((anon76_Else_correct  (and (=> (= (ControlFlow 0 71) (- 0 92)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 71) (- 0 91)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 71) (- 0 90)) (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) diz Ref__a) NoPerm)) (=> (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) diz Ref__a) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) diz Ref__a)) (= Mask@3 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) diz Ref__a (- (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) diz Ref__a) wildcard@6)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@2) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@2) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@2) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@2) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@2)))) (and (=> (= (ControlFlow 0 71) (- 0 89)) (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) tcount)) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) tcount) (and (=> (= (ControlFlow 0 71) (- 0 88)) (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@3) diz Ref__b) NoPerm)) (=> (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@3) diz Ref__b) NoPerm) (=> (> wildcard@7 NoPerm) (=> (and (< wildcard@7 (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@3) diz Ref__b)) (= Mask@4 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@3) diz Ref__b (- (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@3) diz Ref__b) wildcard@7)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@3) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@3) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@3) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@3) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@3)))) (and (=> (= (ControlFlow 0 71) (- 0 87)) (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) tcount)) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) tcount) (and (=> (= (ControlFlow 0 71) (- 0 86)) (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@4) diz Ref__c) NoPerm)) (=> (> (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@4) diz Ref__c) NoPerm) (=> (> wildcard@8 NoPerm) (=> (and (< wildcard@8 (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@4) diz Ref__c)) (= Mask@5 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@4) diz Ref__c (- (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@4) diz Ref__c) wildcard@8)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@4) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@4)))) (and (=> (= (ControlFlow 0 71) (- 0 85)) (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) tcount)) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) tcount) (and (=> (= (ControlFlow 0 71) (- 0 84)) (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (=> (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) (and (=> (= (ControlFlow 0 71) (- 0 83)) (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (=> (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) (and (=> (= (ControlFlow 0 71) (- 0 82)) (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (=> (|Seq#Equal_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) (and (=> (= (ControlFlow 0 71) (- 0 81)) (forall ((tid_14 Int) ) (!  (=> (and (and (<= 0 tid_14) (< tid_14 (- gsize 1))) (dummyFunction_3370 (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2503:17|
 :skolemid |107|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14))
))) (=> (forall ((tid_14@@0 Int) ) (!  (=> (and (and (<= 0 tid_14@@0) (< tid_14@@0 (- gsize 1))) (dummyFunction_3370 (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2503:17|
 :skolemid |107|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@0))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 80)) (forall ((tid_14@@1 Int) (tid_14_1 Int) ) (!  (=> (and (and (and (and (not (= tid_14@@1 tid_14_1)) (and (<= 0 tid_14@@1) (< tid_14@@1 (- gsize 1)))) (and (<= 0 tid_14_1) (< tid_14_1 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@1) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14_1))))
 :qid |stdinbpl.2510:17|
 :skolemid |108|
 :pattern ( (neverTriggered8 tid_14@@1) (neverTriggered8 tid_14_1))
))) (=> (forall ((tid_14@@2 Int) (tid_14_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_14@@2 tid_14_1@@0)) (and (<= 0 tid_14@@2) (< tid_14@@2 (- gsize 1)))) (and (<= 0 tid_14_1@@0) (< tid_14_1@@0 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14_1@@0))))
 :qid |stdinbpl.2510:17|
 :skolemid |108|
 :pattern ( (neverTriggered8 tid_14@@2) (neverTriggered8 tid_14_1@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 79)) (forall ((tid_14@@3 Int) ) (!  (=> (and (<= 0 tid_14@@3) (< tid_14@@3 (- gsize 1))) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2517:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@3))
))) (=> (forall ((tid_14@@4 Int) ) (!  (=> (and (<= 0 tid_14@@4) (< tid_14@@4 (- gsize 1))) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2517:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@4))
)) (=> (forall ((tid_14@@5 Int) ) (!  (=> (and (and (<= 0 tid_14@@5) (< tid_14@@5 (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange8 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@5)) (= (invRecv8 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@5)) tid_14@@5)))
 :qid |stdinbpl.2523:22|
 :skolemid |110|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@5))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_14@@5))
)) (=> (and (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv8 o_4@@23)) (< (invRecv8 o_4@@23) (- gsize 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange8 o_4@@23))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (invRecv8 o_4@@23)) o_4@@23))
 :qid |stdinbpl.2527:22|
 :skolemid |111|
 :pattern ( (invRecv8 o_4@@23))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv8 o_4@@24)) (< (invRecv8 o_4@@24) (- gsize 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange8 o_4@@24))) (and (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (invRecv8 o_4@@24)) o_4@@24) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@24 Ref__Integer_value) (- (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) o_4@@24 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv8 o_4@@24)) (< (invRecv8 o_4@@24) (- gsize 1))) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange8 o_4@@24)))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@24 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) o_4@@24 Ref__Integer_value))))
 :qid |stdinbpl.2533:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@24 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@5) o_4@@25 f_5@@17) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.2539:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@3) o_4@@25 f_5@@17))
)) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@5) o_4@@26 f_5@@18) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.2539:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@3) o_4@@26 f_5@@18))
))) (forall ((o_4@@27 T@Ref) (f_5@@19 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@5) o_4@@27 f_5@@19) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@3) o_4@@27 f_5@@19)))
 :qid |stdinbpl.2539:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@3) o_4@@27 f_5@@19))
))) (forall ((o_4@@28 T@Ref) (f_5@@20 T@Field_41248_3370) ) (!  (=> (not (= f_5@@20 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@5) o_4@@28 f_5@@20) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@28 f_5@@20)))
 :qid |stdinbpl.2539:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@28 f_5@@20))
))) (forall ((o_4@@29 T@Ref) (f_5@@21 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@5) o_4@@29 f_5@@21) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@3) o_4@@29 f_5@@21)))
 :qid |stdinbpl.2539:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@3) o_4@@29 f_5@@21))
))) (forall ((o_4@@30 T@Ref) (f_5@@22 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@5) o_4@@30 f_5@@22) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@3) o_4@@30 f_5@@22)))
 :qid |stdinbpl.2539:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@3) o_4@@30 f_5@@22))
))) (and (=> (= (ControlFlow 0 71) (- 0 78)) (forall ((tid_15 Int) ) (!  (=> (and (and (<= 0 tid_15) (< tid_15 gsize)) (dummyFunction_3370 (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2548:17|
 :skolemid |114|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15))
))) (=> (forall ((tid_15@@0 Int) ) (!  (=> (and (and (<= 0 tid_15@@0) (< tid_15@@0 gsize)) (dummyFunction_3370 (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2548:17|
 :skolemid |114|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@0))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 77)) (forall ((tid_15@@1 Int) (tid_15_1 Int) ) (!  (=> (and (and (and (and (not (= tid_15@@1 tid_15_1)) (and (<= 0 tid_15@@1) (< tid_15@@1 gsize))) (and (<= 0 tid_15_1) (< tid_15_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@1) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15_1))))
 :qid |stdinbpl.2555:17|
 :skolemid |115|
 :pattern ( (neverTriggered9 tid_15@@1) (neverTriggered9 tid_15_1))
))) (=> (forall ((tid_15@@2 Int) (tid_15_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_15@@2 tid_15_1@@0)) (and (<= 0 tid_15@@2) (< tid_15@@2 gsize))) (and (<= 0 tid_15_1@@0) (< tid_15_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15_1@@0))))
 :qid |stdinbpl.2555:17|
 :skolemid |115|
 :pattern ( (neverTriggered9 tid_15@@2) (neverTriggered9 tid_15_1@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 76)) (forall ((tid_15@@3 Int) ) (!  (=> (and (<= 0 tid_15@@3) (< tid_15@@3 gsize)) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2562:17|
 :skolemid |116|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@3))
))) (=> (forall ((tid_15@@4 Int) ) (!  (=> (and (<= 0 tid_15@@4) (< tid_15@@4 gsize)) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2562:17|
 :skolemid |116|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@4))
)) (=> (forall ((tid_15@@5 Int) ) (!  (=> (and (and (<= 0 tid_15@@5) (< tid_15@@5 gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange9 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@5)) (= (invRecv9 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@5)) tid_15@@5)))
 :qid |stdinbpl.2568:22|
 :skolemid |117|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@5))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_15@@5))
)) (=> (and (forall ((o_4@@31 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv9 o_4@@31)) (< (invRecv9 o_4@@31) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_4@@31))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (invRecv9 o_4@@31)) o_4@@31))
 :qid |stdinbpl.2572:22|
 :skolemid |118|
 :pattern ( (invRecv9 o_4@@31))
)) (forall ((o_4@@32 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv9 o_4@@32)) (< (invRecv9 o_4@@32) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_4@@32))) (and (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (invRecv9 o_4@@32)) o_4@@32) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@32 Ref__Integer_value) (- (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@32 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv9 o_4@@32)) (< (invRecv9 o_4@@32) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange9 o_4@@32)))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@32 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@32 Ref__Integer_value))))
 :qid |stdinbpl.2578:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@32 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@3) o_4@@33 f_5@@23) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@4) o_4@@33 f_5@@23)))
 :qid |stdinbpl.2584:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@4) o_4@@33 f_5@@23))
)) (forall ((o_4@@34 T@Ref) (f_5@@24 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@3) o_4@@34 f_5@@24) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@4) o_4@@34 f_5@@24)))
 :qid |stdinbpl.2584:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@4) o_4@@34 f_5@@24))
))) (forall ((o_4@@35 T@Ref) (f_5@@25 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@3) o_4@@35 f_5@@25) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@4) o_4@@35 f_5@@25)))
 :qid |stdinbpl.2584:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@4) o_4@@35 f_5@@25))
))) (forall ((o_4@@36 T@Ref) (f_5@@26 T@Field_41248_3370) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@3) o_4@@36 f_5@@26) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@36 f_5@@26)))
 :qid |stdinbpl.2584:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@36 f_5@@26))
))) (forall ((o_4@@37 T@Ref) (f_5@@27 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@3) o_4@@37 f_5@@27) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@4) o_4@@37 f_5@@27)))
 :qid |stdinbpl.2584:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@4) o_4@@37 f_5@@27))
))) (forall ((o_4@@38 T@Ref) (f_5@@28 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@3) o_4@@38 f_5@@28) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@4) o_4@@38 f_5@@28)))
 :qid |stdinbpl.2584:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@4) o_4@@38 f_5@@28))
))) (and (=> (= (ControlFlow 0 71) (- 0 75)) (forall ((tid_16 Int) ) (!  (=> (and (and (<= 0 tid_16) (< tid_16 gsize)) (dummyFunction_3370 (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2593:17|
 :skolemid |121|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16))
))) (=> (forall ((tid_16@@0 Int) ) (!  (=> (and (and (<= 0 tid_16@@0) (< tid_16@@0 gsize)) (dummyFunction_3370 (select (|PolymorphicMapType_34977_19606_3370#PolymorphicMapType_34977| Heap@@19) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2593:17|
 :skolemid |121|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@0))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 74)) (forall ((tid_16@@1 Int) (tid_16_1 Int) ) (!  (=> (and (and (and (and (not (= tid_16@@1 tid_16_1)) (and (<= 0 tid_16@@1) (< tid_16@@1 gsize))) (and (<= 0 tid_16_1) (< tid_16_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@1) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16_1))))
 :qid |stdinbpl.2600:17|
 :skolemid |122|
 :pattern ( (neverTriggered10 tid_16@@1) (neverTriggered10 tid_16_1))
))) (=> (forall ((tid_16@@2 Int) (tid_16_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_16@@2 tid_16_1@@0)) (and (<= 0 tid_16@@2) (< tid_16@@2 gsize))) (and (<= 0 tid_16_1@@0) (< tid_16_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@2) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16_1@@0))))
 :qid |stdinbpl.2600:17|
 :skolemid |122|
 :pattern ( (neverTriggered10 tid_16@@2) (neverTriggered10 tid_16_1@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 73)) (forall ((tid_16@@3 Int) ) (!  (=> (and (<= 0 tid_16@@3) (< tid_16@@3 gsize)) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@3) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2607:17|
 :skolemid |123|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@3))
))) (=> (forall ((tid_16@@4 Int) ) (!  (=> (and (<= 0 tid_16@@4) (< tid_16@@4 gsize)) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@4) Ref__Integer_value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.2607:17|
 :skolemid |123|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@4))
)) (=> (forall ((tid_16@@5 Int) ) (!  (=> (and (and (<= 0 tid_16@@5) (< tid_16@@5 gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange10 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@5)) (= (invRecv10 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@5)) tid_16@@5)))
 :qid |stdinbpl.2613:22|
 :skolemid |124|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@5))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_16@@5))
)) (=> (and (forall ((o_4@@39 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_4@@39)) (< (invRecv10 o_4@@39) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange10 o_4@@39))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) (invRecv10 o_4@@39)) o_4@@39))
 :qid |stdinbpl.2617:22|
 :skolemid |125|
 :pattern ( (invRecv10 o_4@@39))
)) (forall ((o_4@@40 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv10 o_4@@40)) (< (invRecv10 o_4@@40) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange10 o_4@@40))) (and (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) (invRecv10 o_4@@40)) o_4@@40) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@5) o_4@@40 Ref__Integer_value) (- (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@40 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (<= 0 (invRecv10 o_4@@40)) (< (invRecv10 o_4@@40) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange10 o_4@@40)))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@5) o_4@@40 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@40 Ref__Integer_value))))
 :qid |stdinbpl.2623:22|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@5) o_4@@40 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@41 T@Ref) (f_5@@29 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@4) o_4@@41 f_5@@29) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@5) o_4@@41 f_5@@29)))
 :qid |stdinbpl.2629:29|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@5) o_4@@41 f_5@@29))
)) (forall ((o_4@@42 T@Ref) (f_5@@30 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@4) o_4@@42 f_5@@30) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@5) o_4@@42 f_5@@30)))
 :qid |stdinbpl.2629:29|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@5) o_4@@42 f_5@@30))
))) (forall ((o_4@@43 T@Ref) (f_5@@31 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@4) o_4@@43 f_5@@31) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@5) o_4@@43 f_5@@31)))
 :qid |stdinbpl.2629:29|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@5) o_4@@43 f_5@@31))
))) (forall ((o_4@@44 T@Ref) (f_5@@32 T@Field_41248_3370) ) (!  (=> (not (= f_5@@32 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@4) o_4@@44 f_5@@32) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@5) o_4@@44 f_5@@32)))
 :qid |stdinbpl.2629:29|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@5) o_4@@44 f_5@@32))
))) (forall ((o_4@@45 T@Ref) (f_5@@33 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@4) o_4@@45 f_5@@33) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@5) o_4@@45 f_5@@33)))
 :qid |stdinbpl.2629:29|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@5) o_4@@45 f_5@@33))
))) (forall ((o_4@@46 T@Ref) (f_5@@34 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@4) o_4@@46 f_5@@34) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@5) o_4@@46 f_5@@34)))
 :qid |stdinbpl.2629:29|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@5) o_4@@46 f_5@@34))
))) (and (=> (= (ControlFlow 0 71) (- 0 72)) (forall ((tid_17 Int) (tid_17_1 Int) ) (!  (=> (and (and (and (and (not (= tid_17 tid_17_1)) (and (<= 0 tid_17) (< tid_17 gsize))) (and (<= 0 tid_17_1) (< tid_17_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17_1))))
 :qid |stdinbpl.2641:17|
 :skolemid |128|
 :pattern ( (neverTriggered11 tid_17) (neverTriggered11 tid_17_1))
))) (=> (forall ((tid_17@@0 Int) (tid_17_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_17@@0 tid_17_1@@0)) (and (<= 0 tid_17@@0) (< tid_17@@0 gsize))) (and (<= 0 tid_17_1@@0) (< tid_17_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17_1@@0))))
 :qid |stdinbpl.2641:17|
 :skolemid |128|
 :pattern ( (neverTriggered11 tid_17@@0) (neverTriggered11 tid_17_1@@0))
)) (=> (= (ControlFlow 0 71) (- 0 70)) (forall ((tid_17@@1 Int) ) (!  (=> (and (<= 0 tid_17@@1) (< tid_17@@1 gsize)) (>= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2648:17|
 :skolemid |129|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_17@@1))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon74_Else_correct  (and (=> (= (ControlFlow 0 138) (- 0 139)) (forall ((tid_5 Int) (tid_5_1 Int) ) (!  (=> (and (and (and (and (not (= tid_5 tid_5_1)) (and (<= 0 tid_5) (< tid_5 gsize))) (and (<= 0 tid_5_1) (< tid_5_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5_1))))
 :qid |stdinbpl.2143:15|
 :skolemid |74|
))) (=> (forall ((tid_5@@0 Int) (tid_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_5@@0 tid_5_1@@0)) (and (<= 0 tid_5@@0) (< tid_5@@0 gsize))) (and (<= 0 tid_5_1@@0) (< tid_5_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5_1@@0))))
 :qid |stdinbpl.2143:15|
 :skolemid |74|
)) (=> (and (and (forall ((tid_5@@1 Int) ) (!  (=> (and (and (<= 0 tid_5@@1) (< tid_5@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@1)) (= (invRecv3 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@1)) tid_5@@1)))
 :qid |stdinbpl.2149:22|
 :skolemid |75|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@1))
)) (forall ((o_4@@47 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_4@@47)) (< (invRecv3 o_4@@47) gsize)) (< NoPerm FullPerm)) (qpRange3 o_4@@47)) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) (invRecv3 o_4@@47)) o_4@@47))
 :qid |stdinbpl.2153:22|
 :skolemid |76|
 :pattern ( (invRecv3 o_4@@47))
))) (and (forall ((tid_5@@2 Int) ) (!  (=> (and (<= 0 tid_5@@2) (< tid_5@@2 gsize)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@2) null)))
 :qid |stdinbpl.2159:22|
 :skolemid |77|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@2))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) tid_5@@2))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_4@@48)) (< (invRecv3 o_4@@48) gsize)) (< NoPerm FullPerm)) (qpRange3 o_4@@48)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) (invRecv3 o_4@@48)) o_4@@48)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@2) o_4@@48 Ref__Integer_value) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@48 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv3 o_4@@48)) (< (invRecv3 o_4@@48) gsize)) (< NoPerm FullPerm)) (qpRange3 o_4@@48))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@2) o_4@@48 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@48 Ref__Integer_value))))
 :qid |stdinbpl.2165:22|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@2) o_4@@48 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@35 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@1) o_4@@49 f_5@@35) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@2) o_4@@49 f_5@@35)))
 :qid |stdinbpl.2169:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@1) o_4@@49 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@2) o_4@@49 f_5@@35))
)) (forall ((o_4@@50 T@Ref) (f_5@@36 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@1) o_4@@50 f_5@@36) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@2) o_4@@50 f_5@@36)))
 :qid |stdinbpl.2169:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@1) o_4@@50 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@2) o_4@@50 f_5@@36))
))) (forall ((o_4@@51 T@Ref) (f_5@@37 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@1) o_4@@51 f_5@@37) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) o_4@@51 f_5@@37)))
 :qid |stdinbpl.2169:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@1) o_4@@51 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@2) o_4@@51 f_5@@37))
))) (forall ((o_4@@52 T@Ref) (f_5@@38 T@Field_41248_3370) ) (!  (=> (not (= f_5@@38 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@52 f_5@@38) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@2) o_4@@52 f_5@@38)))
 :qid |stdinbpl.2169:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@52 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@2) o_4@@52 f_5@@38))
))) (forall ((o_4@@53 T@Ref) (f_5@@39 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@1) o_4@@53 f_5@@39) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@2) o_4@@53 f_5@@39)))
 :qid |stdinbpl.2169:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@1) o_4@@53 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@2) o_4@@53 f_5@@39))
))) (forall ((o_4@@54 T@Ref) (f_5@@40 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@1) o_4@@54 f_5@@40) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@2) o_4@@54 f_5@@40)))
 :qid |stdinbpl.2169:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@1) o_4@@54 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@2) o_4@@54 f_5@@40))
))) (and (state Heap@@19 QPMask@2) (state Heap@@19 QPMask@2))) (and (=> (= (ControlFlow 0 138) 128) anon76_Then_correct) (=> (= (ControlFlow 0 138) 71) anon76_Else_correct))))))))
(let ((anon35_correct true))
(let ((anon75_Else_correct  (=> (and (not (and (<= 0 tid_6) (< tid_6 gsize))) (= (ControlFlow 0 69) 64)) anon35_correct)))
(let ((anon75_Then_correct  (=> (and (<= 0 tid_6) (< tid_6 gsize)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (HasDirectPerm_19594_42046 QPMask@1 diz Ref__c)) (=> (HasDirectPerm_19594_42046 QPMask@1 diz Ref__c) (and (=> (= (ControlFlow 0 65) (- 0 67)) (>= tid_6 0)) (=> (>= tid_6 0) (and (=> (= (ControlFlow 0 65) (- 0 66)) (< tid_6 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)))) (=> (< tid_6 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (=> (= (ControlFlow 0 65) 64) anon35_correct))))))))))
(let ((anon72_Else_correct  (and (=> (= (ControlFlow 0 140) (- 0 142)) (forall ((tid_3 Int) (tid_3_1 Int) ) (!  (=> (and (and (and (and (not (= tid_3 tid_3_1)) (and (<= 0 tid_3) (< tid_3 gsize))) (and (<= 0 tid_3_1) (< tid_3_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3_1))))
 :qid |stdinbpl.2089:15|
 :skolemid |67|
))) (=> (forall ((tid_3@@0 Int) (tid_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_3@@0 tid_3_1@@0)) (and (<= 0 tid_3@@0) (< tid_3@@0 gsize))) (and (<= 0 tid_3_1@@0) (< tid_3_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3_1@@0))))
 :qid |stdinbpl.2089:15|
 :skolemid |67|
)) (=> (and (forall ((tid_3@@1 Int) ) (!  (=> (and (and (<= 0 tid_3@@1) (< tid_3@@1 gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@1)) (= (invRecv2 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@1)) tid_3@@1)))
 :qid |stdinbpl.2095:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@1))
)) (forall ((o_4@@55 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4@@55)) (< (invRecv2 o_4@@55) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@55)) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) (invRecv2 o_4@@55)) o_4@@55))
 :qid |stdinbpl.2099:22|
 :skolemid |69|
 :pattern ( (invRecv2 o_4@@55))
))) (and (=> (= (ControlFlow 0 140) (- 0 141)) (forall ((tid_3@@2 Int) ) (!  (=> (and (<= 0 tid_3@@2) (< tid_3@@2 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2105:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@2))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@2))
))) (=> (forall ((tid_3@@3 Int) ) (!  (=> (and (<= 0 tid_3@@3) (< tid_3@@3 gsize)) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.2105:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@3))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@3))
)) (=> (and (forall ((tid_3@@4 Int) ) (!  (=> (and (and (<= 0 tid_3@@4) (< tid_3@@4 gsize)) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@4) null)))
 :qid |stdinbpl.2111:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@4))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) tid_3@@4))
)) (forall ((o_4@@56 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@56)) (< (invRecv2 o_4@@56) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@56)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) (invRecv2 o_4@@56)) o_4@@56)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@56 Ref__Integer_value) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@56 Ref__Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@56)) (< (invRecv2 o_4@@56) gsize)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@56))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@56 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@56 Ref__Integer_value))))
 :qid |stdinbpl.2117:22|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@56 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@57 T@Ref) (f_5@@41 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@0) o_4@@57 f_5@@41) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@1) o_4@@57 f_5@@41)))
 :qid |stdinbpl.2121:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@0) o_4@@57 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@1) o_4@@57 f_5@@41))
)) (forall ((o_4@@58 T@Ref) (f_5@@42 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@0) o_4@@58 f_5@@42) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@1) o_4@@58 f_5@@42)))
 :qid |stdinbpl.2121:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@0) o_4@@58 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@1) o_4@@58 f_5@@42))
))) (forall ((o_4@@59 T@Ref) (f_5@@43 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@0) o_4@@59 f_5@@43) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@1) o_4@@59 f_5@@43)))
 :qid |stdinbpl.2121:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@0) o_4@@59 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@1) o_4@@59 f_5@@43))
))) (forall ((o_4@@60 T@Ref) (f_5@@44 T@Field_41248_3370) ) (!  (=> (not (= f_5@@44 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@60 f_5@@44) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@60 f_5@@44)))
 :qid |stdinbpl.2121:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@60 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@1) o_4@@60 f_5@@44))
))) (forall ((o_4@@61 T@Ref) (f_5@@45 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@0) o_4@@61 f_5@@45) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@1) o_4@@61 f_5@@45)))
 :qid |stdinbpl.2121:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@0) o_4@@61 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@1) o_4@@61 f_5@@45))
))) (forall ((o_4@@62 T@Ref) (f_5@@46 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@0) o_4@@62 f_5@@46) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@1) o_4@@62 f_5@@46)))
 :qid |stdinbpl.2121:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@0) o_4@@62 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@1) o_4@@62 f_5@@46))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (and (=> (= (ControlFlow 0 140) 138) anon74_Else_correct) (=> (= (ControlFlow 0 140) 65) anon75_Then_correct)) (=> (= (ControlFlow 0 140) 69) anon75_Else_correct)))))))))))
(let ((anon31_correct true))
(let ((anon73_Else_correct  (=> (and (not (and (<= 0 tid_4) (< tid_4 gsize))) (= (ControlFlow 0 63) 58)) anon31_correct)))
(let ((anon73_Then_correct  (=> (and (<= 0 tid_4) (< tid_4 gsize)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (HasDirectPerm_19594_42046 QPMask@0 diz Ref__b)) (=> (HasDirectPerm_19594_42046 QPMask@0 diz Ref__b) (and (=> (= (ControlFlow 0 59) (- 0 61)) (>= tid_4 0)) (=> (>= tid_4 0) (and (=> (= (ControlFlow 0 59) (- 0 60)) (< tid_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)))) (=> (< tid_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (=> (= (ControlFlow 0 59) 58) anon31_correct))))))))))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 143) (- 0 144)) (forall ((tid_1 Int) (tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= tid_1 tid_1_1)) (and (<= 0 tid_1) (< tid_1 gsize))) (and (<= 0 tid_1_1) (< tid_1_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1_1))))
 :qid |stdinbpl.2041:15|
 :skolemid |61|
))) (=> (forall ((tid_1@@0 Int) (tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_1@@0 tid_1_1@@0)) (and (<= 0 tid_1@@0) (< tid_1@@0 gsize))) (and (<= 0 tid_1_1@@0) (< tid_1_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@0) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1_1@@0))))
 :qid |stdinbpl.2041:15|
 :skolemid |61|
)) (=> (and (and (forall ((tid_1@@1 Int) ) (!  (=> (and (and (<= 0 tid_1@@1) (< tid_1@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@1)) (= (invRecv1 (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@1)) tid_1@@1)))
 :qid |stdinbpl.2047:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@1))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@1))
)) (forall ((o_4@@63 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@63)) (< (invRecv1 o_4@@63) gsize)) (< NoPerm FullPerm)) (qpRange1 o_4@@63)) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (invRecv1 o_4@@63)) o_4@@63))
 :qid |stdinbpl.2051:22|
 :skolemid |63|
 :pattern ( (invRecv1 o_4@@63))
))) (and (forall ((tid_1@@2 Int) ) (!  (=> (and (<= 0 tid_1@@2) (< tid_1@@2 gsize)) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@2) null)))
 :qid |stdinbpl.2057:22|
 :skolemid |64|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@2))
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) tid_1@@2))
)) (forall ((o_4@@64 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@64)) (< (invRecv1 o_4@@64) gsize)) (< NoPerm FullPerm)) (qpRange1 o_4@@64)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) (invRecv1 o_4@@64)) o_4@@64)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@64 Ref__Integer_value) (+ (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@2) o_4@@64 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@64)) (< (invRecv1 o_4@@64) gsize)) (< NoPerm FullPerm)) (qpRange1 o_4@@64))) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@64 Ref__Integer_value) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@2) o_4@@64 Ref__Integer_value))))
 :qid |stdinbpl.2063:22|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@64 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@65 T@Ref) (f_5@@47 T@Field_35037_53) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@2) o_4@@65 f_5@@47) (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@0) o_4@@65 f_5@@47)))
 :qid |stdinbpl.2067:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@2) o_4@@65 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| QPMask@0) o_4@@65 f_5@@47))
)) (forall ((o_4@@66 T@Ref) (f_5@@48 T@Field_35050_35051) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@2) o_4@@66 f_5@@48) (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@0) o_4@@66 f_5@@48)))
 :qid |stdinbpl.2067:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@2) o_4@@66 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| QPMask@0) o_4@@66 f_5@@48))
))) (forall ((o_4@@67 T@Ref) (f_5@@49 T@Field_41084_41089) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@2) o_4@@67 f_5@@49) (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@0) o_4@@67 f_5@@49)))
 :qid |stdinbpl.2067:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@2) o_4@@67 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| QPMask@0) o_4@@67 f_5@@49))
))) (forall ((o_4@@68 T@Ref) (f_5@@50 T@Field_41248_3370) ) (!  (=> (not (= f_5@@50 Ref__Integer_value)) (= (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@2) o_4@@68 f_5@@50) (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@68 f_5@@50)))
 :qid |stdinbpl.2067:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@2) o_4@@68 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| QPMask@0) o_4@@68 f_5@@50))
))) (forall ((o_4@@69 T@Ref) (f_5@@51 T@Field_19594_117691) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@2) o_4@@69 f_5@@51) (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@0) o_4@@69 f_5@@51)))
 :qid |stdinbpl.2067:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@2) o_4@@69 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| QPMask@0) o_4@@69 f_5@@51))
))) (forall ((o_4@@70 T@Ref) (f_5@@52 T@Field_19594_117824) ) (!  (=> true (= (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@2) o_4@@70 f_5@@52) (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@0) o_4@@70 f_5@@52)))
 :qid |stdinbpl.2067:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@2) o_4@@70 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| QPMask@0) o_4@@70 f_5@@52))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 143) 140) anon72_Else_correct) (=> (= (ControlFlow 0 143) 59) anon73_Then_correct)) (=> (= (ControlFlow 0 143) 63) anon73_Else_correct))))))))
(let ((anon27_correct true))
(let ((anon71_Else_correct  (=> (and (not (and (<= 0 tid_2) (< tid_2 gsize))) (= (ControlFlow 0 57) 52)) anon27_correct)))
(let ((anon71_Then_correct  (=> (and (<= 0 tid_2) (< tid_2 gsize)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 53) (- 0 55)) (>= tid_2 0)) (=> (>= tid_2 0) (and (=> (= (ControlFlow 0 53) (- 0 54)) (< tid_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< tid_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (=> (= (ControlFlow 0 53) 52) anon27_correct))))))))))
(let ((anon65_Else_correct  (=> (and (forall ((i_5 Int) (j_5_1 Int) ) (!  (=> (and (>= i_5 0) (and (< i_5 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (and (>= j_5_1 0) (and (< j_5_1 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (not (= i_5 j_5_1)))))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) i_5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) j_5_1))))
 :qid |stdinbpl.2021:20|
 :skolemid |60|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) i_5) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c) j_5_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 145) 143) anon70_Else_correct) (=> (= (ControlFlow 0 145) 53) anon71_Then_correct)) (=> (= (ControlFlow 0 145) 57) anon71_Else_correct)))))
(let ((anon23_correct true))
(let ((anon69_Else_correct  (=> (and (not (and (>= i_4 0) (and (< i_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (and (>= j_6 0) (and (< j_6 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (not (= i_4 j_6))))))) (= (ControlFlow 0 43) 35)) anon23_correct)))
(let ((anon69_Then_correct  (=> (and (>= i_4 0) (and (< i_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (and (>= j_6 0) (and (< j_6 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (not (= i_4 j_6)))))) (and (=> (= (ControlFlow 0 36) (- 0 42)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 36) (- 0 41)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 36) (- 0 40)) (< i_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)))) (=> (< i_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 36) (- 0 39)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 36) (- 0 38)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 36) (- 0 37)) (< j_6 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)))) (=> (< j_6 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (=> (= (ControlFlow 0 36) 35) anon23_correct))))))))))))))))
(let ((anon68_Else_correct  (=> (> 0 j_6) (and (=> (= (ControlFlow 0 48) 36) anon69_Then_correct) (=> (= (ControlFlow 0 48) 43) anon69_Else_correct)))))
(let ((anon68_Then_correct  (=> (>= j_6 0) (and (=> (= (ControlFlow 0 46) (- 0 47)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 46) 36) anon69_Then_correct) (=> (= (ControlFlow 0 46) 43) anon69_Else_correct)))))))
(let ((anon67_Then_correct  (=> (< i_4 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 49) 46) anon68_Then_correct) (=> (= (ControlFlow 0 49) 48) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (<= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) i_4) (and (=> (= (ControlFlow 0 45) 36) anon69_Then_correct) (=> (= (ControlFlow 0 45) 43) anon69_Else_correct)))))
(let ((anon66_Then_correct  (=> (>= i_4 0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 50) 49) anon67_Then_correct) (=> (= (ControlFlow 0 50) 45) anon67_Else_correct)))))))
(let ((anon66_Else_correct  (=> (> 0 i_4) (and (=> (= (ControlFlow 0 44) 36) anon69_Then_correct) (=> (= (ControlFlow 0 44) 43) anon69_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (forall ((i_3 Int) (j_3_1 Int) ) (!  (=> (and (>= i_3 0) (and (< i_3 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (and (>= j_3_1 0) (and (< j_3_1 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (not (= i_3 j_3_1)))))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) i_3) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) j_3_1))))
 :qid |stdinbpl.1987:20|
 :skolemid |59|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) i_3) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b) j_3_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 146) 145) anon65_Else_correct) (=> (= (ControlFlow 0 146) 50) anon66_Then_correct)) (=> (= (ControlFlow 0 146) 44) anon66_Else_correct)))))
(let ((anon15_correct true))
(let ((anon64_Else_correct  (=> (and (not (and (>= i_2 0) (and (< i_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (not (= i_2 j@@8))))))) (= (ControlFlow 0 26) 18)) anon15_correct)))
(let ((anon64_Then_correct  (=> (and (>= i_2 0) (and (< i_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (not (= i_2 j@@8)))))) (and (=> (= (ControlFlow 0 19) (- 0 25)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 19) (- 0 24)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 19) (- 0 23)) (< i_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)))) (=> (< i_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= j@@8 0)) (=> (>= j@@8 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< j@@8 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)))) (=> (< j@@8 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))))))))))))
(let ((anon63_Else_correct  (=> (> 0 j@@8) (and (=> (= (ControlFlow 0 31) 19) anon64_Then_correct) (=> (= (ControlFlow 0 31) 26) anon64_Else_correct)))))
(let ((anon63_Then_correct  (=> (>= j@@8 0) (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 29) 19) anon64_Then_correct) (=> (= (ControlFlow 0 29) 26) anon64_Else_correct)))))))
(let ((anon62_Then_correct  (=> (< i_2 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 32) 29) anon63_Then_correct) (=> (= (ControlFlow 0 32) 31) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (<= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) i_2) (and (=> (= (ControlFlow 0 28) 19) anon64_Then_correct) (=> (= (ControlFlow 0 28) 26) anon64_Else_correct)))))
(let ((anon61_Then_correct  (=> (>= i_2 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 33) 32) anon62_Then_correct) (=> (= (ControlFlow 0 33) 28) anon62_Else_correct)))))))
(let ((anon61_Else_correct  (=> (> 0 i_2) (and (=> (= (ControlFlow 0 27) 19) anon64_Then_correct) (=> (= (ControlFlow 0 27) 26) anon64_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (not (= i_1 j_1)))))) (not (= (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) i_1) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) j_1))))
 :qid |stdinbpl.1953:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) i_1) (|Seq#Index_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a) j_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 147) 146) anon60_Else_correct) (=> (= (ControlFlow 0 147) 33) anon61_Then_correct)) (=> (= (ControlFlow 0 147) 27) anon61_Else_correct)))))
(let ((anon7_correct true))
(let ((anon59_Else_correct  (=> (and (not (and (>= i_14 0) (and (< i_14 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (not (= i_14 j_5))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon59_Then_correct  (=> (and (>= i_14 0) (and (< i_14 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_14 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< i_14 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)))) (=> (< j_5 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon58_Else_correct  (=> (> 0 j_5) (and (=> (= (ControlFlow 0 14) 2) anon59_Then_correct) (=> (= (ControlFlow 0 14) 9) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (>= j_5 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 12) 2) anon59_Then_correct) (=> (= (ControlFlow 0 12) 9) anon59_Else_correct)))))))
(let ((anon57_Then_correct  (=> (< i_14 (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 15) 12) anon58_Then_correct) (=> (= (ControlFlow 0 15) 14) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (<= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) i_14) (and (=> (= (ControlFlow 0 11) 2) anon59_Then_correct) (=> (= (ControlFlow 0 11) 9) anon59_Else_correct)))))
(let ((anon56_Then_correct  (=> (>= i_14 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 16) 15) anon57_Then_correct) (=> (= (ControlFlow 0 16) 11) anon57_Else_correct)))))))
(let ((anon56_Else_correct  (=> (> 0 i_14) (and (=> (= (ControlFlow 0 10) 2) anon59_Then_correct) (=> (= (ControlFlow 0 10) 9) anon59_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_34977_19378_53#PolymorphicMapType_34977| Heap@@19) diz $allocated) (not (= diz null)))) (and (and (state Heap@@19 ZeroMask) (>= current_thread_id 0)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| ZeroMask) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 148) (- 0 151)) (HasDirectPerm_19594_42046 Mask@0 diz Ref__a)) (=> (HasDirectPerm_19594_42046 Mask@0 diz Ref__a) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@0) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 148) (- 0 150)) (HasDirectPerm_19594_42046 Mask@1 diz Ref__b)) (=> (HasDirectPerm_19594_42046 Mask@1 diz Ref__b) (=> (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_34998 (store (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_34998_19594_41894#PolymorphicMapType_34998| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_34998_19606_3370#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_53#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_35051#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_117691#PolymorphicMapType_34998| Mask@1) (|PolymorphicMapType_34998_19594_122518#PolymorphicMapType_34998| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 148) (- 0 149)) (HasDirectPerm_19594_42046 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19594_42046 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_19595| (select (|PolymorphicMapType_34977_19594_42113#PolymorphicMapType_34977| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 148) 147) anon55_Else_correct) (=> (= (ControlFlow 0 148) 16) anon56_Then_correct)) (=> (= (ControlFlow 0 148) 10) anon56_Else_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 152) 148)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
