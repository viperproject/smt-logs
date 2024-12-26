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
(declare-sort T@Field_10632_53 0)
(declare-sort T@Field_10645_10646 0)
(declare-sort T@Field_16665_3178 0)
(declare-sort T@Field_7114_29439 0)
(declare-sort T@Field_7114_29306 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10593 0)) (((PolymorphicMapType_10593 (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| (Array T@Ref T@Field_16665_3178 Real)) (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| (Array T@Ref T@Field_10632_53 Real)) (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| (Array T@Ref T@Field_10645_10646 Real)) (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| (Array T@Ref T@Field_7114_29306 Real)) (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| (Array T@Ref T@Field_7114_29439 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11121 0)) (((PolymorphicMapType_11121 (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| (Array T@Ref T@Field_10632_53 Bool)) (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| (Array T@Ref T@Field_10645_10646 Bool)) (|PolymorphicMapType_11121_10632_3178#PolymorphicMapType_11121| (Array T@Ref T@Field_16665_3178 Bool)) (|PolymorphicMapType_11121_10632_29306#PolymorphicMapType_11121| (Array T@Ref T@Field_7114_29306 Bool)) (|PolymorphicMapType_11121_10632_30617#PolymorphicMapType_11121| (Array T@Ref T@Field_7114_29439 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10572 0)) (((PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| (Array T@Ref T@Field_10632_53 Bool)) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| (Array T@Ref T@Field_10645_10646 T@Ref)) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| (Array T@Ref T@Field_16665_3178 Int)) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| (Array T@Ref T@Field_7114_29439 T@PolymorphicMapType_11121)) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| (Array T@Ref T@Field_7114_29306 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10632_53)
(declare-fun Ref__Integer_value () T@Field_16665_3178)
(declare-sort T@Seq_16711 0)
(declare-fun |Seq#Length_7120| (T@Seq_16711) Int)
(declare-fun |Seq#Drop_7120| (T@Seq_16711 Int) T@Seq_16711)
(declare-sort T@Seq_3056 0)
(declare-fun |Seq#Length_3056| (T@Seq_3056) Int)
(declare-fun |Seq#Drop_3056| (T@Seq_3056 Int) T@Seq_3056)
(declare-fun succHeap (T@PolymorphicMapType_10572 T@PolymorphicMapType_10572) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10572 T@PolymorphicMapType_10572) Bool)
(declare-fun state (T@PolymorphicMapType_10572 T@PolymorphicMapType_10593) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10593) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11121)
(declare-fun |Seq#Index_7120| (T@Seq_16711 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3056| (T@Seq_3056 Int) Int)
(declare-fun |Seq#Empty_7120| () T@Seq_16711)
(declare-fun |Seq#Empty_3056| () T@Seq_3056)
(declare-fun |Seq#Update_7120| (T@Seq_16711 Int T@Ref) T@Seq_16711)
(declare-fun |Seq#Update_3056| (T@Seq_3056 Int Int) T@Seq_3056)
(declare-fun |Seq#Take_7120| (T@Seq_16711 Int) T@Seq_16711)
(declare-fun |Seq#Take_3056| (T@Seq_3056 Int) T@Seq_3056)
(declare-fun |Seq#Contains_3056| (T@Seq_3056 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3056)
(declare-fun |Seq#Contains_16711| (T@Seq_16711 T@Ref) Bool)
(declare-fun |Seq#Skolem_16711| (T@Seq_16711 T@Ref) Int)
(declare-fun |Seq#Skolem_3056| (T@Seq_3056 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10572 T@PolymorphicMapType_10572 T@PolymorphicMapType_10593) Bool)
(declare-fun IsPredicateField_7114_29397 (T@Field_7114_29306) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7114 (T@Field_7114_29306) T@Field_7114_29439)
(declare-fun HasDirectPerm_7114_29370 (T@PolymorphicMapType_10593 T@Ref T@Field_7114_29306) Bool)
(declare-fun IsWandField_7114_31144 (T@Field_7114_29306) Bool)
(declare-fun WandMaskField_7114 (T@Field_7114_29306) T@Field_7114_29439)
(declare-fun |Seq#Singleton_7120| (T@Ref) T@Seq_16711)
(declare-fun |Seq#Singleton_3056| (Int) T@Seq_3056)
(declare-fun |Seq#Append_16711| (T@Seq_16711 T@Seq_16711) T@Seq_16711)
(declare-fun |Seq#Append_3056| (T@Seq_3056 T@Seq_3056) T@Seq_3056)
(declare-fun dummyHeap () T@PolymorphicMapType_10572)
(declare-fun ZeroMask () T@PolymorphicMapType_10593)
(declare-fun InsidePredicate_10632_10632 (T@Field_7114_29306 T@FrameType T@Field_7114_29306 T@FrameType) Bool)
(declare-fun IsPredicateField_7114_3178 (T@Field_16665_3178) Bool)
(declare-fun IsWandField_7114_3178 (T@Field_16665_3178) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7114_34690 (T@Field_7114_29439) Bool)
(declare-fun IsWandField_7114_34706 (T@Field_7114_29439) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7114_10646 (T@Field_10645_10646) Bool)
(declare-fun IsWandField_7114_10646 (T@Field_10645_10646) Bool)
(declare-fun IsPredicateField_7114_53 (T@Field_10632_53) Bool)
(declare-fun IsWandField_7114_53 (T@Field_10632_53) Bool)
(declare-fun HasDirectPerm_7114_35144 (T@PolymorphicMapType_10593 T@Ref T@Field_7114_29439) Bool)
(declare-fun HasDirectPerm_7114_10646 (T@PolymorphicMapType_10593 T@Ref T@Field_10645_10646) Bool)
(declare-fun HasDirectPerm_7114_53 (T@PolymorphicMapType_10593 T@Ref T@Field_10632_53) Bool)
(declare-fun HasDirectPerm_7114_3178 (T@PolymorphicMapType_10593 T@Ref T@Field_16665_3178) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10593 T@PolymorphicMapType_10593 T@PolymorphicMapType_10593) Bool)
(declare-fun |Seq#Equal_16711| (T@Seq_16711 T@Seq_16711) Bool)
(declare-fun |Seq#Equal_3056| (T@Seq_3056 T@Seq_3056) Bool)
(declare-fun |Seq#ContainsTrigger_7120| (T@Seq_16711 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3056| (T@Seq_3056 Int) Bool)
(declare-fun |Seq#SkolemDiff_16711| (T@Seq_16711 T@Seq_16711) Int)
(declare-fun |Seq#SkolemDiff_3056| (T@Seq_3056 T@Seq_3056) Int)
(assert (forall ((s T@Seq_16711) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7120| s)) (= (|Seq#Length_7120| (|Seq#Drop_7120| s n)) (- (|Seq#Length_7120| s) n))) (=> (< (|Seq#Length_7120| s) n) (= (|Seq#Length_7120| (|Seq#Drop_7120| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7120| (|Seq#Drop_7120| s n)) (|Seq#Length_7120| s))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7120| (|Seq#Drop_7120| s n)))
 :pattern ( (|Seq#Length_7120| s) (|Seq#Drop_7120| s n))
)))
(assert (forall ((s@@0 T@Seq_3056) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3056| s@@0)) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) (- (|Seq#Length_3056| s@@0) n@@0))) (=> (< (|Seq#Length_3056| s@@0) n@@0) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)) (|Seq#Length_3056| s@@0))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3056| (|Seq#Drop_3056| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3056| s@@0) (|Seq#Drop_3056| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10572) (Heap1 T@PolymorphicMapType_10572) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10572) (Mask T@PolymorphicMapType_10593) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10572) (Heap1@@0 T@PolymorphicMapType_10572) (Heap2 T@PolymorphicMapType_10572) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7114_29439) ) (!  (not (select (|PolymorphicMapType_11121_10632_30617#PolymorphicMapType_11121| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_30617#PolymorphicMapType_11121| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7114_29306) ) (!  (not (select (|PolymorphicMapType_11121_10632_29306#PolymorphicMapType_11121| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_29306#PolymorphicMapType_11121| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16665_3178) ) (!  (not (select (|PolymorphicMapType_11121_10632_3178#PolymorphicMapType_11121| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_3178#PolymorphicMapType_11121| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10645_10646) ) (!  (not (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10632_53) ) (!  (not (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_16711) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7120| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7120| (|Seq#Drop_7120| s@@1 n@@1) j) (|Seq#Index_7120| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7120| (|Seq#Drop_7120| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3056) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3056| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3056| (|Seq#Drop_3056| s@@2 n@@2) j@@0) (|Seq#Index_3056| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3056| (|Seq#Drop_3056| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7120| |Seq#Empty_7120|) 0))
(assert (= (|Seq#Length_3056| |Seq#Empty_3056|) 0))
(assert (forall ((s@@3 T@Seq_16711) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7120| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_7120| (|Seq#Update_7120| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_7120| (|Seq#Update_7120| s@@3 i v) n@@3) (|Seq#Index_7120| s@@3 n@@3)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7120| (|Seq#Update_7120| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_7120| s@@3 n@@3) (|Seq#Update_7120| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3056) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3056| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3056| s@@4 n@@4)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3056| (|Seq#Update_3056| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3056| s@@4 n@@4) (|Seq#Update_3056| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16711) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7120| s@@5)) (= (|Seq#Length_7120| (|Seq#Take_7120| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7120| s@@5) n@@5) (= (|Seq#Length_7120| (|Seq#Take_7120| s@@5 n@@5)) (|Seq#Length_7120| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7120| (|Seq#Take_7120| s@@5 n@@5)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7120| (|Seq#Take_7120| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7120| s@@5 n@@5) (|Seq#Length_7120| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3056) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3056| s@@6)) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3056| s@@6) n@@6) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) (|Seq#Length_3056| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3056| (|Seq#Take_3056| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3056| s@@6 n@@6) (|Seq#Length_3056| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3056| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.570:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3056| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16711) (x T@Ref) ) (!  (=> (|Seq#Contains_16711| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16711| s@@7 x)) (< (|Seq#Skolem_16711| s@@7 x) (|Seq#Length_7120| s@@7))) (= (|Seq#Index_7120| s@@7 (|Seq#Skolem_16711| s@@7 x)) x)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16711| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3056) (x@@0 Int) ) (!  (=> (|Seq#Contains_3056| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3056| s@@8 x@@0)) (< (|Seq#Skolem_3056| s@@8 x@@0) (|Seq#Length_3056| s@@8))) (= (|Seq#Index_3056| s@@8 (|Seq#Skolem_3056| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3056| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_16711) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7120| s@@9 n@@7) s@@9))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7120| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3056) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3056| s@@10 n@@8) s@@10))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3056| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10572) (ExhaleHeap T@PolymorphicMapType_10572) (Mask@@0 T@PolymorphicMapType_10593) (pm_f_1 T@Field_7114_29306) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7114_29370 Mask@@0 null pm_f_1) (IsPredicateField_7114_29397 pm_f_1)) (= (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@0) null (PredicateMaskField_7114 pm_f_1)) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap) null (PredicateMaskField_7114 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7114_29397 pm_f_1) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap) null (PredicateMaskField_7114 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10572) (ExhaleHeap@@0 T@PolymorphicMapType_10572) (Mask@@1 T@PolymorphicMapType_10593) (pm_f_1@@0 T@Field_7114_29306) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7114_29370 Mask@@1 null pm_f_1@@0) (IsWandField_7114_31144 pm_f_1@@0)) (= (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@1) null (WandMaskField_7114 pm_f_1@@0)) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@0) null (WandMaskField_7114 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_7114_31144 pm_f_1@@0) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@0) null (WandMaskField_7114 pm_f_1@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16711| (|Seq#Singleton_7120| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16711| (|Seq#Singleton_7120| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3056| (|Seq#Singleton_3056| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3056| (|Seq#Singleton_3056| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16711) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7120| s@@11))) (= (|Seq#Index_7120| (|Seq#Take_7120| s@@11 n@@9) j@@3) (|Seq#Index_7120| s@@11 j@@3)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7120| (|Seq#Take_7120| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7120| s@@11 j@@3) (|Seq#Take_7120| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3056) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3056| s@@12))) (= (|Seq#Index_3056| (|Seq#Take_3056| s@@12 n@@10) j@@4) (|Seq#Index_3056| s@@12 j@@4)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3056| (|Seq#Take_3056| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3056| s@@12 j@@4) (|Seq#Take_3056| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16711) (t T@Seq_16711) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7120| s@@13))) (< n@@11 (|Seq#Length_7120| (|Seq#Append_16711| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7120| s@@13)) (|Seq#Length_7120| s@@13)) n@@11) (= (|Seq#Take_7120| (|Seq#Append_16711| s@@13 t) n@@11) (|Seq#Append_16711| s@@13 (|Seq#Take_7120| t (|Seq#Sub| n@@11 (|Seq#Length_7120| s@@13)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7120| (|Seq#Append_16711| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3056) (t@@0 T@Seq_3056) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3056| s@@14))) (< n@@12 (|Seq#Length_3056| (|Seq#Append_3056| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3056| s@@14)) (|Seq#Length_3056| s@@14)) n@@12) (= (|Seq#Take_3056| (|Seq#Append_3056| s@@14 t@@0) n@@12) (|Seq#Append_3056| s@@14 (|Seq#Take_3056| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3056| s@@14)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3056| (|Seq#Append_3056| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10572) (ExhaleHeap@@1 T@PolymorphicMapType_10572) (Mask@@2 T@PolymorphicMapType_10593) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@2) o_3 $allocated) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_7114_29306) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10632_10632 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10632_10632 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16711) (s1 T@Seq_16711) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7120|)) (not (= s1 |Seq#Empty_7120|))) (<= (|Seq#Length_7120| s0) n@@13)) (< n@@13 (|Seq#Length_7120| (|Seq#Append_16711| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7120| s0)) (|Seq#Length_7120| s0)) n@@13) (= (|Seq#Index_7120| (|Seq#Append_16711| s0 s1) n@@13) (|Seq#Index_7120| s1 (|Seq#Sub| n@@13 (|Seq#Length_7120| s0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7120| (|Seq#Append_16711| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3056) (s1@@0 T@Seq_3056) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3056|)) (not (= s1@@0 |Seq#Empty_3056|))) (<= (|Seq#Length_3056| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3056| (|Seq#Append_3056| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3056| s0@@0)) (|Seq#Length_3056| s0@@0)) n@@14) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@0 s1@@0) n@@14) (|Seq#Index_3056| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3056| s0@@0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3056| (|Seq#Append_3056| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_7114_3178 Ref__Integer_value)))
(assert  (not (IsWandField_7114_3178 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10572) (ExhaleHeap@@2 T@PolymorphicMapType_10572) (Mask@@3 T@PolymorphicMapType_10593) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10593) (o_2@@4 T@Ref) (f_4@@4 T@Field_7114_29439) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7114_34690 f_4@@4))) (not (IsWandField_7114_34706 f_4@@4))) (<= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10593) (o_2@@5 T@Ref) (f_4@@5 T@Field_7114_29306) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7114_29397 f_4@@5))) (not (IsWandField_7114_31144 f_4@@5))) (<= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10593) (o_2@@6 T@Ref) (f_4@@6 T@Field_10645_10646) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7114_10646 f_4@@6))) (not (IsWandField_7114_10646 f_4@@6))) (<= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10593) (o_2@@7 T@Ref) (f_4@@7 T@Field_10632_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7114_53 f_4@@7))) (not (IsWandField_7114_53 f_4@@7))) (<= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10593) (o_2@@8 T@Ref) (f_4@@8 T@Field_16665_3178) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7114_3178 f_4@@8))) (not (IsWandField_7114_3178 f_4@@8))) (<= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10593) (o_2@@9 T@Ref) (f_4@@9 T@Field_7114_29439) ) (! (= (HasDirectPerm_7114_35144 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7114_35144 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10593) (o_2@@10 T@Ref) (f_4@@10 T@Field_7114_29306) ) (! (= (HasDirectPerm_7114_29370 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7114_29370 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10593) (o_2@@11 T@Ref) (f_4@@11 T@Field_10645_10646) ) (! (= (HasDirectPerm_7114_10646 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7114_10646 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10593) (o_2@@12 T@Ref) (f_4@@12 T@Field_10632_53) ) (! (= (HasDirectPerm_7114_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7114_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10593) (o_2@@13 T@Ref) (f_4@@13 T@Field_16665_3178) ) (! (= (HasDirectPerm_7114_3178 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7114_3178 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10572) (ExhaleHeap@@3 T@PolymorphicMapType_10572) (Mask@@14 T@PolymorphicMapType_10593) (pm_f_1@@1 T@Field_7114_29306) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7114_29370 Mask@@14 null pm_f_1@@1) (IsPredicateField_7114_29397 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_10632_53) ) (!  (=> (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@4) null (PredicateMaskField_7114 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_10645_10646) ) (!  (=> (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@4) null (PredicateMaskField_7114 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_16665_3178) ) (!  (=> (select (|PolymorphicMapType_11121_10632_3178#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@4) null (PredicateMaskField_7114 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_7114_29306) ) (!  (=> (select (|PolymorphicMapType_11121_10632_29306#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@4) null (PredicateMaskField_7114 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_7114_29439) ) (!  (=> (select (|PolymorphicMapType_11121_10632_30617#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@4) null (PredicateMaskField_7114 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7114_29397 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10572) (ExhaleHeap@@4 T@PolymorphicMapType_10572) (Mask@@15 T@PolymorphicMapType_10593) (pm_f_1@@2 T@Field_7114_29306) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7114_29370 Mask@@15 null pm_f_1@@2) (IsWandField_7114_31144 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_10632_53) ) (!  (=> (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@5) null (WandMaskField_7114 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_10645_10646) ) (!  (=> (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@5) null (WandMaskField_7114 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_16665_3178) ) (!  (=> (select (|PolymorphicMapType_11121_10632_3178#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@5) null (WandMaskField_7114 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_7114_29306) ) (!  (=> (select (|PolymorphicMapType_11121_10632_29306#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@5) null (WandMaskField_7114 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@5) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_7114_29439) ) (!  (=> (select (|PolymorphicMapType_11121_10632_30617#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@5) null (WandMaskField_7114 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@5) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_7114_31144 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3056| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3056| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10572) (ExhaleHeap@@5 T@PolymorphicMapType_10572) (Mask@@16 T@PolymorphicMapType_10593) (o_3@@0 T@Ref) (f_8@@9 T@Field_7114_29439) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7114_35144 Mask@@16 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@6) o_3@@0 f_8@@9) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10572) (ExhaleHeap@@6 T@PolymorphicMapType_10572) (Mask@@17 T@PolymorphicMapType_10593) (o_3@@1 T@Ref) (f_8@@10 T@Field_7114_29306) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7114_29370 Mask@@17 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@7) o_3@@1 f_8@@10) (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10572) (ExhaleHeap@@7 T@PolymorphicMapType_10572) (Mask@@18 T@PolymorphicMapType_10593) (o_3@@2 T@Ref) (f_8@@11 T@Field_10645_10646) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7114_10646 Mask@@18 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@8) o_3@@2 f_8@@11) (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10572) (ExhaleHeap@@8 T@PolymorphicMapType_10572) (Mask@@19 T@PolymorphicMapType_10593) (o_3@@3 T@Ref) (f_8@@12 T@Field_10632_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7114_53 Mask@@19 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@9) o_3@@3 f_8@@12) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10572) (ExhaleHeap@@9 T@PolymorphicMapType_10572) (Mask@@20 T@PolymorphicMapType_10593) (o_3@@4 T@Ref) (f_8@@13 T@Field_16665_3178) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7114_3178 Mask@@20 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@10) o_3@@4 f_8@@13) (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((s0@@1 T@Seq_16711) (s1@@1 T@Seq_16711) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7120|)) (not (= s1@@1 |Seq#Empty_7120|))) (= (|Seq#Length_7120| (|Seq#Append_16711| s0@@1 s1@@1)) (+ (|Seq#Length_7120| s0@@1) (|Seq#Length_7120| s1@@1))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7120| (|Seq#Append_16711| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3056) (s1@@2 T@Seq_3056) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3056|)) (not (= s1@@2 |Seq#Empty_3056|))) (= (|Seq#Length_3056| (|Seq#Append_3056| s0@@2 s1@@2)) (+ (|Seq#Length_3056| s0@@2) (|Seq#Length_3056| s1@@2))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3056| (|Seq#Append_3056| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7114_29439) ) (! (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7114_29306) ) (! (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10645_10646) ) (! (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10632_53) ) (! (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16665_3178) ) (! (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_16711) (t@@1 T@Seq_16711) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7120| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7120| s@@15)) (|Seq#Length_7120| s@@15)) n@@15) (= (|Seq#Drop_7120| (|Seq#Append_16711| s@@15 t@@1) n@@15) (|Seq#Drop_7120| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7120| s@@15))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7120| (|Seq#Append_16711| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3056) (t@@2 T@Seq_3056) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3056| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3056| s@@16)) (|Seq#Length_3056| s@@16)) n@@16) (= (|Seq#Drop_3056| (|Seq#Append_3056| s@@16 t@@2) n@@16) (|Seq#Drop_3056| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3056| s@@16))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3056| (|Seq#Append_3056| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10593) (SummandMask1 T@PolymorphicMapType_10593) (SummandMask2 T@PolymorphicMapType_10593) (o_2@@19 T@Ref) (f_4@@19 T@Field_7114_29439) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10593) (SummandMask1@@0 T@PolymorphicMapType_10593) (SummandMask2@@0 T@PolymorphicMapType_10593) (o_2@@20 T@Ref) (f_4@@20 T@Field_7114_29306) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10593) (SummandMask1@@1 T@PolymorphicMapType_10593) (SummandMask2@@1 T@PolymorphicMapType_10593) (o_2@@21 T@Ref) (f_4@@21 T@Field_10645_10646) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10593) (SummandMask1@@2 T@PolymorphicMapType_10593) (SummandMask2@@2 T@PolymorphicMapType_10593) (o_2@@22 T@Ref) (f_4@@22 T@Field_10632_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10593) (SummandMask1@@3 T@PolymorphicMapType_10593) (SummandMask2@@3 T@PolymorphicMapType_10593) (o_2@@23 T@Ref) (f_4@@23 T@Field_16665_3178) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.567:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3056| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16711) (b T@Seq_16711) ) (!  (=> (|Seq#Equal_16711| a b) (= a b))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16711| a b))
)))
(assert (forall ((a@@0 T@Seq_3056) (b@@0 T@Seq_3056) ) (!  (=> (|Seq#Equal_3056| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3056| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16711) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_7120| s@@17))) (|Seq#ContainsTrigger_7120| s@@17 (|Seq#Index_7120| s@@17 i@@3)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7120| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3056) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3056| s@@18))) (|Seq#ContainsTrigger_3056| s@@18 (|Seq#Index_3056| s@@18 i@@4)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3056| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16711) (s1@@3 T@Seq_16711) ) (!  (and (=> (= s0@@3 |Seq#Empty_7120|) (= (|Seq#Append_16711| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7120|) (= (|Seq#Append_16711| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16711| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3056) (s1@@4 T@Seq_3056) ) (!  (and (=> (= s0@@4 |Seq#Empty_3056|) (= (|Seq#Append_3056| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3056|) (= (|Seq#Append_3056| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3056| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7120| (|Seq#Singleton_7120| t@@3) 0) t@@3)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7120| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3056| (|Seq#Singleton_3056| t@@4) 0) t@@4)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3056| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16711) ) (! (<= 0 (|Seq#Length_7120| s@@19))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7120| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3056) ) (! (<= 0 (|Seq#Length_3056| s@@20))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3056| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16711) (s1@@5 T@Seq_16711) ) (!  (=> (|Seq#Equal_16711| s0@@5 s1@@5) (and (= (|Seq#Length_7120| s0@@5) (|Seq#Length_7120| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7120| s0@@5))) (= (|Seq#Index_7120| s0@@5 j@@6) (|Seq#Index_7120| s1@@5 j@@6)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7120| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7120| s1@@5 j@@6))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16711| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3056) (s1@@6 T@Seq_3056) ) (!  (=> (|Seq#Equal_3056| s0@@6 s1@@6) (and (= (|Seq#Length_3056| s0@@6) (|Seq#Length_3056| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3056| s0@@6))) (= (|Seq#Index_3056| s0@@6 j@@7) (|Seq#Index_3056| s1@@6 j@@7)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3056| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3056| s1@@6 j@@7))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3056| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7120| (|Seq#Singleton_7120| t@@5)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7120| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3056| (|Seq#Singleton_3056| t@@6)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3056| t@@6))
)))
(assert (forall ((s@@21 T@Seq_16711) (t@@7 T@Seq_16711) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7120| s@@21))) (= (|Seq#Take_7120| (|Seq#Append_16711| s@@21 t@@7) n@@17) (|Seq#Take_7120| s@@21 n@@17)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7120| (|Seq#Append_16711| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3056) (t@@8 T@Seq_3056) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3056| s@@22))) (= (|Seq#Take_3056| (|Seq#Append_3056| s@@22 t@@8) n@@18) (|Seq#Take_3056| s@@22 n@@18)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3056| (|Seq#Append_3056| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16711) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_7120| s@@23))) (= (|Seq#Length_7120| (|Seq#Update_7120| s@@23 i@@5 v@@2)) (|Seq#Length_7120| s@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7120| (|Seq#Update_7120| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_7120| s@@23) (|Seq#Update_7120| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3056) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3056| s@@24))) (= (|Seq#Length_3056| (|Seq#Update_3056| s@@24 i@@6 v@@3)) (|Seq#Length_3056| s@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3056| (|Seq#Update_3056| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3056| s@@24) (|Seq#Update_3056| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10572) (o_1 T@Ref) (f_9 T@Field_7114_29306) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@11) (store (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@11) o_1 f_9 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@11) (store (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@11) o_1 f_9 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10572) (o_1@@0 T@Ref) (f_9@@0 T@Field_7114_29439) (v@@5 T@PolymorphicMapType_11121) ) (! (succHeap Heap@@12 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@12) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@12) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@12) (store (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@12) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@12) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@12) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@12) (store (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@12) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10572) (o_1@@1 T@Ref) (f_9@@1 T@Field_16665_3178) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@13) (store (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@13) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@13) (store (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@13) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10572) (o_1@@2 T@Ref) (f_9@@2 T@Field_10645_10646) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@14) (store (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@14) o_1@@2 f_9@@2 v@@7) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@14) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@14) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@14) (store (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@14) o_1@@2 f_9@@2 v@@7) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@14) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@14) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10572) (o_1@@3 T@Ref) (f_9@@3 T@Field_10632_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10572 (store (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@15) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@15) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@15) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@15) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (store (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@15) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@15) (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@15) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| Heap@@15) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_16711) (t@@9 T@Seq_16711) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7120| s@@25))) (= (|Seq#Drop_7120| (|Seq#Append_16711| s@@25 t@@9) n@@19) (|Seq#Append_16711| (|Seq#Drop_7120| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7120| (|Seq#Append_16711| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3056) (t@@10 T@Seq_3056) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3056| s@@26))) (= (|Seq#Drop_3056| (|Seq#Append_3056| s@@26 t@@10) n@@20) (|Seq#Append_3056| (|Seq#Drop_3056| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3056| (|Seq#Append_3056| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16711) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_7120| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_7120| (|Seq#Drop_7120| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_7120| s@@27 i@@7))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7120| s@@27 n@@21) (|Seq#Index_7120| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3056) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3056| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3056| (|Seq#Drop_3056| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3056| s@@28 i@@8))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3056| s@@28 n@@22) (|Seq#Index_3056| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16711) (s1@@7 T@Seq_16711) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7120|)) (not (= s1@@7 |Seq#Empty_7120|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7120| s0@@7))) (= (|Seq#Index_7120| (|Seq#Append_16711| s0@@7 s1@@7) n@@23) (|Seq#Index_7120| s0@@7 n@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7120| (|Seq#Append_16711| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7120| s0@@7 n@@23) (|Seq#Append_16711| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3056) (s1@@8 T@Seq_3056) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3056|)) (not (= s1@@8 |Seq#Empty_3056|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3056| s0@@8))) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@8 s1@@8) n@@24) (|Seq#Index_3056| s0@@8 n@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3056| (|Seq#Append_3056| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3056| s0@@8 n@@24) (|Seq#Append_3056| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16711) (s1@@9 T@Seq_16711) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7120|)) (not (= s1@@9 |Seq#Empty_7120|))) (<= 0 m)) (< m (|Seq#Length_7120| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7120| s0@@9)) (|Seq#Length_7120| s0@@9)) m) (= (|Seq#Index_7120| (|Seq#Append_16711| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7120| s0@@9))) (|Seq#Index_7120| s1@@9 m))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7120| s1@@9 m) (|Seq#Append_16711| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3056) (s1@@10 T@Seq_3056) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3056|)) (not (= s1@@10 |Seq#Empty_3056|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3056| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3056| s0@@10)) (|Seq#Length_3056| s0@@10)) m@@0) (= (|Seq#Index_3056| (|Seq#Append_3056| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3056| s0@@10))) (|Seq#Index_3056| s1@@10 m@@0))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3056| s1@@10 m@@0) (|Seq#Append_3056| s0@@10 s1@@10))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_10645_10646) (Heap@@16 T@PolymorphicMapType_10572) ) (!  (=> (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@16) o_1@@4 $allocated) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@16) (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@16) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| Heap@@16) o_1@@4 f_2))
)))
(assert (forall ((s@@29 T@Seq_16711) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_7120| s@@29))) (= (|Seq#Index_7120| s@@29 i@@9) x@@3)) (|Seq#Contains_16711| s@@29 x@@3))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16711| s@@29 x@@3) (|Seq#Index_7120| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3056) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3056| s@@30))) (= (|Seq#Index_3056| s@@30 i@@10) x@@4)) (|Seq#Contains_3056| s@@30 x@@4))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3056| s@@30 x@@4) (|Seq#Index_3056| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16711) (s1@@11 T@Seq_16711) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16711| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16711| s0@@11 s1@@11))) (not (= (|Seq#Length_7120| s0@@11) (|Seq#Length_7120| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16711| s0@@11 s1@@11))) (= (|Seq#Length_7120| s0@@11) (|Seq#Length_7120| s1@@11))) (= (|Seq#SkolemDiff_16711| s0@@11 s1@@11) (|Seq#SkolemDiff_16711| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16711| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16711| s0@@11 s1@@11) (|Seq#Length_7120| s0@@11))) (not (= (|Seq#Index_7120| s0@@11 (|Seq#SkolemDiff_16711| s0@@11 s1@@11)) (|Seq#Index_7120| s1@@11 (|Seq#SkolemDiff_16711| s0@@11 s1@@11))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16711| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3056) (s1@@12 T@Seq_3056) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3056| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3056| s0@@12 s1@@12))) (not (= (|Seq#Length_3056| s0@@12) (|Seq#Length_3056| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3056| s0@@12 s1@@12))) (= (|Seq#Length_3056| s0@@12) (|Seq#Length_3056| s1@@12))) (= (|Seq#SkolemDiff_3056| s0@@12 s1@@12) (|Seq#SkolemDiff_3056| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3056| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3056| s0@@12 s1@@12) (|Seq#Length_3056| s0@@12))) (not (= (|Seq#Index_3056| s0@@12 (|Seq#SkolemDiff_3056| s0@@12 s1@@12)) (|Seq#Index_3056| s1@@12 (|Seq#SkolemDiff_3056| s0@@12 s1@@12))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3056| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_7114_29306) (v_1@@0 T@FrameType) (q T@Field_7114_29306) (w@@0 T@FrameType) (r T@Field_7114_29306) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10632_10632 p@@1 v_1@@0 q w@@0) (InsidePredicate_10632_10632 q w@@0 r u)) (InsidePredicate_10632_10632 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10632_10632 p@@1 v_1@@0 q w@@0) (InsidePredicate_10632_10632 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_16711) ) (!  (=> (= (|Seq#Length_7120| s@@31) 0) (= s@@31 |Seq#Empty_7120|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7120| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3056) ) (!  (=> (= (|Seq#Length_3056| s@@32) 0) (= s@@32 |Seq#Empty_3056|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3056| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16711) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7120| s@@33 n@@25) |Seq#Empty_7120|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7120| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3056) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3056| s@@34 n@@26) |Seq#Empty_3056|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3056| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k_7 () Int)
(declare-fun ar () T@Seq_16711)
(declare-fun QPMask@7 () T@PolymorphicMapType_10593)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_10572)
(declare-fun k_4 () Int)
(declare-fun k_12 () Int)
(declare-fun i@0 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_10593)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_10593)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_10572)
(declare-fun k_10 () Int)
(declare-fun N@0 () Int)
(declare-fun k_21_1 () Int)
(declare-fun i@1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_10572)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_10593)
(declare-fun __flatten_1@1 () T@Ref)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_10593)
(declare-fun k_9 () Int)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_10593)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_10593)
(declare-fun Heap@@17 () T@PolymorphicMapType_10572)
(declare-fun __flatten_1@0 () T@Ref)
(declare-fun k_12_2 () Int)
(declare-fun __flatten_1 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_10593)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun k_2 () Int)
(declare-fun j_5 () Int)
(declare-fun k_1 () Int)
(declare-fun diz () T@Ref)
(declare-fun current_thread_id () Int)
(set-info :boogie-vc-id ZeroArray__zero_array)
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
 (=> (= (ControlFlow 0 0) 82) (let ((anon16_correct true))
(let ((anon51_Else_correct  (=> (and (not (and (<= 0 k_7) (< k_7 (|Seq#Length_7120| ar)))) (= (ControlFlow 0 74) 69)) anon16_correct)))
(let ((anon51_Then_correct  (=> (and (<= 0 k_7) (< k_7 (|Seq#Length_7120| ar))) (and (=> (= (ControlFlow 0 70) (- 0 73)) (>= k_7 0)) (=> (>= k_7 0) (and (=> (= (ControlFlow 0 70) (- 0 72)) (< k_7 (|Seq#Length_7120| ar))) (=> (< k_7 (|Seq#Length_7120| ar)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (HasDirectPerm_7114_3178 QPMask@7 (|Seq#Index_7120| ar k_7) Ref__Integer_value)) (=> (HasDirectPerm_7114_3178 QPMask@7 (|Seq#Index_7120| ar k_7) Ref__Integer_value) (=> (= (ControlFlow 0 70) 69) anon16_correct))))))))))
(let ((anon50_Else_correct true))
(let ((anon48_Else_correct  (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((k_5 Int) (k_5_1 Int) ) (!  (=> (and (and (and (and (not (= k_5 k_5_1)) (and (<= 0 k_5) (< k_5 (|Seq#Length_7120| ar)))) (and (<= 0 k_5_1) (< k_5_1 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_5) (|Seq#Index_7120| ar k_5_1))))
 :qid |stdinbpl.719:15|
 :skolemid |65|
))) (=> (forall ((k_5@@0 Int) (k_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_5@@0 k_5_1@@0)) (and (<= 0 k_5@@0) (< k_5@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_5_1@@0) (< k_5_1@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_5@@0) (|Seq#Index_7120| ar k_5_1@@0))))
 :qid |stdinbpl.719:15|
 :skolemid |65|
)) (=> (and (and (forall ((k_5@@1 Int) ) (!  (=> (and (and (<= 0 k_5@@1) (< k_5@@1 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_7120| ar k_5@@1)) (= (invRecv2 (|Seq#Index_7120| ar k_5@@1)) k_5@@1)))
 :qid |stdinbpl.725:22|
 :skolemid |66|
 :pattern ( (|Seq#Index_7120| ar k_5@@1))
 :pattern ( (|Seq#Index_7120| ar k_5@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (|Seq#Index_7120| ar (invRecv2 o_4)) o_4))
 :qid |stdinbpl.729:22|
 :skolemid |67|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((k_5@@2 Int) ) (!  (=> (and (<= 0 k_5@@2) (< k_5@@2 (|Seq#Length_7120| ar))) (not (= (|Seq#Index_7120| ar k_5@@2) null)))
 :qid |stdinbpl.735:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_7120| ar k_5@@2))
 :pattern ( (|Seq#Index_7120| ar k_5@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7120| ar (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@7) o_4@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@7) o_4@@0 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@0 Ref__Integer_value))))
 :qid |stdinbpl.741:22|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@7) o_4@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@7) o_4@@1 f_5)))
 :qid |stdinbpl.745:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@7) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@7) o_4@@2 f_5@@0)))
 :qid |stdinbpl.745:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@7) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_16665_3178) ) (!  (=> (not (= f_5@@1 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@7) o_4@@3 f_5@@1)))
 :qid |stdinbpl.745:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@7) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@7) o_4@@4 f_5@@2)))
 :qid |stdinbpl.745:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@7) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@7) o_4@@5 f_5@@3)))
 :qid |stdinbpl.745:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@7) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (and (=> (= (ControlFlow 0 75) 68) anon50_Else_correct) (=> (= (ControlFlow 0 75) 70) anon51_Then_correct)) (=> (= (ControlFlow 0 75) 74) anon51_Else_correct))))))))
(let ((anon12_correct true))
(let ((anon49_Else_correct  (=> (and (not (and (<= 0 k_4) (< k_4 (|Seq#Length_7120| ar)))) (= (ControlFlow 0 67) 63)) anon12_correct)))
(let ((anon49_Then_correct  (=> (and (<= 0 k_4) (< k_4 (|Seq#Length_7120| ar))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (>= k_4 0)) (=> (>= k_4 0) (and (=> (= (ControlFlow 0 64) (- 0 65)) (< k_4 (|Seq#Length_7120| ar))) (=> (< k_4 (|Seq#Length_7120| ar)) (=> (= (ControlFlow 0 64) 63) anon12_correct))))))))
(let ((anon47_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 77) 75) anon48_Else_correct) (=> (= (ControlFlow 0 77) 64) anon49_Then_correct)) (=> (= (ControlFlow 0 77) 67) anon49_Else_correct)))))
(let ((anon30_correct true))
(let ((anon58_Else_correct  (=> (and (not (and (<= 0 k_12) (< k_12 i@0))) (= (ControlFlow 0 52) 47)) anon30_correct)))
(let ((anon58_Then_correct  (=> (and (<= 0 k_12) (< k_12 i@0)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (>= k_12 0)) (=> (>= k_12 0) (and (=> (= (ControlFlow 0 48) (- 0 50)) (< k_12 (|Seq#Length_7120| ar))) (=> (< k_12 (|Seq#Length_7120| ar)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (HasDirectPerm_7114_3178 QPMask@6 (|Seq#Index_7120| ar k_12) Ref__Integer_value)) (=> (HasDirectPerm_7114_3178 QPMask@6 (|Seq#Index_7120| ar k_12) Ref__Integer_value) (=> (= (ControlFlow 0 48) 47) anon30_correct))))))))))
(let ((anon57_Else_correct true))
(let ((anon55_Else_correct  (and (=> (= (ControlFlow 0 53) (- 0 54)) (forall ((k_15_1 Int) (k_15_2 Int) ) (!  (=> (and (and (and (and (not (= k_15_1 k_15_2)) (and (<= 0 k_15_1) (< k_15_1 (|Seq#Length_7120| ar)))) (and (<= 0 k_15_2) (< k_15_2 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_15_1) (|Seq#Index_7120| ar k_15_2))))
 :qid |stdinbpl.878:19|
 :skolemid |79|
))) (=> (forall ((k_15_1@@0 Int) (k_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_15_1@@0 k_15_2@@0)) (and (<= 0 k_15_1@@0) (< k_15_1@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_15_2@@0) (< k_15_2@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_15_1@@0) (|Seq#Index_7120| ar k_15_2@@0))))
 :qid |stdinbpl.878:19|
 :skolemid |79|
)) (=> (and (and (forall ((k_15_1@@1 Int) ) (!  (=> (and (and (<= 0 k_15_1@@1) (< k_15_1@@1 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_7120| ar k_15_1@@1)) (= (invRecv5 (|Seq#Index_7120| ar k_15_1@@1)) k_15_1@@1)))
 :qid |stdinbpl.884:26|
 :skolemid |80|
 :pattern ( (|Seq#Index_7120| ar k_15_1@@1))
 :pattern ( (|Seq#Index_7120| ar k_15_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@6)) (< (invRecv5 o_4@@6) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange5 o_4@@6)) (= (|Seq#Index_7120| ar (invRecv5 o_4@@6)) o_4@@6))
 :qid |stdinbpl.888:26|
 :skolemid |81|
 :pattern ( (invRecv5 o_4@@6))
))) (and (forall ((k_15_1@@2 Int) ) (!  (=> (and (<= 0 k_15_1@@2) (< k_15_1@@2 (|Seq#Length_7120| ar))) (not (= (|Seq#Index_7120| ar k_15_1@@2) null)))
 :qid |stdinbpl.894:26|
 :skolemid |82|
 :pattern ( (|Seq#Index_7120| ar k_15_1@@2))
 :pattern ( (|Seq#Index_7120| ar k_15_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@7)) (< (invRecv5 o_4@@7) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange5 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7120| ar (invRecv5 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@6) o_4@@7 Ref__Integer_value) (+ (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@7 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@7)) (< (invRecv5 o_4@@7) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange5 o_4@@7))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@6) o_4@@7 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@7 Ref__Integer_value))))
 :qid |stdinbpl.900:26|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@6) o_4@@7 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@6) o_4@@8 f_5@@4)))
 :qid |stdinbpl.904:33|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@1) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@6) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@6) o_4@@9 f_5@@5)))
 :qid |stdinbpl.904:33|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@1) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@6) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_16665_3178) ) (!  (=> (not (= f_5@@6 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@6) o_4@@10 f_5@@6)))
 :qid |stdinbpl.904:33|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@6) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@1) o_4@@11 f_5@@7) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@6) o_4@@11 f_5@@7)))
 :qid |stdinbpl.904:33|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@1) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@6) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@1) o_4@@12 f_5@@8) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@6) o_4@@12 f_5@@8)))
 :qid |stdinbpl.904:33|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@1) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@6) o_4@@12 f_5@@8))
))) (and (state ExhaleHeap@0 QPMask@6) (state ExhaleHeap@0 QPMask@6))) (and (and (=> (= (ControlFlow 0 53) 46) anon57_Else_correct) (=> (= (ControlFlow 0 53) 48) anon58_Then_correct)) (=> (= (ControlFlow 0 53) 52) anon58_Else_correct))))))))
(let ((anon26_correct true))
(let ((anon56_Else_correct  (=> (and (not (and (<= 0 k_10) (< k_10 (|Seq#Length_7120| ar)))) (= (ControlFlow 0 45) 41)) anon26_correct)))
(let ((anon56_Then_correct  (=> (and (<= 0 k_10) (< k_10 (|Seq#Length_7120| ar))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (>= k_10 0)) (=> (>= k_10 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< k_10 (|Seq#Length_7120| ar))) (=> (< k_10 (|Seq#Length_7120| ar)) (=> (= (ControlFlow 0 42) 41) anon26_correct))))))))
(let ((anon54_Then_correct  (=> (and (and (<= 0 i@0) (<= i@0 N@0)) (and (= N@0 (|Seq#Length_7120| ar)) (state ExhaleHeap@0 QPMask@1))) (and (and (=> (= (ControlFlow 0 55) 53) anon55_Else_correct) (=> (= (ControlFlow 0 55) 42) anon56_Then_correct)) (=> (= (ControlFlow 0 55) 45) anon56_Else_correct)))))
(let ((anon36_correct true))
(let ((anon61_Else_correct  (=> (and (not (and (<= 0 k_21_1) (< k_21_1 i@1))) (= (ControlFlow 0 30) 27)) anon36_correct)))
(let ((anon61_Then_correct  (=> (and (<= 0 k_21_1) (< k_21_1 i@1)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@0) (|Seq#Index_7120| ar k_21_1) Ref__Integer_value) 0)) (=> (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@0) (|Seq#Index_7120| ar k_21_1) Ref__Integer_value) 0) (=> (= (ControlFlow 0 28) 27) anon36_correct))))))
(let ((anon60_Else_correct true))
(let ((anon59_Then_correct  (=> (and (and (state ExhaleHeap@0 ZeroMask) (<= 0 i@0)) (and (<= i@0 N@0) (= N@0 (|Seq#Length_7120| ar)))) (and (=> (= (ControlFlow 0 31) (- 0 40)) (forall ((k_18_1 Int) (k_18_2 Int) ) (!  (=> (and (and (and (and (not (= k_18_1 k_18_2)) (and (<= 0 k_18_1) (< k_18_1 (|Seq#Length_7120| ar)))) (and (<= 0 k_18_2) (< k_18_2 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_18_1) (|Seq#Index_7120| ar k_18_2))))
 :qid |stdinbpl.945:19|
 :skolemid |86|
))) (=> (forall ((k_18_1@@0 Int) (k_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_18_1@@0 k_18_2@@0)) (and (<= 0 k_18_1@@0) (< k_18_1@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_18_2@@0) (< k_18_2@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_18_1@@0) (|Seq#Index_7120| ar k_18_2@@0))))
 :qid |stdinbpl.945:19|
 :skolemid |86|
)) (=> (and (and (forall ((k_18_1@@1 Int) ) (!  (=> (and (and (<= 0 k_18_1@@1) (< k_18_1@@1 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_7120| ar k_18_1@@1)) (= (invRecv6 (|Seq#Index_7120| ar k_18_1@@1)) k_18_1@@1)))
 :qid |stdinbpl.951:26|
 :skolemid |87|
 :pattern ( (|Seq#Index_7120| ar k_18_1@@1))
 :pattern ( (|Seq#Index_7120| ar k_18_1@@1))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4@@13)) (< (invRecv6 o_4@@13) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange6 o_4@@13)) (= (|Seq#Index_7120| ar (invRecv6 o_4@@13)) o_4@@13))
 :qid |stdinbpl.955:26|
 :skolemid |88|
 :pattern ( (invRecv6 o_4@@13))
))) (and (forall ((k_18_1@@2 Int) ) (!  (=> (and (<= 0 k_18_1@@2) (< k_18_1@@2 (|Seq#Length_7120| ar))) (not (= (|Seq#Index_7120| ar k_18_1@@2) null)))
 :qid |stdinbpl.961:26|
 :skolemid |89|
 :pattern ( (|Seq#Index_7120| ar k_18_1@@2))
 :pattern ( (|Seq#Index_7120| ar k_18_1@@2))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_4@@14)) (< (invRecv6 o_4@@14) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange6 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7120| ar (invRecv6 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@14 Ref__Integer_value) (+ (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@14 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_4@@14)) (< (invRecv6 o_4@@14) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange6 o_4@@14))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@14 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@14 Ref__Integer_value))))
 :qid |stdinbpl.967:26|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@14 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@2) o_4@@15 f_5@@9)))
 :qid |stdinbpl.971:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@2) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@2) o_4@@16 f_5@@10)))
 :qid |stdinbpl.971:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@2) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_16665_3178) ) (!  (=> (not (= f_5@@11 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@17 f_5@@11)))
 :qid |stdinbpl.971:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@2) o_4@@18 f_5@@12)))
 :qid |stdinbpl.971:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@2) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@2) o_4@@19 f_5@@13)))
 :qid |stdinbpl.971:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@2) o_4@@19 f_5@@13))
))) (state ExhaleHeap@0 QPMask@2)) (and (and (forall ((k_19_1 Int) ) (!  (=> (and (<= 0 k_19_1) (< k_19_1 i@0)) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@0) (|Seq#Index_7120| ar k_19_1) Ref__Integer_value) 0))
 :qid |stdinbpl.977:24|
 :skolemid |92|
 :pattern ( (|Seq#Index_7120| ar k_19_1))
)) (state ExhaleHeap@0 QPMask@2)) (and (< i@0 N@0) (state ExhaleHeap@0 QPMask@2)))) (and (=> (= (ControlFlow 0 31) (- 0 39)) (>= i@0 0)) (=> (>= i@0 0) (and (=> (= (ControlFlow 0 31) (- 0 38)) (< i@0 (|Seq#Length_7120| ar))) (=> (< i@0 (|Seq#Length_7120| ar)) (=> (= __flatten_1@1 (|Seq#Index_7120| ar i@0)) (=> (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 31) (- 0 37)) (= FullPerm (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) __flatten_1@1 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) __flatten_1@1 Ref__Integer_value)) (=> (and (and (= Heap@0 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@0) (|PolymorphicMapType_10572_6913_6914#PolymorphicMapType_10572| ExhaleHeap@0) (store (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@0) __flatten_1@1 Ref__Integer_value 0) (|PolymorphicMapType_10572_7114_29483#PolymorphicMapType_10572| ExhaleHeap@0) (|PolymorphicMapType_10572_10632_29306#PolymorphicMapType_10572| ExhaleHeap@0))) (state Heap@0 QPMask@2)) (and (= i@1 (+ i@0 1)) (state Heap@0 QPMask@2))) (and (=> (= (ControlFlow 0 31) (- 0 36)) (<= 0 i@1)) (=> (<= 0 i@1) (and (=> (= (ControlFlow 0 31) (- 0 35)) (<= i@1 N@0)) (=> (<= i@1 N@0) (and (=> (= (ControlFlow 0 31) (- 0 34)) (= N@0 (|Seq#Length_7120| ar))) (=> (= N@0 (|Seq#Length_7120| ar)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (forall ((k_20_1 Int) (k_20_2 Int) ) (!  (=> (and (and (and (and (not (= k_20_1 k_20_2)) (and (<= 0 k_20_1) (< k_20_1 (|Seq#Length_7120| ar)))) (and (<= 0 k_20_2) (< k_20_2 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_20_1) (|Seq#Index_7120| ar k_20_2))))
 :qid |stdinbpl.1027:21|
 :skolemid |93|
 :pattern ( (neverTriggered7 k_20_1) (neverTriggered7 k_20_2))
))) (=> (forall ((k_20_1@@0 Int) (k_20_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_20_1@@0 k_20_2@@0)) (and (<= 0 k_20_1@@0) (< k_20_1@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_20_2@@0) (< k_20_2@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_20_1@@0) (|Seq#Index_7120| ar k_20_2@@0))))
 :qid |stdinbpl.1027:21|
 :skolemid |93|
 :pattern ( (neverTriggered7 k_20_1@@0) (neverTriggered7 k_20_2@@0))
)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((k_20_1@@1 Int) ) (!  (=> (and (<= 0 k_20_1@@1) (< k_20_1@@1 (|Seq#Length_7120| ar))) (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) (|Seq#Index_7120| ar k_20_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1034:21|
 :skolemid |94|
 :pattern ( (|Seq#Index_7120| ar k_20_1@@1))
 :pattern ( (|Seq#Index_7120| ar k_20_1@@1))
))) (=> (forall ((k_20_1@@2 Int) ) (!  (=> (and (<= 0 k_20_1@@2) (< k_20_1@@2 (|Seq#Length_7120| ar))) (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) (|Seq#Index_7120| ar k_20_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1034:21|
 :skolemid |94|
 :pattern ( (|Seq#Index_7120| ar k_20_1@@2))
 :pattern ( (|Seq#Index_7120| ar k_20_1@@2))
)) (=> (forall ((k_20_1@@3 Int) ) (!  (=> (and (and (<= 0 k_20_1@@3) (< k_20_1@@3 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_7120| ar k_20_1@@3)) (= (invRecv7 (|Seq#Index_7120| ar k_20_1@@3)) k_20_1@@3)))
 :qid |stdinbpl.1040:26|
 :skolemid |95|
 :pattern ( (|Seq#Index_7120| ar k_20_1@@3))
 :pattern ( (|Seq#Index_7120| ar k_20_1@@3))
)) (=> (and (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_4@@20)) (< (invRecv7 o_4@@20) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange7 o_4@@20))) (= (|Seq#Index_7120| ar (invRecv7 o_4@@20)) o_4@@20))
 :qid |stdinbpl.1044:26|
 :skolemid |96|
 :pattern ( (invRecv7 o_4@@20))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_4@@21)) (< (invRecv7 o_4@@21) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange7 o_4@@21))) (and (= (|Seq#Index_7120| ar (invRecv7 o_4@@21)) o_4@@21) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@3) o_4@@21 Ref__Integer_value) (- (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@21 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_4@@21)) (< (invRecv7 o_4@@21) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange7 o_4@@21)))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@3) o_4@@21 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@21 Ref__Integer_value))))
 :qid |stdinbpl.1050:26|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@3) o_4@@21 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@2) o_4@@22 f_5@@14) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@3) o_4@@22 f_5@@14)))
 :qid |stdinbpl.1056:33|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@3) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@2) o_4@@23 f_5@@15) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@3) o_4@@23 f_5@@15)))
 :qid |stdinbpl.1056:33|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@3) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_16665_3178) ) (!  (=> (not (= f_5@@16 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@2) o_4@@24 f_5@@16) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@3) o_4@@24 f_5@@16)))
 :qid |stdinbpl.1056:33|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@3) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@2) o_4@@25 f_5@@17) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1056:33|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@3) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@2) o_4@@26 f_5@@18) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1056:33|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@3) o_4@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 31) 26) anon60_Else_correct) (=> (= (ControlFlow 0 31) 28) anon61_Then_correct)) (=> (= (ControlFlow 0 31) 30) anon61_Else_correct)))))))))))))))))))))))))))))))
(let ((anon41_correct true))
(let ((anon63_Else_correct  (=> (and (not (and (<= 0 k_9) (< k_9 (|Seq#Length_7120| ar)))) (= (ControlFlow 0 21) 18)) anon41_correct)))
(let ((anon63_Then_correct  (=> (and (<= 0 k_9) (< k_9 (|Seq#Length_7120| ar))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@0) (|Seq#Index_7120| ar k_9) Ref__Integer_value) 0)) (=> (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@0) (|Seq#Index_7120| ar k_9) Ref__Integer_value) 0) (=> (= (ControlFlow 0 19) 18) anon41_correct))))))
(let ((anon62_Else_correct true))
(let ((anon59_Else_correct  (=> (not (< i@0 N@0)) (=> (and (and (state ExhaleHeap@0 QPMask@1) (<= 0 i@0)) (and (<= i@0 N@0) (= N@0 (|Seq#Length_7120| ar)))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (forall ((k_23_1 Int) (k_23_2 Int) ) (!  (=> (and (and (and (and (not (= k_23_1 k_23_2)) (and (<= 0 k_23_1) (< k_23_1 (|Seq#Length_7120| ar)))) (and (<= 0 k_23_2) (< k_23_2 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_23_1) (|Seq#Index_7120| ar k_23_2))))
 :qid |stdinbpl.1088:17|
 :skolemid |100|
))) (=> (forall ((k_23_1@@0 Int) (k_23_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_23_1@@0 k_23_2@@0)) (and (<= 0 k_23_1@@0) (< k_23_1@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_23_2@@0) (< k_23_2@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_23_1@@0) (|Seq#Index_7120| ar k_23_2@@0))))
 :qid |stdinbpl.1088:17|
 :skolemid |100|
)) (=> (and (and (forall ((k_23_1@@1 Int) ) (!  (=> (and (and (<= 0 k_23_1@@1) (< k_23_1@@1 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_7120| ar k_23_1@@1)) (= (invRecv8 (|Seq#Index_7120| ar k_23_1@@1)) k_23_1@@1)))
 :qid |stdinbpl.1094:24|
 :skolemid |101|
 :pattern ( (|Seq#Index_7120| ar k_23_1@@1))
 :pattern ( (|Seq#Index_7120| ar k_23_1@@1))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_4@@27)) (< (invRecv8 o_4@@27) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange8 o_4@@27)) (= (|Seq#Index_7120| ar (invRecv8 o_4@@27)) o_4@@27))
 :qid |stdinbpl.1098:24|
 :skolemid |102|
 :pattern ( (invRecv8 o_4@@27))
))) (and (forall ((k_23_1@@2 Int) ) (!  (=> (and (<= 0 k_23_1@@2) (< k_23_1@@2 (|Seq#Length_7120| ar))) (not (= (|Seq#Index_7120| ar k_23_1@@2) null)))
 :qid |stdinbpl.1104:24|
 :skolemid |103|
 :pattern ( (|Seq#Index_7120| ar k_23_1@@2))
 :pattern ( (|Seq#Index_7120| ar k_23_1@@2))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_4@@28)) (< (invRecv8 o_4@@28) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange8 o_4@@28)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7120| ar (invRecv8 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@28 Ref__Integer_value) (+ (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@28 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_4@@28)) (< (invRecv8 o_4@@28) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange8 o_4@@28))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@28 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@28 Ref__Integer_value))))
 :qid |stdinbpl.1110:24|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@28 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@1) o_4@@29 f_5@@19) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@4) o_4@@29 f_5@@19)))
 :qid |stdinbpl.1114:31|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@1) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@4) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@1) o_4@@30 f_5@@20) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@4) o_4@@30 f_5@@20)))
 :qid |stdinbpl.1114:31|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@1) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@4) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_16665_3178) ) (!  (=> (not (= f_5@@21 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@31 f_5@@21) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@31 f_5@@21)))
 :qid |stdinbpl.1114:31|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@1) o_4@@32 f_5@@22) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@4) o_4@@32 f_5@@22)))
 :qid |stdinbpl.1114:31|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@1) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@4) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@1) o_4@@33 f_5@@23) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@4) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1114:31|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@1) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@4) o_4@@33 f_5@@23))
))) (and (and (state ExhaleHeap@0 QPMask@4) (forall ((k_24_1 Int) ) (!  (=> (and (<= 0 k_24_1) (< k_24_1 i@0)) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| ExhaleHeap@0) (|Seq#Index_7120| ar k_24_1) Ref__Integer_value) 0))
 :qid |stdinbpl.1120:22|
 :skolemid |106|
 :pattern ( (|Seq#Index_7120| ar k_24_1))
))) (and (state ExhaleHeap@0 QPMask@4) (state ExhaleHeap@0 QPMask@4)))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((k_8 Int) (k_8_1 Int) ) (!  (=> (and (and (and (and (not (= k_8 k_8_1)) (and (<= 0 k_8) (< k_8 (|Seq#Length_7120| ar)))) (and (<= 0 k_8_1) (< k_8_1 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_8) (|Seq#Index_7120| ar k_8_1))))
 :qid |stdinbpl.1137:17|
 :skolemid |107|
 :pattern ( (neverTriggered3 k_8) (neverTriggered3 k_8_1))
))) (=> (forall ((k_8@@0 Int) (k_8_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_8@@0 k_8_1@@0)) (and (<= 0 k_8@@0) (< k_8@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_8_1@@0) (< k_8_1@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_8@@0) (|Seq#Index_7120| ar k_8_1@@0))))
 :qid |stdinbpl.1137:17|
 :skolemid |107|
 :pattern ( (neverTriggered3 k_8@@0) (neverTriggered3 k_8_1@@0))
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((k_8@@1 Int) ) (!  (=> (and (<= 0 k_8@@1) (< k_8@@1 (|Seq#Length_7120| ar))) (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) (|Seq#Index_7120| ar k_8@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1144:17|
 :skolemid |108|
 :pattern ( (|Seq#Index_7120| ar k_8@@1))
 :pattern ( (|Seq#Index_7120| ar k_8@@1))
))) (=> (forall ((k_8@@2 Int) ) (!  (=> (and (<= 0 k_8@@2) (< k_8@@2 (|Seq#Length_7120| ar))) (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) (|Seq#Index_7120| ar k_8@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.1144:17|
 :skolemid |108|
 :pattern ( (|Seq#Index_7120| ar k_8@@2))
 :pattern ( (|Seq#Index_7120| ar k_8@@2))
)) (=> (forall ((k_8@@3 Int) ) (!  (=> (and (and (<= 0 k_8@@3) (< k_8@@3 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_7120| ar k_8@@3)) (= (invRecv3 (|Seq#Index_7120| ar k_8@@3)) k_8@@3)))
 :qid |stdinbpl.1150:22|
 :skolemid |109|
 :pattern ( (|Seq#Index_7120| ar k_8@@3))
 :pattern ( (|Seq#Index_7120| ar k_8@@3))
)) (=> (and (forall ((o_4@@34 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4@@34)) (< (invRecv3 o_4@@34) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange3 o_4@@34))) (= (|Seq#Index_7120| ar (invRecv3 o_4@@34)) o_4@@34))
 :qid |stdinbpl.1154:22|
 :skolemid |110|
 :pattern ( (invRecv3 o_4@@34))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv3 o_4@@35)) (< (invRecv3 o_4@@35) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange3 o_4@@35))) (and (= (|Seq#Index_7120| ar (invRecv3 o_4@@35)) o_4@@35) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@5) o_4@@35 Ref__Integer_value) (- (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@35 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv3 o_4@@35)) (< (invRecv3 o_4@@35) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange3 o_4@@35)))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@5) o_4@@35 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@35 Ref__Integer_value))))
 :qid |stdinbpl.1160:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@5) o_4@@35 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@4) o_4@@36 f_5@@24) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@5) o_4@@36 f_5@@24)))
 :qid |stdinbpl.1166:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@5) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@4) o_4@@37 f_5@@25) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@5) o_4@@37 f_5@@25)))
 :qid |stdinbpl.1166:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@5) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_16665_3178) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@4) o_4@@38 f_5@@26) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@5) o_4@@38 f_5@@26)))
 :qid |stdinbpl.1166:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@5) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@4) o_4@@39 f_5@@27) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@5) o_4@@39 f_5@@27)))
 :qid |stdinbpl.1166:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@5) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@4) o_4@@40 f_5@@28) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@5) o_4@@40 f_5@@28)))
 :qid |stdinbpl.1166:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@5) o_4@@40 f_5@@28))
))) (and (and (=> (= (ControlFlow 0 22) 17) anon62_Else_correct) (=> (= (ControlFlow 0 22) 19) anon63_Then_correct)) (=> (= (ControlFlow 0 22) 21) anon63_Else_correct)))))))))))))))))
(let ((anon52_Else_correct  (=> (forall ((k_13_1_1 Int) ) (!  (=> (and (<= 0 k_13_1_1) (< k_13_1_1 0)) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@17) (|Seq#Index_7120| ar k_13_1_1) Ref__Integer_value) 0))
 :qid |stdinbpl.846:24|
 :skolemid |78|
 :pattern ( (|Seq#Index_7120| ar k_13_1_1))
)) (=> (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| ExhaleHeap@0) __flatten_1@0 $allocated)) (and (and (=> (= (ControlFlow 0 56) 55) anon54_Then_correct) (=> (= (ControlFlow 0 56) 31) anon59_Then_correct)) (=> (= (ControlFlow 0 56) 22) anon59_Else_correct))))))
(let ((anon21_correct true))
(let ((anon53_Else_correct  (=> (and (not (and (<= 0 k_12_2) (< k_12_2 0))) (= (ControlFlow 0 16) 13)) anon21_correct)))
(let ((anon53_Then_correct  (=> (and (<= 0 k_12_2) (< k_12_2 0)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@17) (|Seq#Index_7120| ar k_12_2) Ref__Integer_value) 0)) (=> (= (select (|PolymorphicMapType_10572_7114_3178#PolymorphicMapType_10572| Heap@@17) (|Seq#Index_7120| ar k_12_2) Ref__Integer_value) 0) (=> (= (ControlFlow 0 14) 13) anon21_correct))))))
(let ((anon47_Else_correct  (=> (and (and (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@17) __flatten_1 $allocated) (state Heap@@17 QPMask@0)) (and (= N@0 (|Seq#Length_7120| ar)) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 57) (- 0 62)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 57) (- 0 61)) (<= 0 N@0)) (=> (<= 0 N@0) (and (=> (= (ControlFlow 0 57) (- 0 60)) (= N@0 (|Seq#Length_7120| ar))) (=> (= N@0 (|Seq#Length_7120| ar)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (forall ((k_11 Int) (k_11_1 Int) ) (!  (=> (and (and (and (and (not (= k_11 k_11_1)) (and (<= 0 k_11) (< k_11 (|Seq#Length_7120| ar)))) (and (<= 0 k_11_1) (< k_11_1 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_11) (|Seq#Index_7120| ar k_11_1))))
 :qid |stdinbpl.805:21|
 :skolemid |72|
 :pattern ( (neverTriggered4 k_11) (neverTriggered4 k_11_1))
))) (=> (forall ((k_11@@0 Int) (k_11_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_11@@0 k_11_1@@0)) (and (<= 0 k_11@@0) (< k_11@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_11_1@@0) (< k_11_1@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_11@@0) (|Seq#Index_7120| ar k_11_1@@0))))
 :qid |stdinbpl.805:21|
 :skolemid |72|
 :pattern ( (neverTriggered4 k_11@@0) (neverTriggered4 k_11_1@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((k_11@@1 Int) ) (!  (=> (and (<= 0 k_11@@1) (< k_11@@1 (|Seq#Length_7120| ar))) (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) (|Seq#Index_7120| ar k_11@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.812:21|
 :skolemid |73|
 :pattern ( (|Seq#Index_7120| ar k_11@@1))
 :pattern ( (|Seq#Index_7120| ar k_11@@1))
))) (=> (forall ((k_11@@2 Int) ) (!  (=> (and (<= 0 k_11@@2) (< k_11@@2 (|Seq#Length_7120| ar))) (>= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) (|Seq#Index_7120| ar k_11@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.812:21|
 :skolemid |73|
 :pattern ( (|Seq#Index_7120| ar k_11@@2))
 :pattern ( (|Seq#Index_7120| ar k_11@@2))
)) (=> (forall ((k_11@@3 Int) ) (!  (=> (and (and (<= 0 k_11@@3) (< k_11@@3 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_7120| ar k_11@@3)) (= (invRecv4 (|Seq#Index_7120| ar k_11@@3)) k_11@@3)))
 :qid |stdinbpl.818:26|
 :skolemid |74|
 :pattern ( (|Seq#Index_7120| ar k_11@@3))
 :pattern ( (|Seq#Index_7120| ar k_11@@3))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_4@@41)) (< (invRecv4 o_4@@41) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange4 o_4@@41))) (= (|Seq#Index_7120| ar (invRecv4 o_4@@41)) o_4@@41))
 :qid |stdinbpl.822:26|
 :skolemid |75|
 :pattern ( (invRecv4 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_4@@42)) (< (invRecv4 o_4@@42) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange4 o_4@@42))) (and (= (|Seq#Index_7120| ar (invRecv4 o_4@@42)) o_4@@42) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@42 Ref__Integer_value) (- (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@42 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_4@@42)) (< (invRecv4 o_4@@42) (|Seq#Length_7120| ar))) (and (< NoPerm FullPerm) (qpRange4 o_4@@42)))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@42 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@42 Ref__Integer_value))))
 :qid |stdinbpl.828:26|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@42 Ref__Integer_value))
))) (=> (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@0) o_4@@43 f_5@@29) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@1) o_4@@43 f_5@@29)))
 :qid |stdinbpl.834:33|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@1) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@0) o_4@@44 f_5@@30) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@1) o_4@@44 f_5@@30)))
 :qid |stdinbpl.834:33|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@1) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_16665_3178) ) (!  (=> (not (= f_5@@31 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@45 f_5@@31) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@45 f_5@@31)))
 :qid |stdinbpl.834:33|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@1) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@0) o_4@@46 f_5@@32) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@1) o_4@@46 f_5@@32)))
 :qid |stdinbpl.834:33|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@1) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@0) o_4@@47 f_5@@33) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@1) o_4@@47 f_5@@33)))
 :qid |stdinbpl.834:33|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@1) o_4@@47 f_5@@33))
))) (and (and (=> (= (ControlFlow 0 57) 56) anon52_Else_correct) (=> (= (ControlFlow 0 57) 14) anon53_Then_correct)) (=> (= (ControlFlow 0 57) 16) anon53_Else_correct))))))))))))))))))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 78) (- 0 79)) (forall ((k_3 Int) (k_3_1 Int) ) (!  (=> (and (and (and (and (not (= k_3 k_3_1)) (and (<= 0 k_3) (< k_3 (|Seq#Length_7120| ar)))) (and (<= 0 k_3_1) (< k_3_1 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_3) (|Seq#Index_7120| ar k_3_1))))
 :qid |stdinbpl.662:15|
 :skolemid |59|
))) (=> (forall ((k_3@@0 Int) (k_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_3@@0 k_3_1@@0)) (and (<= 0 k_3@@0) (< k_3@@0 (|Seq#Length_7120| ar)))) (and (<= 0 k_3_1@@0) (< k_3_1@@0 (|Seq#Length_7120| ar)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7120| ar k_3@@0) (|Seq#Index_7120| ar k_3_1@@0))))
 :qid |stdinbpl.662:15|
 :skolemid |59|
)) (=> (and (and (forall ((k_3@@1 Int) ) (!  (=> (and (and (<= 0 k_3@@1) (< k_3@@1 (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_7120| ar k_3@@1)) (= (invRecv1 (|Seq#Index_7120| ar k_3@@1)) k_3@@1)))
 :qid |stdinbpl.668:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_7120| ar k_3@@1))
 :pattern ( (|Seq#Index_7120| ar k_3@@1))
)) (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@48)) (< (invRecv1 o_4@@48) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange1 o_4@@48)) (= (|Seq#Index_7120| ar (invRecv1 o_4@@48)) o_4@@48))
 :qid |stdinbpl.672:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@48))
))) (and (forall ((k_3@@2 Int) ) (!  (=> (and (<= 0 k_3@@2) (< k_3@@2 (|Seq#Length_7120| ar))) (not (= (|Seq#Index_7120| ar k_3@@2) null)))
 :qid |stdinbpl.678:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_7120| ar k_3@@2))
 :pattern ( (|Seq#Index_7120| ar k_3@@2))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange1 o_4@@49)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7120| ar (invRecv1 o_4@@49)) o_4@@49)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@49 Ref__Integer_value) (+ (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@49 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) (|Seq#Length_7120| ar))) (< NoPerm FullPerm)) (qpRange1 o_4@@49))) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@49 Ref__Integer_value) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@49 Ref__Integer_value))))
 :qid |stdinbpl.684:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@49 Ref__Integer_value))
)))) (=> (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@34 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_4@@50 f_5@@34) (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@0) o_4@@50 f_5@@34)))
 :qid |stdinbpl.688:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| ZeroMask) o_4@@50 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_10593_7114_53#PolymorphicMapType_10593| QPMask@0) o_4@@50 f_5@@34))
)) (forall ((o_4@@51 T@Ref) (f_5@@35 T@Field_10645_10646) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_4@@51 f_5@@35) (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@0) o_4@@51 f_5@@35)))
 :qid |stdinbpl.688:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| ZeroMask) o_4@@51 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_10593_7114_10646#PolymorphicMapType_10593| QPMask@0) o_4@@51 f_5@@35))
))) (forall ((o_4@@52 T@Ref) (f_5@@36 T@Field_16665_3178) ) (!  (=> (not (= f_5@@36 Ref__Integer_value)) (= (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@52 f_5@@36) (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@52 f_5@@36)))
 :qid |stdinbpl.688:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| ZeroMask) o_4@@52 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_10593_7114_3178#PolymorphicMapType_10593| QPMask@0) o_4@@52 f_5@@36))
))) (forall ((o_4@@53 T@Ref) (f_5@@37 T@Field_7114_29306) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_4@@53 f_5@@37) (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@0) o_4@@53 f_5@@37)))
 :qid |stdinbpl.688:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| ZeroMask) o_4@@53 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_10593_7114_29306#PolymorphicMapType_10593| QPMask@0) o_4@@53 f_5@@37))
))) (forall ((o_4@@54 T@Ref) (f_5@@38 T@Field_7114_29439) ) (!  (=> true (= (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_4@@54 f_5@@38) (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@0) o_4@@54 f_5@@38)))
 :qid |stdinbpl.688:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| ZeroMask) o_4@@54 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_10593_7114_33561#PolymorphicMapType_10593| QPMask@0) o_4@@54 f_5@@38))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 78) 77) anon47_Then_correct) (=> (= (ControlFlow 0 78) 57) anon47_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon46_Else_correct  (=> (and (not (and (<= 0 k_2) (< k_2 (|Seq#Length_7120| ar)))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon46_Then_correct  (=> (and (<= 0 k_2) (< k_2 (|Seq#Length_7120| ar))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= k_2 0)) (=> (>= k_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< k_2 (|Seq#Length_7120| ar))) (=> (< k_2 (|Seq#Length_7120| ar)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon43_Else_correct  (=> (and (forall ((j_1 Int) (k_1_1 Int) ) (!  (=> (and (<= 0 j_1) (and (< j_1 (|Seq#Length_7120| ar)) (and (<= 0 k_1_1) (and (< k_1_1 (|Seq#Length_7120| ar)) (not (= j_1 k_1_1)))))) (not (= (|Seq#Index_7120| ar j_1) (|Seq#Index_7120| ar k_1_1))))
 :qid |stdinbpl.644:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_7120| ar j_1) (|Seq#Index_7120| ar k_1_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 80) 78) anon45_Else_correct) (=> (= (ControlFlow 0 80) 9) anon46_Then_correct)) (=> (= (ControlFlow 0 80) 12) anon46_Else_correct)))))
(let ((anon3_correct true))
(let ((anon44_Else_correct  (=> (and (not (and (<= 0 j_5) (and (< j_5 (|Seq#Length_7120| ar)) (and (<= 0 k_1) (and (< k_1 (|Seq#Length_7120| ar)) (not (= j_5 k_1))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon44_Then_correct  (=> (and (<= 0 j_5) (and (< j_5 (|Seq#Length_7120| ar)) (and (<= 0 k_1) (and (< k_1 (|Seq#Length_7120| ar)) (not (= j_5 k_1)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j_5 (|Seq#Length_7120| ar))) (=> (< j_5 (|Seq#Length_7120| ar)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= k_1 0)) (=> (>= k_1 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< k_1 (|Seq#Length_7120| ar))) (=> (< k_1 (|Seq#Length_7120| ar)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_10572_6910_53#PolymorphicMapType_10572| Heap@@17) diz $allocated)) (=> (and (and (not (= diz null)) (state Heap@@17 ZeroMask)) (and (>= current_thread_id 0) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 81) 80) anon43_Else_correct) (=> (= (ControlFlow 0 81) 2) anon44_Then_correct)) (=> (= (ControlFlow 0 81) 7) anon44_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 82) 81) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
