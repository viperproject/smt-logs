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
(declare-sort T@Field_11231_53 0)
(declare-sort T@Field_11244_11245 0)
(declare-sort T@Field_11231_31817 0)
(declare-sort T@Field_11231_31684 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11192 0)) (((PolymorphicMapType_11192 (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| (Array T@Ref T@Field_11231_53 Real)) (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| (Array T@Ref T@Field_11244_11245 Real)) (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| (Array T@Ref T@Field_11231_31684 Real)) (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| (Array T@Ref T@Field_11231_31817 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11720 0)) (((PolymorphicMapType_11720 (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| (Array T@Ref T@Field_11231_53 Bool)) (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| (Array T@Ref T@Field_11244_11245 Bool)) (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| (Array T@Ref T@Field_11231_31684 Bool)) (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| (Array T@Ref T@Field_11231_31817 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11171 0)) (((PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| (Array T@Ref T@Field_11231_53 Bool)) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| (Array T@Ref T@Field_11244_11245 T@Ref)) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| (Array T@Ref T@Field_11231_31817 T@PolymorphicMapType_11720)) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| (Array T@Ref T@Field_11231_31684 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_3332| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_11171 T@PolymorphicMapType_11171) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11171 T@PolymorphicMapType_11171) Bool)
(declare-fun state (T@PolymorphicMapType_11171 T@PolymorphicMapType_11192) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11192) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11720)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3069| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_2993| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11171 T@PolymorphicMapType_11171 T@PolymorphicMapType_11192) Bool)
(declare-fun IsPredicateField_11231_31775 (T@Field_11231_31684) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11231 (T@Field_11231_31684) T@Field_11231_31817)
(declare-fun HasDirectPerm_11231_31748 (T@PolymorphicMapType_11192 T@Ref T@Field_11231_31684) Bool)
(declare-fun IsWandField_11231_33324 (T@Field_11231_31684) Bool)
(declare-fun WandMaskField_11231 (T@Field_11231_31684) T@Field_11231_31817)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2864)
(declare-fun |Seq#Append_3| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_11171)
(declare-fun ZeroMask () T@PolymorphicMapType_11192)
(declare-fun $allocated () T@Field_11231_53)
(declare-fun InsidePredicate_11231_11231 (T@Field_11231_31684 T@FrameType T@Field_11231_31684 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11231_36287 (T@Field_11231_31817) Bool)
(declare-fun IsWandField_11231_36303 (T@Field_11231_31817) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11231_11245 (T@Field_11244_11245) Bool)
(declare-fun IsWandField_11231_11245 (T@Field_11244_11245) Bool)
(declare-fun IsPredicateField_11231_53 (T@Field_11231_53) Bool)
(declare-fun IsWandField_11231_53 (T@Field_11231_53) Bool)
(declare-fun HasDirectPerm_11231_36658 (T@PolymorphicMapType_11192 T@Ref T@Field_11231_31817) Bool)
(declare-fun HasDirectPerm_11231_11245 (T@PolymorphicMapType_11192 T@Ref T@Field_11244_11245) Bool)
(declare-fun HasDirectPerm_11231_53 (T@PolymorphicMapType_11192 T@Ref T@Field_11231_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11192 T@PolymorphicMapType_11192 T@PolymorphicMapType_11192) Bool)
(declare-fun |Seq#Equal_2993| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_3332| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_3332| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_3332| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_3332| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_3332| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11171) (Heap1 T@PolymorphicMapType_11171) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11171) (Mask T@PolymorphicMapType_11192) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11171) (Heap1@@0 T@PolymorphicMapType_11171) (Heap2 T@PolymorphicMapType_11171) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11231_31817) ) (!  (not (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11231_31684) ) (!  (not (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11244_11245) ) (!  (not (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11231_53) ) (!  (not (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2864| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2864| (|Seq#Drop_3332| s@@0 n@@0) j) (|Seq#Index_2864| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_3332| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2864| |Seq#Empty_3069|) 0))
(assert (forall ((s@@1 T@Seq_2864) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2864| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) (|Seq#Index_2864| s@@1 n@@1)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2864| s@@1 n@@1) (|Seq#Update_2864| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2864| s@@2)) (= (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2864| s@@2) n@@2) (= (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)) (|Seq#Length_2864| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2993| s@@2 n@@2) (|Seq#Length_2864| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2864) (x Int) ) (!  (=> (|Seq#Contains_2864| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2864| s@@3 x)) (< (|Seq#Skolem_2864| s@@3 x) (|Seq#Length_2864| s@@3))) (= (|Seq#Index_2864| s@@3 (|Seq#Skolem_2864| s@@3 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3332| s@@4 n@@3) s@@4))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3332| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11171) (ExhaleHeap T@PolymorphicMapType_11171) (Mask@@0 T@PolymorphicMapType_11192) (pm_f T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11231_31748 Mask@@0 null pm_f) (IsPredicateField_11231_31775 pm_f)) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@0) null (PredicateMaskField_11231 pm_f)) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap) null (PredicateMaskField_11231 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11231_31775 pm_f) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap) null (PredicateMaskField_11231 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11171) (ExhaleHeap@@0 T@PolymorphicMapType_11171) (Mask@@1 T@PolymorphicMapType_11192) (pm_f@@0 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11231_31748 Mask@@1 null pm_f@@0) (IsWandField_11231_33324 pm_f@@0)) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@1) null (WandMaskField_11231 pm_f@@0)) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@0) null (WandMaskField_11231 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11231_33324 pm_f@@0) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@0) null (WandMaskField_11231 pm_f@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2993| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2993| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2993| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_3| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2993| (|Seq#Append_3| s@@6 t) n@@5) (|Seq#Append_3| s@@6 (|Seq#Take_2993| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2993| (|Seq#Append_3| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11171) (ExhaleHeap@@1 T@PolymorphicMapType_11171) (Mask@@2 T@PolymorphicMapType_11192) (pm_f@@1 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11231_31748 Mask@@2 null pm_f@@1) (IsPredicateField_11231_31775 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11231_53) ) (!  (=> (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@2) o2 f_2) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_11244_11245) ) (!  (=> (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11231_31684) ) (!  (=> (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11231_31817) ) (!  (=> (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11231_31775 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11171) (ExhaleHeap@@2 T@PolymorphicMapType_11171) (Mask@@3 T@PolymorphicMapType_11192) (pm_f@@2 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11231_31748 Mask@@3 null pm_f@@2) (IsWandField_11231_33324 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11231_53) ) (!  (=> (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11244_11245) ) (!  (=> (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11231_31684) ) (!  (=> (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11231_31817) ) (!  (=> (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_11231_33324 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11171) (ExhaleHeap@@3 T@PolymorphicMapType_11171) (Mask@@4 T@PolymorphicMapType_11192) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_11231_31684) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11231_11231 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11231_11231 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3069|)) (not (= s1 |Seq#Empty_3069|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_3| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11171) (ExhaleHeap@@4 T@PolymorphicMapType_11171) (Mask@@5 T@PolymorphicMapType_11192) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11192) (o_2@@3 T@Ref) (f_4@@3 T@Field_11231_31817) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11231_36287 f_4@@3))) (not (IsWandField_11231_36303 f_4@@3))) (<= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11192) (o_2@@4 T@Ref) (f_4@@4 T@Field_11231_31684) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11231_31775 f_4@@4))) (not (IsWandField_11231_33324 f_4@@4))) (<= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11192) (o_2@@5 T@Ref) (f_4@@5 T@Field_11244_11245) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11231_11245 f_4@@5))) (not (IsWandField_11231_11245 f_4@@5))) (<= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11192) (o_2@@6 T@Ref) (f_4@@6 T@Field_11231_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11231_53 f_4@@6))) (not (IsWandField_11231_53 f_4@@6))) (<= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11192) (o_2@@7 T@Ref) (f_4@@7 T@Field_11231_31817) ) (! (= (HasDirectPerm_11231_36658 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_36658 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11192) (o_2@@8 T@Ref) (f_4@@8 T@Field_11231_31684) ) (! (= (HasDirectPerm_11231_31748 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_31748 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11192) (o_2@@9 T@Ref) (f_4@@9 T@Field_11244_11245) ) (! (= (HasDirectPerm_11231_11245 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_11245 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11192) (o_2@@10 T@Ref) (f_4@@10 T@Field_11231_53) ) (! (= (HasDirectPerm_11231_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11171) (ExhaleHeap@@5 T@PolymorphicMapType_11171) (Mask@@14 T@PolymorphicMapType_11192) (o_1@@0 T@Ref) (f_2@@7 T@Field_11231_31817) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_11231_36658 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11171) (ExhaleHeap@@6 T@PolymorphicMapType_11171) (Mask@@15 T@PolymorphicMapType_11192) (o_1@@1 T@Ref) (f_2@@8 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_11231_31748 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11171) (ExhaleHeap@@7 T@PolymorphicMapType_11171) (Mask@@16 T@PolymorphicMapType_11192) (o_1@@2 T@Ref) (f_2@@9 T@Field_11244_11245) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_11231_11245 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11171) (ExhaleHeap@@8 T@PolymorphicMapType_11171) (Mask@@17 T@PolymorphicMapType_11192) (o_1@@3 T@Ref) (f_2@@10 T@Field_11231_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_11231_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3069|)) (not (= s1@@0 |Seq#Empty_3069|))) (= (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11231_31817) ) (! (= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11231_31684) ) (! (= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11244_11245) ) (! (= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11231_53) ) (! (= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_3332| (|Seq#Append_3| s@@7 t@@0) n@@7) (|Seq#Drop_3332| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3332| (|Seq#Append_3| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11192) (SummandMask1 T@PolymorphicMapType_11192) (SummandMask2 T@PolymorphicMapType_11192) (o_2@@15 T@Ref) (f_4@@15 T@Field_11231_31817) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11192) (SummandMask1@@0 T@PolymorphicMapType_11192) (SummandMask2@@0 T@PolymorphicMapType_11192) (o_2@@16 T@Ref) (f_4@@16 T@Field_11231_31684) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11192) (SummandMask1@@1 T@PolymorphicMapType_11192) (SummandMask2@@1 T@PolymorphicMapType_11192) (o_2@@17 T@Ref) (f_4@@17 T@Field_11244_11245) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11192) (SummandMask1@@2 T@PolymorphicMapType_11192) (SummandMask2@@2 T@PolymorphicMapType_11192) (o_2@@18 T@Ref) (f_4@@18 T@Field_11231_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2864) (b T@Seq_2864) ) (!  (=> (|Seq#Equal_2993| a b) (= a b))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2993| a b))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_3069|) (= (|Seq#Append_3| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3069|) (= (|Seq#Append_3| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_2993| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2993| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@10))) (= (|Seq#Take_2993| (|Seq#Append_3| s@@10 t@@3) n@@8) (|Seq#Take_2993| s@@10 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2993| (|Seq#Append_3| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2864) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@11))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)) (|Seq#Length_2864| s@@11)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2864| s@@11) (|Seq#Update_2864| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11171) (o T@Ref) (f_3 T@Field_11231_31684) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@10) (store (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@10) o f_3 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@10) (store (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@10) o f_3 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11171) (o@@0 T@Ref) (f_3@@0 T@Field_11231_31817) (v@@3 T@PolymorphicMapType_11720) ) (! (succHeap Heap@@11 (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@11) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@11) (store (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@11) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@11) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@11) (store (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@11) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11171) (o@@1 T@Ref) (f_3@@1 T@Field_11244_11245) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@12) (store (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@12) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@12) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@12) (store (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@12) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@12) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11171) (o@@2 T@Ref) (f_3@@2 T@Field_11231_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_11171 (store (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@13) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (store (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@13) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@13)))
)))
(assert (forall ((s@@12 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@12))) (= (|Seq#Drop_3332| (|Seq#Append_3| s@@12 t@@4) n@@9) (|Seq#Append_3| (|Seq#Drop_3332| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3332| (|Seq#Append_3| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_3332| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@13 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3332| s@@13 n@@10) (|Seq#Index_2864| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3069|)) (not (= s1@@3 |Seq#Empty_3069|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_3| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3069|)) (not (= s1@@4 |Seq#Empty_3069|))) (<= 0 m)) (< m (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m) (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_11244_11245) (Heap@@14 T@PolymorphicMapType_11171) ) (!  (=> (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@14) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@14) o@@3 f))
)))
(assert (forall ((s@@14 T@Seq_2864) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@14))) (= (|Seq#Index_2864| s@@14 i@@5) x@@1)) (|Seq#Contains_2864| s@@14 x@@1))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@14 x@@1) (|Seq#Index_2864| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2993| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2993| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2993| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2993| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_11231_31684) (v_1@@0 T@FrameType) (q T@Field_11231_31684) (w@@0 T@FrameType) (r T@Field_11231_31684) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11231_11231 p@@1 v_1@@0 q w@@0) (InsidePredicate_11231_11231 q w@@0 r u)) (InsidePredicate_11231_11231 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11231_11231 p@@1 v_1@@0 q w@@0) (InsidePredicate_11231_11231 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@15) 0) (= s@@15 |Seq#Empty_3069|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2993| s@@16 n@@12) |Seq#Empty_3069|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2993| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_11171)
(declare-fun a_2@0 () T@Seq_2864)
(declare-fun e1_2 () Int)
(declare-fun e2_1 () Int)
(set-info :boogie-vc-id test_drop_02)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (= a_2@0 (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Singleton_3| 1) (|Seq#Singleton_3| 4)) (|Seq#Singleton_3| 5)) (|Seq#Singleton_3| 7)) (|Seq#Singleton_3| 8))) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 (- 0 1)) a_2@0)) (=> (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 (- 0 1)) a_2@0) (=> (and (and (state Heap@@15 ZeroMask) (< e1_2 (- 0 1))) (and (state Heap@@15 ZeroMask) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 e1_2) a_2@0)) (=> (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 e1_2) a_2@0) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 6) |Seq#Empty_3069|)) (=> (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 6) |Seq#Empty_3069|) (=> (state Heap@@15 ZeroMask) (=> (and (and (< 6 e2_1) (state Heap@@15 ZeroMask)) (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1)))) (|Seq#Equal_2993| (|Seq#Drop_3332| a_2@0 e2_1) |Seq#Empty_3069|))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort T@Field_11231_53 0)
(declare-sort T@Field_11244_11245 0)
(declare-sort T@Field_11231_31817 0)
(declare-sort T@Field_11231_31684 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11192 0)) (((PolymorphicMapType_11192 (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| (Array T@Ref T@Field_11231_53 Real)) (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| (Array T@Ref T@Field_11244_11245 Real)) (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| (Array T@Ref T@Field_11231_31684 Real)) (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| (Array T@Ref T@Field_11231_31817 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11720 0)) (((PolymorphicMapType_11720 (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| (Array T@Ref T@Field_11231_53 Bool)) (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| (Array T@Ref T@Field_11244_11245 Bool)) (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| (Array T@Ref T@Field_11231_31684 Bool)) (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| (Array T@Ref T@Field_11231_31817 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11171 0)) (((PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| (Array T@Ref T@Field_11231_53 Bool)) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| (Array T@Ref T@Field_11244_11245 T@Ref)) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| (Array T@Ref T@Field_11231_31817 T@PolymorphicMapType_11720)) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| (Array T@Ref T@Field_11231_31684 T@FrameType)) ) ) ))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_3332| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_11171 T@PolymorphicMapType_11171) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11171 T@PolymorphicMapType_11171) Bool)
(declare-fun state (T@PolymorphicMapType_11171 T@PolymorphicMapType_11192) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11192) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11720)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3069| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_2993| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11171 T@PolymorphicMapType_11171 T@PolymorphicMapType_11192) Bool)
(declare-fun IsPredicateField_11231_31775 (T@Field_11231_31684) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11231 (T@Field_11231_31684) T@Field_11231_31817)
(declare-fun HasDirectPerm_11231_31748 (T@PolymorphicMapType_11192 T@Ref T@Field_11231_31684) Bool)
(declare-fun IsWandField_11231_33324 (T@Field_11231_31684) Bool)
(declare-fun WandMaskField_11231 (T@Field_11231_31684) T@Field_11231_31817)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2864)
(declare-fun |Seq#Append_3| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_11171)
(declare-fun ZeroMask () T@PolymorphicMapType_11192)
(declare-fun $allocated () T@Field_11231_53)
(declare-fun InsidePredicate_11231_11231 (T@Field_11231_31684 T@FrameType T@Field_11231_31684 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11231_36287 (T@Field_11231_31817) Bool)
(declare-fun IsWandField_11231_36303 (T@Field_11231_31817) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11231_11245 (T@Field_11244_11245) Bool)
(declare-fun IsWandField_11231_11245 (T@Field_11244_11245) Bool)
(declare-fun IsPredicateField_11231_53 (T@Field_11231_53) Bool)
(declare-fun IsWandField_11231_53 (T@Field_11231_53) Bool)
(declare-fun HasDirectPerm_11231_36658 (T@PolymorphicMapType_11192 T@Ref T@Field_11231_31817) Bool)
(declare-fun HasDirectPerm_11231_11245 (T@PolymorphicMapType_11192 T@Ref T@Field_11244_11245) Bool)
(declare-fun HasDirectPerm_11231_53 (T@PolymorphicMapType_11192 T@Ref T@Field_11231_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11192 T@PolymorphicMapType_11192 T@PolymorphicMapType_11192) Bool)
(declare-fun |Seq#Equal_2993| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_3332| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_3332| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_3332| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_3332| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_3332| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11171) (Heap1 T@PolymorphicMapType_11171) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11171) (Mask T@PolymorphicMapType_11192) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11171) (Heap1@@0 T@PolymorphicMapType_11171) (Heap2 T@PolymorphicMapType_11171) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11231_31817) ) (!  (not (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11231_31684) ) (!  (not (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11244_11245) ) (!  (not (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11231_53) ) (!  (not (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2864| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2864| (|Seq#Drop_3332| s@@0 n@@0) j) (|Seq#Index_2864| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_3332| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2864| |Seq#Empty_3069|) 0))
(assert (forall ((s@@1 T@Seq_2864) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2864| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) (|Seq#Index_2864| s@@1 n@@1)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2864| s@@1 n@@1) (|Seq#Update_2864| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2864| s@@2)) (= (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2864| s@@2) n@@2) (= (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)) (|Seq#Length_2864| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2993| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2993| s@@2 n@@2) (|Seq#Length_2864| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2864) (x Int) ) (!  (=> (|Seq#Contains_2864| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2864| s@@3 x)) (< (|Seq#Skolem_2864| s@@3 x) (|Seq#Length_2864| s@@3))) (= (|Seq#Index_2864| s@@3 (|Seq#Skolem_2864| s@@3 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3332| s@@4 n@@3) s@@4))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3332| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11171) (ExhaleHeap T@PolymorphicMapType_11171) (Mask@@0 T@PolymorphicMapType_11192) (pm_f T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11231_31748 Mask@@0 null pm_f) (IsPredicateField_11231_31775 pm_f)) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@0) null (PredicateMaskField_11231 pm_f)) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap) null (PredicateMaskField_11231 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11231_31775 pm_f) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap) null (PredicateMaskField_11231 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11171) (ExhaleHeap@@0 T@PolymorphicMapType_11171) (Mask@@1 T@PolymorphicMapType_11192) (pm_f@@0 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11231_31748 Mask@@1 null pm_f@@0) (IsWandField_11231_33324 pm_f@@0)) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@1) null (WandMaskField_11231 pm_f@@0)) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@0) null (WandMaskField_11231 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11231_33324 pm_f@@0) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@0) null (WandMaskField_11231 pm_f@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2993| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2993| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2993| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_3| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2993| (|Seq#Append_3| s@@6 t) n@@5) (|Seq#Append_3| s@@6 (|Seq#Take_2993| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2993| (|Seq#Append_3| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11171) (ExhaleHeap@@1 T@PolymorphicMapType_11171) (Mask@@2 T@PolymorphicMapType_11192) (pm_f@@1 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11231_31748 Mask@@2 null pm_f@@1) (IsPredicateField_11231_31775 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11231_53) ) (!  (=> (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@2) o2 f_2) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_11244_11245) ) (!  (=> (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11231_31684) ) (!  (=> (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11231_31817) ) (!  (=> (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) null (PredicateMaskField_11231 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11231_31775 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11171) (ExhaleHeap@@2 T@PolymorphicMapType_11171) (Mask@@3 T@PolymorphicMapType_11192) (pm_f@@2 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11231_31748 Mask@@3 null pm_f@@2) (IsWandField_11231_33324 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11231_53) ) (!  (=> (select (|PolymorphicMapType_11720_11231_53#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11244_11245) ) (!  (=> (select (|PolymorphicMapType_11720_11231_11245#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11231_31684) ) (!  (=> (select (|PolymorphicMapType_11720_11231_31684#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11231_31817) ) (!  (=> (select (|PolymorphicMapType_11720_11231_32797#PolymorphicMapType_11720| (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) null (WandMaskField_11231 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_11231_33324 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11171) (ExhaleHeap@@3 T@PolymorphicMapType_11171) (Mask@@4 T@PolymorphicMapType_11192) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_11231_31684) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11231_11231 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11231_11231 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3069|)) (not (= s1 |Seq#Empty_3069|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_3| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11171) (ExhaleHeap@@4 T@PolymorphicMapType_11171) (Mask@@5 T@PolymorphicMapType_11192) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11192) (o_2@@3 T@Ref) (f_4@@3 T@Field_11231_31817) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11231_36287 f_4@@3))) (not (IsWandField_11231_36303 f_4@@3))) (<= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11192) (o_2@@4 T@Ref) (f_4@@4 T@Field_11231_31684) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11231_31775 f_4@@4))) (not (IsWandField_11231_33324 f_4@@4))) (<= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11192) (o_2@@5 T@Ref) (f_4@@5 T@Field_11244_11245) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11231_11245 f_4@@5))) (not (IsWandField_11231_11245 f_4@@5))) (<= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11192) (o_2@@6 T@Ref) (f_4@@6 T@Field_11231_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11231_53 f_4@@6))) (not (IsWandField_11231_53 f_4@@6))) (<= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11192) (o_2@@7 T@Ref) (f_4@@7 T@Field_11231_31817) ) (! (= (HasDirectPerm_11231_36658 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_36658 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11192) (o_2@@8 T@Ref) (f_4@@8 T@Field_11231_31684) ) (! (= (HasDirectPerm_11231_31748 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_31748 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11192) (o_2@@9 T@Ref) (f_4@@9 T@Field_11244_11245) ) (! (= (HasDirectPerm_11231_11245 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_11245 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11192) (o_2@@10 T@Ref) (f_4@@10 T@Field_11231_53) ) (! (= (HasDirectPerm_11231_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11231_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11171) (ExhaleHeap@@5 T@PolymorphicMapType_11171) (Mask@@14 T@PolymorphicMapType_11192) (o_1@@0 T@Ref) (f_2@@7 T@Field_11231_31817) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_11231_36658 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11171) (ExhaleHeap@@6 T@PolymorphicMapType_11171) (Mask@@15 T@PolymorphicMapType_11192) (o_1@@1 T@Ref) (f_2@@8 T@Field_11231_31684) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_11231_31748 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11171) (ExhaleHeap@@7 T@PolymorphicMapType_11171) (Mask@@16 T@PolymorphicMapType_11192) (o_1@@2 T@Ref) (f_2@@9 T@Field_11244_11245) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_11231_11245 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11171) (ExhaleHeap@@8 T@PolymorphicMapType_11171) (Mask@@17 T@PolymorphicMapType_11192) (o_1@@3 T@Ref) (f_2@@10 T@Field_11231_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_11231_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3069|)) (not (= s1@@0 |Seq#Empty_3069|))) (= (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11231_31817) ) (! (= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11231_31684) ) (! (= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11244_11245) ) (! (= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11231_53) ) (! (= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_3332| (|Seq#Append_3| s@@7 t@@0) n@@7) (|Seq#Drop_3332| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3332| (|Seq#Append_3| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11192) (SummandMask1 T@PolymorphicMapType_11192) (SummandMask2 T@PolymorphicMapType_11192) (o_2@@15 T@Ref) (f_4@@15 T@Field_11231_31817) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11192_11231_35378#PolymorphicMapType_11192| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11192) (SummandMask1@@0 T@PolymorphicMapType_11192) (SummandMask2@@0 T@PolymorphicMapType_11192) (o_2@@16 T@Ref) (f_4@@16 T@Field_11231_31684) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11192_11231_31684#PolymorphicMapType_11192| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11192) (SummandMask1@@1 T@PolymorphicMapType_11192) (SummandMask2@@1 T@PolymorphicMapType_11192) (o_2@@17 T@Ref) (f_4@@17 T@Field_11244_11245) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11192_11231_11245#PolymorphicMapType_11192| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11192) (SummandMask1@@2 T@PolymorphicMapType_11192) (SummandMask2@@2 T@PolymorphicMapType_11192) (o_2@@18 T@Ref) (f_4@@18 T@Field_11231_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11192_11231_53#PolymorphicMapType_11192| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2864) (b T@Seq_2864) ) (!  (=> (|Seq#Equal_2993| a b) (= a b))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2993| a b))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_3069|) (= (|Seq#Append_3| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3069|) (= (|Seq#Append_3| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_2993| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2993| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@10))) (= (|Seq#Take_2993| (|Seq#Append_3| s@@10 t@@3) n@@8) (|Seq#Take_2993| s@@10 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2993| (|Seq#Append_3| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2864) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@11))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)) (|Seq#Length_2864| s@@11)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2864| s@@11) (|Seq#Update_2864| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11171) (o T@Ref) (f_3 T@Field_11231_31684) (v@@2 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@10) (store (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@10) o f_3 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@10) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@10) (store (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@10) o f_3 v@@2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11171) (o@@0 T@Ref) (f_3@@0 T@Field_11231_31817) (v@@3 T@PolymorphicMapType_11720) ) (! (succHeap Heap@@11 (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@11) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@11) (store (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@11) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@11) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@11) (store (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@11) o@@0 f_3@@0 v@@3) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11171) (o@@1 T@Ref) (f_3@@1 T@Field_11244_11245) (v@@4 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@12) (store (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@12) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@12) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@12) (store (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@12) o@@1 f_3@@1 v@@4) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@12) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11171) (o@@2 T@Ref) (f_3@@2 T@Field_11231_53) (v@@5 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_11171 (store (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@13) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11171 (store (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@13) o@@2 f_3@@2 v@@5) (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31861#PolymorphicMapType_11171| Heap@@13) (|PolymorphicMapType_11171_11231_31684#PolymorphicMapType_11171| Heap@@13)))
)))
(assert (forall ((s@@12 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@12))) (= (|Seq#Drop_3332| (|Seq#Append_3| s@@12 t@@4) n@@9) (|Seq#Append_3| (|Seq#Drop_3332| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3332| (|Seq#Append_3| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_3332| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@13 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3332| s@@13 n@@10) (|Seq#Index_2864| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3069|)) (not (= s1@@3 |Seq#Empty_3069|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_3| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3069|)) (not (= s1@@4 |Seq#Empty_3069|))) (<= 0 m)) (< m (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m) (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_11244_11245) (Heap@@14 T@PolymorphicMapType_11171) ) (!  (=> (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_11171_5749_53#PolymorphicMapType_11171| Heap@@14) (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11171_5752_5753#PolymorphicMapType_11171| Heap@@14) o@@3 f))
)))
(assert (forall ((s@@14 T@Seq_2864) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@14))) (= (|Seq#Index_2864| s@@14 i@@5) x@@1)) (|Seq#Contains_2864| s@@14 x@@1))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@14 x@@1) (|Seq#Index_2864| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2993| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2993| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2993| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2993| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_11231_31684) (v_1@@0 T@FrameType) (q T@Field_11231_31684) (w@@0 T@FrameType) (r T@Field_11231_31684) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11231_11231 p@@1 v_1@@0 q w@@0) (InsidePredicate_11231_11231 q w@@0 r u)) (InsidePredicate_11231_11231 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11231_11231 p@@1 v_1@@0 q w@@0) (InsidePredicate_11231_11231 q w@@0 r u))
)))
(assert (forall ((s@@15 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@15) 0) (= s@@15 |Seq#Empty_3069|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2993| s@@16 n@@12) |Seq#Empty_3069|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2993| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

