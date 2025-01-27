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
(declare-sort T@Field_8273_53 0)
(declare-sort T@Field_8286_8287 0)
(declare-sort T@Field_14295_3037 0)
(declare-sort T@Field_5617_20973 0)
(declare-sort T@Field_5617_20840 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8234 0)) (((PolymorphicMapType_8234 (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| (Array T@Ref T@Field_14295_3037 Real)) (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| (Array T@Ref T@Field_8273_53 Real)) (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| (Array T@Ref T@Field_8286_8287 Real)) (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| (Array T@Ref T@Field_5617_20840 Real)) (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| (Array T@Ref T@Field_5617_20973 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8762 0)) (((PolymorphicMapType_8762 (|PolymorphicMapType_8762_8273_53#PolymorphicMapType_8762| (Array T@Ref T@Field_8273_53 Bool)) (|PolymorphicMapType_8762_8273_8287#PolymorphicMapType_8762| (Array T@Ref T@Field_8286_8287 Bool)) (|PolymorphicMapType_8762_8273_3037#PolymorphicMapType_8762| (Array T@Ref T@Field_14295_3037 Bool)) (|PolymorphicMapType_8762_8273_20840#PolymorphicMapType_8762| (Array T@Ref T@Field_5617_20840 Bool)) (|PolymorphicMapType_8762_8273_22151#PolymorphicMapType_8762| (Array T@Ref T@Field_5617_20973 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8213 0)) (((PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| (Array T@Ref T@Field_8273_53 Bool)) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| (Array T@Ref T@Field_8286_8287 T@Ref)) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| (Array T@Ref T@Field_14295_3037 Int)) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| (Array T@Ref T@Field_5617_20973 T@PolymorphicMapType_8762)) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| (Array T@Ref T@Field_5617_20840 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8273_53)
(declare-fun val () T@Field_14295_3037)
(declare-sort T@Seq_15644 0)
(declare-fun |Seq#Length_5643| (T@Seq_15644) Int)
(declare-fun |Seq#Drop_5643| (T@Seq_15644 Int) T@Seq_15644)
(declare-sort T@Seq_2915 0)
(declare-fun |Seq#Length_2915| (T@Seq_2915) Int)
(declare-fun |Seq#Drop_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun succHeap (T@PolymorphicMapType_8213 T@PolymorphicMapType_8213) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8213 T@PolymorphicMapType_8213) Bool)
(declare-fun state (T@PolymorphicMapType_8213 T@PolymorphicMapType_8234) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8234) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8762)
(declare-fun |Seq#Index_5643| (T@Seq_15644 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2915| (T@Seq_2915 Int) Int)
(declare-fun |Seq#Empty_5643| () T@Seq_15644)
(declare-fun |Seq#Empty_2915| () T@Seq_2915)
(declare-fun |Seq#Update_5643| (T@Seq_15644 Int T@Ref) T@Seq_15644)
(declare-fun |Seq#Update_2915| (T@Seq_2915 Int Int) T@Seq_2915)
(declare-fun |Seq#Take_5643| (T@Seq_15644 Int) T@Seq_15644)
(declare-fun |Seq#Take_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun |Seq#Contains_2915| (T@Seq_2915 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2915)
(declare-fun |Seq#Contains_15644| (T@Seq_15644 T@Ref) Bool)
(declare-fun |Seq#Skolem_15644| (T@Seq_15644 T@Ref) Int)
(declare-fun |Seq#Skolem_2915| (T@Seq_2915 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8213 T@PolymorphicMapType_8213 T@PolymorphicMapType_8234) Bool)
(declare-fun IsPredicateField_5617_20931 (T@Field_5617_20840) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5617 (T@Field_5617_20840) T@Field_5617_20973)
(declare-fun HasDirectPerm_5617_20904 (T@PolymorphicMapType_8234 T@Ref T@Field_5617_20840) Bool)
(declare-fun IsWandField_5617_22678 (T@Field_5617_20840) Bool)
(declare-fun WandMaskField_5617 (T@Field_5617_20840) T@Field_5617_20973)
(declare-fun |Seq#Singleton_5643| (T@Ref) T@Seq_15644)
(declare-fun |Seq#Singleton_2915| (Int) T@Seq_2915)
(declare-fun |Seq#Append_15644| (T@Seq_15644 T@Seq_15644) T@Seq_15644)
(declare-fun |Seq#Append_2915| (T@Seq_2915 T@Seq_2915) T@Seq_2915)
(declare-fun dummyHeap () T@PolymorphicMapType_8213)
(declare-fun ZeroMask () T@PolymorphicMapType_8234)
(declare-fun InsidePredicate_8273_8273 (T@Field_5617_20840 T@FrameType T@Field_5617_20840 T@FrameType) Bool)
(declare-fun IsPredicateField_5617_3037 (T@Field_14295_3037) Bool)
(declare-fun IsWandField_5617_3037 (T@Field_14295_3037) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5617_26224 (T@Field_5617_20973) Bool)
(declare-fun IsWandField_5617_26240 (T@Field_5617_20973) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5617_8287 (T@Field_8286_8287) Bool)
(declare-fun IsWandField_5617_8287 (T@Field_8286_8287) Bool)
(declare-fun IsPredicateField_5617_53 (T@Field_8273_53) Bool)
(declare-fun IsWandField_5617_53 (T@Field_8273_53) Bool)
(declare-fun HasDirectPerm_5617_26678 (T@PolymorphicMapType_8234 T@Ref T@Field_5617_20973) Bool)
(declare-fun HasDirectPerm_5617_8287 (T@PolymorphicMapType_8234 T@Ref T@Field_8286_8287) Bool)
(declare-fun HasDirectPerm_5617_53 (T@PolymorphicMapType_8234 T@Ref T@Field_8273_53) Bool)
(declare-fun HasDirectPerm_5617_3037 (T@PolymorphicMapType_8234 T@Ref T@Field_14295_3037) Bool)
(declare-fun |idx'| (T@PolymorphicMapType_8213 Int Int Int Int) Int)
(declare-fun dummyFunction_3347 (Int) Bool)
(declare-fun |idx#triggerStateless| (Int Int Int Int) Int)
(declare-fun |idx_abs'| (T@PolymorphicMapType_8213 Int Int Int Int) Int)
(declare-fun |idx_abs#triggerStateless| (Int Int Int Int) Int)
(declare-fun idx_3 (T@PolymorphicMapType_8213 Int Int Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun idx_abs (T@PolymorphicMapType_8213 Int Int Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_8234 T@PolymorphicMapType_8234 T@PolymorphicMapType_8234) Bool)
(declare-fun |idx#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |idx_abs#frame| (T@FrameType Int Int Int Int) Int)
(declare-fun |Seq#Equal_15644| (T@Seq_15644 T@Seq_15644) Bool)
(declare-fun |Seq#Equal_2915| (T@Seq_2915 T@Seq_2915) Bool)
(declare-fun |Seq#ContainsTrigger_5643| (T@Seq_15644 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2915| (T@Seq_2915 Int) Bool)
(declare-fun |Seq#SkolemDiff_15644| (T@Seq_15644 T@Seq_15644) Int)
(declare-fun |Seq#SkolemDiff_2915| (T@Seq_2915 T@Seq_2915) Int)
(declare-fun |idx_abs#trigger| (T@FrameType Int Int Int Int) Bool)
(assert (forall ((s T@Seq_15644) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5643| s)) (= (|Seq#Length_5643| (|Seq#Drop_5643| s n)) (- (|Seq#Length_5643| s) n))) (=> (< (|Seq#Length_5643| s) n) (= (|Seq#Length_5643| (|Seq#Drop_5643| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5643| (|Seq#Drop_5643| s n)) (|Seq#Length_5643| s))))
 :qid |stdinbpl.295:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5643| (|Seq#Drop_5643| s n)))
 :pattern ( (|Seq#Length_5643| s) (|Seq#Drop_5643| s n))
)))
(assert (forall ((s@@0 T@Seq_2915) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2915| s@@0)) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (- (|Seq#Length_2915| s@@0) n@@0))) (=> (< (|Seq#Length_2915| s@@0) n@@0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (|Seq#Length_2915| s@@0))))
 :qid |stdinbpl.295:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2915| s@@0) (|Seq#Drop_2915| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8213) (Heap1 T@PolymorphicMapType_8213) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8213) (Mask T@PolymorphicMapType_8234) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8213) (Heap1@@0 T@PolymorphicMapType_8213) (Heap2 T@PolymorphicMapType_8213) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5617_20973) ) (!  (not (select (|PolymorphicMapType_8762_8273_22151#PolymorphicMapType_8762| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8762_8273_22151#PolymorphicMapType_8762| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5617_20840) ) (!  (not (select (|PolymorphicMapType_8762_8273_20840#PolymorphicMapType_8762| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8762_8273_20840#PolymorphicMapType_8762| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14295_3037) ) (!  (not (select (|PolymorphicMapType_8762_8273_3037#PolymorphicMapType_8762| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8762_8273_3037#PolymorphicMapType_8762| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8286_8287) ) (!  (not (select (|PolymorphicMapType_8762_8273_8287#PolymorphicMapType_8762| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8762_8273_8287#PolymorphicMapType_8762| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8273_53) ) (!  (not (select (|PolymorphicMapType_8762_8273_53#PolymorphicMapType_8762| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8762_8273_53#PolymorphicMapType_8762| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_15644) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5643| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5643| (|Seq#Drop_5643| s@@1 n@@1) j) (|Seq#Index_5643| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.316:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5643| (|Seq#Drop_5643| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2915) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2915| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0) (|Seq#Index_2915| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.316:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5643| |Seq#Empty_5643|) 0))
(assert (= (|Seq#Length_2915| |Seq#Empty_2915|) 0))
(assert (forall ((s@@3 T@Seq_15644) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5643| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_5643| (|Seq#Update_5643| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_5643| (|Seq#Update_5643| s@@3 i v) n@@3) (|Seq#Index_5643| s@@3 n@@3)))))
 :qid |stdinbpl.271:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5643| (|Seq#Update_5643| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_5643| s@@3 n@@3) (|Seq#Update_5643| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2915) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2915| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2915| s@@4 n@@4)))))
 :qid |stdinbpl.271:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2915| s@@4 n@@4) (|Seq#Update_2915| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_15644) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5643| s@@5)) (= (|Seq#Length_5643| (|Seq#Take_5643| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5643| s@@5) n@@5) (= (|Seq#Length_5643| (|Seq#Take_5643| s@@5 n@@5)) (|Seq#Length_5643| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5643| (|Seq#Take_5643| s@@5 n@@5)) 0)))
 :qid |stdinbpl.282:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5643| (|Seq#Take_5643| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5643| s@@5 n@@5) (|Seq#Length_5643| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2915) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2915| s@@6)) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2915| s@@6) n@@6) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) (|Seq#Length_2915| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) 0)))
 :qid |stdinbpl.282:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2915| s@@6 n@@6) (|Seq#Length_2915| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.556:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_15644) (x T@Ref) ) (!  (=> (|Seq#Contains_15644| s@@7 x) (and (and (<= 0 (|Seq#Skolem_15644| s@@7 x)) (< (|Seq#Skolem_15644| s@@7 x) (|Seq#Length_5643| s@@7))) (= (|Seq#Index_5643| s@@7 (|Seq#Skolem_15644| s@@7 x)) x)))
 :qid |stdinbpl.414:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_15644| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2915) (x@@0 Int) ) (!  (=> (|Seq#Contains_2915| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2915| s@@8 x@@0)) (< (|Seq#Skolem_2915| s@@8 x@@0) (|Seq#Length_2915| s@@8))) (= (|Seq#Index_2915| s@@8 (|Seq#Skolem_2915| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.414:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2915| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_15644) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5643| s@@9 n@@7) s@@9))
 :qid |stdinbpl.398:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5643| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2915) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2915| s@@10 n@@8) s@@10))
 :qid |stdinbpl.398:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2915| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.251:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.249:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8213) (ExhaleHeap T@PolymorphicMapType_8213) (Mask@@0 T@PolymorphicMapType_8234) (pm_f_20 T@Field_5617_20840) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5617_20904 Mask@@0 null pm_f_20) (IsPredicateField_5617_20931 pm_f_20)) (= (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@0) null (PredicateMaskField_5617 pm_f_20)) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap) null (PredicateMaskField_5617 pm_f_20)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5617_20931 pm_f_20) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap) null (PredicateMaskField_5617 pm_f_20)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8213) (ExhaleHeap@@0 T@PolymorphicMapType_8213) (Mask@@1 T@PolymorphicMapType_8234) (pm_f_20@@0 T@Field_5617_20840) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5617_20904 Mask@@1 null pm_f_20@@0) (IsWandField_5617_22678 pm_f_20@@0)) (= (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@1) null (WandMaskField_5617 pm_f_20@@0)) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@0) null (WandMaskField_5617 pm_f_20@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5617_22678 pm_f_20@@0) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@0) null (WandMaskField_5617 pm_f_20@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_15644| (|Seq#Singleton_5643| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.539:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_15644| (|Seq#Singleton_5643| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.539:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_15644) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5643| s@@11))) (= (|Seq#Index_5643| (|Seq#Take_5643| s@@11 n@@9) j@@3) (|Seq#Index_5643| s@@11 j@@3)))
 :qid |stdinbpl.290:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5643| (|Seq#Take_5643| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5643| s@@11 j@@3) (|Seq#Take_5643| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2915) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2915| s@@12))) (= (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4) (|Seq#Index_2915| s@@12 j@@4)))
 :qid |stdinbpl.290:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2915| s@@12 j@@4) (|Seq#Take_2915| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_15644) (t T@Seq_15644) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5643| s@@13))) (< n@@11 (|Seq#Length_5643| (|Seq#Append_15644| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5643| s@@13)) (|Seq#Length_5643| s@@13)) n@@11) (= (|Seq#Take_5643| (|Seq#Append_15644| s@@13 t) n@@11) (|Seq#Append_15644| s@@13 (|Seq#Take_5643| t (|Seq#Sub| n@@11 (|Seq#Length_5643| s@@13)))))))
 :qid |stdinbpl.375:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5643| (|Seq#Append_15644| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2915) (t@@0 T@Seq_2915) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2915| s@@14))) (< n@@12 (|Seq#Length_2915| (|Seq#Append_2915| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)) (|Seq#Length_2915| s@@14)) n@@12) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12) (|Seq#Append_2915| s@@14 (|Seq#Take_2915| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)))))))
 :qid |stdinbpl.375:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8213) (ExhaleHeap@@1 T@PolymorphicMapType_8213) (Mask@@2 T@PolymorphicMapType_8234) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@2) o_41 $allocated) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@1) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@1) o_41 $allocated))
)))
(assert (forall ((p T@Field_5617_20840) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8273_8273 p v_1 p w))
 :qid |stdinbpl.193:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8273_8273 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_15644) (s1 T@Seq_15644) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5643|)) (not (= s1 |Seq#Empty_5643|))) (<= (|Seq#Length_5643| s0) n@@13)) (< n@@13 (|Seq#Length_5643| (|Seq#Append_15644| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5643| s0)) (|Seq#Length_5643| s0)) n@@13) (= (|Seq#Index_5643| (|Seq#Append_15644| s0 s1) n@@13) (|Seq#Index_5643| s1 (|Seq#Sub| n@@13 (|Seq#Length_5643| s0))))))
 :qid |stdinbpl.262:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5643| (|Seq#Append_15644| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2915) (s1@@0 T@Seq_2915) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2915|)) (not (= s1@@0 |Seq#Empty_2915|))) (<= (|Seq#Length_2915| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2915| (|Seq#Append_2915| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0)) (|Seq#Length_2915| s0@@0)) n@@14) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14) (|Seq#Index_2915| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0))))))
 :qid |stdinbpl.262:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5617_3037 val)))
(assert  (not (IsWandField_5617_3037 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8213) (ExhaleHeap@@2 T@PolymorphicMapType_8213) (Mask@@3 T@PolymorphicMapType_8234) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8234) (o_2@@4 T@Ref) (f_4@@4 T@Field_5617_20973) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5617_26224 f_4@@4))) (not (IsWandField_5617_26240 f_4@@4))) (<= (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8234) (o_2@@5 T@Ref) (f_4@@5 T@Field_5617_20840) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5617_20931 f_4@@5))) (not (IsWandField_5617_22678 f_4@@5))) (<= (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8234) (o_2@@6 T@Ref) (f_4@@6 T@Field_8286_8287) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5617_8287 f_4@@6))) (not (IsWandField_5617_8287 f_4@@6))) (<= (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8234) (o_2@@7 T@Ref) (f_4@@7 T@Field_8273_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5617_53 f_4@@7))) (not (IsWandField_5617_53 f_4@@7))) (<= (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8234) (o_2@@8 T@Ref) (f_4@@8 T@Field_14295_3037) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5617_3037 f_4@@8))) (not (IsWandField_5617_3037 f_4@@8))) (<= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8234) (o_2@@9 T@Ref) (f_4@@9 T@Field_5617_20973) ) (! (= (HasDirectPerm_5617_26678 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5617_26678 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8234) (o_2@@10 T@Ref) (f_4@@10 T@Field_5617_20840) ) (! (= (HasDirectPerm_5617_20904 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5617_20904 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8234) (o_2@@11 T@Ref) (f_4@@11 T@Field_8286_8287) ) (! (= (HasDirectPerm_5617_8287 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5617_8287 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8234) (o_2@@12 T@Ref) (f_4@@12 T@Field_8273_53) ) (! (= (HasDirectPerm_5617_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5617_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8234) (o_2@@13 T@Ref) (f_4@@13 T@Field_14295_3037) ) (! (= (HasDirectPerm_5617_3037 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5617_3037 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8213) (M_1 Int) (N Int) (i@@3 Int) (j@@5 Int) ) (! (dummyFunction_3347 (|idx#triggerStateless| M_1 N i@@3 j@@5))
 :qid |stdinbpl.581:15|
 :skolemid |59|
 :pattern ( (|idx'| Heap@@4 M_1 N i@@3 j@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8213) (M_1@@0 Int) (N@@0 Int) (i@@4 Int) (j@@6 Int) ) (! (dummyFunction_3347 (|idx_abs#triggerStateless| M_1@@0 N@@0 i@@4 j@@6))
 :qid |stdinbpl.631:15|
 :skolemid |63|
 :pattern ( (|idx_abs'| Heap@@5 M_1@@0 N@@0 i@@4 j@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8213) (Mask@@14 T@PolymorphicMapType_8234) (M_1@@1 Int) (N@@1 Int) (i@@5 Int) (j@@7 Int) ) (!  (=> (and (state Heap@@6 Mask@@14) (< AssumeFunctionsAbove 0)) (= (idx_3 Heap@@6 M_1@@1 N@@1 i@@5 j@@7) 0))
 :qid |stdinbpl.587:15|
 :skolemid |60|
 :pattern ( (state Heap@@6 Mask@@14) (idx_3 Heap@@6 M_1@@1 N@@1 i@@5 j@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8213) (ExhaleHeap@@3 T@PolymorphicMapType_8213) (Mask@@15 T@PolymorphicMapType_8234) (pm_f_20@@1 T@Field_5617_20840) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_5617_20904 Mask@@15 null pm_f_20@@1) (IsPredicateField_5617_20931 pm_f_20@@1)) (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_8273_53) ) (!  (=> (select (|PolymorphicMapType_8762_8273_53#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@7) null (PredicateMaskField_5617 pm_f_20@@1))) o2_20 f_53) (= (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@7) o2_20 f_53) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_8286_8287) ) (!  (=> (select (|PolymorphicMapType_8762_8273_8287#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@7) null (PredicateMaskField_5617 pm_f_20@@1))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@7) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_14295_3037) ) (!  (=> (select (|PolymorphicMapType_8762_8273_3037#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@7) null (PredicateMaskField_5617 pm_f_20@@1))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@7) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_5617_20840) ) (!  (=> (select (|PolymorphicMapType_8762_8273_20840#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@7) null (PredicateMaskField_5617 pm_f_20@@1))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@7) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_5617_20973) ) (!  (=> (select (|PolymorphicMapType_8762_8273_22151#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@7) null (PredicateMaskField_5617 pm_f_20@@1))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@7) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@3) o2_20@@3 f_53@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_5617_20931 pm_f_20@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8213) (ExhaleHeap@@4 T@PolymorphicMapType_8213) (Mask@@16 T@PolymorphicMapType_8234) (pm_f_20@@2 T@Field_5617_20840) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_5617_20904 Mask@@16 null pm_f_20@@2) (IsWandField_5617_22678 pm_f_20@@2)) (and (and (and (and (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_8273_53) ) (!  (=> (select (|PolymorphicMapType_8762_8273_53#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@8) null (WandMaskField_5617 pm_f_20@@2))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@8) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@4 f_53@@4))
)) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_8286_8287) ) (!  (=> (select (|PolymorphicMapType_8762_8273_8287#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@8) null (WandMaskField_5617 pm_f_20@@2))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@8) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_14295_3037) ) (!  (=> (select (|PolymorphicMapType_8762_8273_3037#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@8) null (WandMaskField_5617 pm_f_20@@2))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@8) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_5617_20840) ) (!  (=> (select (|PolymorphicMapType_8762_8273_20840#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@8) null (WandMaskField_5617 pm_f_20@@2))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@8) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_5617_20973) ) (!  (=> (select (|PolymorphicMapType_8762_8273_22151#PolymorphicMapType_8762| (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@8) null (WandMaskField_5617 pm_f_20@@2))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@8) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@4) o2_20@@8 f_53@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_5617_22678 pm_f_20@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.181:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@8) (+ q@min@@0 j@@8)))
 :qid |stdinbpl.554:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8213) (ExhaleHeap@@5 T@PolymorphicMapType_8213) (Mask@@17 T@PolymorphicMapType_8234) (o_41@@0 T@Ref) (f_53@@9 T@Field_5617_20973) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_5617_26678 Mask@@17 o_41@@0 f_53@@9) (= (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@9) o_41@@0 f_53@@9) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@5) o_41@@0 f_53@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| ExhaleHeap@@5) o_41@@0 f_53@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8213) (ExhaleHeap@@6 T@PolymorphicMapType_8213) (Mask@@18 T@PolymorphicMapType_8234) (o_41@@1 T@Ref) (f_53@@10 T@Field_5617_20840) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_5617_20904 Mask@@18 o_41@@1 f_53@@10) (= (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@10) o_41@@1 f_53@@10) (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| ExhaleHeap@@6) o_41@@1 f_53@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| ExhaleHeap@@6) o_41@@1 f_53@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8213) (ExhaleHeap@@7 T@PolymorphicMapType_8213) (Mask@@19 T@PolymorphicMapType_8234) (o_41@@2 T@Ref) (f_53@@11 T@Field_8286_8287) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_5617_8287 Mask@@19 o_41@@2 f_53@@11) (= (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@11) o_41@@2 f_53@@11) (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| ExhaleHeap@@7) o_41@@2 f_53@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| ExhaleHeap@@7) o_41@@2 f_53@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8213) (ExhaleHeap@@8 T@PolymorphicMapType_8213) (Mask@@20 T@PolymorphicMapType_8234) (o_41@@3 T@Ref) (f_53@@12 T@Field_8273_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_5617_53 Mask@@20 o_41@@3 f_53@@12) (= (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@12) o_41@@3 f_53@@12) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@8) o_41@@3 f_53@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| ExhaleHeap@@8) o_41@@3 f_53@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8213) (ExhaleHeap@@9 T@PolymorphicMapType_8213) (Mask@@21 T@PolymorphicMapType_8234) (o_41@@4 T@Ref) (f_53@@13 T@Field_14295_3037) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_5617_3037 Mask@@21 o_41@@4 f_53@@13) (= (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@13) o_41@@4 f_53@@13) (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| ExhaleHeap@@9) o_41@@4 f_53@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| ExhaleHeap@@9) o_41@@4 f_53@@13))
)))
(assert (forall ((s0@@1 T@Seq_15644) (s1@@1 T@Seq_15644) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5643|)) (not (= s1@@1 |Seq#Empty_5643|))) (= (|Seq#Length_5643| (|Seq#Append_15644| s0@@1 s1@@1)) (+ (|Seq#Length_5643| s0@@1) (|Seq#Length_5643| s1@@1))))
 :qid |stdinbpl.231:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5643| (|Seq#Append_15644| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2915) (s1@@2 T@Seq_2915) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2915|)) (not (= s1@@2 |Seq#Empty_2915|))) (= (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)) (+ (|Seq#Length_2915| s0@@2) (|Seq#Length_2915| s1@@2))))
 :qid |stdinbpl.231:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5617_20973) ) (! (= (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5617_20840) ) (! (= (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8286_8287) ) (! (= (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8273_53) ) (! (= (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14295_3037) ) (! (= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_15644) (t@@1 T@Seq_15644) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5643| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5643| s@@15)) (|Seq#Length_5643| s@@15)) n@@15) (= (|Seq#Drop_5643| (|Seq#Append_15644| s@@15 t@@1) n@@15) (|Seq#Drop_5643| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5643| s@@15))))))
 :qid |stdinbpl.388:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5643| (|Seq#Append_15644| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2915) (t@@2 T@Seq_2915) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2915| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16)) (|Seq#Length_2915| s@@16)) n@@16) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16) (|Seq#Drop_2915| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16))))))
 :qid |stdinbpl.388:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8213) (M_1@@2 Int) (N@@2 Int) (i@@6 Int) (j@@9 Int) ) (!  (and (= (idx_3 Heap@@14 M_1@@2 N@@2 i@@6 j@@9) (|idx'| Heap@@14 M_1@@2 N@@2 i@@6 j@@9)) (dummyFunction_3347 (|idx#triggerStateless| M_1@@2 N@@2 i@@6 j@@9)))
 :qid |stdinbpl.577:15|
 :skolemid |58|
 :pattern ( (idx_3 Heap@@14 M_1@@2 N@@2 i@@6 j@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8213) (M_1@@3 Int) (N@@3 Int) (i@@7 Int) (j@@10 Int) ) (!  (and (= (idx_abs Heap@@15 M_1@@3 N@@3 i@@7 j@@10) (|idx_abs'| Heap@@15 M_1@@3 N@@3 i@@7 j@@10)) (dummyFunction_3347 (|idx_abs#triggerStateless| M_1@@3 N@@3 i@@7 j@@10)))
 :qid |stdinbpl.627:15|
 :skolemid |62|
 :pattern ( (idx_abs Heap@@15 M_1@@3 N@@3 i@@7 j@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8234) (SummandMask1 T@PolymorphicMapType_8234) (SummandMask2 T@PolymorphicMapType_8234) (o_2@@19 T@Ref) (f_4@@19 T@Field_5617_20973) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8234) (SummandMask1@@0 T@PolymorphicMapType_8234) (SummandMask2@@0 T@PolymorphicMapType_8234) (o_2@@20 T@Ref) (f_4@@20 T@Field_5617_20840) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8234) (SummandMask1@@1 T@PolymorphicMapType_8234) (SummandMask2@@1 T@PolymorphicMapType_8234) (o_2@@21 T@Ref) (f_4@@21 T@Field_8286_8287) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8234) (SummandMask1@@2 T@PolymorphicMapType_8234) (SummandMask2@@2 T@PolymorphicMapType_8234) (o_2@@22 T@Ref) (f_4@@22 T@Field_8273_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8234) (SummandMask1@@3 T@PolymorphicMapType_8234) (SummandMask2@@3 T@PolymorphicMapType_8234) (o_2@@23 T@Ref) (f_4@@23 T@Field_14295_3037) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8213) (Mask@@22 T@PolymorphicMapType_8234) (M_1@@4 Int) (N@@4 Int) (i@@8 Int) (j@@11 Int) ) (!  (=> (state Heap@@16 Mask@@22) (= (|idx'| Heap@@16 M_1@@4 N@@4 i@@8 j@@11) (|idx#frame| EmptyFrame M_1@@4 N@@4 i@@8 j@@11)))
 :qid |stdinbpl.594:15|
 :skolemid |61|
 :pattern ( (state Heap@@16 Mask@@22) (|idx'| Heap@@16 M_1@@4 N@@4 i@@8 j@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8213) (Mask@@23 T@PolymorphicMapType_8234) (M_1@@5 Int) (N@@5 Int) (i@@9 Int) (j@@12 Int) ) (!  (=> (state Heap@@17 Mask@@23) (= (|idx_abs'| Heap@@17 M_1@@5 N@@5 i@@9 j@@12) (|idx_abs#frame| EmptyFrame M_1@@5 N@@5 i@@9 j@@12)))
 :qid |stdinbpl.638:15|
 :skolemid |64|
 :pattern ( (state Heap@@17 Mask@@23) (|idx_abs'| Heap@@17 M_1@@5 N@@5 i@@9 j@@12))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.553:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_15644) (b T@Seq_15644) ) (!  (=> (|Seq#Equal_15644| a b) (= a b))
 :qid |stdinbpl.526:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_15644| a b))
)))
(assert (forall ((a@@0 T@Seq_2915) (b@@0 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.526:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2915| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_15644) (i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_5643| s@@17))) (|Seq#ContainsTrigger_5643| s@@17 (|Seq#Index_5643| s@@17 i@@10)))
 :qid |stdinbpl.419:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5643| s@@17 i@@10))
)))
(assert (forall ((s@@18 T@Seq_2915) (i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_2915| s@@18))) (|Seq#ContainsTrigger_2915| s@@18 (|Seq#Index_2915| s@@18 i@@11)))
 :qid |stdinbpl.419:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2915| s@@18 i@@11))
)))
(assert (forall ((s0@@3 T@Seq_15644) (s1@@3 T@Seq_15644) ) (!  (and (=> (= s0@@3 |Seq#Empty_5643|) (= (|Seq#Append_15644| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5643|) (= (|Seq#Append_15644| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_15644| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2915) (s1@@4 T@Seq_2915) ) (!  (and (=> (= s0@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2915| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5643| (|Seq#Singleton_5643| t@@3) 0) t@@3)
 :qid |stdinbpl.241:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5643| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2915| (|Seq#Singleton_2915| t@@4) 0) t@@4)
 :qid |stdinbpl.241:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2915| t@@4))
)))
(assert (forall ((s@@19 T@Seq_15644) ) (! (<= 0 (|Seq#Length_5643| s@@19))
 :qid |stdinbpl.220:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5643| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2915) ) (! (<= 0 (|Seq#Length_2915| s@@20))
 :qid |stdinbpl.220:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2915| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_15644) (s1@@5 T@Seq_15644) ) (!  (=> (|Seq#Equal_15644| s0@@5 s1@@5) (and (= (|Seq#Length_5643| s0@@5) (|Seq#Length_5643| s1@@5)) (forall ((j@@13 Int) ) (!  (=> (and (<= 0 j@@13) (< j@@13 (|Seq#Length_5643| s0@@5))) (= (|Seq#Index_5643| s0@@5 j@@13) (|Seq#Index_5643| s1@@5 j@@13)))
 :qid |stdinbpl.516:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5643| s0@@5 j@@13))
 :pattern ( (|Seq#Index_5643| s1@@5 j@@13))
))))
 :qid |stdinbpl.513:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_15644| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2915) (s1@@6 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| s0@@6 s1@@6) (and (= (|Seq#Length_2915| s0@@6) (|Seq#Length_2915| s1@@6)) (forall ((j@@14 Int) ) (!  (=> (and (<= 0 j@@14) (< j@@14 (|Seq#Length_2915| s0@@6))) (= (|Seq#Index_2915| s0@@6 j@@14) (|Seq#Index_2915| s1@@6 j@@14)))
 :qid |stdinbpl.516:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2915| s0@@6 j@@14))
 :pattern ( (|Seq#Index_2915| s1@@6 j@@14))
))))
 :qid |stdinbpl.513:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2915| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5643| (|Seq#Singleton_5643| t@@5)) 1)
 :qid |stdinbpl.228:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5643| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2915| (|Seq#Singleton_2915| t@@6)) 1)
 :qid |stdinbpl.228:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2915| t@@6))
)))
(assert (forall ((s@@21 T@Seq_15644) (t@@7 T@Seq_15644) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5643| s@@21))) (= (|Seq#Take_5643| (|Seq#Append_15644| s@@21 t@@7) n@@17) (|Seq#Take_5643| s@@21 n@@17)))
 :qid |stdinbpl.370:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5643| (|Seq#Append_15644| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2915) (t@@8 T@Seq_2915) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2915| s@@22))) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18) (|Seq#Take_2915| s@@22 n@@18)))
 :qid |stdinbpl.370:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_15644) (i@@12 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_5643| s@@23))) (= (|Seq#Length_5643| (|Seq#Update_5643| s@@23 i@@12 v@@2)) (|Seq#Length_5643| s@@23)))
 :qid |stdinbpl.269:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5643| (|Seq#Update_5643| s@@23 i@@12 v@@2)))
 :pattern ( (|Seq#Length_5643| s@@23) (|Seq#Update_5643| s@@23 i@@12 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2915) (i@@13 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_2915| s@@24))) (= (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@13 v@@3)) (|Seq#Length_2915| s@@24)))
 :qid |stdinbpl.269:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@13 v@@3)))
 :pattern ( (|Seq#Length_2915| s@@24) (|Seq#Update_2915| s@@24 i@@13 v@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8213) (o_15 T@Ref) (f_54 T@Field_5617_20840) (v@@4 T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@18) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@18) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@18) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@18) (store (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@18) o_15 f_54 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@18) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@18) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@18) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@18) (store (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@18) o_15 f_54 v@@4)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8213) (o_15@@0 T@Ref) (f_54@@0 T@Field_5617_20973) (v@@5 T@PolymorphicMapType_8762) ) (! (succHeap Heap@@19 (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@19) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@19) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@19) (store (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@19) o_15@@0 f_54@@0 v@@5) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@19) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@19) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@19) (store (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@19) o_15@@0 f_54@@0 v@@5) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8213) (o_15@@1 T@Ref) (f_54@@1 T@Field_14295_3037) (v@@6 Int) ) (! (succHeap Heap@@20 (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@20) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@20) (store (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@20) o_15@@1 f_54@@1 v@@6) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@20) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@20) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@20) (store (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@20) o_15@@1 f_54@@1 v@@6) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@20) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8213) (o_15@@2 T@Ref) (f_54@@2 T@Field_8286_8287) (v@@7 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@21) (store (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@21) o_15@@2 f_54@@2 v@@7) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@21) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@21) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8213 (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@21) (store (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@21) o_15@@2 f_54@@2 v@@7) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@21) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@21) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8213) (o_15@@3 T@Ref) (f_54@@3 T@Field_8273_53) (v@@8 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_8213 (store (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@22) o_15@@3 f_54@@3 v@@8) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@22) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@22) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@22) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8213 (store (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@22) o_15@@3 f_54@@3 v@@8) (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@22) (|PolymorphicMapType_8213_5617_3037#PolymorphicMapType_8213| Heap@@22) (|PolymorphicMapType_8213_5617_21017#PolymorphicMapType_8213| Heap@@22) (|PolymorphicMapType_8213_8273_20840#PolymorphicMapType_8213| Heap@@22)))
)))
(assert (forall ((s@@25 T@Seq_15644) (t@@9 T@Seq_15644) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5643| s@@25))) (= (|Seq#Drop_5643| (|Seq#Append_15644| s@@25 t@@9) n@@19) (|Seq#Append_15644| (|Seq#Drop_5643| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.384:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5643| (|Seq#Append_15644| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2915) (t@@10 T@Seq_2915) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2915| s@@26))) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20) (|Seq#Append_2915| (|Seq#Drop_2915| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.384:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_15644) (n@@21 Int) (i@@14 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@14)) (< i@@14 (|Seq#Length_5643| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@14 n@@21) n@@21) i@@14) (= (|Seq#Index_5643| (|Seq#Drop_5643| s@@27 n@@21) (|Seq#Sub| i@@14 n@@21)) (|Seq#Index_5643| s@@27 i@@14))))
 :qid |stdinbpl.320:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5643| s@@27 n@@21) (|Seq#Index_5643| s@@27 i@@14))
)))
(assert (forall ((s@@28 T@Seq_2915) (n@@22 Int) (i@@15 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@15)) (< i@@15 (|Seq#Length_2915| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@15 n@@22) n@@22) i@@15) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Sub| i@@15 n@@22)) (|Seq#Index_2915| s@@28 i@@15))))
 :qid |stdinbpl.320:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Index_2915| s@@28 i@@15))
)))
(assert (forall ((s0@@7 T@Seq_15644) (s1@@7 T@Seq_15644) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5643|)) (not (= s1@@7 |Seq#Empty_5643|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5643| s0@@7))) (= (|Seq#Index_5643| (|Seq#Append_15644| s0@@7 s1@@7) n@@23) (|Seq#Index_5643| s0@@7 n@@23)))
 :qid |stdinbpl.260:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5643| (|Seq#Append_15644| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5643| s0@@7 n@@23) (|Seq#Append_15644| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2915) (s1@@8 T@Seq_2915) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2915|)) (not (= s1@@8 |Seq#Empty_2915|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2915| s0@@8))) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24) (|Seq#Index_2915| s0@@8 n@@24)))
 :qid |stdinbpl.260:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2915| s0@@8 n@@24) (|Seq#Append_2915| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_15644) (s1@@9 T@Seq_15644) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5643|)) (not (= s1@@9 |Seq#Empty_5643|))) (<= 0 m)) (< m (|Seq#Length_5643| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5643| s0@@9)) (|Seq#Length_5643| s0@@9)) m) (= (|Seq#Index_5643| (|Seq#Append_15644| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5643| s0@@9))) (|Seq#Index_5643| s1@@9 m))))
 :qid |stdinbpl.265:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5643| s1@@9 m) (|Seq#Append_15644| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2915) (s1@@10 T@Seq_2915) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2915|)) (not (= s1@@10 |Seq#Empty_2915|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2915| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10)) (|Seq#Length_2915| s0@@10)) m@@0) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10))) (|Seq#Index_2915| s1@@10 m@@0))))
 :qid |stdinbpl.265:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2915| s1@@10 m@@0) (|Seq#Append_2915| s0@@10 s1@@10))
)))
(assert (forall ((o_15@@4 T@Ref) (f_23 T@Field_8286_8287) (Heap@@23 T@PolymorphicMapType_8213) ) (!  (=> (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@23) o_15@@4 $allocated) (select (|PolymorphicMapType_8213_5425_53#PolymorphicMapType_8213| Heap@@23) (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@23) o_15@@4 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8213_5428_5429#PolymorphicMapType_8213| Heap@@23) o_15@@4 f_23))
)))
(assert (forall ((s@@29 T@Seq_15644) (x@@3 T@Ref) (i@@16 Int) ) (!  (=> (and (and (<= 0 i@@16) (< i@@16 (|Seq#Length_5643| s@@29))) (= (|Seq#Index_5643| s@@29 i@@16) x@@3)) (|Seq#Contains_15644| s@@29 x@@3))
 :qid |stdinbpl.417:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_15644| s@@29 x@@3) (|Seq#Index_5643| s@@29 i@@16))
)))
(assert (forall ((s@@30 T@Seq_2915) (x@@4 Int) (i@@17 Int) ) (!  (=> (and (and (<= 0 i@@17) (< i@@17 (|Seq#Length_2915| s@@30))) (= (|Seq#Index_2915| s@@30 i@@17) x@@4)) (|Seq#Contains_2915| s@@30 x@@4))
 :qid |stdinbpl.417:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2915| s@@30 x@@4) (|Seq#Index_2915| s@@30 i@@17))
)))
(assert (forall ((s0@@11 T@Seq_15644) (s1@@11 T@Seq_15644) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_15644| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15644| s0@@11 s1@@11))) (not (= (|Seq#Length_5643| s0@@11) (|Seq#Length_5643| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15644| s0@@11 s1@@11))) (= (|Seq#Length_5643| s0@@11) (|Seq#Length_5643| s1@@11))) (= (|Seq#SkolemDiff_15644| s0@@11 s1@@11) (|Seq#SkolemDiff_15644| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_15644| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_15644| s0@@11 s1@@11) (|Seq#Length_5643| s0@@11))) (not (= (|Seq#Index_5643| s0@@11 (|Seq#SkolemDiff_15644| s0@@11 s1@@11)) (|Seq#Index_5643| s1@@11 (|Seq#SkolemDiff_15644| s0@@11 s1@@11))))))
 :qid |stdinbpl.521:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_15644| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2915) (s1@@12 T@Seq_2915) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2915| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (not (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))) (= (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#SkolemDiff_2915| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#Length_2915| s0@@12))) (not (= (|Seq#Index_2915| s0@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12)) (|Seq#Index_2915| s1@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))))))
 :qid |stdinbpl.521:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2915| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_5617_20840) (v_1@@0 T@FrameType) (q T@Field_5617_20840) (w@@0 T@FrameType) (r T@Field_5617_20840) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8273_8273 p@@1 v_1@@0 q w@@0) (InsidePredicate_8273_8273 q w@@0 r u)) (InsidePredicate_8273_8273 p@@1 v_1@@0 r u))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8273_8273 p@@1 v_1@@0 q w@@0) (InsidePredicate_8273_8273 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_15644) ) (!  (=> (= (|Seq#Length_5643| s@@31) 0) (= s@@31 |Seq#Empty_5643|))
 :qid |stdinbpl.224:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5643| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2915) ) (!  (=> (= (|Seq#Length_2915| s@@32) 0) (= s@@32 |Seq#Empty_2915|))
 :qid |stdinbpl.224:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2915| s@@32))
)))
(assert (forall ((s@@33 T@Seq_15644) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5643| s@@33 n@@25) |Seq#Empty_5643|))
 :qid |stdinbpl.400:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5643| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2915) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2915| s@@34 n@@26) |Seq#Empty_2915|))
 :qid |stdinbpl.400:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2915| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8213) (Mask@@24 T@PolymorphicMapType_8234) (M_1@@6 Int) (N@@6 Int) (i@@18 Int) (j@@15 Int) ) (!  (=> (and (state Heap@@24 Mask@@24) (or (< AssumeFunctionsAbove 1) (|idx_abs#trigger| EmptyFrame M_1@@6 N@@6 i@@18 j@@15))) (and (<= 0 (|idx_abs'| Heap@@24 M_1@@6 N@@6 i@@18 j@@15)) (< (|idx_abs'| Heap@@24 M_1@@6 N@@6 i@@18 j@@15) (* N@@6 M_1@@6))))
 :qid |stdinbpl.644:15|
 :skolemid |65|
 :pattern ( (state Heap@@24 Mask@@24) (|idx_abs'| Heap@@24 M_1@@6 N@@6 i@@18 j@@15))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@25 () T@PolymorphicMapType_8213)
(declare-fun M_1@@7 () Int)
(declare-fun N@@7 () Int)
(declare-fun i_21 () Int)
(declare-fun j_4 () Int)
(declare-fun src_1 () T@Seq_15644)
(declare-fun QPMask@0 () T@PolymorphicMapType_8234)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i_15 () Int)
(declare-fun k_4 () Int)
(declare-fun j_2 () Int)
(declare-fun dst_1 () T@Seq_15644)
(set-info :boogie-vc-id test2d)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon26_Then_correct true))
(let ((anon15_correct true))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 22)) (>= (idx_abs Heap@@25 M_1@@7 N@@7 i_21 j_4) 0)) (=> (>= (idx_abs Heap@@25 M_1@@7 N@@7 i_21 j_4) 0) (and (=> (= (ControlFlow 0 19) (- 0 21)) (< (idx_abs Heap@@25 M_1@@7 N@@7 i_21 j_4) (|Seq#Length_5643| src_1))) (=> (< (idx_abs Heap@@25 M_1@@7 N@@7 i_21 j_4) (|Seq#Length_5643| src_1)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_5617_3037 QPMask@0 (|Seq#Index_5643| src_1 (idx_abs Heap@@25 M_1@@7 N@@7 i_21 j_4)) val)) (=> (HasDirectPerm_5617_3037 QPMask@0 (|Seq#Index_5643| src_1 (idx_abs Heap@@25 M_1@@7 N@@7 i_21 j_4)) val) (=> (= (ControlFlow 0 19) 16) anon15_correct)))))))))
(let ((anon25_Then_correct  (=> (|Seq#Contains_2915| (|Seq#Range| 0 N@@7) j_4) (and (=> (= (ControlFlow 0 23) 18) anon26_Then_correct) (=> (= (ControlFlow 0 23) 19) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not (|Seq#Contains_2915| (|Seq#Range| 0 N@@7) j_4)) (= (ControlFlow 0 17) 16)) anon15_correct)))
(let ((anon16_correct true))
(let ((anon23_Then_correct  (=> (|Seq#Contains_2915| (|Seq#Range| 0 M_1@@7) i_21) (and (and (=> (= (ControlFlow 0 24) 14) anon16_correct) (=> (= (ControlFlow 0 24) 23) anon25_Then_correct)) (=> (= (ControlFlow 0 24) 17) anon25_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (not (|Seq#Contains_2915| (|Seq#Range| 0 M_1@@7) i_21)) (= (ControlFlow 0 15) 14)) anon16_correct)))
(let ((anon22_Else_correct true))
(let ((anon20_Else_correct  (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1)) (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_5643| src_1 i_1) (|Seq#Index_5643| src_1 i_1_1))))
 :qid |stdinbpl.872:15|
 :skolemid |77|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1@@0)) (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_5643| src_1 i_1@@0) (|Seq#Index_5643| src_1 i_1_1@@0))))
 :qid |stdinbpl.872:15|
 :skolemid |77|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 (|Seq#Index_5643| src_1 i_1@@1)) (= (invRecv2 (|Seq#Index_5643| src_1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.878:22|
 :skolemid |78|
 :pattern ( (|Seq#Index_5643| src_1 i_1@@1))
 :pattern ( (|Seq#Index_5643| src_1 i_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) (invRecv2 o_9)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_9)) (= (|Seq#Index_5643| src_1 (invRecv2 o_9)) o_9))
 :qid |stdinbpl.882:22|
 :skolemid |79|
 :pattern ( (invRecv2 o_9))
))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.888:15|
 :skolemid |80|
 :pattern ( (|Seq#Index_5643| src_1 i_1@@2))
 :pattern ( (|Seq#Index_5643| src_1 i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.888:15|
 :skolemid |80|
 :pattern ( (|Seq#Index_5643| src_1 i_1@@3))
 :pattern ( (|Seq#Index_5643| src_1 i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_5643| src_1 i_1@@4) null)))
 :qid |stdinbpl.894:22|
 :skolemid |81|
 :pattern ( (|Seq#Index_5643| src_1 i_1@@4))
 :pattern ( (|Seq#Index_5643| src_1 i_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) (invRecv2 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_5643| src_1 (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| QPMask@0) o_9@@0 val) (+ (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ZeroMask) o_9@@0 val) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) (invRecv2 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.900:22|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| QPMask@0) o_9@@0 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8273_53) ) (!  (=> true (= (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.904:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8234_5617_53#PolymorphicMapType_8234| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8286_8287) ) (!  (=> true (= (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.904:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8234_5617_8287#PolymorphicMapType_8234| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14295_3037) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.904:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8234_5617_3037#PolymorphicMapType_8234| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_5617_20840) ) (!  (=> true (= (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.904:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8234_5617_20840#PolymorphicMapType_8234| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_5617_20973) ) (!  (=> true (= (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.904:29|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8234_5617_25095#PolymorphicMapType_8234| QPMask@0) o_9@@5 f_5@@3))
))) (state Heap@@25 QPMask@0)) (and (state Heap@@25 QPMask@0) (state Heap@@25 QPMask@0))) (and (and (=> (= (ControlFlow 0 25) 13) anon22_Else_correct) (=> (= (ControlFlow 0 25) 24) anon23_Then_correct)) (=> (= (ControlFlow 0 25) 15) anon23_Else_correct)))))))))))
(let ((anon7_correct true))
(let ((anon21_Else_correct  (=> (and (not (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_15)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon21_Then_correct  (=> (|Seq#Contains_2915| (|Seq#Range| 0 (* M_1@@7 N@@7)) i_15) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_15 (|Seq#Length_5643| src_1))) (=> (< i_15 (|Seq#Length_5643| src_1)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon18_Else_correct  (=> (and (forall ((k_1 Int) (j_1 Int) ) (!  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_5643| src_1)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_5643| src_1)) (not (= k_1 j_1)))))) (not (= (|Seq#Index_5643| src_1 k_1) (|Seq#Index_5643| src_1 j_1))))
 :qid |stdinbpl.854:20|
 :skolemid |76|
 :pattern ( (|Seq#Index_5643| src_1 k_1) (|Seq#Index_5643| src_1 j_1))
)) (state Heap@@25 ZeroMask)) (and (and (=> (= (ControlFlow 0 28) 25) anon20_Else_correct) (=> (= (ControlFlow 0 28) 9) anon21_Then_correct)) (=> (= (ControlFlow 0 28) 12) anon21_Else_correct)))))
(let ((anon3_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (>= k_4 0) (and (< k_4 (|Seq#Length_5643| src_1)) (and (>= j_2 0) (and (< j_2 (|Seq#Length_5643| src_1)) (not (= k_4 j_2))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon19_Then_correct  (=> (and (>= k_4 0) (and (< k_4 (|Seq#Length_5643| src_1)) (and (>= j_2 0) (and (< j_2 (|Seq#Length_5643| src_1)) (not (= k_4 j_2)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_4 0)) (=> (>= k_4 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_4 (|Seq#Length_5643| src_1))) (=> (< k_4 (|Seq#Length_5643| src_1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_2 0)) (=> (>= j_2 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_2 (|Seq#Length_5643| src_1))) (=> (< j_2 (|Seq#Length_5643| src_1)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@25 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (> M_1@@7 0))) (and (and (> N@@7 0) (= (|Seq#Length_5643| src_1) (* N@@7 M_1@@7))) (and (= (|Seq#Length_5643| dst_1) (* N@@7 M_1@@7)) (state Heap@@25 ZeroMask)))) (and (and (=> (= (ControlFlow 0 29) 28) anon18_Else_correct) (=> (= (ControlFlow 0 29) 2) anon19_Then_correct)) (=> (= (ControlFlow 0 29) 7) anon19_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 30) 29) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
