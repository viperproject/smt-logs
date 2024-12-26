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
(declare-sort T@Field_7011_53 0)
(declare-sort T@Field_7024_7025 0)
(declare-sort T@Field_13028_2986 0)
(declare-sort T@Field_4394_18452 0)
(declare-sort T@Field_4394_18319 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6972 0)) (((PolymorphicMapType_6972 (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| (Array T@Ref T@Field_13028_2986 Real)) (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| (Array T@Ref T@Field_7011_53 Real)) (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| (Array T@Ref T@Field_7024_7025 Real)) (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| (Array T@Ref T@Field_4394_18319 Real)) (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| (Array T@Ref T@Field_4394_18452 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7500 0)) (((PolymorphicMapType_7500 (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (Array T@Ref T@Field_7011_53 Bool)) (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (Array T@Ref T@Field_7024_7025 Bool)) (|PolymorphicMapType_7500_7011_2986#PolymorphicMapType_7500| (Array T@Ref T@Field_13028_2986 Bool)) (|PolymorphicMapType_7500_7011_18319#PolymorphicMapType_7500| (Array T@Ref T@Field_4394_18319 Bool)) (|PolymorphicMapType_7500_7011_19630#PolymorphicMapType_7500| (Array T@Ref T@Field_4394_18452 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6951 0)) (((PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| (Array T@Ref T@Field_7011_53 Bool)) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| (Array T@Ref T@Field_7024_7025 T@Ref)) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| (Array T@Ref T@Field_13028_2986 Int)) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| (Array T@Ref T@Field_4394_18452 T@PolymorphicMapType_7500)) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| (Array T@Ref T@Field_4394_18319 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7011_53)
(declare-fun f_7 () T@Field_13028_2986)
(declare-sort T@Seq_13073 0)
(declare-fun |Seq#Length_4398| (T@Seq_13073) Int)
(declare-fun |Seq#Drop_4398| (T@Seq_13073 Int) T@Seq_13073)
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_6951 T@PolymorphicMapType_6951) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6951 T@PolymorphicMapType_6951) Bool)
(declare-fun state (T@PolymorphicMapType_6951 T@PolymorphicMapType_6972) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6972) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7500)
(declare-fun |Seq#Index_4398| (T@Seq_13073 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Empty_4398| () T@Seq_13073)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_4398| (T@Seq_13073 Int T@Ref) T@Seq_13073)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_4398| (T@Seq_13073 Int) T@Seq_13073)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Contains_13073| (T@Seq_13073 T@Ref) Bool)
(declare-fun |Seq#Skolem_13073| (T@Seq_13073 T@Ref) Int)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6951 T@PolymorphicMapType_6951 T@PolymorphicMapType_6972) Bool)
(declare-fun IsPredicateField_4394_18410 (T@Field_4394_18319) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4394 (T@Field_4394_18319) T@Field_4394_18452)
(declare-fun HasDirectPerm_4394_18383 (T@PolymorphicMapType_6972 T@Ref T@Field_4394_18319) Bool)
(declare-fun IsWandField_4394_20157 (T@Field_4394_18319) Bool)
(declare-fun WandMaskField_4394 (T@Field_4394_18319) T@Field_4394_18452)
(declare-fun |Seq#Singleton_4398| (T@Ref) T@Seq_13073)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_13073| (T@Seq_13073 T@Seq_13073) T@Seq_13073)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_6951)
(declare-fun ZeroMask () T@PolymorphicMapType_6972)
(declare-fun InsidePredicate_7011_7011 (T@Field_4394_18319 T@FrameType T@Field_4394_18319 T@FrameType) Bool)
(declare-fun IsPredicateField_4394_2986 (T@Field_13028_2986) Bool)
(declare-fun IsWandField_4394_2986 (T@Field_13028_2986) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4394_23703 (T@Field_4394_18452) Bool)
(declare-fun IsWandField_4394_23719 (T@Field_4394_18452) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4394_7025 (T@Field_7024_7025) Bool)
(declare-fun IsWandField_4394_7025 (T@Field_7024_7025) Bool)
(declare-fun IsPredicateField_4394_53 (T@Field_7011_53) Bool)
(declare-fun IsWandField_4394_53 (T@Field_7011_53) Bool)
(declare-fun HasDirectPerm_4394_24157 (T@PolymorphicMapType_6972 T@Ref T@Field_4394_18452) Bool)
(declare-fun HasDirectPerm_4394_7025 (T@PolymorphicMapType_6972 T@Ref T@Field_7024_7025) Bool)
(declare-fun HasDirectPerm_4394_53 (T@PolymorphicMapType_6972 T@Ref T@Field_7011_53) Bool)
(declare-fun HasDirectPerm_4394_2986 (T@PolymorphicMapType_6972 T@Ref T@Field_13028_2986) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6972 T@PolymorphicMapType_6972 T@PolymorphicMapType_6972) Bool)
(declare-fun |Seq#Equal_13073| (T@Seq_13073 T@Seq_13073) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_4398| (T@Seq_13073 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_13073| (T@Seq_13073 T@Seq_13073) Int)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((s T@Seq_13073) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4398| s)) (= (|Seq#Length_4398| (|Seq#Drop_4398| s n)) (- (|Seq#Length_4398| s) n))) (=> (< (|Seq#Length_4398| s) n) (= (|Seq#Length_4398| (|Seq#Drop_4398| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4398| (|Seq#Drop_4398| s n)) (|Seq#Length_4398| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4398| (|Seq#Drop_4398| s n)))
 :pattern ( (|Seq#Length_4398| s) (|Seq#Drop_4398| s n))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2864| s@@0)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)) (- (|Seq#Length_2864| s@@0) n@@0))) (=> (< (|Seq#Length_2864| s@@0) n@@0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)) (|Seq#Length_2864| s@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2864| s@@0) (|Seq#Drop_2864| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6951) (Heap1 T@PolymorphicMapType_6951) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6951) (Mask T@PolymorphicMapType_6972) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6951) (Heap1@@0 T@PolymorphicMapType_6951) (Heap2 T@PolymorphicMapType_6951) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4394_18452) ) (!  (not (select (|PolymorphicMapType_7500_7011_19630#PolymorphicMapType_7500| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_19630#PolymorphicMapType_7500| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4394_18319) ) (!  (not (select (|PolymorphicMapType_7500_7011_18319#PolymorphicMapType_7500| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_18319#PolymorphicMapType_7500| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13028_2986) ) (!  (not (select (|PolymorphicMapType_7500_7011_2986#PolymorphicMapType_7500| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_2986#PolymorphicMapType_7500| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7024_7025) ) (!  (not (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7011_53) ) (!  (not (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_13073) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4398| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4398| (|Seq#Drop_4398| s@@1 n@@1) j) (|Seq#Index_4398| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4398| (|Seq#Drop_4398| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2864| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@2 n@@2) j@@0) (|Seq#Index_2864| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_4398| |Seq#Empty_4398|) 0))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@3 T@Seq_13073) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4398| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_4398| (|Seq#Update_4398| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_4398| (|Seq#Update_4398| s@@3 i v) n@@3) (|Seq#Index_4398| s@@3 n@@3)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4398| (|Seq#Update_4398| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_4398| s@@3 n@@3) (|Seq#Update_4398| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2864) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2864| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2864| s@@4 n@@4)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2864| s@@4 n@@4) (|Seq#Update_2864| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_13073) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4398| s@@5)) (= (|Seq#Length_4398| (|Seq#Take_4398| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4398| s@@5) n@@5) (= (|Seq#Length_4398| (|Seq#Take_4398| s@@5 n@@5)) (|Seq#Length_4398| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4398| (|Seq#Take_4398| s@@5 n@@5)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4398| (|Seq#Take_4398| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4398| s@@5 n@@5) (|Seq#Length_4398| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2864) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2864| s@@6)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2864| s@@6) n@@6) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)) (|Seq#Length_2864| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2864| s@@6 n@@6) (|Seq#Length_2864| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_13073) (x T@Ref) ) (!  (=> (|Seq#Contains_13073| s@@7 x) (and (and (<= 0 (|Seq#Skolem_13073| s@@7 x)) (< (|Seq#Skolem_13073| s@@7 x) (|Seq#Length_4398| s@@7))) (= (|Seq#Index_4398| s@@7 (|Seq#Skolem_13073| s@@7 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_13073| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2864) (x@@0 Int) ) (!  (=> (|Seq#Contains_2864| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2864| s@@8 x@@0)) (< (|Seq#Skolem_2864| s@@8 x@@0) (|Seq#Length_2864| s@@8))) (= (|Seq#Index_2864| s@@8 (|Seq#Skolem_2864| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_13073) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_4398| s@@9 n@@7) s@@9))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4398| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2864) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2864| s@@10 n@@8) s@@10))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6951) (ExhaleHeap T@PolymorphicMapType_6951) (Mask@@0 T@PolymorphicMapType_6972) (pm_f_13 T@Field_4394_18319) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4394_18383 Mask@@0 null pm_f_13) (IsPredicateField_4394_18410 pm_f_13)) (= (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@0) null (PredicateMaskField_4394 pm_f_13)) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap) null (PredicateMaskField_4394 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4394_18410 pm_f_13) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap) null (PredicateMaskField_4394 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6951) (ExhaleHeap@@0 T@PolymorphicMapType_6951) (Mask@@1 T@PolymorphicMapType_6972) (pm_f_13@@0 T@Field_4394_18319) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4394_18383 Mask@@1 null pm_f_13@@0) (IsWandField_4394_20157 pm_f_13@@0)) (= (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@1) null (WandMaskField_4394 pm_f_13@@0)) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@0) null (WandMaskField_4394 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4394_20157 pm_f_13@@0) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@0) null (WandMaskField_4394 pm_f_13@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_13073| (|Seq#Singleton_4398| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_13073| (|Seq#Singleton_4398| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_13073) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4398| s@@11))) (= (|Seq#Index_4398| (|Seq#Take_4398| s@@11 n@@9) j@@3) (|Seq#Index_4398| s@@11 j@@3)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4398| (|Seq#Take_4398| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4398| s@@11 j@@3) (|Seq#Take_4398| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2864) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2864| s@@12))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@12 n@@10) j@@4) (|Seq#Index_2864| s@@12 j@@4)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2864| s@@12 j@@4) (|Seq#Take_2864| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_13073) (t T@Seq_13073) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4398| s@@13))) (< n@@11 (|Seq#Length_4398| (|Seq#Append_13073| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4398| s@@13)) (|Seq#Length_4398| s@@13)) n@@11) (= (|Seq#Take_4398| (|Seq#Append_13073| s@@13 t) n@@11) (|Seq#Append_13073| s@@13 (|Seq#Take_4398| t (|Seq#Sub| n@@11 (|Seq#Length_4398| s@@13)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4398| (|Seq#Append_13073| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2864) (t@@0 T@Seq_2864) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2864| s@@14))) (< n@@12 (|Seq#Length_2864| (|Seq#Append_2864| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2864| s@@14)) (|Seq#Length_2864| s@@14)) n@@12) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@14 t@@0) n@@12) (|Seq#Append_2864| s@@14 (|Seq#Take_2864| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2864| s@@14)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6951) (ExhaleHeap@@1 T@PolymorphicMapType_6951) (Mask@@2 T@PolymorphicMapType_6972) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@2) o_22 $allocated) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_4394_18319) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7011_7011 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7011_7011 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_13073) (s1 T@Seq_13073) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4398|)) (not (= s1 |Seq#Empty_4398|))) (<= (|Seq#Length_4398| s0) n@@13)) (< n@@13 (|Seq#Length_4398| (|Seq#Append_13073| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4398| s0)) (|Seq#Length_4398| s0)) n@@13) (= (|Seq#Index_4398| (|Seq#Append_13073| s0 s1) n@@13) (|Seq#Index_4398| s1 (|Seq#Sub| n@@13 (|Seq#Length_4398| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4398| (|Seq#Append_13073| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2864| s0@@0)) (|Seq#Length_2864| s0@@0)) n@@14) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@0 s1@@0) n@@14) (|Seq#Index_2864| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2864| s0@@0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_4394_2986 f_7)))
(assert  (not (IsWandField_4394_2986 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6951) (ExhaleHeap@@2 T@PolymorphicMapType_6951) (Mask@@3 T@PolymorphicMapType_6972) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6972) (o_2@@4 T@Ref) (f_4@@4 T@Field_4394_18452) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4394_23703 f_4@@4))) (not (IsWandField_4394_23719 f_4@@4))) (<= (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6972) (o_2@@5 T@Ref) (f_4@@5 T@Field_4394_18319) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4394_18410 f_4@@5))) (not (IsWandField_4394_20157 f_4@@5))) (<= (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6972) (o_2@@6 T@Ref) (f_4@@6 T@Field_7024_7025) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4394_7025 f_4@@6))) (not (IsWandField_4394_7025 f_4@@6))) (<= (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6972) (o_2@@7 T@Ref) (f_4@@7 T@Field_7011_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4394_53 f_4@@7))) (not (IsWandField_4394_53 f_4@@7))) (<= (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6972) (o_2@@8 T@Ref) (f_4@@8 T@Field_13028_2986) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4394_2986 f_4@@8))) (not (IsWandField_4394_2986 f_4@@8))) (<= (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6972) (o_2@@9 T@Ref) (f_4@@9 T@Field_4394_18452) ) (! (= (HasDirectPerm_4394_24157 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4394_24157 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6972) (o_2@@10 T@Ref) (f_4@@10 T@Field_4394_18319) ) (! (= (HasDirectPerm_4394_18383 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4394_18383 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6972) (o_2@@11 T@Ref) (f_4@@11 T@Field_7024_7025) ) (! (= (HasDirectPerm_4394_7025 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4394_7025 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6972) (o_2@@12 T@Ref) (f_4@@12 T@Field_7011_53) ) (! (= (HasDirectPerm_4394_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4394_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6972) (o_2@@13 T@Ref) (f_4@@13 T@Field_13028_2986) ) (! (= (HasDirectPerm_4394_2986 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4394_2986 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6951) (ExhaleHeap@@3 T@PolymorphicMapType_6951) (Mask@@14 T@PolymorphicMapType_6972) (pm_f_13@@1 T@Field_4394_18319) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4394_18383 Mask@@14 null pm_f_13@@1) (IsPredicateField_4394_18410 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_7011_53) ) (!  (=> (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@4) null (PredicateMaskField_4394 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@4) o2_13 f_30) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_7024_7025) ) (!  (=> (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@4) null (PredicateMaskField_4394 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@4) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_13028_2986) ) (!  (=> (select (|PolymorphicMapType_7500_7011_2986#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@4) null (PredicateMaskField_4394 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@4) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4394_18319) ) (!  (=> (select (|PolymorphicMapType_7500_7011_18319#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@4) null (PredicateMaskField_4394 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@4) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_4394_18452) ) (!  (=> (select (|PolymorphicMapType_7500_7011_19630#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@4) null (PredicateMaskField_4394 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@4) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4394_18410 pm_f_13@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6951) (ExhaleHeap@@4 T@PolymorphicMapType_6951) (Mask@@15 T@PolymorphicMapType_6972) (pm_f_13@@2 T@Field_4394_18319) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4394_18383 Mask@@15 null pm_f_13@@2) (IsWandField_4394_20157 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_7011_53) ) (!  (=> (select (|PolymorphicMapType_7500_7011_53#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@5) null (WandMaskField_4394 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_7024_7025) ) (!  (=> (select (|PolymorphicMapType_7500_7011_7025#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@5) null (WandMaskField_4394 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_13028_2986) ) (!  (=> (select (|PolymorphicMapType_7500_7011_2986#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@5) null (WandMaskField_4394 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_4394_18319) ) (!  (=> (select (|PolymorphicMapType_7500_7011_18319#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@5) null (WandMaskField_4394 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_4394_18452) ) (!  (=> (select (|PolymorphicMapType_7500_7011_19630#PolymorphicMapType_7500| (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@5) null (WandMaskField_4394 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_4394_20157 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6951) (ExhaleHeap@@5 T@PolymorphicMapType_6951) (Mask@@16 T@PolymorphicMapType_6972) (o_22@@0 T@Ref) (f_30@@9 T@Field_4394_18452) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4394_24157 Mask@@16 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@6) o_22@@0 f_30@@9) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6951) (ExhaleHeap@@6 T@PolymorphicMapType_6951) (Mask@@17 T@PolymorphicMapType_6972) (o_22@@1 T@Ref) (f_30@@10 T@Field_4394_18319) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4394_18383 Mask@@17 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@7) o_22@@1 f_30@@10) (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6951) (ExhaleHeap@@7 T@PolymorphicMapType_6951) (Mask@@18 T@PolymorphicMapType_6972) (o_22@@2 T@Ref) (f_30@@11 T@Field_7024_7025) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4394_7025 Mask@@18 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@8) o_22@@2 f_30@@11) (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6951) (ExhaleHeap@@8 T@PolymorphicMapType_6951) (Mask@@19 T@PolymorphicMapType_6972) (o_22@@3 T@Ref) (f_30@@12 T@Field_7011_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4394_53 Mask@@19 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@9) o_22@@3 f_30@@12) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6951) (ExhaleHeap@@9 T@PolymorphicMapType_6951) (Mask@@20 T@PolymorphicMapType_6972) (o_22@@4 T@Ref) (f_30@@13 T@Field_13028_2986) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4394_2986 Mask@@20 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@10) o_22@@4 f_30@@13) (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((s0@@1 T@Seq_13073) (s1@@1 T@Seq_13073) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4398|)) (not (= s1@@1 |Seq#Empty_4398|))) (= (|Seq#Length_4398| (|Seq#Append_13073| s0@@1 s1@@1)) (+ (|Seq#Length_4398| s0@@1) (|Seq#Length_4398| s1@@1))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4398| (|Seq#Append_13073| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2864|)) (not (= s1@@2 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@2 s1@@2)) (+ (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4394_18452) ) (! (= (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4394_18319) ) (! (= (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_7024_7025) ) (! (= (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_7011_53) ) (! (= (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13028_2986) ) (! (= (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_13073) (t@@1 T@Seq_13073) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4398| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4398| s@@15)) (|Seq#Length_4398| s@@15)) n@@15) (= (|Seq#Drop_4398| (|Seq#Append_13073| s@@15 t@@1) n@@15) (|Seq#Drop_4398| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4398| s@@15))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4398| (|Seq#Append_13073| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2864) (t@@2 T@Seq_2864) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2864| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2864| s@@16)) (|Seq#Length_2864| s@@16)) n@@16) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@16 t@@2) n@@16) (|Seq#Drop_2864| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2864| s@@16))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6972) (SummandMask1 T@PolymorphicMapType_6972) (SummandMask2 T@PolymorphicMapType_6972) (o_2@@19 T@Ref) (f_4@@19 T@Field_4394_18452) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6972_4394_22574#PolymorphicMapType_6972| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6972) (SummandMask1@@0 T@PolymorphicMapType_6972) (SummandMask2@@0 T@PolymorphicMapType_6972) (o_2@@20 T@Ref) (f_4@@20 T@Field_4394_18319) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6972_4394_18319#PolymorphicMapType_6972| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6972) (SummandMask1@@1 T@PolymorphicMapType_6972) (SummandMask2@@1 T@PolymorphicMapType_6972) (o_2@@21 T@Ref) (f_4@@21 T@Field_7024_7025) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6972_4394_7025#PolymorphicMapType_6972| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6972) (SummandMask1@@2 T@PolymorphicMapType_6972) (SummandMask2@@2 T@PolymorphicMapType_6972) (o_2@@22 T@Ref) (f_4@@22 T@Field_7011_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6972_4394_53#PolymorphicMapType_6972| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6972) (SummandMask1@@3 T@PolymorphicMapType_6972) (SummandMask2@@3 T@PolymorphicMapType_6972) (o_2@@23 T@Ref) (f_4@@23 T@Field_13028_2986) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6972_4394_2986#PolymorphicMapType_6972| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_13073) (b T@Seq_13073) ) (!  (=> (|Seq#Equal_13073| a b) (= a b))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_13073| a b))
)))
(assert (forall ((a@@0 T@Seq_2864) (b@@0 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_13073) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_4398| s@@17))) (|Seq#ContainsTrigger_4398| s@@17 (|Seq#Index_4398| s@@17 i@@3)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4398| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2864) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2864| s@@18))) (|Seq#ContainsTrigger_2864| s@@18 (|Seq#Index_2864| s@@18 i@@4)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_13073) (s1@@3 T@Seq_13073) ) (!  (and (=> (= s0@@3 |Seq#Empty_4398|) (= (|Seq#Append_13073| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4398|) (= (|Seq#Append_13073| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_13073| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) ) (!  (and (=> (= s0@@4 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2864| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4398| (|Seq#Singleton_4398| t@@3) 0) t@@3)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4398| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_2864| t@@4) 0) t@@4)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2864| t@@4))
)))
(assert (forall ((s@@19 T@Seq_13073) ) (! (<= 0 (|Seq#Length_4398| s@@19))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4398| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@20))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_13073) (s1@@5 T@Seq_13073) ) (!  (=> (|Seq#Equal_13073| s0@@5 s1@@5) (and (= (|Seq#Length_4398| s0@@5) (|Seq#Length_4398| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_4398| s0@@5))) (= (|Seq#Index_4398| s0@@5 j@@6) (|Seq#Index_4398| s1@@5 j@@6)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4398| s0@@5 j@@6))
 :pattern ( (|Seq#Index_4398| s1@@5 j@@6))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_13073| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2864) (s1@@6 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@6 s1@@6) (and (= (|Seq#Length_2864| s0@@6) (|Seq#Length_2864| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2864| s0@@6))) (= (|Seq#Index_2864| s0@@6 j@@7) (|Seq#Index_2864| s1@@6 j@@7)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2864| s1@@6 j@@7))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4398| (|Seq#Singleton_4398| t@@5)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4398| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_2864| t@@6)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2864| t@@6))
)))
(assert (forall ((s@@21 T@Seq_13073) (t@@7 T@Seq_13073) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4398| s@@21))) (= (|Seq#Take_4398| (|Seq#Append_13073| s@@21 t@@7) n@@17) (|Seq#Take_4398| s@@21 n@@17)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4398| (|Seq#Append_13073| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2864) (t@@8 T@Seq_2864) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2864| s@@22))) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@8) n@@18) (|Seq#Take_2864| s@@22 n@@18)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_13073) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4398| s@@23))) (= (|Seq#Length_4398| (|Seq#Update_4398| s@@23 i@@5 v@@2)) (|Seq#Length_4398| s@@23)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4398| (|Seq#Update_4398| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_4398| s@@23) (|Seq#Update_4398| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2864) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2864| s@@24))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@24 i@@6 v@@3)) (|Seq#Length_2864| s@@24)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2864| s@@24) (|Seq#Update_2864| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6951) (o_35 T@Ref) (f_11 T@Field_4394_18319) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@11) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@11) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@11) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@11) (store (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@11) o_35 f_11 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@11) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@11) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@11) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@11) (store (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@11) o_35 f_11 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6951) (o_35@@0 T@Ref) (f_11@@0 T@Field_4394_18452) (v@@5 T@PolymorphicMapType_7500) ) (! (succHeap Heap@@12 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@12) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@12) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@12) (store (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@12) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@12) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@12) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@12) (store (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@12) o_35@@0 f_11@@0 v@@5) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6951) (o_35@@1 T@Ref) (f_11@@1 T@Field_13028_2986) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@13) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@13) (store (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@13) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@13) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@13) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@13) (store (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@13) o_35@@1 f_11@@1 v@@6) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@13) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6951) (o_35@@2 T@Ref) (f_11@@2 T@Field_7024_7025) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@14) (store (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@14) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@14) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@14) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@14) (store (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@14) o_35@@2 f_11@@2 v@@7) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@14) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@14) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6951) (o_35@@3 T@Ref) (f_11@@3 T@Field_7011_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6951 (store (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@15) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@15) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@15) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@15) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6951 (store (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@15) o_35@@3 f_11@@3 v@@8) (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@15) (|PolymorphicMapType_6951_4394_2986#PolymorphicMapType_6951| Heap@@15) (|PolymorphicMapType_6951_4394_18496#PolymorphicMapType_6951| Heap@@15) (|PolymorphicMapType_6951_7011_18319#PolymorphicMapType_6951| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_13073) (t@@9 T@Seq_13073) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4398| s@@25))) (= (|Seq#Drop_4398| (|Seq#Append_13073| s@@25 t@@9) n@@19) (|Seq#Append_13073| (|Seq#Drop_4398| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4398| (|Seq#Append_13073| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2864) (t@@10 T@Seq_2864) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2864| s@@26))) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@26 t@@10) n@@20) (|Seq#Append_2864| (|Seq#Drop_2864| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_13073) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_4398| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_4398| (|Seq#Drop_4398| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_4398| s@@27 i@@7))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4398| s@@27 n@@21) (|Seq#Index_4398| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2864) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2864| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2864| s@@28 i@@8))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@28 n@@22) (|Seq#Index_2864| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_13073) (s1@@7 T@Seq_13073) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4398|)) (not (= s1@@7 |Seq#Empty_4398|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4398| s0@@7))) (= (|Seq#Index_4398| (|Seq#Append_13073| s0@@7 s1@@7) n@@23) (|Seq#Index_4398| s0@@7 n@@23)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4398| (|Seq#Append_13073| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4398| s0@@7 n@@23) (|Seq#Append_13073| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2864) (s1@@8 T@Seq_2864) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2864|)) (not (= s1@@8 |Seq#Empty_2864|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2864| s0@@8))) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@8 s1@@8) n@@24) (|Seq#Index_2864| s0@@8 n@@24)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2864| s0@@8 n@@24) (|Seq#Append_2864| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_13073) (s1@@9 T@Seq_13073) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4398|)) (not (= s1@@9 |Seq#Empty_4398|))) (<= 0 m)) (< m (|Seq#Length_4398| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4398| s0@@9)) (|Seq#Length_4398| s0@@9)) m) (= (|Seq#Index_4398| (|Seq#Append_13073| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4398| s0@@9))) (|Seq#Index_4398| s1@@9 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4398| s1@@9 m) (|Seq#Append_13073| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2864) (s1@@10 T@Seq_2864) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2864|)) (not (= s1@@10 |Seq#Empty_2864|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2864| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2864| s0@@10)) (|Seq#Length_2864| s0@@10)) m@@0) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2864| s0@@10))) (|Seq#Index_2864| s1@@10 m@@0))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@10 m@@0) (|Seq#Append_2864| s0@@10 s1@@10))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_7024_7025) (Heap@@16 T@PolymorphicMapType_6951) ) (!  (=> (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@16) o_35@@4 $allocated) (select (|PolymorphicMapType_6951_4206_53#PolymorphicMapType_6951| Heap@@16) (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@16) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6951_4209_4210#PolymorphicMapType_6951| Heap@@16) o_35@@4 f_31))
)))
(assert (forall ((s@@29 T@Seq_13073) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_4398| s@@29))) (= (|Seq#Index_4398| s@@29 i@@9) x@@3)) (|Seq#Contains_13073| s@@29 x@@3))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_13073| s@@29 x@@3) (|Seq#Index_4398| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2864) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2864| s@@30))) (= (|Seq#Index_2864| s@@30 i@@10) x@@4)) (|Seq#Contains_2864| s@@30 x@@4))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@30 x@@4) (|Seq#Index_2864| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_13073) (s1@@11 T@Seq_13073) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_13073| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_13073| s0@@11 s1@@11))) (not (= (|Seq#Length_4398| s0@@11) (|Seq#Length_4398| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_13073| s0@@11 s1@@11))) (= (|Seq#Length_4398| s0@@11) (|Seq#Length_4398| s1@@11))) (= (|Seq#SkolemDiff_13073| s0@@11 s1@@11) (|Seq#SkolemDiff_13073| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_13073| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_13073| s0@@11 s1@@11) (|Seq#Length_4398| s0@@11))) (not (= (|Seq#Index_4398| s0@@11 (|Seq#SkolemDiff_13073| s0@@11 s1@@11)) (|Seq#Index_4398| s1@@11 (|Seq#SkolemDiff_13073| s0@@11 s1@@11))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_13073| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2864) (s1@@12 T@Seq_2864) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2864| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2864| s0@@12 s1@@12))) (not (= (|Seq#Length_2864| s0@@12) (|Seq#Length_2864| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2864| s0@@12 s1@@12))) (= (|Seq#Length_2864| s0@@12) (|Seq#Length_2864| s1@@12))) (= (|Seq#SkolemDiff_2864| s0@@12 s1@@12) (|Seq#SkolemDiff_2864| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2864| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2864| s0@@12 s1@@12) (|Seq#Length_2864| s0@@12))) (not (= (|Seq#Index_2864| s0@@12 (|Seq#SkolemDiff_2864| s0@@12 s1@@12)) (|Seq#Index_2864| s1@@12 (|Seq#SkolemDiff_2864| s0@@12 s1@@12))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_4394_18319) (v_1@@0 T@FrameType) (q T@Field_4394_18319) (w@@0 T@FrameType) (r T@Field_4394_18319) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7011_7011 p@@1 v_1@@0 q w@@0) (InsidePredicate_7011_7011 q w@@0 r u)) (InsidePredicate_7011_7011 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7011_7011 p@@1 v_1@@0 q w@@0) (InsidePredicate_7011_7011 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_13073) ) (!  (=> (= (|Seq#Length_4398| s@@31) 0) (= s@@31 |Seq#Empty_4398|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4398| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@32) 0) (= s@@32 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@32))
)))
(assert (forall ((s@@33 T@Seq_13073) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4398| s@@33 n@@25) |Seq#Empty_4398|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4398| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2864) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2864| s@@34 n@@26) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_4 () Int)
(declare-fun s_2 () T@Seq_2864)
(declare-fun PostHeap@0 () T@PolymorphicMapType_6951)
(declare-fun i_2_1 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_6951)
(set-info :boogie-vc-id test04)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon4_correct true))
(let ((anon13_Else_correct  (=> (and (not (|Seq#Contains_2864| (|Seq#Range| 0 2) i_4)) (= (ControlFlow 0 11) 7)) anon4_correct)))
(let ((anon13_Then_correct  (=> (|Seq#Contains_2864| (|Seq#Range| 0 2) i_4) (and (=> (= (ControlFlow 0 8) (- 0 10)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< i_4 (|Seq#Length_2864| s_2))) (=> (< i_4 (|Seq#Length_2864| s_2)) (=> (= (ControlFlow 0 8) 7) anon4_correct))))))))
(let ((anon12_Else_correct true))
(let ((anon11_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 12) 6) anon12_Else_correct) (=> (= (ControlFlow 0 12) 8) anon13_Then_correct)) (=> (= (ControlFlow 0 12) 11) anon13_Else_correct)))))
(let ((anon9_correct true))
(let ((anon15_Else_correct  (=> (and (not (|Seq#Contains_2864| (|Seq#Range| 0 2) i_2_1)) (= (ControlFlow 0 5) 2)) anon9_correct)))
(let ((anon15_Then_correct  (=> (|Seq#Contains_2864| (|Seq#Range| 0 2) i_2_1) (and (=> (= (ControlFlow 0 3) (- 0 4)) (> (|Seq#Index_2864| s_2 i_2_1) 0)) (=> (> (|Seq#Index_2864| s_2 i_2_1) 0) (=> (= (ControlFlow 0 3) 2) anon9_correct))))))
(let ((anon14_Else_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (> (|Seq#Length_2864| s_2) 2)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (< 0 (|Seq#Length_2864| s_2))) (=> (< 0 (|Seq#Length_2864| s_2)) (=> (> (|Seq#Index_2864| s_2 0) 0) (and (=> (= (ControlFlow 0 13) (- 0 14)) (< 1 (|Seq#Length_2864| s_2))) (=> (< 1 (|Seq#Length_2864| s_2)) (=> (and (> (|Seq#Index_2864| s_2 1) 0) (state Heap@@17 ZeroMask)) (and (and (and (=> (= (ControlFlow 0 13) 12) anon11_Then_correct) (=> (= (ControlFlow 0 13) 1) anon14_Else_correct)) (=> (= (ControlFlow 0 13) 3) anon15_Then_correct)) (=> (= (ControlFlow 0 13) 5) anon15_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 13) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
