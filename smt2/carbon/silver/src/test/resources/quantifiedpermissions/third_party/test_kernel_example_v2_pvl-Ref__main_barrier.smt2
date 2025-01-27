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
(declare-sort T@Field_35239_53 0)
(declare-sort T@Field_35252_35253 0)
(declare-sort T@Field_41286_41291 0)
(declare-sort T@Seq_41289 0)
(declare-sort T@Field_41450_3370 0)
(declare-sort T@Field_19699_118301 0)
(declare-sort T@Field_19699_118168 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_35200 0)) (((PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| (Array T@Ref T@Field_41286_41291 Real)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| (Array T@Ref T@Field_41450_3370 Real)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| (Array T@Ref T@Field_35239_53 Real)) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| (Array T@Ref T@Field_35252_35253 Real)) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| (Array T@Ref T@Field_19699_118168 Real)) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| (Array T@Ref T@Field_19699_118301 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35728 0)) (((PolymorphicMapType_35728 (|PolymorphicMapType_35728_35239_53#PolymorphicMapType_35728| (Array T@Ref T@Field_35239_53 Bool)) (|PolymorphicMapType_35728_35239_35253#PolymorphicMapType_35728| (Array T@Ref T@Field_35252_35253 Bool)) (|PolymorphicMapType_35728_35239_41291#PolymorphicMapType_35728| (Array T@Ref T@Field_41286_41291 Bool)) (|PolymorphicMapType_35728_35239_3370#PolymorphicMapType_35728| (Array T@Ref T@Field_41450_3370 Bool)) (|PolymorphicMapType_35728_35239_118168#PolymorphicMapType_35728| (Array T@Ref T@Field_19699_118168 Bool)) (|PolymorphicMapType_35728_35239_119683#PolymorphicMapType_35728| (Array T@Ref T@Field_19699_118301 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35179 0)) (((PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| (Array T@Ref T@Field_35239_53 Bool)) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| (Array T@Ref T@Field_35252_35253 T@Ref)) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| (Array T@Ref T@Field_41286_41291 T@Seq_41289)) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| (Array T@Ref T@Field_41450_3370 Int)) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| (Array T@Ref T@Field_19699_118301 T@PolymorphicMapType_35728)) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| (Array T@Ref T@Field_19699_118168 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_35239_53)
(declare-fun Ref__a () T@Field_41286_41291)
(declare-fun Ref__b () T@Field_41286_41291)
(declare-fun Ref__c () T@Field_41286_41291)
(declare-fun Ref__Integer_value () T@Field_41450_3370)
(declare-fun |Seq#Length_19700| (T@Seq_41289) Int)
(declare-fun |Seq#Drop_19700| (T@Seq_41289 Int) T@Seq_41289)
(declare-sort T@Seq_3200 0)
(declare-fun |Seq#Length_3200| (T@Seq_3200) Int)
(declare-fun |Seq#Drop_3200| (T@Seq_3200 Int) T@Seq_3200)
(declare-fun succHeap (T@PolymorphicMapType_35179 T@PolymorphicMapType_35179) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_35179 T@PolymorphicMapType_35179) Bool)
(declare-fun state (T@PolymorphicMapType_35179 T@PolymorphicMapType_35200) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_35200) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_35728)
(declare-fun |Seq#Index_19700| (T@Seq_41289 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3200| (T@Seq_3200 Int) Int)
(declare-fun |Seq#Empty_19700| () T@Seq_41289)
(declare-fun |Seq#Empty_3200| () T@Seq_3200)
(declare-fun |Seq#Update_19700| (T@Seq_41289 Int T@Ref) T@Seq_41289)
(declare-fun |Seq#Update_3200| (T@Seq_3200 Int Int) T@Seq_3200)
(declare-fun |Seq#Take_19700| (T@Seq_41289 Int) T@Seq_41289)
(declare-fun |Seq#Take_3200| (T@Seq_3200 Int) T@Seq_3200)
(declare-fun |Seq#Contains_3200| (T@Seq_3200 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3200)
(declare-fun |Seq#Contains_41289| (T@Seq_41289 T@Ref) Bool)
(declare-fun |Seq#Skolem_41289| (T@Seq_41289 T@Ref) Int)
(declare-fun |Seq#Skolem_3200| (T@Seq_3200 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_35179 T@PolymorphicMapType_35179 T@PolymorphicMapType_35200) Bool)
(declare-fun IsPredicateField_19699_118259 (T@Field_19699_118168) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19699 (T@Field_19699_118168) T@Field_19699_118301)
(declare-fun HasDirectPerm_19699_118232 (T@PolymorphicMapType_35200 T@Ref T@Field_19699_118168) Bool)
(declare-fun IsWandField_19699_120210 (T@Field_19699_118168) Bool)
(declare-fun WandMaskField_19699 (T@Field_19699_118168) T@Field_19699_118301)
(declare-fun |Seq#Singleton_19700| (T@Ref) T@Seq_41289)
(declare-fun |Seq#Singleton_3200| (Int) T@Seq_3200)
(declare-fun |Seq#Append_41289| (T@Seq_41289 T@Seq_41289) T@Seq_41289)
(declare-fun |Seq#Append_3200| (T@Seq_3200 T@Seq_3200) T@Seq_3200)
(declare-fun dummyHeap () T@PolymorphicMapType_35179)
(declare-fun ZeroMask () T@PolymorphicMapType_35200)
(declare-fun InsidePredicate_35239_35239 (T@Field_19699_118168 T@FrameType T@Field_19699_118168 T@FrameType) Bool)
(declare-fun IsPredicateField_19699_41313 (T@Field_41286_41291) Bool)
(declare-fun IsWandField_19699_41339 (T@Field_41286_41291) Bool)
(declare-fun IsPredicateField_19711_3370 (T@Field_41450_3370) Bool)
(declare-fun IsWandField_19711_3370 (T@Field_41450_3370) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19699_124344 (T@Field_19699_118301) Bool)
(declare-fun IsWandField_19699_124360 (T@Field_19699_118301) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19699_35253 (T@Field_35252_35253) Bool)
(declare-fun IsWandField_19699_35253 (T@Field_35252_35253) Bool)
(declare-fun IsPredicateField_19699_53 (T@Field_35239_53) Bool)
(declare-fun IsWandField_19699_53 (T@Field_35239_53) Bool)
(declare-fun HasDirectPerm_19699_124881 (T@PolymorphicMapType_35200 T@Ref T@Field_19699_118301) Bool)
(declare-fun HasDirectPerm_19699_35253 (T@PolymorphicMapType_35200 T@Ref T@Field_35252_35253) Bool)
(declare-fun HasDirectPerm_19699_53 (T@PolymorphicMapType_35200 T@Ref T@Field_35239_53) Bool)
(declare-fun HasDirectPerm_19711_3370 (T@PolymorphicMapType_35200 T@Ref T@Field_41450_3370) Bool)
(declare-fun HasDirectPerm_19699_42251 (T@PolymorphicMapType_35200 T@Ref T@Field_41286_41291) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_35200 T@PolymorphicMapType_35200 T@PolymorphicMapType_35200) Bool)
(declare-fun |Seq#Equal_3200| (T@Seq_3200 T@Seq_3200) Bool)
(declare-fun |Seq#Equal_19700| (T@Seq_41289 T@Seq_41289) Bool)
(declare-fun |Seq#ContainsTrigger_19700| (T@Seq_41289 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3200| (T@Seq_3200 Int) Bool)
(declare-fun |Seq#SkolemDiff_41289| (T@Seq_41289 T@Seq_41289) Int)
(declare-fun |Seq#SkolemDiff_3200| (T@Seq_3200 T@Seq_3200) Int)
(assert (distinct Ref__a Ref__b Ref__c)
)
(assert (forall ((s T@Seq_41289) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_19700| s)) (= (|Seq#Length_19700| (|Seq#Drop_19700| s n)) (- (|Seq#Length_19700| s) n))) (=> (< (|Seq#Length_19700| s) n) (= (|Seq#Length_19700| (|Seq#Drop_19700| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_19700| (|Seq#Drop_19700| s n)) (|Seq#Length_19700| s))))
 :qid |stdinbpl.327:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_19700| (|Seq#Drop_19700| s n)))
 :pattern ( (|Seq#Length_19700| s) (|Seq#Drop_19700| s n))
)))
(assert (forall ((s@@0 T@Seq_3200) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3200| s@@0)) (= (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)) (- (|Seq#Length_3200| s@@0) n@@0))) (=> (< (|Seq#Length_3200| s@@0) n@@0) (= (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)) (|Seq#Length_3200| s@@0))))
 :qid |stdinbpl.327:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3200| (|Seq#Drop_3200| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3200| s@@0) (|Seq#Drop_3200| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_35179) (Heap1 T@PolymorphicMapType_35179) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_35179) (Mask T@PolymorphicMapType_35200) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_35179) (Heap1@@0 T@PolymorphicMapType_35179) (Heap2 T@PolymorphicMapType_35179) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19699_118301) ) (!  (not (select (|PolymorphicMapType_35728_35239_119683#PolymorphicMapType_35728| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35728_35239_119683#PolymorphicMapType_35728| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19699_118168) ) (!  (not (select (|PolymorphicMapType_35728_35239_118168#PolymorphicMapType_35728| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35728_35239_118168#PolymorphicMapType_35728| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_41450_3370) ) (!  (not (select (|PolymorphicMapType_35728_35239_3370#PolymorphicMapType_35728| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35728_35239_3370#PolymorphicMapType_35728| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41286_41291) ) (!  (not (select (|PolymorphicMapType_35728_35239_41291#PolymorphicMapType_35728| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35728_35239_41291#PolymorphicMapType_35728| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_35252_35253) ) (!  (not (select (|PolymorphicMapType_35728_35239_35253#PolymorphicMapType_35728| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35728_35239_35253#PolymorphicMapType_35728| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_35239_53) ) (!  (not (select (|PolymorphicMapType_35728_35239_53#PolymorphicMapType_35728| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35728_35239_53#PolymorphicMapType_35728| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_41289) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_19700| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_19700| (|Seq#Drop_19700| s@@1 n@@1) j) (|Seq#Index_19700| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.348:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_19700| (|Seq#Drop_19700| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3200) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3200| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3200| (|Seq#Drop_3200| s@@2 n@@2) j@@0) (|Seq#Index_3200| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.348:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3200| (|Seq#Drop_3200| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_19700| |Seq#Empty_19700|) 0))
(assert (= (|Seq#Length_3200| |Seq#Empty_3200|) 0))
(assert (forall ((s@@3 T@Seq_41289) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_19700| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_19700| (|Seq#Update_19700| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_19700| (|Seq#Update_19700| s@@3 i v) n@@3) (|Seq#Index_19700| s@@3 n@@3)))))
 :qid |stdinbpl.303:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_19700| (|Seq#Update_19700| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_19700| s@@3 n@@3) (|Seq#Update_19700| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3200) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3200| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3200| (|Seq#Update_3200| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3200| (|Seq#Update_3200| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3200| s@@4 n@@4)))))
 :qid |stdinbpl.303:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3200| (|Seq#Update_3200| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3200| s@@4 n@@4) (|Seq#Update_3200| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_41289) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_19700| s@@5)) (= (|Seq#Length_19700| (|Seq#Take_19700| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_19700| s@@5) n@@5) (= (|Seq#Length_19700| (|Seq#Take_19700| s@@5 n@@5)) (|Seq#Length_19700| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_19700| (|Seq#Take_19700| s@@5 n@@5)) 0)))
 :qid |stdinbpl.314:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_19700| (|Seq#Take_19700| s@@5 n@@5)))
 :pattern ( (|Seq#Take_19700| s@@5 n@@5) (|Seq#Length_19700| s@@5))
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
(assert (forall ((s@@7 T@Seq_41289) (x T@Ref) ) (!  (=> (|Seq#Contains_41289| s@@7 x) (and (and (<= 0 (|Seq#Skolem_41289| s@@7 x)) (< (|Seq#Skolem_41289| s@@7 x) (|Seq#Length_19700| s@@7))) (= (|Seq#Index_19700| s@@7 (|Seq#Skolem_41289| s@@7 x)) x)))
 :qid |stdinbpl.446:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_41289| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3200) (x@@0 Int) ) (!  (=> (|Seq#Contains_3200| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3200| s@@8 x@@0)) (< (|Seq#Skolem_3200| s@@8 x@@0) (|Seq#Length_3200| s@@8))) (= (|Seq#Index_3200| s@@8 (|Seq#Skolem_3200| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.446:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3200| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_41289) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_19700| s@@9 n@@7) s@@9))
 :qid |stdinbpl.430:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_19700| s@@9 n@@7))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_35179) (ExhaleHeap T@PolymorphicMapType_35179) (Mask@@0 T@PolymorphicMapType_35200) (pm_f_37 T@Field_19699_118168) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19699_118232 Mask@@0 null pm_f_37) (IsPredicateField_19699_118259 pm_f_37)) (= (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@0) null (PredicateMaskField_19699 pm_f_37)) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap) null (PredicateMaskField_19699 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_19699_118259 pm_f_37) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap) null (PredicateMaskField_19699 pm_f_37)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_35179) (ExhaleHeap@@0 T@PolymorphicMapType_35179) (Mask@@1 T@PolymorphicMapType_35200) (pm_f_37@@0 T@Field_19699_118168) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19699_118232 Mask@@1 null pm_f_37@@0) (IsWandField_19699_120210 pm_f_37@@0)) (= (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@1) null (WandMaskField_19699 pm_f_37@@0)) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@0) null (WandMaskField_19699 pm_f_37@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_19699_120210 pm_f_37@@0) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@0) null (WandMaskField_19699 pm_f_37@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_41289| (|Seq#Singleton_19700| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.571:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_41289| (|Seq#Singleton_19700| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3200| (|Seq#Singleton_3200| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.571:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3200| (|Seq#Singleton_3200| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_41289) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_19700| s@@11))) (= (|Seq#Index_19700| (|Seq#Take_19700| s@@11 n@@9) j@@3) (|Seq#Index_19700| s@@11 j@@3)))
 :qid |stdinbpl.322:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_19700| (|Seq#Take_19700| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_19700| s@@11 j@@3) (|Seq#Take_19700| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3200) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3200| s@@12))) (= (|Seq#Index_3200| (|Seq#Take_3200| s@@12 n@@10) j@@4) (|Seq#Index_3200| s@@12 j@@4)))
 :qid |stdinbpl.322:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3200| (|Seq#Take_3200| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3200| s@@12 j@@4) (|Seq#Take_3200| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_41289) (t T@Seq_41289) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_19700| s@@13))) (< n@@11 (|Seq#Length_19700| (|Seq#Append_41289| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_19700| s@@13)) (|Seq#Length_19700| s@@13)) n@@11) (= (|Seq#Take_19700| (|Seq#Append_41289| s@@13 t) n@@11) (|Seq#Append_41289| s@@13 (|Seq#Take_19700| t (|Seq#Sub| n@@11 (|Seq#Length_19700| s@@13)))))))
 :qid |stdinbpl.407:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_19700| (|Seq#Append_41289| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3200) (t@@0 T@Seq_3200) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3200| s@@14))) (< n@@12 (|Seq#Length_3200| (|Seq#Append_3200| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3200| s@@14)) (|Seq#Length_3200| s@@14)) n@@12) (= (|Seq#Take_3200| (|Seq#Append_3200| s@@14 t@@0) n@@12) (|Seq#Append_3200| s@@14 (|Seq#Take_3200| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3200| s@@14)))))))
 :qid |stdinbpl.407:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3200| (|Seq#Append_3200| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_35179) (ExhaleHeap@@1 T@PolymorphicMapType_35179) (Mask@@2 T@PolymorphicMapType_35200) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@2) o_20 $allocated) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@1) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@1) o_20 $allocated))
)))
(assert (forall ((p T@Field_19699_118168) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_35239_35239 p v_1 p w))
 :qid |stdinbpl.225:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_35239_35239 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_41289) (s1 T@Seq_41289) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_19700|)) (not (= s1 |Seq#Empty_19700|))) (<= (|Seq#Length_19700| s0) n@@13)) (< n@@13 (|Seq#Length_19700| (|Seq#Append_41289| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_19700| s0)) (|Seq#Length_19700| s0)) n@@13) (= (|Seq#Index_19700| (|Seq#Append_41289| s0 s1) n@@13) (|Seq#Index_19700| s1 (|Seq#Sub| n@@13 (|Seq#Length_19700| s0))))))
 :qid |stdinbpl.294:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_19700| (|Seq#Append_41289| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3200) (s1@@0 T@Seq_3200) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3200|)) (not (= s1@@0 |Seq#Empty_3200|))) (<= (|Seq#Length_3200| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3200| (|Seq#Append_3200| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3200| s0@@0)) (|Seq#Length_3200| s0@@0)) n@@14) (= (|Seq#Index_3200| (|Seq#Append_3200| s0@@0 s1@@0) n@@14) (|Seq#Index_3200| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3200| s0@@0))))))
 :qid |stdinbpl.294:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3200| (|Seq#Append_3200| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_19699_41313 Ref__a)))
(assert  (not (IsWandField_19699_41339 Ref__a)))
(assert  (not (IsPredicateField_19699_41313 Ref__b)))
(assert  (not (IsWandField_19699_41339 Ref__b)))
(assert  (not (IsPredicateField_19699_41313 Ref__c)))
(assert  (not (IsWandField_19699_41339 Ref__c)))
(assert  (not (IsPredicateField_19711_3370 Ref__Integer_value)))
(assert  (not (IsWandField_19711_3370 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_35179) (ExhaleHeap@@2 T@PolymorphicMapType_35179) (Mask@@3 T@PolymorphicMapType_35200) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_35200) (o_2@@5 T@Ref) (f_4@@5 T@Field_19699_118301) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_19699_124344 f_4@@5))) (not (IsWandField_19699_124360 f_4@@5))) (<= (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_35200) (o_2@@6 T@Ref) (f_4@@6 T@Field_19699_118168) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_19699_118259 f_4@@6))) (not (IsWandField_19699_120210 f_4@@6))) (<= (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_35200) (o_2@@7 T@Ref) (f_4@@7 T@Field_35252_35253) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_19699_35253 f_4@@7))) (not (IsWandField_19699_35253 f_4@@7))) (<= (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_35200) (o_2@@8 T@Ref) (f_4@@8 T@Field_35239_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_19699_53 f_4@@8))) (not (IsWandField_19699_53 f_4@@8))) (<= (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_35200) (o_2@@9 T@Ref) (f_4@@9 T@Field_41450_3370) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_19711_3370 f_4@@9))) (not (IsWandField_19711_3370 f_4@@9))) (<= (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_35200) (o_2@@10 T@Ref) (f_4@@10 T@Field_41286_41291) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_19699_41313 f_4@@10))) (not (IsWandField_19699_41339 f_4@@10))) (<= (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_35200) (o_2@@11 T@Ref) (f_4@@11 T@Field_19699_118301) ) (! (= (HasDirectPerm_19699_124881 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19699_124881 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_35200) (o_2@@12 T@Ref) (f_4@@12 T@Field_19699_118168) ) (! (= (HasDirectPerm_19699_118232 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19699_118232 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_35200) (o_2@@13 T@Ref) (f_4@@13 T@Field_35252_35253) ) (! (= (HasDirectPerm_19699_35253 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19699_35253 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_35200) (o_2@@14 T@Ref) (f_4@@14 T@Field_35239_53) ) (! (= (HasDirectPerm_19699_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19699_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_35200) (o_2@@15 T@Ref) (f_4@@15 T@Field_41450_3370) ) (! (= (HasDirectPerm_19711_3370 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19711_3370 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_35200) (o_2@@16 T@Ref) (f_4@@16 T@Field_41286_41291) ) (! (= (HasDirectPerm_19699_42251 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19699_42251 Mask@@15 o_2@@16 f_4@@16))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_35179) (ExhaleHeap@@3 T@PolymorphicMapType_35179) (Mask@@16 T@PolymorphicMapType_35200) (o_20@@0 T@Ref) (f_29 T@Field_19699_118301) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_19699_124881 Mask@@16 o_20@@0 f_29) (= (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@4) o_20@@0 f_29) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@3) o_20@@0 f_29))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@3) o_20@@0 f_29))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_35179) (ExhaleHeap@@4 T@PolymorphicMapType_35179) (Mask@@17 T@PolymorphicMapType_35200) (o_20@@1 T@Ref) (f_29@@0 T@Field_19699_118168) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_19699_118232 Mask@@17 o_20@@1 f_29@@0) (= (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@5) o_20@@1 f_29@@0) (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| ExhaleHeap@@4) o_20@@1 f_29@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| ExhaleHeap@@4) o_20@@1 f_29@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_35179) (ExhaleHeap@@5 T@PolymorphicMapType_35179) (Mask@@18 T@PolymorphicMapType_35200) (o_20@@2 T@Ref) (f_29@@1 T@Field_35252_35253) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_19699_35253 Mask@@18 o_20@@2 f_29@@1) (= (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@6) o_20@@2 f_29@@1) (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| ExhaleHeap@@5) o_20@@2 f_29@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| ExhaleHeap@@5) o_20@@2 f_29@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_35179) (ExhaleHeap@@6 T@PolymorphicMapType_35179) (Mask@@19 T@PolymorphicMapType_35200) (o_20@@3 T@Ref) (f_29@@2 T@Field_35239_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_19699_53 Mask@@19 o_20@@3 f_29@@2) (= (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@7) o_20@@3 f_29@@2) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@6) o_20@@3 f_29@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@6) o_20@@3 f_29@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_35179) (ExhaleHeap@@7 T@PolymorphicMapType_35179) (Mask@@20 T@PolymorphicMapType_35200) (o_20@@4 T@Ref) (f_29@@3 T@Field_41450_3370) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_19711_3370 Mask@@20 o_20@@4 f_29@@3) (= (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@8) o_20@@4 f_29@@3) (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| ExhaleHeap@@7) o_20@@4 f_29@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| ExhaleHeap@@7) o_20@@4 f_29@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_35179) (ExhaleHeap@@8 T@PolymorphicMapType_35179) (Mask@@21 T@PolymorphicMapType_35200) (o_20@@5 T@Ref) (f_29@@4 T@Field_41286_41291) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_19699_42251 Mask@@21 o_20@@5 f_29@@4) (= (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@9) o_20@@5 f_29@@4) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| ExhaleHeap@@8) o_20@@5 f_29@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| ExhaleHeap@@8) o_20@@5 f_29@@4))
)))
(assert (forall ((s0@@1 T@Seq_41289) (s1@@1 T@Seq_41289) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_19700|)) (not (= s1@@1 |Seq#Empty_19700|))) (= (|Seq#Length_19700| (|Seq#Append_41289| s0@@1 s1@@1)) (+ (|Seq#Length_19700| s0@@1) (|Seq#Length_19700| s1@@1))))
 :qid |stdinbpl.263:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_19700| (|Seq#Append_41289| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3200) (s1@@2 T@Seq_3200) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3200|)) (not (= s1@@2 |Seq#Empty_3200|))) (= (|Seq#Length_3200| (|Seq#Append_3200| s0@@2 s1@@2)) (+ (|Seq#Length_3200| s0@@2) (|Seq#Length_3200| s1@@2))))
 :qid |stdinbpl.263:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3200| (|Seq#Append_3200| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19699_118301) ) (! (= (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_19699_118168) ) (! (= (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_35252_35253) ) (! (= (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_35239_53) ) (! (= (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_41450_3370) ) (! (= (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_41286_41291) ) (! (= (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_41289) (t@@1 T@Seq_41289) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_19700| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_19700| s@@15)) (|Seq#Length_19700| s@@15)) n@@15) (= (|Seq#Drop_19700| (|Seq#Append_41289| s@@15 t@@1) n@@15) (|Seq#Drop_19700| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_19700| s@@15))))))
 :qid |stdinbpl.420:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_19700| (|Seq#Append_41289| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3200) (t@@2 T@Seq_3200) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3200| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3200| s@@16)) (|Seq#Length_3200| s@@16)) n@@16) (= (|Seq#Drop_3200| (|Seq#Append_3200| s@@16 t@@2) n@@16) (|Seq#Drop_3200| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3200| s@@16))))))
 :qid |stdinbpl.420:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3200| (|Seq#Append_3200| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_35200) (SummandMask1 T@PolymorphicMapType_35200) (SummandMask2 T@PolymorphicMapType_35200) (o_2@@23 T@Ref) (f_4@@23 T@Field_19699_118301) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_35200) (SummandMask1@@0 T@PolymorphicMapType_35200) (SummandMask2@@0 T@PolymorphicMapType_35200) (o_2@@24 T@Ref) (f_4@@24 T@Field_19699_118168) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_35200) (SummandMask1@@1 T@PolymorphicMapType_35200) (SummandMask2@@1 T@PolymorphicMapType_35200) (o_2@@25 T@Ref) (f_4@@25 T@Field_35252_35253) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_35200) (SummandMask1@@2 T@PolymorphicMapType_35200) (SummandMask2@@2 T@PolymorphicMapType_35200) (o_2@@26 T@Ref) (f_4@@26 T@Field_35239_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_35200) (SummandMask1@@3 T@PolymorphicMapType_35200) (SummandMask2@@3 T@PolymorphicMapType_35200) (o_2@@27 T@Ref) (f_4@@27 T@Field_41450_3370) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_35200) (SummandMask1@@4 T@PolymorphicMapType_35200) (SummandMask2@@4 T@PolymorphicMapType_35200) (o_2@@28 T@Ref) (f_4@@28 T@Field_41286_41291) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| SummandMask2@@4) o_2@@28 f_4@@28))
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
(assert (forall ((a@@0 T@Seq_41289) (b@@0 T@Seq_41289) ) (!  (=> (|Seq#Equal_19700| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.558:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_19700| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_41289) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_19700| s@@17))) (|Seq#ContainsTrigger_19700| s@@17 (|Seq#Index_19700| s@@17 i@@3)))
 :qid |stdinbpl.451:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_19700| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3200) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3200| s@@18))) (|Seq#ContainsTrigger_3200| s@@18 (|Seq#Index_3200| s@@18 i@@4)))
 :qid |stdinbpl.451:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3200| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_41289) (s1@@3 T@Seq_41289) ) (!  (and (=> (= s0@@3 |Seq#Empty_19700|) (= (|Seq#Append_41289| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_19700|) (= (|Seq#Append_41289| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.269:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_41289| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3200) (s1@@4 T@Seq_3200) ) (!  (and (=> (= s0@@4 |Seq#Empty_3200|) (= (|Seq#Append_3200| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3200|) (= (|Seq#Append_3200| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.269:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3200| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_19700| (|Seq#Singleton_19700| t@@3) 0) t@@3)
 :qid |stdinbpl.273:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_19700| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3200| (|Seq#Singleton_3200| t@@4) 0) t@@4)
 :qid |stdinbpl.273:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3200| t@@4))
)))
(assert (forall ((s@@19 T@Seq_41289) ) (! (<= 0 (|Seq#Length_19700| s@@19))
 :qid |stdinbpl.252:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_19700| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3200) ) (! (<= 0 (|Seq#Length_3200| s@@20))
 :qid |stdinbpl.252:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3200| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_35179) (ExhaleHeap@@9 T@PolymorphicMapType_35179) (Mask@@22 T@PolymorphicMapType_35200) (pm_f_37@@1 T@Field_19699_118168) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_19699_118232 Mask@@22 null pm_f_37@@1) (IsPredicateField_19699_118259 pm_f_37@@1)) (and (and (and (and (and (forall ((o2_37 T@Ref) (f_29@@5 T@Field_35239_53) ) (!  (=> (select (|PolymorphicMapType_35728_35239_53#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) null (PredicateMaskField_19699 pm_f_37@@1))) o2_37 f_29@@5) (= (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@10) o2_37 f_29@@5) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37 f_29@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37 f_29@@5))
)) (forall ((o2_37@@0 T@Ref) (f_29@@6 T@Field_35252_35253) ) (!  (=> (select (|PolymorphicMapType_35728_35239_35253#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) null (PredicateMaskField_19699 pm_f_37@@1))) o2_37@@0 f_29@@6) (= (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@10) o2_37@@0 f_29@@6) (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@0 f_29@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@0 f_29@@6))
))) (forall ((o2_37@@1 T@Ref) (f_29@@7 T@Field_41286_41291) ) (!  (=> (select (|PolymorphicMapType_35728_35239_41291#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) null (PredicateMaskField_19699 pm_f_37@@1))) o2_37@@1 f_29@@7) (= (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@10) o2_37@@1 f_29@@7) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@1 f_29@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@1 f_29@@7))
))) (forall ((o2_37@@2 T@Ref) (f_29@@8 T@Field_41450_3370) ) (!  (=> (select (|PolymorphicMapType_35728_35239_3370#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) null (PredicateMaskField_19699 pm_f_37@@1))) o2_37@@2 f_29@@8) (= (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@10) o2_37@@2 f_29@@8) (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@2 f_29@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@2 f_29@@8))
))) (forall ((o2_37@@3 T@Ref) (f_29@@9 T@Field_19699_118168) ) (!  (=> (select (|PolymorphicMapType_35728_35239_118168#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) null (PredicateMaskField_19699 pm_f_37@@1))) o2_37@@3 f_29@@9) (= (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@10) o2_37@@3 f_29@@9) (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@3 f_29@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@3 f_29@@9))
))) (forall ((o2_37@@4 T@Ref) (f_29@@10 T@Field_19699_118301) ) (!  (=> (select (|PolymorphicMapType_35728_35239_119683#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) null (PredicateMaskField_19699 pm_f_37@@1))) o2_37@@4 f_29@@10) (= (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@10) o2_37@@4 f_29@@10) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@4 f_29@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@9) o2_37@@4 f_29@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_19699_118259 pm_f_37@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_35179) (ExhaleHeap@@10 T@PolymorphicMapType_35179) (Mask@@23 T@PolymorphicMapType_35200) (pm_f_37@@2 T@Field_19699_118168) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_19699_118232 Mask@@23 null pm_f_37@@2) (IsWandField_19699_120210 pm_f_37@@2)) (and (and (and (and (and (forall ((o2_37@@5 T@Ref) (f_29@@11 T@Field_35239_53) ) (!  (=> (select (|PolymorphicMapType_35728_35239_53#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) null (WandMaskField_19699 pm_f_37@@2))) o2_37@@5 f_29@@11) (= (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@11) o2_37@@5 f_29@@11) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@5 f_29@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@5 f_29@@11))
)) (forall ((o2_37@@6 T@Ref) (f_29@@12 T@Field_35252_35253) ) (!  (=> (select (|PolymorphicMapType_35728_35239_35253#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) null (WandMaskField_19699 pm_f_37@@2))) o2_37@@6 f_29@@12) (= (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@11) o2_37@@6 f_29@@12) (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@6 f_29@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@6 f_29@@12))
))) (forall ((o2_37@@7 T@Ref) (f_29@@13 T@Field_41286_41291) ) (!  (=> (select (|PolymorphicMapType_35728_35239_41291#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) null (WandMaskField_19699 pm_f_37@@2))) o2_37@@7 f_29@@13) (= (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@11) o2_37@@7 f_29@@13) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@7 f_29@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@7 f_29@@13))
))) (forall ((o2_37@@8 T@Ref) (f_29@@14 T@Field_41450_3370) ) (!  (=> (select (|PolymorphicMapType_35728_35239_3370#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) null (WandMaskField_19699 pm_f_37@@2))) o2_37@@8 f_29@@14) (= (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@11) o2_37@@8 f_29@@14) (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@8 f_29@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@8 f_29@@14))
))) (forall ((o2_37@@9 T@Ref) (f_29@@15 T@Field_19699_118168) ) (!  (=> (select (|PolymorphicMapType_35728_35239_118168#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) null (WandMaskField_19699 pm_f_37@@2))) o2_37@@9 f_29@@15) (= (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@11) o2_37@@9 f_29@@15) (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@9 f_29@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@9 f_29@@15))
))) (forall ((o2_37@@10 T@Ref) (f_29@@16 T@Field_19699_118301) ) (!  (=> (select (|PolymorphicMapType_35728_35239_119683#PolymorphicMapType_35728| (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) null (WandMaskField_19699 pm_f_37@@2))) o2_37@@10 f_29@@16) (= (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@11) o2_37@@10 f_29@@16) (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@10 f_29@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| ExhaleHeap@@10) o2_37@@10 f_29@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_19699_120210 pm_f_37@@2))
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
(assert (forall ((s0@@6 T@Seq_41289) (s1@@6 T@Seq_41289) ) (!  (=> (|Seq#Equal_19700| s0@@6 s1@@6) (and (= (|Seq#Length_19700| s0@@6) (|Seq#Length_19700| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_19700| s0@@6))) (= (|Seq#Index_19700| s0@@6 j@@7) (|Seq#Index_19700| s1@@6 j@@7)))
 :qid |stdinbpl.548:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_19700| s0@@6 j@@7))
 :pattern ( (|Seq#Index_19700| s1@@6 j@@7))
))))
 :qid |stdinbpl.545:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_19700| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_19700| (|Seq#Singleton_19700| t@@5)) 1)
 :qid |stdinbpl.260:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_19700| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3200| (|Seq#Singleton_3200| t@@6)) 1)
 :qid |stdinbpl.260:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3200| t@@6))
)))
(assert (forall ((s@@21 T@Seq_41289) (t@@7 T@Seq_41289) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_19700| s@@21))) (= (|Seq#Take_19700| (|Seq#Append_41289| s@@21 t@@7) n@@17) (|Seq#Take_19700| s@@21 n@@17)))
 :qid |stdinbpl.402:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_19700| (|Seq#Append_41289| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3200) (t@@8 T@Seq_3200) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3200| s@@22))) (= (|Seq#Take_3200| (|Seq#Append_3200| s@@22 t@@8) n@@18) (|Seq#Take_3200| s@@22 n@@18)))
 :qid |stdinbpl.402:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3200| (|Seq#Append_3200| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_41289) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_19700| s@@23))) (= (|Seq#Length_19700| (|Seq#Update_19700| s@@23 i@@5 v@@2)) (|Seq#Length_19700| s@@23)))
 :qid |stdinbpl.301:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_19700| (|Seq#Update_19700| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_19700| s@@23) (|Seq#Update_19700| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3200) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3200| s@@24))) (= (|Seq#Length_3200| (|Seq#Update_3200| s@@24 i@@6 v@@3)) (|Seq#Length_3200| s@@24)))
 :qid |stdinbpl.301:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3200| (|Seq#Update_3200| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3200| s@@24) (|Seq#Update_3200| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_35179) (o_13 T@Ref) (f_66 T@Field_19699_118168) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@12) (store (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@12) o_13 f_66 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@12) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@12) (store (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@12) o_13 f_66 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_35179) (o_13@@0 T@Ref) (f_66@@0 T@Field_19699_118301) (v@@5 T@PolymorphicMapType_35728) ) (! (succHeap Heap@@13 (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@13) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@13) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@13) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@13) (store (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@13) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@13) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@13) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@13) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@13) (store (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@13) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_35179) (o_13@@1 T@Ref) (f_66@@1 T@Field_41450_3370) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@14) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@14) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@14) (store (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@14) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@14) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@14) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@14) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@14) (store (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@14) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@14) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_35179) (o_13@@2 T@Ref) (f_66@@2 T@Field_41286_41291) (v@@7 T@Seq_41289) ) (! (succHeap Heap@@15 (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@15) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@15) (store (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@15) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@15) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@15) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@15) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@15) (store (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@15) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@15) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@15) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_35179) (o_13@@3 T@Ref) (f_66@@3 T@Field_35252_35253) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@16) (store (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@16) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@16) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@16) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@16) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35179 (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@16) (store (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@16) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@16) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@16) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@16) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_35179) (o_13@@4 T@Ref) (f_66@@4 T@Field_35239_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_35179 (store (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@17) o_13@@4 f_66@@4 v@@9) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_35179 (store (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@17) o_13@@4 f_66@@4 v@@9) (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_19699_118345#PolymorphicMapType_35179| Heap@@17) (|PolymorphicMapType_35179_35239_118168#PolymorphicMapType_35179| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_41289) (t@@9 T@Seq_41289) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_19700| s@@25))) (= (|Seq#Drop_19700| (|Seq#Append_41289| s@@25 t@@9) n@@19) (|Seq#Append_41289| (|Seq#Drop_19700| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.416:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_19700| (|Seq#Append_41289| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3200) (t@@10 T@Seq_3200) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3200| s@@26))) (= (|Seq#Drop_3200| (|Seq#Append_3200| s@@26 t@@10) n@@20) (|Seq#Append_3200| (|Seq#Drop_3200| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.416:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3200| (|Seq#Append_3200| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_41289) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_19700| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_19700| (|Seq#Drop_19700| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_19700| s@@27 i@@7))))
 :qid |stdinbpl.352:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_19700| s@@27 n@@21) (|Seq#Index_19700| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3200) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3200| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3200| (|Seq#Drop_3200| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3200| s@@28 i@@8))))
 :qid |stdinbpl.352:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3200| s@@28 n@@22) (|Seq#Index_3200| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_41289) (s1@@7 T@Seq_41289) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_19700|)) (not (= s1@@7 |Seq#Empty_19700|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_19700| s0@@7))) (= (|Seq#Index_19700| (|Seq#Append_41289| s0@@7 s1@@7) n@@23) (|Seq#Index_19700| s0@@7 n@@23)))
 :qid |stdinbpl.292:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_19700| (|Seq#Append_41289| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_19700| s0@@7 n@@23) (|Seq#Append_41289| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3200) (s1@@8 T@Seq_3200) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3200|)) (not (= s1@@8 |Seq#Empty_3200|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3200| s0@@8))) (= (|Seq#Index_3200| (|Seq#Append_3200| s0@@8 s1@@8) n@@24) (|Seq#Index_3200| s0@@8 n@@24)))
 :qid |stdinbpl.292:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3200| (|Seq#Append_3200| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3200| s0@@8 n@@24) (|Seq#Append_3200| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_41289) (s1@@9 T@Seq_41289) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_19700|)) (not (= s1@@9 |Seq#Empty_19700|))) (<= 0 m)) (< m (|Seq#Length_19700| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_19700| s0@@9)) (|Seq#Length_19700| s0@@9)) m) (= (|Seq#Index_19700| (|Seq#Append_41289| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_19700| s0@@9))) (|Seq#Index_19700| s1@@9 m))))
 :qid |stdinbpl.297:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_19700| s1@@9 m) (|Seq#Append_41289| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3200) (s1@@10 T@Seq_3200) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3200|)) (not (= s1@@10 |Seq#Empty_3200|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3200| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3200| s0@@10)) (|Seq#Length_3200| s0@@10)) m@@0) (= (|Seq#Index_3200| (|Seq#Append_3200| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3200| s0@@10))) (|Seq#Index_3200| s1@@10 m@@0))))
 :qid |stdinbpl.297:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3200| s1@@10 m@@0) (|Seq#Append_3200| s0@@10 s1@@10))
)))
(assert (forall ((o_13@@5 T@Ref) (f_20 T@Field_35252_35253) (Heap@@18 T@PolymorphicMapType_35179) ) (!  (=> (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@18) o_13@@5 $allocated) (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@18) (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@18) o_13@@5 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_35179_19486_19487#PolymorphicMapType_35179| Heap@@18) o_13@@5 f_20))
)))
(assert (forall ((s@@29 T@Seq_41289) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_19700| s@@29))) (= (|Seq#Index_19700| s@@29 i@@9) x@@3)) (|Seq#Contains_41289| s@@29 x@@3))
 :qid |stdinbpl.449:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_41289| s@@29 x@@3) (|Seq#Index_19700| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3200) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3200| s@@30))) (= (|Seq#Index_3200| s@@30 i@@10) x@@4)) (|Seq#Contains_3200| s@@30 x@@4))
 :qid |stdinbpl.449:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3200| s@@30 x@@4) (|Seq#Index_3200| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_41289) (s1@@11 T@Seq_41289) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_19700| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19700| s0@@11 s1@@11))) (not (= (|Seq#Length_19700| s0@@11) (|Seq#Length_19700| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_19700| s0@@11 s1@@11))) (= (|Seq#Length_19700| s0@@11) (|Seq#Length_19700| s1@@11))) (= (|Seq#SkolemDiff_41289| s0@@11 s1@@11) (|Seq#SkolemDiff_41289| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_41289| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_41289| s0@@11 s1@@11) (|Seq#Length_19700| s0@@11))) (not (= (|Seq#Index_19700| s0@@11 (|Seq#SkolemDiff_41289| s0@@11 s1@@11)) (|Seq#Index_19700| s1@@11 (|Seq#SkolemDiff_41289| s0@@11 s1@@11))))))
 :qid |stdinbpl.553:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_19700| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3200) (s1@@12 T@Seq_3200) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3200| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3200| s0@@12 s1@@12))) (not (= (|Seq#Length_3200| s0@@12) (|Seq#Length_3200| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3200| s0@@12 s1@@12))) (= (|Seq#Length_3200| s0@@12) (|Seq#Length_3200| s1@@12))) (= (|Seq#SkolemDiff_3200| s0@@12 s1@@12) (|Seq#SkolemDiff_3200| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3200| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3200| s0@@12 s1@@12) (|Seq#Length_3200| s0@@12))) (not (= (|Seq#Index_3200| s0@@12 (|Seq#SkolemDiff_3200| s0@@12 s1@@12)) (|Seq#Index_3200| s1@@12 (|Seq#SkolemDiff_3200| s0@@12 s1@@12))))))
 :qid |stdinbpl.553:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3200| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_19699_118168) (v_1@@0 T@FrameType) (q T@Field_19699_118168) (w@@0 T@FrameType) (r T@Field_19699_118168) (u T@FrameType) ) (!  (=> (and (InsidePredicate_35239_35239 p@@1 v_1@@0 q w@@0) (InsidePredicate_35239_35239 q w@@0 r u)) (InsidePredicate_35239_35239 p@@1 v_1@@0 r u))
 :qid |stdinbpl.220:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_35239_35239 p@@1 v_1@@0 q w@@0) (InsidePredicate_35239_35239 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_41289) ) (!  (=> (= (|Seq#Length_19700| s@@31) 0) (= s@@31 |Seq#Empty_19700|))
 :qid |stdinbpl.256:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_19700| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3200) ) (!  (=> (= (|Seq#Length_3200| s@@32) 0) (= s@@32 |Seq#Empty_3200|))
 :qid |stdinbpl.256:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3200| s@@32))
)))
(assert (forall ((s@@33 T@Seq_41289) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_19700| s@@33 n@@25) |Seq#Empty_19700|))
 :qid |stdinbpl.432:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_19700| s@@33 n@@25))
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
(declare-fun PostMask@11 () T@PolymorphicMapType_35200)
(declare-fun diz () T@Ref)
(declare-fun tid () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_35179)
(declare-fun sys__result () Int)
(declare-fun PostMask@7 () T@PolymorphicMapType_35200)
(declare-fun PostMask@8 () T@PolymorphicMapType_35200)
(declare-fun PostMask@9 () T@PolymorphicMapType_35200)
(declare-fun perm@7 () Real)
(declare-fun PostMask@10 () T@PolymorphicMapType_35200)
(declare-fun PostMask@5 () T@PolymorphicMapType_35200)
(declare-fun perm@6 () Real)
(declare-fun PostMask@6 () T@PolymorphicMapType_35200)
(declare-fun PostMask@2 () T@PolymorphicMapType_35200)
(declare-fun PostMask@3 () T@PolymorphicMapType_35200)
(declare-fun perm@4 () Real)
(declare-fun PostMask@4 () T@PolymorphicMapType_35200)
(declare-fun perm@5 () Real)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gsize () Int)
(declare-fun gid () Int)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_35200)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_35200)
(declare-fun wildcard@5 () Real)
(declare-fun Mask@11 () T@PolymorphicMapType_35200)
(declare-fun Heap@@19 () T@PolymorphicMapType_35179)
(declare-fun last_barrier () Int)
(declare-fun Mask@7 () T@PolymorphicMapType_35200)
(declare-fun Mask@8 () T@PolymorphicMapType_35200)
(declare-fun Mask@9 () T@PolymorphicMapType_35200)
(declare-fun perm@3 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_35200)
(declare-fun Mask@5 () T@PolymorphicMapType_35200)
(declare-fun perm@2 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_35200)
(declare-fun Mask@2 () T@PolymorphicMapType_35200)
(declare-fun Mask@3 () T@PolymorphicMapType_35200)
(declare-fun perm@0 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_35200)
(declare-fun perm@1 () Real)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_35200)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_35200)
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
 (=> (= (ControlFlow 0 0) 136) (let ((anon24_correct true))
(let ((anon65_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 22) 16)) anon24_correct)))
(let ((anon65_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 17) (- 0 21)) (HasDirectPerm_19699_42251 PostMask@11 diz Ref__c)) (=> (HasDirectPerm_19699_42251 PostMask@11 diz Ref__c) (and (=> (= (ControlFlow 0 17) (- 0 20)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_19711_3370 PostMask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value)) (=> (HasDirectPerm_19711_3370 PostMask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| PostHeap@0) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) 0) (= (ControlFlow 0 17) 16)) anon24_correct))))))))))))
(let ((anon22_correct  (=> (state PostHeap@0 PostMask@11) (and (=> (= (ControlFlow 0 23) 17) anon65_Then_correct) (=> (= (ControlFlow 0 23) 22) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (>= 0 tid) (= (ControlFlow 0 30) 23)) anon22_correct)))
(let ((anon64_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 25) (- 0 29)) (HasDirectPerm_19699_42251 PostMask@11 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@11 diz Ref__b) (and (=> (= (ControlFlow 0 25) (- 0 28)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 25) (- 0 27)) (< (- tid 1) (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b)))) (=> (< (- tid 1) (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_19711_3370 PostMask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value)) (=> (HasDirectPerm_19711_3370 PostMask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| PostHeap@0) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value) 0) (= (ControlFlow 0 25) 23)) anon22_correct))))))))))))
(let ((anon63_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 31) 25) anon64_Then_correct) (=> (= (ControlFlow 0 31) 30) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 24) 23)) anon22_correct)))
(let ((anon19_correct  (=> (state PostHeap@0 PostMask@11) (and (=> (= (ControlFlow 0 32) 31) anon63_Then_correct) (=> (= (ControlFlow 0 32) 24) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 38) 32)) anon19_correct)))
(let ((anon62_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 33) (- 0 37)) (HasDirectPerm_19699_42251 PostMask@11 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@11 diz Ref__b) (and (=> (= (ControlFlow 0 33) (- 0 36)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 33) (- 0 35)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_19711_3370 PostMask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_19711_3370 PostMask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| PostHeap@0) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) 0) (= (ControlFlow 0 33) 32)) anon19_correct))))))))))))
(let ((anon17_correct  (=> (state PostHeap@0 PostMask@11) (=> (and (= sys__result this_barrier) (state PostHeap@0 PostMask@11)) (and (=> (= (ControlFlow 0 39) 33) anon62_Then_correct) (=> (= (ControlFlow 0 39) 38) anon62_Else_correct))))))
(let ((anon61_Else_correct  (=> (not (= sys__result 0)) (=> (and (= PostMask@11 PostMask@7) (= (ControlFlow 0 51) 39)) anon17_correct))))
(let ((anon61_Then_correct  (=> (= sys__result 0) (and (=> (= (ControlFlow 0 40) (- 0 50)) (HasDirectPerm_19699_42251 PostMask@7 diz Ref__a)) (=> (HasDirectPerm_19699_42251 PostMask@7 diz Ref__a) (and (=> (= (ControlFlow 0 40) (- 0 49)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 40) (- 0 48)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a))) (=> (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) tid) null)) (=> (and (= PostMask@8 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@7) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@7) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@7) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@7) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@7) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@7) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@7))) (state PostHeap@0 PostMask@8)) (and (=> (= (ControlFlow 0 40) (- 0 47)) (HasDirectPerm_19699_42251 PostMask@8 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@8 diz Ref__b) (and (=> (= (ControlFlow 0 40) (- 0 46)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 40) (- 0 45)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b))) (=> (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) null)) (=> (and (= PostMask@9 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@8) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@8) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@8) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@8) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@8) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@8) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@8))) (state PostHeap@0 PostMask@9)) (and (=> (= (ControlFlow 0 40) (- 0 44)) (HasDirectPerm_19699_42251 PostMask@9 diz Ref__c)) (=> (HasDirectPerm_19699_42251 PostMask@9 diz Ref__c) (and (=> (= (ControlFlow 0 40) (- 0 43)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 40) (- 0 42)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c))) (=> (= perm@7 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (=> (=> (> perm@7 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) null))) (=> (and (and (= PostMask@10 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@9) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@9) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@9) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) perm@7)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@9) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@9) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@9) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@9))) (state PostHeap@0 PostMask@10)) (and (= PostMask@11 PostMask@10) (= (ControlFlow 0 40) 39))) anon17_correct))))))))))))))))))))))))))))))
(let ((anon15_correct  (=> (state PostHeap@0 PostMask@7) (and (=> (= (ControlFlow 0 52) 40) anon61_Then_correct) (=> (= (ControlFlow 0 52) 51) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (>= 0 tid) (=> (and (= PostMask@7 PostMask@5) (= (ControlFlow 0 59) 52)) anon15_correct))))
(let ((anon60_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 54) (- 0 58)) (HasDirectPerm_19699_42251 PostMask@5 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@5 diz Ref__b) (and (=> (= (ControlFlow 0 54) (- 0 57)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 54) (- 0 56)) (< (- tid 1) (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b)))) (=> (< (- tid 1) (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b))) (=> (= perm@6 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (=> (=> (> perm@6 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (- tid 1)) null))) (=> (and (and (= PostMask@6 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@5) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@5) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@5) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (- tid 1)) Ref__Integer_value) perm@6)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@5) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@5) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@5) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@5))) (state PostHeap@0 PostMask@6)) (and (= PostMask@7 PostMask@6) (= (ControlFlow 0 54) 52))) anon15_correct))))))))))))))
(let ((anon59_Then_correct  (=> (= sys__result 1) (and (=> (= (ControlFlow 0 60) (- 0 71)) (HasDirectPerm_19699_42251 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_19699_42251 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 60) (- 0 70)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 60) (- 0 69)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a))) (=> (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) tid) null)) (=> (and (= PostMask@3 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@2) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@2) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@2) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@2) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@2) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@2) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@2))) (state PostHeap@0 PostMask@3)) (and (=> (= (ControlFlow 0 60) (- 0 68)) (HasDirectPerm_19699_42251 PostMask@3 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@3 diz Ref__b) (and (=> (= (ControlFlow 0 60) (- 0 67)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 60) (- 0 66)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b))) (=> (= perm@4 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 60) (- 0 65)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (=> (> perm@4 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) null))) (=> (and (= PostMask@4 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@3) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@3) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@3) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) perm@4)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@3) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@3) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@3) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@3))) (state PostHeap@0 PostMask@4)) (and (=> (= (ControlFlow 0 60) (- 0 64)) (HasDirectPerm_19699_42251 PostMask@4 diz Ref__c)) (=> (HasDirectPerm_19699_42251 PostMask@4 diz Ref__c) (and (=> (= (ControlFlow 0 60) (- 0 63)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 60) (- 0 62)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c))) (=> (= perm@5 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) null))) (=> (and (= PostMask@5 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@4) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@4) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@4) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) perm@5)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@4) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@4) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@4) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@4))) (state PostHeap@0 PostMask@5)) (and (=> (= (ControlFlow 0 60) 54) anon60_Then_correct) (=> (= (ControlFlow 0 60) 59) anon60_Else_correct)))))))))))))))))))))))))))))))))))
(let ((anon59_Else_correct  (=> (not (= sys__result 1)) (=> (and (= PostMask@7 PostMask@2) (= (ControlFlow 0 53) 52)) anon15_correct))))
(let ((anon58_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_35200 (store (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 72) (- 0 81)) (HasDirectPerm_19699_42251 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_19699_42251 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_35200 (store (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@0) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@0) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@0) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@0) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 72) (- 0 80)) (HasDirectPerm_19699_42251 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_35200 (store (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| PostMask@1) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| PostMask@1) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| PostMask@1) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| PostMask@1) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 72) (- 0 79)) (HasDirectPerm_19699_42251 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_19699_42251 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 72) (- 0 78)) (HasDirectPerm_19699_42251 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_19699_42251 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 72) (- 0 77)) (HasDirectPerm_19699_42251 Mask@11 diz Ref__a)) (=> (HasDirectPerm_19699_42251 Mask@11 diz Ref__a) (=> (and (|Seq#Equal_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 72) (- 0 76)) (HasDirectPerm_19699_42251 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_19699_42251 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 72) (- 0 75)) (HasDirectPerm_19699_42251 Mask@11 diz Ref__b)) (=> (HasDirectPerm_19699_42251 Mask@11 diz Ref__b) (=> (and (|Seq#Equal_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 72) (- 0 74)) (HasDirectPerm_19699_42251 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_19699_42251 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 72) (- 0 73)) (HasDirectPerm_19699_42251 Mask@11 diz Ref__c)) (=> (HasDirectPerm_19699_42251 Mask@11 diz Ref__c) (=> (and (|Seq#Equal_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 72) 60) anon59_Then_correct) (=> (= (ControlFlow 0 72) 53) anon59_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon58_Else_correct true))
(let ((anon11_correct  (=> (state Heap@@19 Mask@11) (and (=> (= (ControlFlow 0 82) 72) anon58_Then_correct) (=> (= (ControlFlow 0 82) 2) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 88) 82)) anon11_correct)))
(let ((anon57_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 83) (- 0 87)) (HasDirectPerm_19699_42251 Mask@11 diz Ref__c)) (=> (HasDirectPerm_19699_42251 Mask@11 diz Ref__c) (and (=> (= (ControlFlow 0 83) (- 0 86)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 83) (- 0 85)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 83) (- 0 84)) (HasDirectPerm_19711_3370 Mask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value)) (=> (HasDirectPerm_19711_3370 Mask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@19) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value) 0) (= (ControlFlow 0 83) 82)) anon11_correct))))))))))))
(let ((anon9_correct  (=> (state Heap@@19 Mask@11) (and (=> (= (ControlFlow 0 89) 83) anon57_Then_correct) (=> (= (ControlFlow 0 89) 88) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 95) 89)) anon9_correct)))
(let ((anon56_Then_correct  (=> (= this_barrier 1) (and (=> (= (ControlFlow 0 90) (- 0 94)) (HasDirectPerm_19699_42251 Mask@11 diz Ref__b)) (=> (HasDirectPerm_19699_42251 Mask@11 diz Ref__b) (and (=> (= (ControlFlow 0 90) (- 0 93)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 90) (- 0 92)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (HasDirectPerm_19711_3370 Mask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_19711_3370 Mask@11 (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value) (=> (and (> (select (|PolymorphicMapType_35179_19711_3370#PolymorphicMapType_35179| Heap@@19) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value) 0) (= (ControlFlow 0 90) 89)) anon9_correct))))))))))))
(let ((anon7_correct  (=> (state Heap@@19 Mask@11) (and (=> (= (ControlFlow 0 96) 90) anon56_Then_correct) (=> (= (ControlFlow 0 96) 95) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (= last_barrier 0)) (=> (and (= Mask@11 Mask@7) (= (ControlFlow 0 108) 96)) anon7_correct))))
(let ((anon55_Then_correct  (=> (= last_barrier 0) (and (=> (= (ControlFlow 0 97) (- 0 107)) (HasDirectPerm_19699_42251 Mask@7 diz Ref__a)) (=> (HasDirectPerm_19699_42251 Mask@7 diz Ref__a) (and (=> (= (ControlFlow 0 97) (- 0 106)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 97) (- 0 105)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a))) (=> (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a) tid) null)) (=> (and (= Mask@8 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@7) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@7) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@7) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@7) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@7) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@7) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@7))) (state Heap@@19 Mask@8)) (and (=> (= (ControlFlow 0 97) (- 0 104)) (HasDirectPerm_19699_42251 Mask@8 diz Ref__b)) (=> (HasDirectPerm_19699_42251 Mask@8 diz Ref__b) (and (=> (= (ControlFlow 0 97) (- 0 103)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 97) (- 0 102)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b))) (=> (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) null)) (=> (and (= Mask@9 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@8) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@8) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@8) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@8) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@8) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@8) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@8))) (state Heap@@19 Mask@9)) (and (=> (= (ControlFlow 0 97) (- 0 101)) (HasDirectPerm_19699_42251 Mask@9 diz Ref__c)) (=> (HasDirectPerm_19699_42251 Mask@9 diz Ref__c) (and (=> (= (ControlFlow 0 97) (- 0 100)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 97) (- 0 99)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c))) (=> (= perm@3 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 97) (- 0 98)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (=> (> perm@3 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) null))) (=> (and (and (= Mask@10 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@9) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@9) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@9) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value) perm@3)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@9) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@9) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@9) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@9))) (state Heap@@19 Mask@10)) (and (= Mask@11 Mask@10) (= (ControlFlow 0 97) 96))) anon7_correct))))))))))))))))))))))))))))))
(let ((anon5_correct  (=> (state Heap@@19 Mask@7) (and (=> (= (ControlFlow 0 109) 97) anon55_Then_correct) (=> (= (ControlFlow 0 109) 108) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (>= 0 tid) (=> (and (= Mask@7 Mask@5) (= (ControlFlow 0 116) 109)) anon5_correct))))
(let ((anon54_Then_correct  (=> (> tid 0) (and (=> (= (ControlFlow 0 111) (- 0 115)) (HasDirectPerm_19699_42251 Mask@5 diz Ref__b)) (=> (HasDirectPerm_19699_42251 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 111) (- 0 114)) (>= (- tid 1) 0)) (=> (>= (- tid 1) 0) (and (=> (= (ControlFlow 0 111) (- 0 113)) (< (- tid 1) (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b)))) (=> (< (- tid 1) (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b))) (=> (= perm@2 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) (- tid 1)) null))) (=> (and (and (= Mask@6 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@5) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@5) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) (- tid 1)) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@5) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) (- tid 1)) Ref__Integer_value) perm@2)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@5) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@5) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@5) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@5))) (state Heap@@19 Mask@6)) (and (= Mask@7 Mask@6) (= (ControlFlow 0 111) 109))) anon5_correct))))))))))))))
(let ((anon53_Then_correct  (=> (= last_barrier 1) (and (=> (= (ControlFlow 0 117) (- 0 128)) (HasDirectPerm_19699_42251 Mask@2 diz Ref__a)) (=> (HasDirectPerm_19699_42251 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 117) (- 0 127)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 117) (- 0 126)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a))) (=> (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a) tid) null)) (=> (and (= Mask@3 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@2) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@2) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@2) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@2) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@2) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@2) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@2))) (state Heap@@19 Mask@3)) (and (=> (= (ControlFlow 0 117) (- 0 125)) (HasDirectPerm_19699_42251 Mask@3 diz Ref__b)) (=> (HasDirectPerm_19699_42251 Mask@3 diz Ref__b) (and (=> (= (ControlFlow 0 117) (- 0 124)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 117) (- 0 123)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b))) (=> (= perm@0 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 117) (- 0 122)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) null))) (=> (and (= Mask@4 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@3) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@3) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@3) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b) tid) Ref__Integer_value) perm@0)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@3) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@3) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@3) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@3))) (state Heap@@19 Mask@4)) (and (=> (= (ControlFlow 0 117) (- 0 121)) (HasDirectPerm_19699_42251 Mask@4 diz Ref__c)) (=> (HasDirectPerm_19699_42251 Mask@4 diz Ref__c) (and (=> (= (ControlFlow 0 117) (- 0 120)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 117) (- 0 119)) (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c))) (=> (= perm@1 (/ (to_real 1) (to_real 4))) (and (=> (= (ControlFlow 0 117) (- 0 118)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) null))) (=> (and (= Mask@5 (PolymorphicMapType_35200 (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@4) (store (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@4) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@4) (|Seq#Index_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c) tid) Ref__Integer_value) perm@1)) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@4) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@4) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@4) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@4))) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 117) 111) anon54_Then_correct) (=> (= (ControlFlow 0 117) 116) anon54_Else_correct)))))))))))))))))))))))))))))))))))
(let ((anon53_Else_correct  (=> (not (= last_barrier 1)) (=> (and (= Mask@7 Mask@2) (= (ControlFlow 0 110) 109)) anon5_correct))))
(let ((anon2_correct  (=> (and (and (and (and (state Heap@@19 ZeroMask) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_35200 (store (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| ZeroMask) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 129) (- 0 132)) (HasDirectPerm_19699_42251 Mask@0 diz Ref__a)) (=> (HasDirectPerm_19699_42251 Mask@0 diz Ref__a) (=> (= (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_35200 (store (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@0) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@0) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@0) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@0) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 129) (- 0 131)) (HasDirectPerm_19699_42251 Mask@1 diz Ref__b)) (=> (HasDirectPerm_19699_42251 Mask@1 diz Ref__b) (=> (= (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_35200 (store (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_35200_19699_42099#PolymorphicMapType_35200| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_35200_19711_3370#PolymorphicMapType_35200| Mask@1) (|PolymorphicMapType_35200_19699_53#PolymorphicMapType_35200| Mask@1) (|PolymorphicMapType_35200_19699_35253#PolymorphicMapType_35200| Mask@1) (|PolymorphicMapType_35200_19699_118168#PolymorphicMapType_35200| Mask@1) (|PolymorphicMapType_35200_19699_122995#PolymorphicMapType_35200| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 129) (- 0 130)) (HasDirectPerm_19699_42251 Mask@2 diz Ref__c)) (=> (HasDirectPerm_19699_42251 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_19700| (select (|PolymorphicMapType_35179_19699_42318#PolymorphicMapType_35179| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (=> (= (ControlFlow 0 129) 117) anon53_Then_correct) (=> (= (ControlFlow 0 129) 110) anon53_Else_correct))))))))))))))))))
(let ((anon52_Else_correct  (=> (and (not (= this_barrier 1)) (= (ControlFlow 0 134) 129)) anon2_correct)))
(let ((anon52_Then_correct  (=> (= this_barrier 1) (=> (and (= last_barrier 0) (= (ControlFlow 0 133) 129)) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_35179_19483_53#PolymorphicMapType_35179| Heap@@19) diz $allocated)) (=> (and (and (not (= diz null)) (state Heap@@19 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 135) 133) anon52_Then_correct) (=> (= (ControlFlow 0 135) 134) anon52_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 136) 135)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
