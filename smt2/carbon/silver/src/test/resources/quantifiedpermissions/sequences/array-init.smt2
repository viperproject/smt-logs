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
(declare-sort T@Field_12835_53 0)
(declare-sort T@Field_12848_12849 0)
(declare-sort T@Field_18908_18913 0)
(declare-sort T@Seq_18911 0)
(declare-sort T@Field_18861_3085 0)
(declare-sort T@Field_7733_39352 0)
(declare-sort T@Field_7733_39219 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12796 0)) (((PolymorphicMapType_12796 (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| (Array T@Ref T@Field_18908_18913 Real)) (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| (Array T@Ref T@Field_18861_3085 Real)) (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| (Array T@Ref T@Field_12835_53 Real)) (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| (Array T@Ref T@Field_12848_12849 Real)) (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| (Array T@Ref T@Field_7733_39219 Real)) (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| (Array T@Ref T@Field_7733_39352 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13324 0)) (((PolymorphicMapType_13324 (|PolymorphicMapType_13324_12835_53#PolymorphicMapType_13324| (Array T@Ref T@Field_12835_53 Bool)) (|PolymorphicMapType_13324_12835_12849#PolymorphicMapType_13324| (Array T@Ref T@Field_12848_12849 Bool)) (|PolymorphicMapType_13324_12835_3085#PolymorphicMapType_13324| (Array T@Ref T@Field_18861_3085 Bool)) (|PolymorphicMapType_13324_12835_18913#PolymorphicMapType_13324| (Array T@Ref T@Field_18908_18913 Bool)) (|PolymorphicMapType_13324_12835_39219#PolymorphicMapType_13324| (Array T@Ref T@Field_7733_39219 Bool)) (|PolymorphicMapType_13324_12835_40734#PolymorphicMapType_13324| (Array T@Ref T@Field_7733_39352 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12775 0)) (((PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| (Array T@Ref T@Field_12835_53 Bool)) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| (Array T@Ref T@Field_12848_12849 T@Ref)) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| (Array T@Ref T@Field_18908_18913 T@Seq_18911)) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| (Array T@Ref T@Field_18861_3085 Int)) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| (Array T@Ref T@Field_7733_39352 T@PolymorphicMapType_13324)) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| (Array T@Ref T@Field_7733_39219 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12835_53)
(declare-fun value () T@Field_18861_3085)
(declare-fun array () T@Field_18908_18913)
(declare-fun |Seq#Length_7734| (T@Seq_18911) Int)
(declare-fun |Seq#Drop_7734| (T@Seq_18911 Int) T@Seq_18911)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_12775 T@PolymorphicMapType_12775) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12775 T@PolymorphicMapType_12775) Bool)
(declare-fun state (T@PolymorphicMapType_12775 T@PolymorphicMapType_12796) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12796) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13324)
(declare-fun |get'| (T@PolymorphicMapType_12775 T@Ref Int) Int)
(declare-fun dummyFunction_3366 (Int) Bool)
(declare-fun |get#triggerStateless| (T@Ref Int) Int)
(declare-fun |Seq#Index_7734| (T@Seq_18911 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_7734| () T@Seq_18911)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-fun |Seq#Update_7734| (T@Seq_18911 Int T@Ref) T@Seq_18911)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |get#frame| (T@FrameType T@Ref Int) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_19517 (T@Seq_18911) T@FrameType)
(declare-fun FrameFragment_3085 (Int) T@FrameType)
(declare-fun |Seq#Take_7734| (T@Seq_18911 Int) T@Seq_18911)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Contains_18911| (T@Seq_18911 T@Ref) Bool)
(declare-fun |Seq#Skolem_18911| (T@Seq_18911 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12775 T@PolymorphicMapType_12775 T@PolymorphicMapType_12796) Bool)
(declare-fun IsPredicateField_7733_39310 (T@Field_7733_39219) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7733 (T@Field_7733_39219) T@Field_7733_39352)
(declare-fun HasDirectPerm_7733_39283 (T@PolymorphicMapType_12796 T@Ref T@Field_7733_39219) Bool)
(declare-fun IsWandField_7733_41261 (T@Field_7733_39219) Bool)
(declare-fun WandMaskField_7733 (T@Field_7733_39219) T@Field_7733_39352)
(declare-fun |Seq#Singleton_7734| (T@Ref) T@Seq_18911)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |Seq#Append_18911| (T@Seq_18911 T@Seq_18911) T@Seq_18911)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_12775)
(declare-fun ZeroMask () T@PolymorphicMapType_12796)
(declare-fun InsidePredicate_12835_12835 (T@Field_7733_39219 T@FrameType T@Field_7733_39219 T@FrameType) Bool)
(declare-fun IsPredicateField_7731_3085 (T@Field_18861_3085) Bool)
(declare-fun IsWandField_7731_3085 (T@Field_18861_3085) Bool)
(declare-fun IsPredicateField_7733_18935 (T@Field_18908_18913) Bool)
(declare-fun IsWandField_7733_18961 (T@Field_18908_18913) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7733_45395 (T@Field_7733_39352) Bool)
(declare-fun IsWandField_7733_45411 (T@Field_7733_39352) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7733_12849 (T@Field_12848_12849) Bool)
(declare-fun IsWandField_7733_12849 (T@Field_12848_12849) Bool)
(declare-fun IsPredicateField_7733_53 (T@Field_12835_53) Bool)
(declare-fun IsWandField_7733_53 (T@Field_12835_53) Bool)
(declare-fun HasDirectPerm_7733_45932 (T@PolymorphicMapType_12796 T@Ref T@Field_7733_39352) Bool)
(declare-fun HasDirectPerm_7733_12849 (T@PolymorphicMapType_12796 T@Ref T@Field_12848_12849) Bool)
(declare-fun HasDirectPerm_7733_53 (T@PolymorphicMapType_12796 T@Ref T@Field_12835_53) Bool)
(declare-fun HasDirectPerm_7731_3085 (T@PolymorphicMapType_12796 T@Ref T@Field_18861_3085) Bool)
(declare-fun HasDirectPerm_7733_20080 (T@PolymorphicMapType_12796 T@Ref T@Field_18908_18913) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun get (T@PolymorphicMapType_12775 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_12796 T@PolymorphicMapType_12796 T@PolymorphicMapType_12796) Bool)
(declare-fun |Seq#Equal_18911| (T@Seq_18911 T@Seq_18911) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |Seq#ContainsTrigger_7734| (T@Seq_18911 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#SkolemDiff_18911| (T@Seq_18911 T@Seq_18911) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(assert (forall ((s T@Seq_18911) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7734| s)) (= (|Seq#Length_7734| (|Seq#Drop_7734| s n)) (- (|Seq#Length_7734| s) n))) (=> (< (|Seq#Length_7734| s) n) (= (|Seq#Length_7734| (|Seq#Drop_7734| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7734| (|Seq#Drop_7734| s n)) (|Seq#Length_7734| s))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7734| (|Seq#Drop_7734| s n)))
 :pattern ( (|Seq#Length_7734| s) (|Seq#Drop_7734| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12775) (Heap1 T@PolymorphicMapType_12775) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12775) (Mask T@PolymorphicMapType_12796) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12775) (Heap1@@0 T@PolymorphicMapType_12775) (Heap2 T@PolymorphicMapType_12775) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7733_39352) ) (!  (not (select (|PolymorphicMapType_13324_12835_40734#PolymorphicMapType_13324| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13324_12835_40734#PolymorphicMapType_13324| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7733_39219) ) (!  (not (select (|PolymorphicMapType_13324_12835_39219#PolymorphicMapType_13324| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13324_12835_39219#PolymorphicMapType_13324| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18908_18913) ) (!  (not (select (|PolymorphicMapType_13324_12835_18913#PolymorphicMapType_13324| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13324_12835_18913#PolymorphicMapType_13324| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18861_3085) ) (!  (not (select (|PolymorphicMapType_13324_12835_3085#PolymorphicMapType_13324| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13324_12835_3085#PolymorphicMapType_13324| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12848_12849) ) (!  (not (select (|PolymorphicMapType_13324_12835_12849#PolymorphicMapType_13324| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13324_12835_12849#PolymorphicMapType_13324| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_12835_53) ) (!  (not (select (|PolymorphicMapType_13324_12835_53#PolymorphicMapType_13324| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13324_12835_53#PolymorphicMapType_13324| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12775) (this T@Ref) (i Int) ) (! (dummyFunction_3366 (|get#triggerStateless| this i))
 :qid |stdinbpl.589:15|
 :skolemid |59|
 :pattern ( (|get'| Heap@@0 this i))
)))
(assert (forall ((s@@1 T@Seq_18911) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7734| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7734| (|Seq#Drop_7734| s@@1 n@@1) j) (|Seq#Index_7734| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7734| (|Seq#Drop_7734| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7734| |Seq#Empty_7734|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((s@@3 T@Seq_18911) (i@@0 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7734| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_7734| (|Seq#Update_7734| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_7734| (|Seq#Update_7734| s@@3 i@@0 v) n@@3) (|Seq#Index_7734| s@@3 n@@3)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7734| (|Seq#Update_7734| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_7734| s@@3 n@@3) (|Seq#Update_7734| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@1 v@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12775) (Mask@@0 T@PolymorphicMapType_12796) (this@@0 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|get'| Heap@@1 this@@0 i@@2) (|get#frame| (CombineFrames (FrameFragment_19517 (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@1) this@@0 array)) (FrameFragment_3085 (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@1) this@@0 array) i@@2) value))) this@@0 i@@2)))
 :qid |stdinbpl.602:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|get'| Heap@@1 this@@0 i@@2))
)))
(assert (forall ((s@@5 T@Seq_18911) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7734| s@@5)) (= (|Seq#Length_7734| (|Seq#Take_7734| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7734| s@@5) n@@5) (= (|Seq#Length_7734| (|Seq#Take_7734| s@@5 n@@5)) (|Seq#Length_7734| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7734| (|Seq#Take_7734| s@@5 n@@5)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7734| (|Seq#Take_7734| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7734| s@@5 n@@5) (|Seq#Length_7734| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2963| s@@6)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2963| s@@6) n@@6) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) (|Seq#Length_2963| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2963| s@@6 n@@6) (|Seq#Length_2963| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.561:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_18911) (x T@Ref) ) (!  (=> (|Seq#Contains_18911| s@@7 x) (and (and (<= 0 (|Seq#Skolem_18911| s@@7 x)) (< (|Seq#Skolem_18911| s@@7 x) (|Seq#Length_7734| s@@7))) (= (|Seq#Index_7734| s@@7 (|Seq#Skolem_18911| s@@7 x)) x)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_18911| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@0)) (< (|Seq#Skolem_2963| s@@8 x@@0) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_18911) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7734| s@@9 n@@7) s@@9))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7734| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.256:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12775) (ExhaleHeap T@PolymorphicMapType_12775) (Mask@@1 T@PolymorphicMapType_12796) (pm_f_13 T@Field_7733_39219) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_7733_39283 Mask@@1 null pm_f_13) (IsPredicateField_7733_39310 pm_f_13)) (= (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@2) null (PredicateMaskField_7733 pm_f_13)) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap) null (PredicateMaskField_7733 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_7733_39310 pm_f_13) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap) null (PredicateMaskField_7733 pm_f_13)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12775) (ExhaleHeap@@0 T@PolymorphicMapType_12775) (Mask@@2 T@PolymorphicMapType_12796) (pm_f_13@@0 T@Field_7733_39219) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_7733_39283 Mask@@2 null pm_f_13@@0) (IsWandField_7733_41261 pm_f_13@@0)) (= (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@3) null (WandMaskField_7733 pm_f_13@@0)) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@0) null (WandMaskField_7733 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_7733_41261 pm_f_13@@0) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@0) null (WandMaskField_7733 pm_f_13@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_18911| (|Seq#Singleton_7734| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_18911| (|Seq#Singleton_7734| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_18911) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7734| s@@11))) (= (|Seq#Index_7734| (|Seq#Take_7734| s@@11 n@@9) j@@3) (|Seq#Index_7734| s@@11 j@@3)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7734| (|Seq#Take_7734| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7734| s@@11 j@@3) (|Seq#Take_7734| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_18911) (t T@Seq_18911) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7734| s@@13))) (< n@@11 (|Seq#Length_7734| (|Seq#Append_18911| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7734| s@@13)) (|Seq#Length_7734| s@@13)) n@@11) (= (|Seq#Take_7734| (|Seq#Append_18911| s@@13 t) n@@11) (|Seq#Append_18911| s@@13 (|Seq#Take_7734| t (|Seq#Sub| n@@11 (|Seq#Length_7734| s@@13)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7734| (|Seq#Append_18911| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12775) (ExhaleHeap@@1 T@PolymorphicMapType_12775) (Mask@@3 T@PolymorphicMapType_12796) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@4) o_22 $allocated) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_7733_39219) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12835_12835 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12835_12835 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_18911) (s1 T@Seq_18911) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7734|)) (not (= s1 |Seq#Empty_7734|))) (<= (|Seq#Length_7734| s0) n@@13)) (< n@@13 (|Seq#Length_7734| (|Seq#Append_18911| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7734| s0)) (|Seq#Length_7734| s0)) n@@13) (= (|Seq#Index_7734| (|Seq#Append_18911| s0 s1) n@@13) (|Seq#Index_7734| s1 (|Seq#Sub| n@@13 (|Seq#Length_7734| s0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7734| (|Seq#Append_18911| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_7731_3085 value)))
(assert  (not (IsWandField_7731_3085 value)))
(assert  (not (IsPredicateField_7733_18935 array)))
(assert  (not (IsWandField_7733_18961 array)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12775) (ExhaleHeap@@2 T@PolymorphicMapType_12775) (Mask@@4 T@PolymorphicMapType_12796) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12796) (o_2@@5 T@Ref) (f_4@@5 T@Field_7733_39352) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7733_45395 f_4@@5))) (not (IsWandField_7733_45411 f_4@@5))) (<= (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12796) (o_2@@6 T@Ref) (f_4@@6 T@Field_7733_39219) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7733_39310 f_4@@6))) (not (IsWandField_7733_41261 f_4@@6))) (<= (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12796) (o_2@@7 T@Ref) (f_4@@7 T@Field_12848_12849) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7733_12849 f_4@@7))) (not (IsWandField_7733_12849 f_4@@7))) (<= (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12796) (o_2@@8 T@Ref) (f_4@@8 T@Field_12835_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7733_53 f_4@@8))) (not (IsWandField_7733_53 f_4@@8))) (<= (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12796) (o_2@@9 T@Ref) (f_4@@9 T@Field_18861_3085) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@@9) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7731_3085 f_4@@9))) (not (IsWandField_7731_3085 f_4@@9))) (<= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@@9) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@@9) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12796) (o_2@@10 T@Ref) (f_4@@10 T@Field_18908_18913) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| Mask@@10) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7733_18935 f_4@@10))) (not (IsWandField_7733_18961 f_4@@10))) (<= (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| Mask@@10) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| Mask@@10) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12796) (o_2@@11 T@Ref) (f_4@@11 T@Field_7733_39352) ) (! (= (HasDirectPerm_7733_45932 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7733_45932 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12796) (o_2@@12 T@Ref) (f_4@@12 T@Field_7733_39219) ) (! (= (HasDirectPerm_7733_39283 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7733_39283 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12796) (o_2@@13 T@Ref) (f_4@@13 T@Field_12848_12849) ) (! (= (HasDirectPerm_7733_12849 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7733_12849 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12796) (o_2@@14 T@Ref) (f_4@@14 T@Field_12835_53) ) (! (= (HasDirectPerm_7733_53 Mask@@14 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| Mask@@14) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7733_53 Mask@@14 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12796) (o_2@@15 T@Ref) (f_4@@15 T@Field_18861_3085) ) (! (= (HasDirectPerm_7731_3085 Mask@@15 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@@15) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7731_3085 Mask@@15 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12796) (o_2@@16 T@Ref) (f_4@@16 T@Field_18908_18913) ) (! (= (HasDirectPerm_7733_20080 Mask@@16 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| Mask@@16) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7733_20080 Mask@@16 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.559:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12775) (ExhaleHeap@@3 T@PolymorphicMapType_12775) (Mask@@17 T@PolymorphicMapType_12796) (o_22@@0 T@Ref) (f_30 T@Field_7733_39352) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (=> (HasDirectPerm_7733_45932 Mask@@17 o_22@@0 f_30) (= (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@6) o_22@@0 f_30) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@3) o_22@@0 f_30))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@3) o_22@@0 f_30))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12775) (ExhaleHeap@@4 T@PolymorphicMapType_12775) (Mask@@18 T@PolymorphicMapType_12796) (o_22@@1 T@Ref) (f_30@@0 T@Field_7733_39219) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (=> (HasDirectPerm_7733_39283 Mask@@18 o_22@@1 f_30@@0) (= (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@7) o_22@@1 f_30@@0) (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| ExhaleHeap@@4) o_22@@1 f_30@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| ExhaleHeap@@4) o_22@@1 f_30@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12775) (ExhaleHeap@@5 T@PolymorphicMapType_12775) (Mask@@19 T@PolymorphicMapType_12796) (o_22@@2 T@Ref) (f_30@@1 T@Field_12848_12849) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_7733_12849 Mask@@19 o_22@@2 f_30@@1) (= (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@8) o_22@@2 f_30@@1) (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| ExhaleHeap@@5) o_22@@2 f_30@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| ExhaleHeap@@5) o_22@@2 f_30@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12775) (ExhaleHeap@@6 T@PolymorphicMapType_12775) (Mask@@20 T@PolymorphicMapType_12796) (o_22@@3 T@Ref) (f_30@@2 T@Field_12835_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_7733_53 Mask@@20 o_22@@3 f_30@@2) (= (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@9) o_22@@3 f_30@@2) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@6) o_22@@3 f_30@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@6) o_22@@3 f_30@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12775) (ExhaleHeap@@7 T@PolymorphicMapType_12775) (Mask@@21 T@PolymorphicMapType_12796) (o_22@@4 T@Ref) (f_30@@3 T@Field_18861_3085) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_7731_3085 Mask@@21 o_22@@4 f_30@@3) (= (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@10) o_22@@4 f_30@@3) (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| ExhaleHeap@@7) o_22@@4 f_30@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| ExhaleHeap@@7) o_22@@4 f_30@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12775) (ExhaleHeap@@8 T@PolymorphicMapType_12775) (Mask@@22 T@PolymorphicMapType_12796) (o_22@@5 T@Ref) (f_30@@4 T@Field_18908_18913) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_7733_20080 Mask@@22 o_22@@5 f_30@@4) (= (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@11) o_22@@5 f_30@@4) (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| ExhaleHeap@@8) o_22@@5 f_30@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| ExhaleHeap@@8) o_22@@5 f_30@@4))
)))
(assert (forall ((s0@@1 T@Seq_18911) (s1@@1 T@Seq_18911) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7734|)) (not (= s1@@1 |Seq#Empty_7734|))) (= (|Seq#Length_7734| (|Seq#Append_18911| s0@@1 s1@@1)) (+ (|Seq#Length_7734| s0@@1) (|Seq#Length_7734| s1@@1))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7734| (|Seq#Append_18911| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7733_39352) ) (! (= (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7733_39219) ) (! (= (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_12848_12849) ) (! (= (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_12835_53) ) (! (= (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_18861_3085) ) (! (= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_18908_18913) ) (! (= (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_18911) (t@@1 T@Seq_18911) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7734| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7734| s@@15)) (|Seq#Length_7734| s@@15)) n@@15) (= (|Seq#Drop_7734| (|Seq#Append_18911| s@@15 t@@1) n@@15) (|Seq#Drop_7734| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7734| s@@15))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7734| (|Seq#Append_18911| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12775) (this@@1 T@Ref) (i@@5 Int) ) (!  (and (= (get Heap@@12 this@@1 i@@5) (|get'| Heap@@12 this@@1 i@@5)) (dummyFunction_3366 (|get#triggerStateless| this@@1 i@@5)))
 :qid |stdinbpl.585:15|
 :skolemid |58|
 :pattern ( (get Heap@@12 this@@1 i@@5))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12775) (Mask@@23 T@PolymorphicMapType_12796) (this@@2 T@Ref) (i@@6 Int) ) (!  (=> (and (state Heap@@13 Mask@@23) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@13) this@@2 array)))) (= (get Heap@@13 this@@2 i@@6) (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@13) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@13) this@@2 array) i@@6) value))))
 :qid |stdinbpl.595:15|
 :skolemid |60|
 :pattern ( (state Heap@@13 Mask@@23) (get Heap@@13 this@@2 i@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12796) (SummandMask1 T@PolymorphicMapType_12796) (SummandMask2 T@PolymorphicMapType_12796) (o_2@@23 T@Ref) (f_4@@23 T@Field_7733_39352) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12796) (SummandMask1@@0 T@PolymorphicMapType_12796) (SummandMask2@@0 T@PolymorphicMapType_12796) (o_2@@24 T@Ref) (f_4@@24 T@Field_7733_39219) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12796) (SummandMask1@@1 T@PolymorphicMapType_12796) (SummandMask2@@1 T@PolymorphicMapType_12796) (o_2@@25 T@Ref) (f_4@@25 T@Field_12848_12849) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12796) (SummandMask1@@2 T@PolymorphicMapType_12796) (SummandMask2@@2 T@PolymorphicMapType_12796) (o_2@@26 T@Ref) (f_4@@26 T@Field_12835_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12796) (SummandMask1@@3 T@PolymorphicMapType_12796) (SummandMask2@@3 T@PolymorphicMapType_12796) (o_2@@27 T@Ref) (f_4@@27 T@Field_18861_3085) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12796) (SummandMask1@@4 T@PolymorphicMapType_12796) (SummandMask2@@4 T@PolymorphicMapType_12796) (o_2@@28 T@Ref) (f_4@@28 T@Field_18908_18913) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.558:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18911) (b T@Seq_18911) ) (!  (=> (|Seq#Equal_18911| a b) (= a b))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18911| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18911) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_7734| s@@17))) (|Seq#ContainsTrigger_7734| s@@17 (|Seq#Index_7734| s@@17 i@@7)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7734| s@@17 i@@7))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@8)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@8))
)))
(assert (forall ((s0@@3 T@Seq_18911) (s1@@3 T@Seq_18911) ) (!  (and (=> (= s0@@3 |Seq#Empty_7734|) (= (|Seq#Append_18911| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7734|) (= (|Seq#Append_18911| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18911| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7734| (|Seq#Singleton_7734| t@@3) 0) t@@3)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7734| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18911) ) (! (<= 0 (|Seq#Length_7734| s@@19))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7734| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12775) (ExhaleHeap@@9 T@PolymorphicMapType_12775) (Mask@@24 T@PolymorphicMapType_12796) (pm_f_13@@1 T@Field_7733_39219) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@24) (=> (and (HasDirectPerm_7733_39283 Mask@@24 null pm_f_13@@1) (IsPredicateField_7733_39310 pm_f_13@@1)) (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30@@5 T@Field_12835_53) ) (!  (=> (select (|PolymorphicMapType_13324_12835_53#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) null (PredicateMaskField_7733 pm_f_13@@1))) o2_13 f_30@@5) (= (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@14) o2_13 f_30@@5) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13 f_30@@5))
)) (forall ((o2_13@@0 T@Ref) (f_30@@6 T@Field_12848_12849) ) (!  (=> (select (|PolymorphicMapType_13324_12835_12849#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) null (PredicateMaskField_7733 pm_f_13@@1))) o2_13@@0 f_30@@6) (= (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@14) o2_13@@0 f_30@@6) (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@0 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@0 f_30@@6))
))) (forall ((o2_13@@1 T@Ref) (f_30@@7 T@Field_18861_3085) ) (!  (=> (select (|PolymorphicMapType_13324_12835_3085#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) null (PredicateMaskField_7733 pm_f_13@@1))) o2_13@@1 f_30@@7) (= (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@14) o2_13@@1 f_30@@7) (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@1 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@1 f_30@@7))
))) (forall ((o2_13@@2 T@Ref) (f_30@@8 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_13324_12835_18913#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) null (PredicateMaskField_7733 pm_f_13@@1))) o2_13@@2 f_30@@8) (= (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@14) o2_13@@2 f_30@@8) (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@2 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@2 f_30@@8))
))) (forall ((o2_13@@3 T@Ref) (f_30@@9 T@Field_7733_39219) ) (!  (=> (select (|PolymorphicMapType_13324_12835_39219#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) null (PredicateMaskField_7733 pm_f_13@@1))) o2_13@@3 f_30@@9) (= (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@14) o2_13@@3 f_30@@9) (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@3 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@3 f_30@@9))
))) (forall ((o2_13@@4 T@Ref) (f_30@@10 T@Field_7733_39352) ) (!  (=> (select (|PolymorphicMapType_13324_12835_40734#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) null (PredicateMaskField_7733 pm_f_13@@1))) o2_13@@4 f_30@@10) (= (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@14) o2_13@@4 f_30@@10) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@4 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@9) o2_13@@4 f_30@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@24) (IsPredicateField_7733_39310 pm_f_13@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12775) (ExhaleHeap@@10 T@PolymorphicMapType_12775) (Mask@@25 T@PolymorphicMapType_12796) (pm_f_13@@2 T@Field_7733_39219) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@25) (=> (and (HasDirectPerm_7733_39283 Mask@@25 null pm_f_13@@2) (IsWandField_7733_41261 pm_f_13@@2)) (and (and (and (and (and (forall ((o2_13@@5 T@Ref) (f_30@@11 T@Field_12835_53) ) (!  (=> (select (|PolymorphicMapType_13324_12835_53#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) null (WandMaskField_7733 pm_f_13@@2))) o2_13@@5 f_30@@11) (= (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@15) o2_13@@5 f_30@@11) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@5 f_30@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@5 f_30@@11))
)) (forall ((o2_13@@6 T@Ref) (f_30@@12 T@Field_12848_12849) ) (!  (=> (select (|PolymorphicMapType_13324_12835_12849#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) null (WandMaskField_7733 pm_f_13@@2))) o2_13@@6 f_30@@12) (= (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@15) o2_13@@6 f_30@@12) (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@6 f_30@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@6 f_30@@12))
))) (forall ((o2_13@@7 T@Ref) (f_30@@13 T@Field_18861_3085) ) (!  (=> (select (|PolymorphicMapType_13324_12835_3085#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) null (WandMaskField_7733 pm_f_13@@2))) o2_13@@7 f_30@@13) (= (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@15) o2_13@@7 f_30@@13) (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@7 f_30@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@7 f_30@@13))
))) (forall ((o2_13@@8 T@Ref) (f_30@@14 T@Field_18908_18913) ) (!  (=> (select (|PolymorphicMapType_13324_12835_18913#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) null (WandMaskField_7733 pm_f_13@@2))) o2_13@@8 f_30@@14) (= (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@15) o2_13@@8 f_30@@14) (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@8 f_30@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@8 f_30@@14))
))) (forall ((o2_13@@9 T@Ref) (f_30@@15 T@Field_7733_39219) ) (!  (=> (select (|PolymorphicMapType_13324_12835_39219#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) null (WandMaskField_7733 pm_f_13@@2))) o2_13@@9 f_30@@15) (= (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@15) o2_13@@9 f_30@@15) (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@9 f_30@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@9 f_30@@15))
))) (forall ((o2_13@@10 T@Ref) (f_30@@16 T@Field_7733_39352) ) (!  (=> (select (|PolymorphicMapType_13324_12835_40734#PolymorphicMapType_13324| (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) null (WandMaskField_7733 pm_f_13@@2))) o2_13@@10 f_30@@16) (= (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@15) o2_13@@10 f_30@@16) (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@10 f_30@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| ExhaleHeap@@10) o2_13@@10 f_30@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@25) (IsWandField_7733_41261 pm_f_13@@2))
)))
(assert (forall ((s0@@5 T@Seq_18911) (s1@@5 T@Seq_18911) ) (!  (=> (|Seq#Equal_18911| s0@@5 s1@@5) (and (= (|Seq#Length_7734| s0@@5) (|Seq#Length_7734| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7734| s0@@5))) (= (|Seq#Index_7734| s0@@5 j@@6) (|Seq#Index_7734| s1@@5 j@@6)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7734| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7734| s1@@5 j@@6))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18911| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2963) (s1@@6 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@6 s1@@6) (and (= (|Seq#Length_2963| s0@@6) (|Seq#Length_2963| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2963| s0@@6))) (= (|Seq#Index_2963| s0@@6 j@@7) (|Seq#Index_2963| s1@@6 j@@7)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2963| s1@@6 j@@7))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7734| (|Seq#Singleton_7734| t@@5)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7734| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((s@@21 T@Seq_18911) (t@@7 T@Seq_18911) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7734| s@@21))) (= (|Seq#Take_7734| (|Seq#Append_18911| s@@21 t@@7) n@@17) (|Seq#Take_7734| s@@21 n@@17)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7734| (|Seq#Append_18911| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18911) (i@@9 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_7734| s@@23))) (= (|Seq#Length_7734| (|Seq#Update_7734| s@@23 i@@9 v@@2)) (|Seq#Length_7734| s@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7734| (|Seq#Update_7734| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_7734| s@@23) (|Seq#Update_7734| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@10 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12775) (o_35 T@Ref) (f_11 T@Field_7733_39219) (v@@4 T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@16) (store (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@16) o_35 f_11 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@16) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@16) (store (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@16) o_35 f_11 v@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12775) (o_35@@0 T@Ref) (f_11@@0 T@Field_7733_39352) (v@@5 T@PolymorphicMapType_13324) ) (! (succHeap Heap@@17 (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@17) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@17) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@17) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@17) (store (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@17) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@17) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@17) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@17) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@17) (store (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@17) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12775) (o_35@@1 T@Ref) (f_11@@1 T@Field_18861_3085) (v@@6 Int) ) (! (succHeap Heap@@18 (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@18) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@18) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@18) (store (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@18) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@18) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@18) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@18) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@18) (store (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@18) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@18) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12775) (o_35@@2 T@Ref) (f_11@@2 T@Field_18908_18913) (v@@7 T@Seq_18911) ) (! (succHeap Heap@@19 (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@19) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@19) (store (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@19) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@19) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@19) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@19) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@19) (store (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@19) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@19) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@19) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12775) (o_35@@3 T@Ref) (f_11@@3 T@Field_12848_12849) (v@@8 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@20) (store (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@20) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@20) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@20) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@20) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12775 (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@20) (store (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@20) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@20) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@20) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@20) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12775) (o_35@@4 T@Ref) (f_11@@4 T@Field_12835_53) (v@@9 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_12775 (store (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@21) o_35@@4 f_11@@4 v@@9) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12775 (store (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@21) o_35@@4 f_11@@4 v@@9) (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_7731_3085#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_7733_39396#PolymorphicMapType_12775| Heap@@21) (|PolymorphicMapType_12775_12835_39219#PolymorphicMapType_12775| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_18911) (t@@9 T@Seq_18911) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7734| s@@25))) (= (|Seq#Drop_7734| (|Seq#Append_18911| s@@25 t@@9) n@@19) (|Seq#Append_18911| (|Seq#Drop_7734| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7734| (|Seq#Append_18911| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18911) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_7734| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_7734| (|Seq#Drop_7734| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_7734| s@@27 i@@11))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7734| s@@27 n@@21) (|Seq#Index_7734| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_2963| s@@28 i@@12))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_18911) (s1@@7 T@Seq_18911) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7734|)) (not (= s1@@7 |Seq#Empty_7734|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7734| s0@@7))) (= (|Seq#Index_7734| (|Seq#Append_18911| s0@@7 s1@@7) n@@23) (|Seq#Index_7734| s0@@7 n@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7734| (|Seq#Append_18911| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7734| s0@@7 n@@23) (|Seq#Append_18911| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18911) (s1@@9 T@Seq_18911) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7734|)) (not (= s1@@9 |Seq#Empty_7734|))) (<= 0 m)) (< m (|Seq#Length_7734| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7734| s0@@9)) (|Seq#Length_7734| s0@@9)) m) (= (|Seq#Index_7734| (|Seq#Append_18911| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7734| s0@@9))) (|Seq#Index_7734| s1@@9 m))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7734| s1@@9 m) (|Seq#Append_18911| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((o_35@@5 T@Ref) (f_31 T@Field_12848_12849) (Heap@@22 T@PolymorphicMapType_12775) ) (!  (=> (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@22) o_35@@5 $allocated) (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@22) (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@22) o_35@@5 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12775_7538_7539#PolymorphicMapType_12775| Heap@@22) o_35@@5 f_31))
)))
(assert (forall ((s@@29 T@Seq_18911) (x@@3 T@Ref) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_7734| s@@29))) (= (|Seq#Index_7734| s@@29 i@@13) x@@3)) (|Seq#Contains_18911| s@@29 x@@3))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_18911| s@@29 x@@3) (|Seq#Index_7734| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@14) x@@4)) (|Seq#Contains_2963| s@@30 x@@4))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@4) (|Seq#Index_2963| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_18911) (s1@@11 T@Seq_18911) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18911| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18911| s0@@11 s1@@11))) (not (= (|Seq#Length_7734| s0@@11) (|Seq#Length_7734| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18911| s0@@11 s1@@11))) (= (|Seq#Length_7734| s0@@11) (|Seq#Length_7734| s1@@11))) (= (|Seq#SkolemDiff_18911| s0@@11 s1@@11) (|Seq#SkolemDiff_18911| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18911| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18911| s0@@11 s1@@11) (|Seq#Length_7734| s0@@11))) (not (= (|Seq#Index_7734| s0@@11 (|Seq#SkolemDiff_18911| s0@@11 s1@@11)) (|Seq#Index_7734| s1@@11 (|Seq#SkolemDiff_18911| s0@@11 s1@@11))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18911| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_7733_39219) (v_1@@0 T@FrameType) (q T@Field_7733_39219) (w@@0 T@FrameType) (r T@Field_7733_39219) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12835_12835 p@@1 v_1@@0 q w@@0) (InsidePredicate_12835_12835 q w@@0 r u)) (InsidePredicate_12835_12835 p@@1 v_1@@0 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12835_12835 p@@1 v_1@@0 q w@@0) (InsidePredicate_12835_12835 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_18911) ) (!  (=> (= (|Seq#Length_7734| s@@31) 0) (= s@@31 |Seq#Empty_7734|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7734| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18911) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7734| s@@33 n@@25) |Seq#Empty_7734|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7734| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2963) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2963| s@@34 n@@26) |Seq#Empty_2963|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@@15 () Int)
(declare-fun k_2 () Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_12796)
(declare-fun this@@3 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_12775)
(declare-fun k_1 () Int)
(declare-fun j_5 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun k_4_1 () Int)
(declare-fun j_2_1 () Int)
(declare-fun Heap@@23 () T@PolymorphicMapType_12775)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_12796)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_12796)
(declare-fun Mask@0 () T@PolymorphicMapType_12796)
(declare-fun wildcard@1 () Real)
(declare-fun k_7 () Int)
(declare-fun k_4 () Int)
(declare-fun j_6 () Int)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id init)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon8_correct true))
(let ((anon27_Else_correct  (=> (and (not (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_2)) (= (ControlFlow 0 46) 41)) anon8_correct)))
(let ((anon27_Then_correct  (=> (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_2) (and (=> (= (ControlFlow 0 42) (- 0 45)) (HasDirectPerm_7733_20080 PostMask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 PostMask@0 this@@3 array) (and (=> (= (ControlFlow 0 42) (- 0 44)) (>= k_2 0)) (=> (>= k_2 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< k_2 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array)))) (=> (< k_2 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array))) (=> (= (ControlFlow 0 42) 41) anon8_correct))))))))))
(let ((anon26_Else_correct  (=> (= (ControlFlow 0 40) (- 0 39)) (forall ((k_3 Int) (k_3_1 Int) ) (!  (=> (and (and (and (and (not (= k_3 k_3_1)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_3)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) k_3) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) k_3_1))))
 :qid |stdinbpl.775:15|
 :skolemid |63|
)))))
(let ((anon24_Else_correct  (=> (and (forall ((k_1_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_1_1) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_1) (not (= k_1_1 j_1)))) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) k_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) j_1))))
 :qid |stdinbpl.755:20|
 :skolemid |62|
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_1_1) (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_1_1) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_1_1) (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_1_1) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) j_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) j_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) k_1_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) k_1_1))
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) k_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array) j_1))
)) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 47) 40) anon26_Else_correct) (=> (= (ControlFlow 0 47) 42) anon27_Then_correct)) (=> (= (ControlFlow 0 47) 46) anon27_Else_correct)))))
(let ((anon4_correct true))
(let ((anon25_Else_correct  (=> (and (not (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_1) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_5) (not (= k_1 j_5))))) (= (ControlFlow 0 38) 30)) anon4_correct)))
(let ((anon25_Then_correct  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_1) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_5) (not (= k_1 j_5)))) (and (=> (= (ControlFlow 0 31) (- 0 37)) (HasDirectPerm_7733_20080 PostMask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 PostMask@0 this@@3 array) (and (=> (= (ControlFlow 0 31) (- 0 36)) (>= k_1 0)) (=> (>= k_1 0) (and (=> (= (ControlFlow 0 31) (- 0 35)) (< k_1 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array)))) (=> (< k_1 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array))) (and (=> (= (ControlFlow 0 31) (- 0 34)) (HasDirectPerm_7733_20080 PostMask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 PostMask@0 this@@3 array) (and (=> (= (ControlFlow 0 31) (- 0 33)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 31) (- 0 32)) (< j_5 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array)))) (=> (< j_5 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array))) (=> (= (ControlFlow 0 31) 30) anon4_correct))))))))))))))))
(let ((anon23_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (> wildcard@0 NoPerm)) (=> (and (and (not (= this@@3 null)) (= PostMask@0 (PolymorphicMapType_12796 (store (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ZeroMask) this@@3 array (+ (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ZeroMask) this@@3 array) wildcard@0)) (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (HasDirectPerm_7733_20080 PostMask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 PostMask@0 this@@3 array) (=> (and (= (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| PostHeap@0) this@@3 array)) i@@15) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 48) 47) anon24_Else_correct) (=> (= (ControlFlow 0 48) 31) anon25_Then_correct)) (=> (= (ControlFlow 0 48) 38) anon25_Else_correct)))))))))
(let ((anon21_correct true))
(let ((anon33_Else_correct  (=> (and (not (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_4_1) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_2_1) (not (= k_4_1 j_2_1))))) (= (ControlFlow 0 22) 19)) anon21_correct)))
(let ((anon33_Then_correct  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_4_1) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_2_1) (not (= k_4_1 j_2_1)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_4_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_2_1)))) (=> (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_4_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_2_1))) (=> (= (ControlFlow 0 20) 19) anon21_correct))))))
(let ((anon32_Else_correct  (=> (forall ((k_5_1_1 Int) (j_3_1_1 Int) ) (!  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_3_1_1) (not (= k_5_1_1 j_3_1_1)))) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_5_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_3_1_1))))
 :qid |stdinbpl.919:20|
 :skolemid |76|
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_3_1_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_3_1_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_3_1_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_5_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_3_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_5_1_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_3_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_5_1_1))
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_5_1_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_3_1_1))
)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((k_6 Int) (k_6_1 Int) ) (!  (=> (and (and (and (and (not (= k_6 k_6_1)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_6)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6_1))))
 :qid |stdinbpl.930:17|
 :skolemid |77|
 :pattern ( (neverTriggered2 k_6) (neverTriggered2 k_6_1))
))) (=> (forall ((k_6@@0 Int) (k_6_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_6@@0 k_6_1@@0)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_6@@0)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6@@0) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6_1@@0))))
 :qid |stdinbpl.930:17|
 :skolemid |77|
 :pattern ( (neverTriggered2 k_6@@0) (neverTriggered2 k_6_1@@0))
)) (=> (= (ControlFlow 0 17) (- 0 16)) (forall ((k_6@@1 Int) ) (!  (=> (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_6@@1) (>= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6@@1) value) FullPerm))
 :qid |stdinbpl.937:17|
 :skolemid |78|
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6@@1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_6@@1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_6@@1))
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_6@@1))
))))))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 23) (- 0 26)) (forall ((k_10_2 Int) (k_10_3 Int) ) (!  (=> (and (and (and (and (not (= k_10_2 k_10_3)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_2)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_3))))
 :qid |stdinbpl.867:15|
 :skolemid |70|
))) (=> (forall ((k_10_2@@0 Int) (k_10_3@@0 Int) ) (!  (=> (and (and (and (and (not (= k_10_2@@0 k_10_3@@0)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_2@@0)) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@0) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_3@@0))))
 :qid |stdinbpl.867:15|
 :skolemid |70|
)) (=> (and (and (forall ((k_10_2@@1 Int) ) (!  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_2@@1) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@1)) (= (invRecv3 (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@1)) k_10_2@@1)))
 :qid |stdinbpl.873:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_10_2@@1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_2@@1))
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) (invRecv3 o_4)) (< NoPerm FullPerm)) (qpRange3 o_4)) (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) (invRecv3 o_4)) o_4))
 :qid |stdinbpl.877:22|
 :skolemid |72|
 :pattern ( (invRecv3 o_4))
))) (and (forall ((k_10_2@@2 Int) ) (!  (=> (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_2@@2) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@2) null)))
 :qid |stdinbpl.883:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@2))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_10_2@@2))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_10_2@@2))
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_10_2@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) (invRecv3 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| QPMask@0) o_4@@0 value) (+ (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@0) o_4@@0 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| QPMask@0) o_4@@0 value) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@0) o_4@@0 value))))
 :qid |stdinbpl.889:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| QPMask@0) o_4@@0 value))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_12835_53) ) (!  (=> true (= (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| Mask@0) o_4@@1 f_5) (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.893:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| Mask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_12848_12849) ) (!  (=> true (= (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| Mask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.893:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| Mask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_18861_3085) ) (!  (=> (not (= f_5@@1 value)) (= (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.893:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| Mask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_18908_18913) ) (!  (=> true (= (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| Mask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.893:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| Mask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7733_39219) ) (!  (=> true (= (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| Mask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.893:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| Mask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_7733_39352) ) (!  (=> true (= (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| Mask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.893:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| Mask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| QPMask@0) o_4@@6 f_5@@4))
))) (state Heap@@23 QPMask@0)) (and (state Heap@@23 QPMask@0) (state Heap@@23 QPMask@0))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (> (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) this@@3 array) NoPerm)) (=> (> (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) this@@3 array) NoPerm) (=> (> wildcard@1 NoPerm) (=> (and (< wildcard@1 (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) this@@3 array)) (= Mask@1 (PolymorphicMapType_12796 (store (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) this@@3 array (- (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| QPMask@0) this@@3 array) wildcard@1)) (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| QPMask@0) (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| QPMask@0) (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| QPMask@0) (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| QPMask@0) (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| QPMask@0)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (= (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array)) i@@15)) (=> (= (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array)) i@@15) (and (and (=> (= (ControlFlow 0 23) 17) anon32_Else_correct) (=> (= (ControlFlow 0 23) 20) anon33_Then_correct)) (=> (= (ControlFlow 0 23) 22) anon33_Else_correct))))))))))))))
(let ((anon17_correct true))
(let ((anon31_Else_correct  (=> (and (not (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_7)) (= (ControlFlow 0 15) 10)) anon17_correct)))
(let ((anon31_Then_correct  (=> (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_7) (and (=> (= (ControlFlow 0 11) (- 0 14)) (HasDirectPerm_7733_20080 Mask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 Mask@0 this@@3 array) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= k_7 0)) (=> (>= k_7 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< k_7 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array)))) (=> (< k_7 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array))) (=> (= (ControlFlow 0 11) 10) anon17_correct))))))))))
(let ((anon28_Else_correct  (=> (forall ((k_8 Int) (j_5_1 Int) ) (!  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_8) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_5_1) (not (= k_8 j_5_1)))) (not (= (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_8) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_5_1))))
 :qid |stdinbpl.848:20|
 :skolemid |69|
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_8) (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_5_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_8) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_5_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_8) (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_5_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_8) (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_5_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) k_8) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_5_1))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_8) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_5_1))
 :pattern ( (|Seq#ContainsTrigger_2963| (|Seq#Range| 0 i@@15) j_5_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_8))
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_5_1) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_8))
 :pattern ( (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) k_8) (|Seq#Index_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array) j_5_1))
)) (and (and (=> (= (ControlFlow 0 27) 23) anon30_Else_correct) (=> (= (ControlFlow 0 27) 11) anon31_Then_correct)) (=> (= (ControlFlow 0 27) 15) anon31_Else_correct)))))
(let ((anon13_correct true))
(let ((anon29_Else_correct  (=> (and (not (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_4) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_6) (not (= k_4 j_6))))) (= (ControlFlow 0 9) 1)) anon13_correct)))
(let ((anon29_Then_correct  (=> (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) k_4) (and (|Seq#Contains_2963| (|Seq#Range| 0 i@@15) j_6) (not (= k_4 j_6)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_7733_20080 Mask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 Mask@0 this@@3 array) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= k_4 0)) (=> (>= k_4 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< k_4 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array)))) (=> (< k_4 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_7733_20080 Mask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 Mask@0 this@@3 array) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_6 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array)))) (=> (< j_6 (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array))) (=> (= (ControlFlow 0 2) 1) anon13_correct))))))))))))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (HasDirectPerm_7733_20080 Mask@0 this@@3 array)) (=> (HasDirectPerm_7733_20080 Mask@0 this@@3 array) (=> (= (|Seq#Length_7734| (select (|PolymorphicMapType_12775_7733_19227#PolymorphicMapType_12775| Heap@@23) this@@3 array)) i@@15) (and (and (=> (= (ControlFlow 0 28) 27) anon28_Else_correct) (=> (= (ControlFlow 0 28) 2) anon29_Then_correct)) (=> (= (ControlFlow 0 28) 9) anon29_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@23 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_12775_7535_53#PolymorphicMapType_12775| Heap@@23) this@@3 $allocated))) (and (and (not (= this@@3 null)) (= Mask@0 (PolymorphicMapType_12796 (store (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ZeroMask) this@@3 array (+ (select (|PolymorphicMapType_12796_7733_19922#PolymorphicMapType_12796| ZeroMask) this@@3 array) FullPerm)) (|PolymorphicMapType_12796_7731_3085#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_53#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_12849#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_39219#PolymorphicMapType_12796| ZeroMask) (|PolymorphicMapType_12796_7733_44046#PolymorphicMapType_12796| ZeroMask)))) (and (state Heap@@23 Mask@0) (state Heap@@23 Mask@0)))) (and (=> (= (ControlFlow 0 50) 48) anon23_Then_correct) (=> (= (ControlFlow 0 50) 28) anon23_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 51) 50)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
