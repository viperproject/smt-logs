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
(declare-sort T@Field_25943_53 0)
(declare-sort T@Field_25956_25957 0)
(declare-sort T@Field_32012_3610 0)
(declare-sort T@Field_17819_74681 0)
(declare-sort T@Field_17819_74548 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_25904 0)) (((PolymorphicMapType_25904 (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| (Array T@Ref T@Field_32012_3610 Real)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| (Array T@Ref T@Field_25943_53 Real)) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| (Array T@Ref T@Field_25956_25957 Real)) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| (Array T@Ref T@Field_17819_74548 Real)) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| (Array T@Ref T@Field_17819_74681 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26432 0)) (((PolymorphicMapType_26432 (|PolymorphicMapType_26432_25943_53#PolymorphicMapType_26432| (Array T@Ref T@Field_25943_53 Bool)) (|PolymorphicMapType_26432_25943_25957#PolymorphicMapType_26432| (Array T@Ref T@Field_25956_25957 Bool)) (|PolymorphicMapType_26432_25943_3610#PolymorphicMapType_26432| (Array T@Ref T@Field_32012_3610 Bool)) (|PolymorphicMapType_26432_25943_74548#PolymorphicMapType_26432| (Array T@Ref T@Field_17819_74548 Bool)) (|PolymorphicMapType_26432_25943_75859#PolymorphicMapType_26432| (Array T@Ref T@Field_17819_74681 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_25883 0)) (((PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| (Array T@Ref T@Field_25943_53 Bool)) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| (Array T@Ref T@Field_25956_25957 T@Ref)) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| (Array T@Ref T@Field_32012_3610 Int)) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| (Array T@Ref T@Field_17819_74681 T@PolymorphicMapType_26432)) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| (Array T@Ref T@Field_17819_74548 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_25943_53)
(declare-fun Integer_value () T@Field_32012_3610)
(declare-sort T@Seq_32058 0)
(declare-fun |Seq#Length_17829| (T@Seq_32058) Int)
(declare-fun |Seq#Drop_17829| (T@Seq_32058 Int) T@Seq_32058)
(declare-sort T@Seq_3488 0)
(declare-fun |Seq#Length_3488| (T@Seq_3488) Int)
(declare-fun |Seq#Drop_3488| (T@Seq_3488 Int) T@Seq_3488)
(declare-fun succHeap (T@PolymorphicMapType_25883 T@PolymorphicMapType_25883) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_25883 T@PolymorphicMapType_25883) Bool)
(declare-fun state (T@PolymorphicMapType_25883 T@PolymorphicMapType_25904) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_25904) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_26432)
(declare-fun |Seq#Index_17829| (T@Seq_32058 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3488| (T@Seq_3488 Int) Int)
(declare-fun |Seq#Empty_17829| () T@Seq_32058)
(declare-fun |Seq#Empty_3488| () T@Seq_3488)
(declare-fun |Seq#Update_17829| (T@Seq_32058 Int T@Ref) T@Seq_32058)
(declare-fun |Seq#Update_3488| (T@Seq_3488 Int Int) T@Seq_3488)
(declare-fun |Seq#Take_17829| (T@Seq_32058 Int) T@Seq_32058)
(declare-fun |Seq#Take_3488| (T@Seq_3488 Int) T@Seq_3488)
(declare-fun |Seq#Contains_3488| (T@Seq_3488 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3488)
(declare-fun |Seq#Contains_32058| (T@Seq_32058 T@Ref) Bool)
(declare-fun |Seq#Skolem_32058| (T@Seq_32058 T@Ref) Int)
(declare-fun |Seq#Skolem_3488| (T@Seq_3488 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_25883 T@PolymorphicMapType_25883 T@PolymorphicMapType_25904) Bool)
(declare-fun IsPredicateField_17819_74639 (T@Field_17819_74548) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17819 (T@Field_17819_74548) T@Field_17819_74681)
(declare-fun HasDirectPerm_17819_74612 (T@PolymorphicMapType_25904 T@Ref T@Field_17819_74548) Bool)
(declare-fun IsWandField_17819_76386 (T@Field_17819_74548) Bool)
(declare-fun WandMaskField_17819 (T@Field_17819_74548) T@Field_17819_74681)
(declare-fun |Seq#Singleton_17829| (T@Ref) T@Seq_32058)
(declare-fun |Seq#Singleton_3488| (Int) T@Seq_3488)
(declare-fun |Seq#Append_32058| (T@Seq_32058 T@Seq_32058) T@Seq_32058)
(declare-fun |Seq#Append_3488| (T@Seq_3488 T@Seq_3488) T@Seq_3488)
(declare-fun dummyHeap () T@PolymorphicMapType_25883)
(declare-fun ZeroMask () T@PolymorphicMapType_25904)
(declare-fun InsidePredicate_25943_25943 (T@Field_17819_74548 T@FrameType T@Field_17819_74548 T@FrameType) Bool)
(declare-fun IsPredicateField_17819_3610 (T@Field_32012_3610) Bool)
(declare-fun IsWandField_17819_3610 (T@Field_32012_3610) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17819_79932 (T@Field_17819_74681) Bool)
(declare-fun IsWandField_17819_79948 (T@Field_17819_74681) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_17819_25957 (T@Field_25956_25957) Bool)
(declare-fun IsWandField_17819_25957 (T@Field_25956_25957) Bool)
(declare-fun IsPredicateField_17819_53 (T@Field_25943_53) Bool)
(declare-fun IsWandField_17819_53 (T@Field_25943_53) Bool)
(declare-fun HasDirectPerm_17819_80386 (T@PolymorphicMapType_25904 T@Ref T@Field_17819_74681) Bool)
(declare-fun HasDirectPerm_17819_25957 (T@PolymorphicMapType_25904 T@Ref T@Field_25956_25957) Bool)
(declare-fun HasDirectPerm_17819_53 (T@PolymorphicMapType_25904 T@Ref T@Field_25943_53) Bool)
(declare-fun HasDirectPerm_17819_3610 (T@PolymorphicMapType_25904 T@Ref T@Field_32012_3610) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_25904 T@PolymorphicMapType_25904 T@PolymorphicMapType_25904) Bool)
(declare-fun |Seq#Equal_32058| (T@Seq_32058 T@Seq_32058) Bool)
(declare-fun |Seq#Equal_3488| (T@Seq_3488 T@Seq_3488) Bool)
(declare-fun |Seq#ContainsTrigger_17829| (T@Seq_32058 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3488| (T@Seq_3488 Int) Bool)
(declare-fun |Seq#SkolemDiff_32058| (T@Seq_32058 T@Seq_32058) Int)
(declare-fun |Seq#SkolemDiff_3488| (T@Seq_3488 T@Seq_3488) Int)
(assert (forall ((s T@Seq_32058) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17829| s)) (= (|Seq#Length_17829| (|Seq#Drop_17829| s n)) (- (|Seq#Length_17829| s) n))) (=> (< (|Seq#Length_17829| s) n) (= (|Seq#Length_17829| (|Seq#Drop_17829| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17829| (|Seq#Drop_17829| s n)) (|Seq#Length_17829| s))))
 :qid |stdinbpl.363:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17829| (|Seq#Drop_17829| s n)))
 :pattern ( (|Seq#Length_17829| s) (|Seq#Drop_17829| s n))
)))
(assert (forall ((s@@0 T@Seq_3488) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3488| s@@0)) (= (|Seq#Length_3488| (|Seq#Drop_3488| s@@0 n@@0)) (- (|Seq#Length_3488| s@@0) n@@0))) (=> (< (|Seq#Length_3488| s@@0) n@@0) (= (|Seq#Length_3488| (|Seq#Drop_3488| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3488| (|Seq#Drop_3488| s@@0 n@@0)) (|Seq#Length_3488| s@@0))))
 :qid |stdinbpl.363:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3488| (|Seq#Drop_3488| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3488| s@@0) (|Seq#Drop_3488| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_25883) (Heap1 T@PolymorphicMapType_25883) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_25883) (Mask T@PolymorphicMapType_25904) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_25883) (Heap1@@0 T@PolymorphicMapType_25883) (Heap2 T@PolymorphicMapType_25883) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17819_74681) ) (!  (not (select (|PolymorphicMapType_26432_25943_75859#PolymorphicMapType_26432| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26432_25943_75859#PolymorphicMapType_26432| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17819_74548) ) (!  (not (select (|PolymorphicMapType_26432_25943_74548#PolymorphicMapType_26432| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26432_25943_74548#PolymorphicMapType_26432| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_32012_3610) ) (!  (not (select (|PolymorphicMapType_26432_25943_3610#PolymorphicMapType_26432| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26432_25943_3610#PolymorphicMapType_26432| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_25956_25957) ) (!  (not (select (|PolymorphicMapType_26432_25943_25957#PolymorphicMapType_26432| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26432_25943_25957#PolymorphicMapType_26432| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_25943_53) ) (!  (not (select (|PolymorphicMapType_26432_25943_53#PolymorphicMapType_26432| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_26432_25943_53#PolymorphicMapType_26432| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_32058) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17829| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17829| (|Seq#Drop_17829| s@@1 n@@1) j) (|Seq#Index_17829| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.384:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17829| (|Seq#Drop_17829| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3488) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3488| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3488| (|Seq#Drop_3488| s@@2 n@@2) j@@0) (|Seq#Index_3488| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.384:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3488| (|Seq#Drop_3488| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17829| |Seq#Empty_17829|) 0))
(assert (= (|Seq#Length_3488| |Seq#Empty_3488|) 0))
(assert (forall ((s@@3 T@Seq_32058) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17829| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17829| (|Seq#Update_17829| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17829| (|Seq#Update_17829| s@@3 i v) n@@3) (|Seq#Index_17829| s@@3 n@@3)))))
 :qid |stdinbpl.339:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17829| (|Seq#Update_17829| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17829| s@@3 n@@3) (|Seq#Update_17829| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3488) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3488| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3488| (|Seq#Update_3488| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3488| (|Seq#Update_3488| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3488| s@@4 n@@4)))))
 :qid |stdinbpl.339:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3488| (|Seq#Update_3488| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3488| s@@4 n@@4) (|Seq#Update_3488| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_32058) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17829| s@@5)) (= (|Seq#Length_17829| (|Seq#Take_17829| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17829| s@@5) n@@5) (= (|Seq#Length_17829| (|Seq#Take_17829| s@@5 n@@5)) (|Seq#Length_17829| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17829| (|Seq#Take_17829| s@@5 n@@5)) 0)))
 :qid |stdinbpl.350:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17829| (|Seq#Take_17829| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17829| s@@5 n@@5) (|Seq#Length_17829| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3488) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3488| s@@6)) (= (|Seq#Length_3488| (|Seq#Take_3488| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3488| s@@6) n@@6) (= (|Seq#Length_3488| (|Seq#Take_3488| s@@6 n@@6)) (|Seq#Length_3488| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3488| (|Seq#Take_3488| s@@6 n@@6)) 0)))
 :qid |stdinbpl.350:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3488| (|Seq#Take_3488| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3488| s@@6 n@@6) (|Seq#Length_3488| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3488| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.624:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3488| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_32058) (x T@Ref) ) (!  (=> (|Seq#Contains_32058| s@@7 x) (and (and (<= 0 (|Seq#Skolem_32058| s@@7 x)) (< (|Seq#Skolem_32058| s@@7 x) (|Seq#Length_17829| s@@7))) (= (|Seq#Index_17829| s@@7 (|Seq#Skolem_32058| s@@7 x)) x)))
 :qid |stdinbpl.482:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_32058| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3488) (x@@0 Int) ) (!  (=> (|Seq#Contains_3488| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3488| s@@8 x@@0)) (< (|Seq#Skolem_3488| s@@8 x@@0) (|Seq#Length_3488| s@@8))) (= (|Seq#Index_3488| s@@8 (|Seq#Skolem_3488| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.482:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3488| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_32058) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17829| s@@9 n@@7) s@@9))
 :qid |stdinbpl.466:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17829| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3488) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3488| s@@10 n@@8) s@@10))
 :qid |stdinbpl.466:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3488| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.319:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.317:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_25883) (ExhaleHeap T@PolymorphicMapType_25883) (Mask@@0 T@PolymorphicMapType_25904) (pm_f_51 T@Field_17819_74548) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17819_74612 Mask@@0 null pm_f_51) (IsPredicateField_17819_74639 pm_f_51)) (= (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@0) null (PredicateMaskField_17819 pm_f_51)) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap) null (PredicateMaskField_17819 pm_f_51)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17819_74639 pm_f_51) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap) null (PredicateMaskField_17819 pm_f_51)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_25883) (ExhaleHeap@@0 T@PolymorphicMapType_25883) (Mask@@1 T@PolymorphicMapType_25904) (pm_f_51@@0 T@Field_17819_74548) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17819_74612 Mask@@1 null pm_f_51@@0) (IsWandField_17819_76386 pm_f_51@@0)) (= (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@1) null (WandMaskField_17819 pm_f_51@@0)) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@0) null (WandMaskField_17819 pm_f_51@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17819_76386 pm_f_51@@0) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@0) null (WandMaskField_17819 pm_f_51@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_32058| (|Seq#Singleton_17829| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.607:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_32058| (|Seq#Singleton_17829| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3488| (|Seq#Singleton_3488| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.607:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3488| (|Seq#Singleton_3488| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_32058) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17829| s@@11))) (= (|Seq#Index_17829| (|Seq#Take_17829| s@@11 n@@9) j@@3) (|Seq#Index_17829| s@@11 j@@3)))
 :qid |stdinbpl.358:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17829| (|Seq#Take_17829| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17829| s@@11 j@@3) (|Seq#Take_17829| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3488) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3488| s@@12))) (= (|Seq#Index_3488| (|Seq#Take_3488| s@@12 n@@10) j@@4) (|Seq#Index_3488| s@@12 j@@4)))
 :qid |stdinbpl.358:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3488| (|Seq#Take_3488| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3488| s@@12 j@@4) (|Seq#Take_3488| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_32058) (t T@Seq_32058) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17829| s@@13))) (< n@@11 (|Seq#Length_17829| (|Seq#Append_32058| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17829| s@@13)) (|Seq#Length_17829| s@@13)) n@@11) (= (|Seq#Take_17829| (|Seq#Append_32058| s@@13 t) n@@11) (|Seq#Append_32058| s@@13 (|Seq#Take_17829| t (|Seq#Sub| n@@11 (|Seq#Length_17829| s@@13)))))))
 :qid |stdinbpl.443:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17829| (|Seq#Append_32058| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3488) (t@@0 T@Seq_3488) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3488| s@@14))) (< n@@12 (|Seq#Length_3488| (|Seq#Append_3488| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3488| s@@14)) (|Seq#Length_3488| s@@14)) n@@12) (= (|Seq#Take_3488| (|Seq#Append_3488| s@@14 t@@0) n@@12) (|Seq#Append_3488| s@@14 (|Seq#Take_3488| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3488| s@@14)))))))
 :qid |stdinbpl.443:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3488| (|Seq#Append_3488| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_25883) (ExhaleHeap@@1 T@PolymorphicMapType_25883) (Mask@@2 T@PolymorphicMapType_25904) (o_49 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@2) o_49 $allocated) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@1) o_49 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@1) o_49 $allocated))
)))
(assert (forall ((p T@Field_17819_74548) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25943_25943 p v_1 p w))
 :qid |stdinbpl.261:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25943_25943 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_32058) (s1 T@Seq_32058) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17829|)) (not (= s1 |Seq#Empty_17829|))) (<= (|Seq#Length_17829| s0) n@@13)) (< n@@13 (|Seq#Length_17829| (|Seq#Append_32058| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17829| s0)) (|Seq#Length_17829| s0)) n@@13) (= (|Seq#Index_17829| (|Seq#Append_32058| s0 s1) n@@13) (|Seq#Index_17829| s1 (|Seq#Sub| n@@13 (|Seq#Length_17829| s0))))))
 :qid |stdinbpl.330:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17829| (|Seq#Append_32058| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3488) (s1@@0 T@Seq_3488) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3488|)) (not (= s1@@0 |Seq#Empty_3488|))) (<= (|Seq#Length_3488| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3488| (|Seq#Append_3488| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3488| s0@@0)) (|Seq#Length_3488| s0@@0)) n@@14) (= (|Seq#Index_3488| (|Seq#Append_3488| s0@@0 s1@@0) n@@14) (|Seq#Index_3488| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3488| s0@@0))))))
 :qid |stdinbpl.330:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3488| (|Seq#Append_3488| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_17819_3610 Integer_value)))
(assert  (not (IsWandField_17819_3610 Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_25883) (ExhaleHeap@@2 T@PolymorphicMapType_25883) (Mask@@3 T@PolymorphicMapType_25904) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_25904) (o_2@@4 T@Ref) (f_4@@4 T@Field_17819_74681) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_17819_79932 f_4@@4))) (not (IsWandField_17819_79948 f_4@@4))) (<= (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_25904) (o_2@@5 T@Ref) (f_4@@5 T@Field_17819_74548) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_17819_74639 f_4@@5))) (not (IsWandField_17819_76386 f_4@@5))) (<= (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_25904) (o_2@@6 T@Ref) (f_4@@6 T@Field_25956_25957) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_17819_25957 f_4@@6))) (not (IsWandField_17819_25957 f_4@@6))) (<= (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_25904) (o_2@@7 T@Ref) (f_4@@7 T@Field_25943_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17819_53 f_4@@7))) (not (IsWandField_17819_53 f_4@@7))) (<= (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_25904) (o_2@@8 T@Ref) (f_4@@8 T@Field_32012_3610) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17819_3610 f_4@@8))) (not (IsWandField_17819_3610 f_4@@8))) (<= (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_25904) (o_2@@9 T@Ref) (f_4@@9 T@Field_17819_74681) ) (! (= (HasDirectPerm_17819_80386 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17819_80386 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_25904) (o_2@@10 T@Ref) (f_4@@10 T@Field_17819_74548) ) (! (= (HasDirectPerm_17819_74612 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17819_74612 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_25904) (o_2@@11 T@Ref) (f_4@@11 T@Field_25956_25957) ) (! (= (HasDirectPerm_17819_25957 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17819_25957 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_25904) (o_2@@12 T@Ref) (f_4@@12 T@Field_25943_53) ) (! (= (HasDirectPerm_17819_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17819_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_25904) (o_2@@13 T@Ref) (f_4@@13 T@Field_32012_3610) ) (! (= (HasDirectPerm_17819_3610 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17819_3610 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_25883) (ExhaleHeap@@3 T@PolymorphicMapType_25883) (Mask@@14 T@PolymorphicMapType_25904) (pm_f_51@@1 T@Field_17819_74548) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_17819_74612 Mask@@14 null pm_f_51@@1) (IsPredicateField_17819_74639 pm_f_51@@1)) (and (and (and (and (forall ((o2_52 T@Ref) (f_30 T@Field_25943_53) ) (!  (=> (select (|PolymorphicMapType_26432_25943_53#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@4) null (PredicateMaskField_17819 pm_f_51@@1))) o2_52 f_30) (= (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@4) o2_52 f_30) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52 f_30))
)) (forall ((o2_52@@0 T@Ref) (f_30@@0 T@Field_25956_25957) ) (!  (=> (select (|PolymorphicMapType_26432_25943_25957#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@4) null (PredicateMaskField_17819 pm_f_51@@1))) o2_52@@0 f_30@@0) (= (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@4) o2_52@@0 f_30@@0) (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@0 f_30@@0))
))) (forall ((o2_52@@1 T@Ref) (f_30@@1 T@Field_32012_3610) ) (!  (=> (select (|PolymorphicMapType_26432_25943_3610#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@4) null (PredicateMaskField_17819 pm_f_51@@1))) o2_52@@1 f_30@@1) (= (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@4) o2_52@@1 f_30@@1) (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@1 f_30@@1))
))) (forall ((o2_52@@2 T@Ref) (f_30@@2 T@Field_17819_74548) ) (!  (=> (select (|PolymorphicMapType_26432_25943_74548#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@4) null (PredicateMaskField_17819 pm_f_51@@1))) o2_52@@2 f_30@@2) (= (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@4) o2_52@@2 f_30@@2) (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@2 f_30@@2))
))) (forall ((o2_52@@3 T@Ref) (f_30@@3 T@Field_17819_74681) ) (!  (=> (select (|PolymorphicMapType_26432_25943_75859#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@4) null (PredicateMaskField_17819 pm_f_51@@1))) o2_52@@3 f_30@@3) (= (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@4) o2_52@@3 f_30@@3) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@3) o2_52@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_17819_74639 pm_f_51@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_25883) (ExhaleHeap@@4 T@PolymorphicMapType_25883) (Mask@@15 T@PolymorphicMapType_25904) (pm_f_51@@2 T@Field_17819_74548) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_17819_74612 Mask@@15 null pm_f_51@@2) (IsWandField_17819_76386 pm_f_51@@2)) (and (and (and (and (forall ((o2_52@@4 T@Ref) (f_30@@4 T@Field_25943_53) ) (!  (=> (select (|PolymorphicMapType_26432_25943_53#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@5) null (WandMaskField_17819 pm_f_51@@2))) o2_52@@4 f_30@@4) (= (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@5) o2_52@@4 f_30@@4) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@4 f_30@@4))
)) (forall ((o2_52@@5 T@Ref) (f_30@@5 T@Field_25956_25957) ) (!  (=> (select (|PolymorphicMapType_26432_25943_25957#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@5) null (WandMaskField_17819 pm_f_51@@2))) o2_52@@5 f_30@@5) (= (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@5) o2_52@@5 f_30@@5) (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@5 f_30@@5))
))) (forall ((o2_52@@6 T@Ref) (f_30@@6 T@Field_32012_3610) ) (!  (=> (select (|PolymorphicMapType_26432_25943_3610#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@5) null (WandMaskField_17819 pm_f_51@@2))) o2_52@@6 f_30@@6) (= (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@5) o2_52@@6 f_30@@6) (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@6 f_30@@6))
))) (forall ((o2_52@@7 T@Ref) (f_30@@7 T@Field_17819_74548) ) (!  (=> (select (|PolymorphicMapType_26432_25943_74548#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@5) null (WandMaskField_17819 pm_f_51@@2))) o2_52@@7 f_30@@7) (= (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@5) o2_52@@7 f_30@@7) (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@7 f_30@@7))
))) (forall ((o2_52@@8 T@Ref) (f_30@@8 T@Field_17819_74681) ) (!  (=> (select (|PolymorphicMapType_26432_25943_75859#PolymorphicMapType_26432| (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@5) null (WandMaskField_17819 pm_f_51@@2))) o2_52@@8 f_30@@8) (= (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@5) o2_52@@8 f_30@@8) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@4) o2_52@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_17819_76386 pm_f_51@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.249:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3488| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.622:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3488| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_25883) (ExhaleHeap@@5 T@PolymorphicMapType_25883) (Mask@@16 T@PolymorphicMapType_25904) (o_49@@0 T@Ref) (f_30@@9 T@Field_17819_74681) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_17819_80386 Mask@@16 o_49@@0 f_30@@9) (= (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@6) o_49@@0 f_30@@9) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@5) o_49@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| ExhaleHeap@@5) o_49@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_25883) (ExhaleHeap@@6 T@PolymorphicMapType_25883) (Mask@@17 T@PolymorphicMapType_25904) (o_49@@1 T@Ref) (f_30@@10 T@Field_17819_74548) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_17819_74612 Mask@@17 o_49@@1 f_30@@10) (= (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@7) o_49@@1 f_30@@10) (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| ExhaleHeap@@6) o_49@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| ExhaleHeap@@6) o_49@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_25883) (ExhaleHeap@@7 T@PolymorphicMapType_25883) (Mask@@18 T@PolymorphicMapType_25904) (o_49@@2 T@Ref) (f_30@@11 T@Field_25956_25957) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_17819_25957 Mask@@18 o_49@@2 f_30@@11) (= (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@8) o_49@@2 f_30@@11) (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| ExhaleHeap@@7) o_49@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| ExhaleHeap@@7) o_49@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_25883) (ExhaleHeap@@8 T@PolymorphicMapType_25883) (Mask@@19 T@PolymorphicMapType_25904) (o_49@@3 T@Ref) (f_30@@12 T@Field_25943_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_17819_53 Mask@@19 o_49@@3 f_30@@12) (= (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@9) o_49@@3 f_30@@12) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@8) o_49@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| ExhaleHeap@@8) o_49@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_25883) (ExhaleHeap@@9 T@PolymorphicMapType_25883) (Mask@@20 T@PolymorphicMapType_25904) (o_49@@4 T@Ref) (f_30@@13 T@Field_32012_3610) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_17819_3610 Mask@@20 o_49@@4 f_30@@13) (= (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@10) o_49@@4 f_30@@13) (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| ExhaleHeap@@9) o_49@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| ExhaleHeap@@9) o_49@@4 f_30@@13))
)))
(assert (forall ((s0@@1 T@Seq_32058) (s1@@1 T@Seq_32058) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17829|)) (not (= s1@@1 |Seq#Empty_17829|))) (= (|Seq#Length_17829| (|Seq#Append_32058| s0@@1 s1@@1)) (+ (|Seq#Length_17829| s0@@1) (|Seq#Length_17829| s1@@1))))
 :qid |stdinbpl.299:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17829| (|Seq#Append_32058| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3488) (s1@@2 T@Seq_3488) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3488|)) (not (= s1@@2 |Seq#Empty_3488|))) (= (|Seq#Length_3488| (|Seq#Append_3488| s0@@2 s1@@2)) (+ (|Seq#Length_3488| s0@@2) (|Seq#Length_3488| s1@@2))))
 :qid |stdinbpl.299:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3488| (|Seq#Append_3488| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17819_74681) ) (! (= (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17819_74548) ) (! (= (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_25956_25957) ) (! (= (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_25943_53) ) (! (= (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_32012_3610) ) (! (= (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_32058) (t@@1 T@Seq_32058) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17829| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17829| s@@15)) (|Seq#Length_17829| s@@15)) n@@15) (= (|Seq#Drop_17829| (|Seq#Append_32058| s@@15 t@@1) n@@15) (|Seq#Drop_17829| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17829| s@@15))))))
 :qid |stdinbpl.456:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17829| (|Seq#Append_32058| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3488) (t@@2 T@Seq_3488) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3488| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3488| s@@16)) (|Seq#Length_3488| s@@16)) n@@16) (= (|Seq#Drop_3488| (|Seq#Append_3488| s@@16 t@@2) n@@16) (|Seq#Drop_3488| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3488| s@@16))))))
 :qid |stdinbpl.456:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3488| (|Seq#Append_3488| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_25904) (SummandMask1 T@PolymorphicMapType_25904) (SummandMask2 T@PolymorphicMapType_25904) (o_2@@19 T@Ref) (f_4@@19 T@Field_17819_74681) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_25904) (SummandMask1@@0 T@PolymorphicMapType_25904) (SummandMask2@@0 T@PolymorphicMapType_25904) (o_2@@20 T@Ref) (f_4@@20 T@Field_17819_74548) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_25904) (SummandMask1@@1 T@PolymorphicMapType_25904) (SummandMask2@@1 T@PolymorphicMapType_25904) (o_2@@21 T@Ref) (f_4@@21 T@Field_25956_25957) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_25904) (SummandMask1@@2 T@PolymorphicMapType_25904) (SummandMask2@@2 T@PolymorphicMapType_25904) (o_2@@22 T@Ref) (f_4@@22 T@Field_25943_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_25904) (SummandMask1@@3 T@PolymorphicMapType_25904) (SummandMask2@@3 T@PolymorphicMapType_25904) (o_2@@23 T@Ref) (f_4@@23 T@Field_32012_3610) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3488| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3488| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.621:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3488| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_32058) (b T@Seq_32058) ) (!  (=> (|Seq#Equal_32058| a b) (= a b))
 :qid |stdinbpl.594:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_32058| a b))
)))
(assert (forall ((a@@0 T@Seq_3488) (b@@0 T@Seq_3488) ) (!  (=> (|Seq#Equal_3488| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.594:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3488| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_32058) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17829| s@@17))) (|Seq#ContainsTrigger_17829| s@@17 (|Seq#Index_17829| s@@17 i@@3)))
 :qid |stdinbpl.487:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17829| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3488) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3488| s@@18))) (|Seq#ContainsTrigger_3488| s@@18 (|Seq#Index_3488| s@@18 i@@4)))
 :qid |stdinbpl.487:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3488| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_32058) (s1@@3 T@Seq_32058) ) (!  (and (=> (= s0@@3 |Seq#Empty_17829|) (= (|Seq#Append_32058| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17829|) (= (|Seq#Append_32058| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.305:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_32058| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3488) (s1@@4 T@Seq_3488) ) (!  (and (=> (= s0@@4 |Seq#Empty_3488|) (= (|Seq#Append_3488| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3488|) (= (|Seq#Append_3488| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.305:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3488| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17829| (|Seq#Singleton_17829| t@@3) 0) t@@3)
 :qid |stdinbpl.309:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17829| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3488| (|Seq#Singleton_3488| t@@4) 0) t@@4)
 :qid |stdinbpl.309:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3488| t@@4))
)))
(assert (forall ((s@@19 T@Seq_32058) ) (! (<= 0 (|Seq#Length_17829| s@@19))
 :qid |stdinbpl.288:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17829| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3488) ) (! (<= 0 (|Seq#Length_3488| s@@20))
 :qid |stdinbpl.288:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3488| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_32058) (s1@@5 T@Seq_32058) ) (!  (=> (|Seq#Equal_32058| s0@@5 s1@@5) (and (= (|Seq#Length_17829| s0@@5) (|Seq#Length_17829| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17829| s0@@5))) (= (|Seq#Index_17829| s0@@5 j@@6) (|Seq#Index_17829| s1@@5 j@@6)))
 :qid |stdinbpl.584:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17829| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17829| s1@@5 j@@6))
))))
 :qid |stdinbpl.581:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_32058| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3488) (s1@@6 T@Seq_3488) ) (!  (=> (|Seq#Equal_3488| s0@@6 s1@@6) (and (= (|Seq#Length_3488| s0@@6) (|Seq#Length_3488| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3488| s0@@6))) (= (|Seq#Index_3488| s0@@6 j@@7) (|Seq#Index_3488| s1@@6 j@@7)))
 :qid |stdinbpl.584:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3488| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3488| s1@@6 j@@7))
))))
 :qid |stdinbpl.581:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3488| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17829| (|Seq#Singleton_17829| t@@5)) 1)
 :qid |stdinbpl.296:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17829| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3488| (|Seq#Singleton_3488| t@@6)) 1)
 :qid |stdinbpl.296:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3488| t@@6))
)))
(assert (forall ((s@@21 T@Seq_32058) (t@@7 T@Seq_32058) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17829| s@@21))) (= (|Seq#Take_17829| (|Seq#Append_32058| s@@21 t@@7) n@@17) (|Seq#Take_17829| s@@21 n@@17)))
 :qid |stdinbpl.438:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17829| (|Seq#Append_32058| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3488) (t@@8 T@Seq_3488) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3488| s@@22))) (= (|Seq#Take_3488| (|Seq#Append_3488| s@@22 t@@8) n@@18) (|Seq#Take_3488| s@@22 n@@18)))
 :qid |stdinbpl.438:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3488| (|Seq#Append_3488| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_32058) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17829| s@@23))) (= (|Seq#Length_17829| (|Seq#Update_17829| s@@23 i@@5 v@@2)) (|Seq#Length_17829| s@@23)))
 :qid |stdinbpl.337:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17829| (|Seq#Update_17829| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17829| s@@23) (|Seq#Update_17829| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3488) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3488| s@@24))) (= (|Seq#Length_3488| (|Seq#Update_3488| s@@24 i@@6 v@@3)) (|Seq#Length_3488| s@@24)))
 :qid |stdinbpl.337:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3488| (|Seq#Update_3488| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3488| s@@24) (|Seq#Update_3488| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_25883) (o_48 T@Ref) (f_62 T@Field_17819_74548) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@11) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@11) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@11) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@11) (store (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@11) o_48 f_62 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@11) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@11) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@11) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@11) (store (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@11) o_48 f_62 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_25883) (o_48@@0 T@Ref) (f_62@@0 T@Field_17819_74681) (v@@5 T@PolymorphicMapType_26432) ) (! (succHeap Heap@@12 (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@12) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@12) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@12) (store (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@12) o_48@@0 f_62@@0 v@@5) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@12) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@12) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@12) (store (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@12) o_48@@0 f_62@@0 v@@5) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_25883) (o_48@@1 T@Ref) (f_62@@1 T@Field_32012_3610) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@13) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@13) (store (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@13) o_48@@1 f_62@@1 v@@6) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@13) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@13) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@13) (store (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@13) o_48@@1 f_62@@1 v@@6) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@13) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_25883) (o_48@@2 T@Ref) (f_62@@2 T@Field_25956_25957) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@14) (store (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@14) o_48@@2 f_62@@2 v@@7) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@14) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@14) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@14) (store (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@14) o_48@@2 f_62@@2 v@@7) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@14) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@14) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_25883) (o_48@@3 T@Ref) (f_62@@3 T@Field_25943_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_25883 (store (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@15) o_48@@3 f_62@@3 v@@8) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@15) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@15) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@15) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_25883 (store (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@15) o_48@@3 f_62@@3 v@@8) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@15) (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@15) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@15) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_32058) (t@@9 T@Seq_32058) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17829| s@@25))) (= (|Seq#Drop_17829| (|Seq#Append_32058| s@@25 t@@9) n@@19) (|Seq#Append_32058| (|Seq#Drop_17829| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.452:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17829| (|Seq#Append_32058| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3488) (t@@10 T@Seq_3488) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3488| s@@26))) (= (|Seq#Drop_3488| (|Seq#Append_3488| s@@26 t@@10) n@@20) (|Seq#Append_3488| (|Seq#Drop_3488| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.452:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3488| (|Seq#Append_3488| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_32058) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17829| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17829| (|Seq#Drop_17829| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17829| s@@27 i@@7))))
 :qid |stdinbpl.388:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17829| s@@27 n@@21) (|Seq#Index_17829| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3488) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3488| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3488| (|Seq#Drop_3488| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3488| s@@28 i@@8))))
 :qid |stdinbpl.388:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3488| s@@28 n@@22) (|Seq#Index_3488| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_32058) (s1@@7 T@Seq_32058) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17829|)) (not (= s1@@7 |Seq#Empty_17829|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17829| s0@@7))) (= (|Seq#Index_17829| (|Seq#Append_32058| s0@@7 s1@@7) n@@23) (|Seq#Index_17829| s0@@7 n@@23)))
 :qid |stdinbpl.328:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17829| (|Seq#Append_32058| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17829| s0@@7 n@@23) (|Seq#Append_32058| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3488) (s1@@8 T@Seq_3488) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3488|)) (not (= s1@@8 |Seq#Empty_3488|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3488| s0@@8))) (= (|Seq#Index_3488| (|Seq#Append_3488| s0@@8 s1@@8) n@@24) (|Seq#Index_3488| s0@@8 n@@24)))
 :qid |stdinbpl.328:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3488| (|Seq#Append_3488| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3488| s0@@8 n@@24) (|Seq#Append_3488| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_32058) (s1@@9 T@Seq_32058) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17829|)) (not (= s1@@9 |Seq#Empty_17829|))) (<= 0 m)) (< m (|Seq#Length_17829| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17829| s0@@9)) (|Seq#Length_17829| s0@@9)) m) (= (|Seq#Index_17829| (|Seq#Append_32058| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17829| s0@@9))) (|Seq#Index_17829| s1@@9 m))))
 :qid |stdinbpl.333:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17829| s1@@9 m) (|Seq#Append_32058| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3488) (s1@@10 T@Seq_3488) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3488|)) (not (= s1@@10 |Seq#Empty_3488|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3488| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3488| s0@@10)) (|Seq#Length_3488| s0@@10)) m@@0) (= (|Seq#Index_3488| (|Seq#Append_3488| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3488| s0@@10))) (|Seq#Index_3488| s1@@10 m@@0))))
 :qid |stdinbpl.333:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3488| s1@@10 m@@0) (|Seq#Append_3488| s0@@10 s1@@10))
)))
(assert (forall ((o_48@@4 T@Ref) (f_66 T@Field_25956_25957) (Heap@@16 T@PolymorphicMapType_25883) ) (!  (=> (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@16) o_48@@4 $allocated) (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@16) (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@16) o_48@@4 f_66) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@16) o_48@@4 f_66))
)))
(assert (forall ((s@@29 T@Seq_32058) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17829| s@@29))) (= (|Seq#Index_17829| s@@29 i@@9) x@@3)) (|Seq#Contains_32058| s@@29 x@@3))
 :qid |stdinbpl.485:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_32058| s@@29 x@@3) (|Seq#Index_17829| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3488) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3488| s@@30))) (= (|Seq#Index_3488| s@@30 i@@10) x@@4)) (|Seq#Contains_3488| s@@30 x@@4))
 :qid |stdinbpl.485:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3488| s@@30 x@@4) (|Seq#Index_3488| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_32058) (s1@@11 T@Seq_32058) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_32058| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_32058| s0@@11 s1@@11))) (not (= (|Seq#Length_17829| s0@@11) (|Seq#Length_17829| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_32058| s0@@11 s1@@11))) (= (|Seq#Length_17829| s0@@11) (|Seq#Length_17829| s1@@11))) (= (|Seq#SkolemDiff_32058| s0@@11 s1@@11) (|Seq#SkolemDiff_32058| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_32058| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_32058| s0@@11 s1@@11) (|Seq#Length_17829| s0@@11))) (not (= (|Seq#Index_17829| s0@@11 (|Seq#SkolemDiff_32058| s0@@11 s1@@11)) (|Seq#Index_17829| s1@@11 (|Seq#SkolemDiff_32058| s0@@11 s1@@11))))))
 :qid |stdinbpl.589:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_32058| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3488) (s1@@12 T@Seq_3488) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3488| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3488| s0@@12 s1@@12))) (not (= (|Seq#Length_3488| s0@@12) (|Seq#Length_3488| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3488| s0@@12 s1@@12))) (= (|Seq#Length_3488| s0@@12) (|Seq#Length_3488| s1@@12))) (= (|Seq#SkolemDiff_3488| s0@@12 s1@@12) (|Seq#SkolemDiff_3488| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3488| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3488| s0@@12 s1@@12) (|Seq#Length_3488| s0@@12))) (not (= (|Seq#Index_3488| s0@@12 (|Seq#SkolemDiff_3488| s0@@12 s1@@12)) (|Seq#Index_3488| s1@@12 (|Seq#SkolemDiff_3488| s0@@12 s1@@12))))))
 :qid |stdinbpl.589:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3488| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_17819_74548) (v_1@@0 T@FrameType) (q T@Field_17819_74548) (w@@0 T@FrameType) (r T@Field_17819_74548) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25943_25943 p@@1 v_1@@0 q w@@0) (InsidePredicate_25943_25943 q w@@0 r u)) (InsidePredicate_25943_25943 p@@1 v_1@@0 r u))
 :qid |stdinbpl.256:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25943_25943 p@@1 v_1@@0 q w@@0) (InsidePredicate_25943_25943 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_32058) ) (!  (=> (= (|Seq#Length_17829| s@@31) 0) (= s@@31 |Seq#Empty_17829|))
 :qid |stdinbpl.292:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17829| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3488) ) (!  (=> (= (|Seq#Length_3488| s@@32) 0) (= s@@32 |Seq#Empty_3488|))
 :qid |stdinbpl.292:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3488| s@@32))
)))
(assert (forall ((s@@33 T@Seq_32058) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17829| s@@33 n@@25) |Seq#Empty_17829|))
 :qid |stdinbpl.468:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17829| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3488) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3488| s@@34 n@@26) |Seq#Empty_3488|))
 :qid |stdinbpl.468:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3488| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@12 () T@PolymorphicMapType_25904)
(declare-fun cr () T@Seq_32058)
(declare-fun i@@11 () Int)
(declare-fun Mask@11 () T@PolymorphicMapType_25904)
(declare-fun br () T@Seq_32058)
(declare-fun perm@7 () Real)
(declare-fun len_3 () Int)
(declare-fun Mask@10 () T@PolymorphicMapType_25904)
(declare-fun ar_1 () T@Seq_32058)
(declare-fun Heap@2 () T@PolymorphicMapType_25883)
(declare-fun Mask@9 () T@PolymorphicMapType_25904)
(declare-fun Mask@8 () T@PolymorphicMapType_25904)
(declare-fun perm@6 () Real)
(declare-fun Heap@1 () T@PolymorphicMapType_25883)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_25883)
(declare-fun Heap@0 () T@PolymorphicMapType_25883)
(declare-fun Heap@@17 () T@PolymorphicMapType_25883)
(declare-fun Mask@6 () T@PolymorphicMapType_25904)
(declare-fun perm@5 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_25904)
(declare-fun PostHeap@0 () T@PolymorphicMapType_25883)
(declare-fun PostMask@0 () T@PolymorphicMapType_25904)
(declare-fun perm@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_25904)
(declare-fun Mask@4 () T@PolymorphicMapType_25904)
(declare-fun perm@3 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_25904)
(declare-fun Mask@2 () T@PolymorphicMapType_25904)
(declare-fun perm@2 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_25904)
(declare-fun Mask@0 () T@PolymorphicMapType_25904)
(declare-fun perm@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_25904)
(declare-fun this () T@Ref)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id loop_body_54)
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
 (=> (= (ControlFlow 0 0) 76) (let ((anon18_correct true))
(let ((anon27_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon18_correct)))
(let ((anon27_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@12) (|Seq#Index_17829| cr i@@11) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@12) (|Seq#Index_17829| cr i@@11) Integer_value)) (=> (= (ControlFlow 0 10) 9) anon18_correct))))))
(let ((anon16_correct  (=> (= Mask@12 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@11) (|Seq#Index_17829| br i@@11) Integer_value (- (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@11) (|Seq#Index_17829| br i@@11) Integer_value) perm@7)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@11) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@11) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@11) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@11))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= (|Seq#Length_17829| cr) len_3)) (=> (= (|Seq#Length_17829| cr) len_3) (and (=> (= (ControlFlow 0 13) 10) anon27_Then_correct) (=> (= (ControlFlow 0 13) 12) anon27_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (= perm@7 NoPerm) (= (ControlFlow 0 17) 13)) anon16_correct)))
(let ((anon26_Then_correct  (=> (not (= perm@7 NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= perm@7 (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@11) (|Seq#Index_17829| br i@@11) Integer_value))) (=> (<= perm@7 (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@11) (|Seq#Index_17829| br i@@11) Integer_value)) (=> (= (ControlFlow 0 15) 13) anon16_correct))))))
(let ((anon14_correct  (=> (= Mask@11 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@10) (|Seq#Index_17829| ar_1 i@@11) Integer_value (- (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@10) (|Seq#Index_17829| ar_1 i@@11) Integer_value) FullPerm)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@10) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@10) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@10) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@10))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (= (|Seq#Length_17829| br) len_3)) (=> (= (|Seq#Length_17829| br) len_3) (=> (= perm@7 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (>= perm@7 NoPerm)) (=> (>= perm@7 NoPerm) (and (=> (= (ControlFlow 0 18) 15) anon26_Then_correct) (=> (= (ControlFlow 0 18) 17) anon26_Else_correct))))))))))
(let ((anon25_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 23) 18)) anon14_correct)))
(let ((anon25_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@10) (|Seq#Index_17829| ar_1 i@@11) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@10) (|Seq#Index_17829| ar_1 i@@11) Integer_value)) (=> (= (ControlFlow 0 21) 18) anon14_correct))))))
(let ((anon12_correct  (=> (state Heap@2 Mask@10) (and (=> (= (ControlFlow 0 24) (- 0 27)) (<= 0 i@@11)) (=> (<= 0 i@@11) (and (=> (= (ControlFlow 0 24) (- 0 26)) (< i@@11 len_3)) (=> (< i@@11 len_3) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= (|Seq#Length_17829| ar_1) len_3)) (=> (= (|Seq#Length_17829| ar_1) len_3) (and (=> (= (ControlFlow 0 24) 21) anon25_Then_correct) (=> (= (ControlFlow 0 24) 23) anon25_Else_correct)))))))))))
(let ((anon11_correct  (=> (= Mask@9 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value (- (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value) perm@6)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@8) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@8) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@8) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@8))) (=> (and (IdenticalOnKnownLocations Heap@1 ExhaleHeap@0 Mask@9) (state ExhaleHeap@0 Mask@9)) (=> (and (and (state ExhaleHeap@0 Mask@9) (= Heap@2 ExhaleHeap@0)) (and (= Mask@10 Mask@9) (= (ControlFlow 0 29) 24))) anon12_correct)))))
(let ((anon24_Else_correct  (=> (and (= perm@6 NoPerm) (= (ControlFlow 0 32) 29)) anon11_correct)))
(let ((anon24_Then_correct  (=> (not (= perm@6 NoPerm)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (<= perm@6 (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value))) (=> (<= perm@6 (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value)) (=> (= (ControlFlow 0 30) 29) anon11_correct))))))
(let ((anon23_Then_correct  (=> (< i@@11 (- len_3 1)) (and (=> (= (ControlFlow 0 33) (- 0 42)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 33) (- 0 41)) (< i@@11 (|Seq#Length_17829| cr))) (=> (< i@@11 (|Seq#Length_17829| cr)) (and (=> (= (ControlFlow 0 33) (- 0 40)) (>= (+ i@@11 1) 0)) (=> (>= (+ i@@11 1) 0) (and (=> (= (ControlFlow 0 33) (- 0 39)) (< (+ i@@11 1) (|Seq#Length_17829| ar_1))) (=> (< (+ i@@11 1) (|Seq#Length_17829| ar_1)) (and (=> (= (ControlFlow 0 33) (- 0 38)) (HasDirectPerm_17819_3610 Mask@8 (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value)) (=> (HasDirectPerm_17819_3610 Mask@8 (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value) (and (=> (= (ControlFlow 0 33) (- 0 37)) (= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| cr i@@11) Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| cr i@@11) Integer_value)) (=> (and (= Heap@1 (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@0) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@0) (store (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@0) (|Seq#Index_17829| cr i@@11) Integer_value (+ (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@0) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value) 2)) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@0) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@0))) (state Heap@1 Mask@8)) (and (=> (= (ControlFlow 0 33) (- 0 36)) (<= (- 0 1) i@@11)) (=> (<= (- 0 1) i@@11) (and (=> (= (ControlFlow 0 33) (- 0 35)) (< (+ i@@11 1) (|Seq#Length_17829| ar_1))) (=> (< (+ i@@11 1) (|Seq#Length_17829| ar_1)) (=> (= perm@6 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (>= perm@6 NoPerm)) (=> (>= perm@6 NoPerm) (and (=> (= (ControlFlow 0 33) 30) anon24_Then_correct) (=> (= (ControlFlow 0 33) 32) anon24_Else_correct)))))))))))))))))))))))))
(let ((anon23_Else_correct  (=> (and (and (<= (- len_3 1) i@@11) (= Heap@2 Heap@0)) (and (= Mask@10 Mask@8) (= (ControlFlow 0 28) 24))) anon12_correct)))
(let ((anon8_correct  (=> (state Heap@@17 Mask@8) (and (=> (= (ControlFlow 0 43) (- 0 49)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 43) (- 0 48)) (< i@@11 (|Seq#Length_17829| ar_1))) (=> (< i@@11 (|Seq#Length_17829| ar_1)) (and (=> (= (ControlFlow 0 43) (- 0 47)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 43) (- 0 46)) (< i@@11 (|Seq#Length_17829| br))) (=> (< i@@11 (|Seq#Length_17829| br)) (and (=> (= (ControlFlow 0 43) (- 0 45)) (HasDirectPerm_17819_3610 Mask@8 (|Seq#Index_17829| br i@@11) Integer_value)) (=> (HasDirectPerm_17819_3610 Mask@8 (|Seq#Index_17829| br i@@11) Integer_value) (and (=> (= (ControlFlow 0 43) (- 0 44)) (= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| ar_1 i@@11) Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@8) (|Seq#Index_17829| ar_1 i@@11) Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_25883 (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@17) (|PolymorphicMapType_25883_17582_17583#PolymorphicMapType_25883| Heap@@17) (store (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@17) (|Seq#Index_17829| ar_1 i@@11) Integer_value (+ (select (|PolymorphicMapType_25883_17819_3610#PolymorphicMapType_25883| Heap@@17) (|Seq#Index_17829| br i@@11) Integer_value) 1)) (|PolymorphicMapType_25883_17819_74725#PolymorphicMapType_25883| Heap@@17) (|PolymorphicMapType_25883_25943_74548#PolymorphicMapType_25883| Heap@@17))) (state Heap@0 Mask@8)) (and (=> (= (ControlFlow 0 43) 33) anon23_Then_correct) (=> (= (ControlFlow 0 43) 28) anon23_Else_correct))))))))))))))))))
(let ((anon22_Else_correct  (=> (>= 0 i@@11) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 54) 43)) anon8_correct))))
(let ((anon22_Then_correct  (=> (> i@@11 0) (and (=> (= (ControlFlow 0 50) (- 0 53)) (<= 0 i@@11)) (=> (<= 0 i@@11) (and (=> (= (ControlFlow 0 50) (- 0 52)) (< i@@11 (|Seq#Length_17829| ar_1))) (=> (< i@@11 (|Seq#Length_17829| ar_1)) (=> (= perm@5 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (=> (=> (> perm@5 NoPerm) (not (= (|Seq#Index_17829| ar_1 i@@11) null))) (=> (and (= Mask@7 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@6) (|Seq#Index_17829| ar_1 i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@6) (|Seq#Index_17829| ar_1 i@@11) Integer_value) perm@5)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@6) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@6) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@6) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@6))) (state Heap@@17 Mask@7)) (=> (and (and (state Heap@@17 Mask@7) (state Heap@@17 Mask@7)) (and (= Mask@8 Mask@7) (= (ControlFlow 0 50) 43))) anon8_correct)))))))))))))
(let ((anon21_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (<= 0 i@@11)) (=> (and (and (< i@@11 len_3) (state PostHeap@0 ZeroMask)) (and (= (|Seq#Length_17829| ar_1) len_3) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< i@@11 (|Seq#Length_17829| ar_1))) (=> (< i@@11 (|Seq#Length_17829| ar_1)) (=> (and (not (= (|Seq#Index_17829| ar_1 i@@11) null)) (= PostMask@0 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ZeroMask) (|Seq#Index_17829| ar_1 i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ZeroMask) (|Seq#Index_17829| ar_1 i@@11) Integer_value) FullPerm)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| ZeroMask) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| ZeroMask) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| ZeroMask) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| ZeroMask)))) (=> (and (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (= (|Seq#Length_17829| br) len_3) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i@@11 (|Seq#Length_17829| br))) (=> (< i@@11 (|Seq#Length_17829| br)) (=> (= perm@4 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (=> (and (=> (> perm@4 NoPerm) (not (= (|Seq#Index_17829| br i@@11) null))) (= PostMask@1 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| PostMask@0) (|Seq#Index_17829| br i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| PostMask@0) (|Seq#Index_17829| br i@@11) Integer_value) perm@4)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| PostMask@0) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| PostMask@0) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| PostMask@0) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| PostMask@0)))) (=> (and (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1)) (and (= (|Seq#Length_17829| cr) len_3) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (>= i@@11 0)) (=> (>= i@@11 0) (=> (= (ControlFlow 0 2) (- 0 1)) (< i@@11 (|Seq#Length_17829| cr))))))))))))))))))))))))
(let ((anon4_correct  (=> (state Heap@@17 Mask@4) (=> (and (= (|Seq#Length_17829| br) len_3) (state Heap@@17 Mask@4)) (and (=> (= (ControlFlow 0 55) (- 0 60)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 55) (- 0 59)) (< i@@11 (|Seq#Length_17829| br))) (=> (< i@@11 (|Seq#Length_17829| br)) (=> (= perm@3 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 55) (- 0 58)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (=> (> perm@3 NoPerm) (not (= (|Seq#Index_17829| br i@@11) null))) (= Mask@5 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@4) (|Seq#Index_17829| br i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@4) (|Seq#Index_17829| br i@@11) Integer_value) perm@3)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@4) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@4) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@4) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@4)))) (=> (and (and (state Heap@@17 Mask@5) (state Heap@@17 Mask@5)) (and (= (|Seq#Length_17829| cr) len_3) (state Heap@@17 Mask@5))) (and (=> (= (ControlFlow 0 55) (- 0 57)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 55) (- 0 56)) (< i@@11 (|Seq#Length_17829| cr))) (=> (< i@@11 (|Seq#Length_17829| cr)) (=> (and (and (not (= (|Seq#Index_17829| cr i@@11) null)) (= Mask@6 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@5) (|Seq#Index_17829| cr i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@5) (|Seq#Index_17829| cr i@@11) Integer_value) FullPerm)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@5) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@5) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@5) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@5)))) (and (state Heap@@17 Mask@6) (state Heap@@17 Mask@6))) (and (and (=> (= (ControlFlow 0 55) 2) anon21_Then_correct) (=> (= (ControlFlow 0 55) 50) anon22_Then_correct)) (=> (= (ControlFlow 0 55) 54) anon22_Else_correct))))))))))))))))))))
(let ((anon20_Else_correct  (=> (<= (- (|Seq#Length_17829| ar_1) 1) i@@11) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 65) 55)) anon4_correct))))
(let ((anon20_Then_correct  (=> (< i@@11 (- (|Seq#Length_17829| ar_1) 1)) (and (=> (= (ControlFlow 0 61) (- 0 64)) (>= (+ i@@11 1) 0)) (=> (>= (+ i@@11 1) 0) (and (=> (= (ControlFlow 0 61) (- 0 63)) (< (+ i@@11 1) (|Seq#Length_17829| ar_1))) (=> (< (+ i@@11 1) (|Seq#Length_17829| ar_1)) (=> (= perm@2 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (=> (> perm@2 NoPerm) (not (= (|Seq#Index_17829| ar_1 (+ i@@11 1)) null))) (=> (and (and (= Mask@3 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@2) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@2) (|Seq#Index_17829| ar_1 (+ i@@11 1)) Integer_value) perm@2)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@2) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@2) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@2) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@2))) (state Heap@@17 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 61) 55))) anon4_correct))))))))))))
(let ((anon2_correct  (=> (state Heap@@17 Mask@2) (and (=> (= (ControlFlow 0 66) 61) anon20_Then_correct) (=> (= (ControlFlow 0 66) 65) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not (= i@@11 0)) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 71) 66)) anon2_correct))))
(let ((anon19_Then_correct  (=> (= i@@11 0) (and (=> (= (ControlFlow 0 67) (- 0 70)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 67) (- 0 69)) (< i@@11 (|Seq#Length_17829| ar_1))) (=> (< i@@11 (|Seq#Length_17829| ar_1)) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (|Seq#Index_17829| ar_1 i@@11) null))) (=> (and (and (= Mask@1 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@0) (|Seq#Index_17829| ar_1 i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| Mask@0) (|Seq#Index_17829| ar_1 i@@11) Integer_value) perm@1)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| Mask@0) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| Mask@0) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| Mask@0) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| Mask@0))) (state Heap@@17 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 67) 66))) anon2_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_25883_17579_53#PolymorphicMapType_25883| Heap@@17) this $allocated) (<= 0 i@@11))) (and (and (< i@@11 len_3) (state Heap@@17 ZeroMask)) (and (= (|Seq#Length_17829| ar_1) len_3) (state Heap@@17 ZeroMask)))) (and (=> (= (ControlFlow 0 72) (- 0 75)) (>= i@@11 0)) (=> (>= i@@11 0) (and (=> (= (ControlFlow 0 72) (- 0 74)) (< i@@11 (|Seq#Length_17829| ar_1))) (=> (< i@@11 (|Seq#Length_17829| ar_1)) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_17829| ar_1 i@@11) null))) (= Mask@0 (PolymorphicMapType_25904 (store (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ZeroMask) (|Seq#Index_17829| ar_1 i@@11) Integer_value (+ (select (|PolymorphicMapType_25904_17819_3610#PolymorphicMapType_25904| ZeroMask) (|Seq#Index_17829| ar_1 i@@11) Integer_value) perm@0)) (|PolymorphicMapType_25904_17819_53#PolymorphicMapType_25904| ZeroMask) (|PolymorphicMapType_25904_17819_25957#PolymorphicMapType_25904| ZeroMask) (|PolymorphicMapType_25904_17819_74548#PolymorphicMapType_25904| ZeroMask) (|PolymorphicMapType_25904_17819_78803#PolymorphicMapType_25904| ZeroMask)))) (and (state Heap@@17 Mask@0) (state Heap@@17 Mask@0))) (and (=> (= (ControlFlow 0 72) 67) anon19_Then_correct) (=> (= (ControlFlow 0 72) 71) anon19_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76) 72) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
