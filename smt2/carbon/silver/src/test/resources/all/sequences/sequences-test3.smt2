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
(declare-sort T@Field_9974_53 0)
(declare-sort T@Field_9987_9988 0)
(declare-sort T@Field_9974_26653 0)
(declare-sort T@Field_9974_26520 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9935 0)) (((PolymorphicMapType_9935 (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| (Array T@Ref T@Field_9974_53 Real)) (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| (Array T@Ref T@Field_9987_9988 Real)) (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| (Array T@Ref T@Field_9974_26520 Real)) (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| (Array T@Ref T@Field_9974_26653 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10463 0)) (((PolymorphicMapType_10463 (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| (Array T@Ref T@Field_9974_53 Bool)) (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| (Array T@Ref T@Field_9987_9988 Bool)) (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| (Array T@Ref T@Field_9974_26520 Bool)) (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| (Array T@Ref T@Field_9974_26653 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9914 0)) (((PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| (Array T@Ref T@Field_9974_53 Bool)) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| (Array T@Ref T@Field_9987_9988 T@Ref)) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| (Array T@Ref T@Field_9974_26653 T@PolymorphicMapType_10463)) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| (Array T@Ref T@Field_9974_26520 T@FrameType)) ) ) ))
(declare-sort T@Seq_3969 0)
(declare-fun |Seq#Length_3969| (T@Seq_3969) Int)
(declare-fun |Seq#Drop_3969| (T@Seq_3969 Int) T@Seq_3969)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3364| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_9914 T@PolymorphicMapType_9914) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9914 T@PolymorphicMapType_9914) Bool)
(declare-fun state (T@PolymorphicMapType_9914 T@PolymorphicMapType_9935) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9935) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10463)
(declare-fun |Seq#Index_5| (T@Seq_3969 Int) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_3969| () T@Seq_3969)
(declare-fun |Seq#Empty_3246| () T@Seq_2867)
(declare-fun |trivial'| (T@PolymorphicMapType_9914 Int) Bool)
(declare-fun dummyFunction_3153 (Bool) Bool)
(declare-fun |trivial#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_3969| (T@Seq_3969 Int Bool) T@Seq_3969)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_3969| (T@Seq_3969 Int) T@Seq_3969)
(declare-fun |Seq#Take_3364| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_3969| (T@Seq_3969 Bool) Bool)
(declare-fun |Seq#Skolem_3969| (T@Seq_3969 Bool) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9914 T@PolymorphicMapType_9914 T@PolymorphicMapType_9935) Bool)
(declare-fun IsPredicateField_9974_26611 (T@Field_9974_26520) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9974 (T@Field_9974_26520) T@Field_9974_26653)
(declare-fun HasDirectPerm_9974_26584 (T@PolymorphicMapType_9935 T@Ref T@Field_9974_26520) Bool)
(declare-fun IsWandField_9974_28160 (T@Field_9974_26520) Bool)
(declare-fun WandMaskField_9974 (T@Field_9974_26520) T@Field_9974_26653)
(declare-fun |Seq#Singleton_5| (Bool) T@Seq_3969)
(declare-fun |Seq#Singleton_3193| (Int) T@Seq_2867)
(declare-fun trivial (T@PolymorphicMapType_9914 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_5| (T@Seq_3969 T@Seq_3969) T@Seq_3969)
(declare-fun |Seq#Append_3| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_9914)
(declare-fun ZeroMask () T@PolymorphicMapType_9935)
(declare-fun $allocated () T@Field_9974_53)
(declare-fun InsidePredicate_9974_9974 (T@Field_9974_26520 T@FrameType T@Field_9974_26520 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9974_31123 (T@Field_9974_26653) Bool)
(declare-fun IsWandField_9974_31139 (T@Field_9974_26653) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9974_9988 (T@Field_9987_9988) Bool)
(declare-fun IsWandField_9974_9988 (T@Field_9987_9988) Bool)
(declare-fun IsPredicateField_9974_53 (T@Field_9974_53) Bool)
(declare-fun IsWandField_9974_53 (T@Field_9974_53) Bool)
(declare-fun HasDirectPerm_9974_31494 (T@PolymorphicMapType_9935 T@Ref T@Field_9974_26653) Bool)
(declare-fun HasDirectPerm_9974_9988 (T@PolymorphicMapType_9935 T@Ref T@Field_9987_9988) Bool)
(declare-fun HasDirectPerm_9974_53 (T@PolymorphicMapType_9935 T@Ref T@Field_9974_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9935 T@PolymorphicMapType_9935 T@PolymorphicMapType_9935) Bool)
(declare-fun |Seq#Equal_3969| (T@Seq_3969 T@Seq_3969) Bool)
(declare-fun |Seq#Equal_3208| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |trivial#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_3969| (T@Seq_3969 Bool) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#SkolemDiff_3969| (T@Seq_3969 T@Seq_3969) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_3969) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3969| s)) (= (|Seq#Length_3969| (|Seq#Drop_3969| s n)) (- (|Seq#Length_3969| s) n))) (=> (< (|Seq#Length_3969| s) n) (= (|Seq#Length_3969| (|Seq#Drop_3969| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3969| (|Seq#Drop_3969| s n)) (|Seq#Length_3969| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3969| (|Seq#Drop_3969| s n)))
 :pattern ( (|Seq#Length_3969| s) (|Seq#Drop_3969| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_3364| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9914) (Heap1 T@PolymorphicMapType_9914) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9914) (Mask T@PolymorphicMapType_9935) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9914) (Heap1@@0 T@PolymorphicMapType_9914) (Heap2 T@PolymorphicMapType_9914) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9974_26653) ) (!  (not (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9974_26520) ) (!  (not (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9987_9988) ) (!  (not (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9974_53) ) (!  (not (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@1 T@Seq_3969) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_3969| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5| (|Seq#Drop_3969| s@@1 n@@1) j) (|Seq#Index_5| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5| (|Seq#Drop_3969| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_3364| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3364| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_3969| |Seq#Empty_3969|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_3246|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9914) (i Int) ) (! (dummyFunction_3153 (|trivial#triggerStateless| i))
 :qid |stdinbpl.554:15|
 :skolemid |59|
 :pattern ( (|trivial'| Heap@@0 i))
)))
(assert (forall ((s@@3 T@Seq_3969) (i@@0 Int) (v Bool) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_3969| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_5| (|Seq#Update_3969| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_5| (|Seq#Update_3969| s@@3 i@@0 v) n@@3) (|Seq#Index_5| s@@3 n@@3)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5| (|Seq#Update_3969| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_5| s@@3 n@@3) (|Seq#Update_3969| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_3969) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_3969| s@@5)) (= (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_3969| s@@5) n@@5) (= (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)) (|Seq#Length_3969| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)))
 :pattern ( (|Seq#Take_3969| s@@5 n@@5) (|Seq#Length_3969| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3364| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_3969) (x Bool) ) (!  (=> (|Seq#Contains_3969| s@@7 x) (and (and (<= 0 (|Seq#Skolem_3969| s@@7 x)) (< (|Seq#Skolem_3969| s@@7 x) (|Seq#Length_3969| s@@7))) (= (|Seq#Index_5| s@@7 (|Seq#Skolem_3969| s@@7 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3969| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_3969) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_3969| s@@9 n@@7) s@@9))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3969| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3364| s@@10 n@@8) s@@10))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3364| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9914) (ExhaleHeap T@PolymorphicMapType_9914) (Mask@@0 T@PolymorphicMapType_9935) (pm_f T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9974_26584 Mask@@0 null pm_f) (IsPredicateField_9974_26611 pm_f)) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@1) null (PredicateMaskField_9974 pm_f)) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap) null (PredicateMaskField_9974 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9974_26611 pm_f) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap) null (PredicateMaskField_9974 pm_f)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9914) (ExhaleHeap@@0 T@PolymorphicMapType_9914) (Mask@@1 T@PolymorphicMapType_9935) (pm_f@@0 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9974_26584 Mask@@1 null pm_f@@0) (IsWandField_9974_28160 pm_f@@0)) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@2) null (WandMaskField_9974 pm_f@@0)) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@0) null (WandMaskField_9974 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_9974_28160 pm_f@@0) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@0) null (WandMaskField_9974 pm_f@@0)))
)))
(assert (forall ((x@@1 Bool) (y Bool) ) (! (= (|Seq#Contains_3969| (|Seq#Singleton_5| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3969| (|Seq#Singleton_5| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3193| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3193| x@@2) y@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9914) (Mask@@2 T@PolymorphicMapType_9935) (i@@4 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (trivial Heap@@3 i@@4))
 :qid |stdinbpl.560:15|
 :skolemid |60|
 :pattern ( (state Heap@@3 Mask@@2) (trivial Heap@@3 i@@4))
)))
(assert (forall ((s@@11 T@Seq_3969) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_3969| s@@11))) (= (|Seq#Index_5| (|Seq#Take_3969| s@@11 n@@9) j@@3) (|Seq#Index_5| s@@11 j@@3)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5| (|Seq#Take_3969| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5| s@@11 j@@3) (|Seq#Take_3969| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_3364| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_3364| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_3364| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_3969) (t T@Seq_3969) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_3969| s@@13))) (< n@@11 (|Seq#Length_3969| (|Seq#Append_5| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_3969| s@@13)) (|Seq#Length_3969| s@@13)) n@@11) (= (|Seq#Take_3969| (|Seq#Append_5| s@@13 t) n@@11) (|Seq#Append_5| s@@13 (|Seq#Take_3969| t (|Seq#Sub| n@@11 (|Seq#Length_3969| s@@13)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3969| (|Seq#Append_5| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_3| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_3364| (|Seq#Append_3| s@@14 t@@0) n@@12) (|Seq#Append_3| s@@14 (|Seq#Take_3364| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3364| (|Seq#Append_3| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9914) (ExhaleHeap@@1 T@PolymorphicMapType_9914) (Mask@@3 T@PolymorphicMapType_9935) (pm_f@@1 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_9974_26584 Mask@@3 null pm_f@@1) (IsPredicateField_9974_26611 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9974_53) ) (!  (=> (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@4) o2 f_2) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9987_9988) ) (!  (=> (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9974_26520) ) (!  (=> (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9974_26653) ) (!  (=> (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_9974_26611 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9914) (ExhaleHeap@@2 T@PolymorphicMapType_9914) (Mask@@4 T@PolymorphicMapType_9935) (pm_f@@2 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_9974_26584 Mask@@4 null pm_f@@2) (IsWandField_9974_28160 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9974_53) ) (!  (=> (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9987_9988) ) (!  (=> (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9974_26520) ) (!  (=> (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9974_26653) ) (!  (=> (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_9974_28160 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9914) (ExhaleHeap@@3 T@PolymorphicMapType_9914) (Mask@@5 T@PolymorphicMapType_9935) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_9974_26520) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9974_9974 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9974_9974 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3969) (s1 T@Seq_3969) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3969|)) (not (= s1 |Seq#Empty_3969|))) (<= (|Seq#Length_3969| s0) n@@13)) (< n@@13 (|Seq#Length_3969| (|Seq#Append_5| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_3969| s0)) (|Seq#Length_3969| s0)) n@@13) (= (|Seq#Index_5| (|Seq#Append_5| s0 s1) n@@13) (|Seq#Index_5| s1 (|Seq#Sub| n@@13 (|Seq#Length_3969| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5| (|Seq#Append_5| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3246|)) (not (= s1@@0 |Seq#Empty_3246|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9914) (ExhaleHeap@@4 T@PolymorphicMapType_9914) (Mask@@6 T@PolymorphicMapType_9935) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9935) (o_2@@3 T@Ref) (f_4@@3 T@Field_9974_26653) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9974_31123 f_4@@3))) (not (IsWandField_9974_31139 f_4@@3))) (<= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9935) (o_2@@4 T@Ref) (f_4@@4 T@Field_9974_26520) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9974_26611 f_4@@4))) (not (IsWandField_9974_28160 f_4@@4))) (<= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9935) (o_2@@5 T@Ref) (f_4@@5 T@Field_9987_9988) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9974_9988 f_4@@5))) (not (IsWandField_9974_9988 f_4@@5))) (<= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9935) (o_2@@6 T@Ref) (f_4@@6 T@Field_9974_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9974_53 f_4@@6))) (not (IsWandField_9974_53 f_4@@6))) (<= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9935) (o_2@@7 T@Ref) (f_4@@7 T@Field_9974_26653) ) (! (= (HasDirectPerm_9974_31494 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_31494 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9935) (o_2@@8 T@Ref) (f_4@@8 T@Field_9974_26520) ) (! (= (HasDirectPerm_9974_26584 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_26584 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9935) (o_2@@9 T@Ref) (f_4@@9 T@Field_9987_9988) ) (! (= (HasDirectPerm_9974_9988 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_9988 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9935) (o_2@@10 T@Ref) (f_4@@10 T@Field_9974_53) ) (! (= (HasDirectPerm_9974_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9914) (ExhaleHeap@@5 T@PolymorphicMapType_9914) (Mask@@15 T@PolymorphicMapType_9935) (o_1@@0 T@Ref) (f_2@@7 T@Field_9974_26653) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_9974_31494 Mask@@15 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9914) (ExhaleHeap@@6 T@PolymorphicMapType_9914) (Mask@@16 T@PolymorphicMapType_9935) (o_1@@1 T@Ref) (f_2@@8 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_9974_26584 Mask@@16 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9914) (ExhaleHeap@@7 T@PolymorphicMapType_9914) (Mask@@17 T@PolymorphicMapType_9935) (o_1@@2 T@Ref) (f_2@@9 T@Field_9987_9988) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_9974_9988 Mask@@17 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9914) (ExhaleHeap@@8 T@PolymorphicMapType_9914) (Mask@@18 T@PolymorphicMapType_9935) (o_1@@3 T@Ref) (f_2@@10 T@Field_9974_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_9974_53 Mask@@18 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@1 T@Seq_3969) (s1@@1 T@Seq_3969) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_3969|)) (not (= s1@@1 |Seq#Empty_3969|))) (= (|Seq#Length_3969| (|Seq#Append_5| s0@@1 s1@@1)) (+ (|Seq#Length_3969| s0@@1) (|Seq#Length_3969| s1@@1))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3969| (|Seq#Append_5| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3246|)) (not (= s1@@2 |Seq#Empty_3246|))) (= (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9974_26653) ) (! (= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9974_26520) ) (! (= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9987_9988) ) (! (= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9974_53) ) (! (= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_3969) (t@@1 T@Seq_3969) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_3969| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_3969| s@@15)) (|Seq#Length_3969| s@@15)) n@@15) (= (|Seq#Drop_3969| (|Seq#Append_5| s@@15 t@@1) n@@15) (|Seq#Drop_3969| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_3969| s@@15))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3969| (|Seq#Append_5| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_3364| (|Seq#Append_3| s@@16 t@@2) n@@16) (|Seq#Drop_3364| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3364| (|Seq#Append_3| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9935) (SummandMask1 T@PolymorphicMapType_9935) (SummandMask2 T@PolymorphicMapType_9935) (o_2@@15 T@Ref) (f_4@@15 T@Field_9974_26653) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9935) (SummandMask1@@0 T@PolymorphicMapType_9935) (SummandMask2@@0 T@PolymorphicMapType_9935) (o_2@@16 T@Ref) (f_4@@16 T@Field_9974_26520) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9935) (SummandMask1@@1 T@PolymorphicMapType_9935) (SummandMask2@@1 T@PolymorphicMapType_9935) (o_2@@17 T@Ref) (f_4@@17 T@Field_9987_9988) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9935) (SummandMask1@@2 T@PolymorphicMapType_9935) (SummandMask2@@2 T@PolymorphicMapType_9935) (o_2@@18 T@Ref) (f_4@@18 T@Field_9974_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3969) (b T@Seq_3969) ) (!  (=> (|Seq#Equal_3969| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3969| a b))
)))
(assert (forall ((a@@0 T@Seq_2867) (b@@0 T@Seq_2867) ) (!  (=> (|Seq#Equal_3208| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3208| a@@0 b@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9914) (Mask@@19 T@PolymorphicMapType_9935) (i@@5 Int) ) (!  (=> (state Heap@@12 Mask@@19) (= (|trivial'| Heap@@12 i@@5) (|trivial#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.567:15|
 :skolemid |61|
 :pattern ( (state Heap@@12 Mask@@19) (|trivial'| Heap@@12 i@@5))
)))
(assert (forall ((s@@17 T@Seq_3969) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3969| s@@17))) (|Seq#ContainsTrigger_3969| s@@17 (|Seq#Index_5| s@@17 i@@6)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@7)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_3969) (s1@@3 T@Seq_3969) ) (!  (and (=> (= s0@@3 |Seq#Empty_3969|) (= (|Seq#Append_5| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_3969|) (= (|Seq#Append_5| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_5| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_3246|) (= (|Seq#Append_3| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3246|) (= (|Seq#Append_3| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 Bool) ) (! (= (|Seq#Index_5| (|Seq#Singleton_5| t@@3) 0) t@@3)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3193| t@@4) 0) t@@4)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3193| t@@4))
)))
(assert (forall ((s@@19 T@Seq_3969) ) (! (<= 0 (|Seq#Length_3969| s@@19))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3969| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9914) (i@@8 Int) ) (!  (and (= (trivial Heap@@13 i@@8) (|trivial'| Heap@@13 i@@8)) (dummyFunction_3153 (|trivial#triggerStateless| i@@8)))
 :qid |stdinbpl.550:15|
 :skolemid |58|
 :pattern ( (trivial Heap@@13 i@@8))
)))
(assert (forall ((s0@@5 T@Seq_3969) (s1@@5 T@Seq_3969) ) (!  (=> (|Seq#Equal_3969| s0@@5 s1@@5) (and (= (|Seq#Length_3969| s0@@5) (|Seq#Length_3969| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3969| s0@@5))) (= (|Seq#Index_5| s0@@5 j@@6) (|Seq#Index_5| s1@@5 j@@6)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5| s1@@5 j@@6))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3969| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_3208| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3208| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 Bool) ) (! (= (|Seq#Length_3969| (|Seq#Singleton_5| t@@5)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3193| t@@6)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3193| t@@6))
)))
(assert (forall ((s@@21 T@Seq_3969) (t@@7 T@Seq_3969) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_3969| s@@21))) (= (|Seq#Take_3969| (|Seq#Append_5| s@@21 t@@7) n@@17) (|Seq#Take_3969| s@@21 n@@17)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3969| (|Seq#Append_5| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_3364| (|Seq#Append_3| s@@22 t@@8) n@@18) (|Seq#Take_3364| s@@22 n@@18)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3364| (|Seq#Append_3| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_3969) (i@@9 Int) (v@@2 Bool) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_3969| s@@23))) (= (|Seq#Length_3969| (|Seq#Update_3969| s@@23 i@@9 v@@2)) (|Seq#Length_3969| s@@23)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3969| (|Seq#Update_3969| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_3969| s@@23) (|Seq#Update_3969| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@10 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9914) (o T@Ref) (f_3 T@Field_9974_26520) (v@@4 T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@14) (store (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@14) o f_3 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@14) (store (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@14) o f_3 v@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9914) (o@@0 T@Ref) (f_3@@0 T@Field_9974_26653) (v@@5 T@PolymorphicMapType_10463) ) (! (succHeap Heap@@15 (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@15) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@15) (store (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@15) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@15) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@15) (store (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@15) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9914) (o@@1 T@Ref) (f_3@@1 T@Field_9987_9988) (v@@6 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@16) (store (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@16) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@16) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@16) (store (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@16) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@16) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9914) (o@@2 T@Ref) (f_3@@2 T@Field_9974_53) (v@@7 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_9914 (store (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@17) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (store (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@17) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_3969) (t@@9 T@Seq_3969) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_3969| s@@25))) (= (|Seq#Drop_3969| (|Seq#Append_5| s@@25 t@@9) n@@19) (|Seq#Append_5| (|Seq#Drop_3969| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3969| (|Seq#Append_5| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_3364| (|Seq#Append_3| s@@26 t@@10) n@@20) (|Seq#Append_3| (|Seq#Drop_3364| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3364| (|Seq#Append_3| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_3969) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_3969| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_5| (|Seq#Drop_3969| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_5| s@@27 i@@11))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3969| s@@27 n@@21) (|Seq#Index_5| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_2867| (|Seq#Drop_3364| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_2867| s@@28 i@@12))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3364| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_3969) (s1@@7 T@Seq_3969) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_3969|)) (not (= s1@@7 |Seq#Empty_3969|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_3969| s0@@7))) (= (|Seq#Index_5| (|Seq#Append_5| s0@@7 s1@@7) n@@23) (|Seq#Index_5| s0@@7 n@@23)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5| (|Seq#Append_5| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5| s0@@7 n@@23) (|Seq#Append_5| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3246|)) (not (= s1@@8 |Seq#Empty_3246|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_3| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_3969) (s1@@9 T@Seq_3969) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_3969|)) (not (= s1@@9 |Seq#Empty_3969|))) (<= 0 m)) (< m (|Seq#Length_3969| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3969| s0@@9)) (|Seq#Length_3969| s0@@9)) m) (= (|Seq#Index_5| (|Seq#Append_5| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_3969| s0@@9))) (|Seq#Index_5| s1@@9 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5| s1@@9 m) (|Seq#Append_5| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3246|)) (not (= s1@@10 |Seq#Empty_3246|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_3| s0@@10 s1@@10))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_9987_9988) (Heap@@18 T@PolymorphicMapType_9914) ) (!  (=> (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@18) o@@3 $allocated) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@18) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@18) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@18) o@@3 f))
)))
(assert (forall ((s@@29 T@Seq_3969) (x@@3 Bool) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3969| s@@29))) (= (|Seq#Index_5| s@@29 i@@13) x@@3)) (|Seq#Contains_3969| s@@29 x@@3))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3969| s@@29 x@@3) (|Seq#Index_5| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@14) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_3969) (s1@@11 T@Seq_3969) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_3969| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_3969| s0@@11 s1@@11))) (not (= (|Seq#Length_3969| s0@@11) (|Seq#Length_3969| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_3969| s0@@11 s1@@11))) (= (|Seq#Length_3969| s0@@11) (|Seq#Length_3969| s1@@11))) (= (|Seq#SkolemDiff_3969| s0@@11 s1@@11) (|Seq#SkolemDiff_3969| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_3969| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_3969| s0@@11 s1@@11) (|Seq#Length_3969| s0@@11))) (not (= (|Seq#Index_5| s0@@11 (|Seq#SkolemDiff_3969| s0@@11 s1@@11)) (|Seq#Index_5| s1@@11 (|Seq#SkolemDiff_3969| s0@@11 s1@@11))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3969| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3208| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3208| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3208| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3208| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9974_26520) (v_1@@0 T@FrameType) (q T@Field_9974_26520) (w@@0 T@FrameType) (r T@Field_9974_26520) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9974_9974 p@@1 v_1@@0 q w@@0) (InsidePredicate_9974_9974 q w@@0 r u)) (InsidePredicate_9974_9974 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9974_9974 p@@1 v_1@@0 q w@@0) (InsidePredicate_9974_9974 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_3969) ) (!  (=> (= (|Seq#Length_3969| s@@31) 0) (= s@@31 |Seq#Empty_3969|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3969| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_3246|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_3969) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_3969| s@@33 n@@25) |Seq#Empty_3969|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3969| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3364| s@@34 n@@26) |Seq#Empty_3246|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3364| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_9914)
(declare-fun xs@0 () T@Seq_2867)
(declare-fun bs@0 () T@Seq_3969)
(set-info :boogie-vc-id test3)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (= xs@0 (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Append_3| (|Seq#Singleton_3193| 0) (|Seq#Singleton_3193| 1)) (|Seq#Singleton_3193| 2)) (|Seq#Singleton_3193| 3)) (|Seq#Singleton_3193| 4)) (|Seq#Singleton_3193| 5)) (|Seq#Singleton_3193| 6)) (|Seq#Singleton_3193| 7))) (state Heap@@19 ZeroMask)) (and (= bs@0 (|Seq#Append_5| (|Seq#Append_5| (|Seq#Append_5| (|Seq#Append_5| (|Seq#Singleton_5| true) (|Seq#Singleton_5| true)) (|Seq#Singleton_5| false)) (|Seq#Singleton_5| true)) (|Seq#Append_5| (|Seq#Singleton_5| false) (|Seq#Singleton_5| true)))) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (|Seq#Length_2867| (|Seq#Take_3364| (|Seq#Drop_3364| xs@0 1) 6)) (|Seq#Length_3969| bs@0))) (=> (= (|Seq#Length_2867| (|Seq#Take_3364| (|Seq#Drop_3364| xs@0 1) 6)) (|Seq#Length_3969| bs@0)) (=> (and (state Heap@@19 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (|Seq#Length_2867| (|Seq#Drop_3364| xs@0 1)) (|Seq#Length_2867| xs@0))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 4) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_9974_53 0)
(declare-sort T@Field_9987_9988 0)
(declare-sort T@Field_9974_26653 0)
(declare-sort T@Field_9974_26520 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9935 0)) (((PolymorphicMapType_9935 (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| (Array T@Ref T@Field_9974_53 Real)) (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| (Array T@Ref T@Field_9987_9988 Real)) (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| (Array T@Ref T@Field_9974_26520 Real)) (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| (Array T@Ref T@Field_9974_26653 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10463 0)) (((PolymorphicMapType_10463 (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| (Array T@Ref T@Field_9974_53 Bool)) (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| (Array T@Ref T@Field_9987_9988 Bool)) (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| (Array T@Ref T@Field_9974_26520 Bool)) (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| (Array T@Ref T@Field_9974_26653 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9914 0)) (((PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| (Array T@Ref T@Field_9974_53 Bool)) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| (Array T@Ref T@Field_9987_9988 T@Ref)) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| (Array T@Ref T@Field_9974_26653 T@PolymorphicMapType_10463)) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| (Array T@Ref T@Field_9974_26520 T@FrameType)) ) ) ))
(declare-sort T@Seq_3969 0)
(declare-fun |Seq#Length_3969| (T@Seq_3969) Int)
(declare-fun |Seq#Drop_3969| (T@Seq_3969 Int) T@Seq_3969)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_3364| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_9914 T@PolymorphicMapType_9914) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9914 T@PolymorphicMapType_9914) Bool)
(declare-fun state (T@PolymorphicMapType_9914 T@PolymorphicMapType_9935) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9935) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10463)
(declare-fun |Seq#Index_5| (T@Seq_3969 Int) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_3969| () T@Seq_3969)
(declare-fun |Seq#Empty_3246| () T@Seq_2867)
(declare-fun |trivial'| (T@PolymorphicMapType_9914 Int) Bool)
(declare-fun dummyFunction_3153 (Bool) Bool)
(declare-fun |trivial#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_3969| (T@Seq_3969 Int Bool) T@Seq_3969)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_3969| (T@Seq_3969 Int) T@Seq_3969)
(declare-fun |Seq#Take_3364| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_3969| (T@Seq_3969 Bool) Bool)
(declare-fun |Seq#Skolem_3969| (T@Seq_3969 Bool) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9914 T@PolymorphicMapType_9914 T@PolymorphicMapType_9935) Bool)
(declare-fun IsPredicateField_9974_26611 (T@Field_9974_26520) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9974 (T@Field_9974_26520) T@Field_9974_26653)
(declare-fun HasDirectPerm_9974_26584 (T@PolymorphicMapType_9935 T@Ref T@Field_9974_26520) Bool)
(declare-fun IsWandField_9974_28160 (T@Field_9974_26520) Bool)
(declare-fun WandMaskField_9974 (T@Field_9974_26520) T@Field_9974_26653)
(declare-fun |Seq#Singleton_5| (Bool) T@Seq_3969)
(declare-fun |Seq#Singleton_3193| (Int) T@Seq_2867)
(declare-fun trivial (T@PolymorphicMapType_9914 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_5| (T@Seq_3969 T@Seq_3969) T@Seq_3969)
(declare-fun |Seq#Append_3| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_9914)
(declare-fun ZeroMask () T@PolymorphicMapType_9935)
(declare-fun $allocated () T@Field_9974_53)
(declare-fun InsidePredicate_9974_9974 (T@Field_9974_26520 T@FrameType T@Field_9974_26520 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9974_31123 (T@Field_9974_26653) Bool)
(declare-fun IsWandField_9974_31139 (T@Field_9974_26653) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9974_9988 (T@Field_9987_9988) Bool)
(declare-fun IsWandField_9974_9988 (T@Field_9987_9988) Bool)
(declare-fun IsPredicateField_9974_53 (T@Field_9974_53) Bool)
(declare-fun IsWandField_9974_53 (T@Field_9974_53) Bool)
(declare-fun HasDirectPerm_9974_31494 (T@PolymorphicMapType_9935 T@Ref T@Field_9974_26653) Bool)
(declare-fun HasDirectPerm_9974_9988 (T@PolymorphicMapType_9935 T@Ref T@Field_9987_9988) Bool)
(declare-fun HasDirectPerm_9974_53 (T@PolymorphicMapType_9935 T@Ref T@Field_9974_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9935 T@PolymorphicMapType_9935 T@PolymorphicMapType_9935) Bool)
(declare-fun |Seq#Equal_3969| (T@Seq_3969 T@Seq_3969) Bool)
(declare-fun |Seq#Equal_3208| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |trivial#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_3969| (T@Seq_3969 Bool) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#SkolemDiff_3969| (T@Seq_3969 T@Seq_3969) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_3969) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3969| s)) (= (|Seq#Length_3969| (|Seq#Drop_3969| s n)) (- (|Seq#Length_3969| s) n))) (=> (< (|Seq#Length_3969| s) n) (= (|Seq#Length_3969| (|Seq#Drop_3969| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3969| (|Seq#Drop_3969| s n)) (|Seq#Length_3969| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3969| (|Seq#Drop_3969| s n)))
 :pattern ( (|Seq#Length_3969| s) (|Seq#Drop_3969| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_3364| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_3364| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9914) (Heap1 T@PolymorphicMapType_9914) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9914) (Mask T@PolymorphicMapType_9935) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9914) (Heap1@@0 T@PolymorphicMapType_9914) (Heap2 T@PolymorphicMapType_9914) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9974_26653) ) (!  (not (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9974_26520) ) (!  (not (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9987_9988) ) (!  (not (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9974_53) ) (!  (not (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@1 T@Seq_3969) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_3969| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5| (|Seq#Drop_3969| s@@1 n@@1) j) (|Seq#Index_5| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5| (|Seq#Drop_3969| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_3364| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_3364| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_3969| |Seq#Empty_3969|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_3246|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9914) (i Int) ) (! (dummyFunction_3153 (|trivial#triggerStateless| i))
 :qid |stdinbpl.554:15|
 :skolemid |59|
 :pattern ( (|trivial'| Heap@@0 i))
)))
(assert (forall ((s@@3 T@Seq_3969) (i@@0 Int) (v Bool) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_3969| s@@3))) (and (=> (= i@@0 n@@3) (= (|Seq#Index_5| (|Seq#Update_3969| s@@3 i@@0 v) n@@3) v)) (=> (not (= i@@0 n@@3)) (= (|Seq#Index_5| (|Seq#Update_3969| s@@3 i@@0 v) n@@3) (|Seq#Index_5| s@@3 n@@3)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5| (|Seq#Update_3969| s@@3 i@@0 v) n@@3))
 :pattern ( (|Seq#Index_5| s@@3 n@@3) (|Seq#Update_3969| s@@3 i@@0 v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@1 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@1 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4) v@@0)) (=> (not (= i@@1 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@1 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@1 v@@0))
)))
(assert (forall ((s@@5 T@Seq_3969) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_3969| s@@5)) (= (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_3969| s@@5) n@@5) (= (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)) (|Seq#Length_3969| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3969| (|Seq#Take_3969| s@@5 n@@5)))
 :pattern ( (|Seq#Take_3969| s@@5 n@@5) (|Seq#Length_3969| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_3364| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3364| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_3969) (x Bool) ) (!  (=> (|Seq#Contains_3969| s@@7 x) (and (and (<= 0 (|Seq#Skolem_3969| s@@7 x)) (< (|Seq#Skolem_3969| s@@7 x) (|Seq#Length_3969| s@@7))) (= (|Seq#Index_5| s@@7 (|Seq#Skolem_3969| s@@7 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3969| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_3969) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_3969| s@@9 n@@7) s@@9))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3969| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3364| s@@10 n@@8) s@@10))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3364| s@@10 n@@8))
)))
(assert (forall ((i@@2 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@2 j@@1) (- i@@2 j@@1))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@2 j@@1))
)))
(assert (forall ((i@@3 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@3 j@@2) (+ i@@3 j@@2))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@3 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9914) (ExhaleHeap T@PolymorphicMapType_9914) (Mask@@0 T@PolymorphicMapType_9935) (pm_f T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9974_26584 Mask@@0 null pm_f) (IsPredicateField_9974_26611 pm_f)) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@1) null (PredicateMaskField_9974 pm_f)) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap) null (PredicateMaskField_9974 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_9974_26611 pm_f) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap) null (PredicateMaskField_9974 pm_f)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9914) (ExhaleHeap@@0 T@PolymorphicMapType_9914) (Mask@@1 T@PolymorphicMapType_9935) (pm_f@@0 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9974_26584 Mask@@1 null pm_f@@0) (IsWandField_9974_28160 pm_f@@0)) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@2) null (WandMaskField_9974 pm_f@@0)) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@0) null (WandMaskField_9974 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_9974_28160 pm_f@@0) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@0) null (WandMaskField_9974 pm_f@@0)))
)))
(assert (forall ((x@@1 Bool) (y Bool) ) (! (= (|Seq#Contains_3969| (|Seq#Singleton_5| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3969| (|Seq#Singleton_5| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3193| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3193| x@@2) y@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9914) (Mask@@2 T@PolymorphicMapType_9935) (i@@4 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (trivial Heap@@3 i@@4))
 :qid |stdinbpl.560:15|
 :skolemid |60|
 :pattern ( (state Heap@@3 Mask@@2) (trivial Heap@@3 i@@4))
)))
(assert (forall ((s@@11 T@Seq_3969) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_3969| s@@11))) (= (|Seq#Index_5| (|Seq#Take_3969| s@@11 n@@9) j@@3) (|Seq#Index_5| s@@11 j@@3)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5| (|Seq#Take_3969| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5| s@@11 j@@3) (|Seq#Take_3969| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_3364| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_3364| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_3364| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_3969) (t T@Seq_3969) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_3969| s@@13))) (< n@@11 (|Seq#Length_3969| (|Seq#Append_5| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_3969| s@@13)) (|Seq#Length_3969| s@@13)) n@@11) (= (|Seq#Take_3969| (|Seq#Append_5| s@@13 t) n@@11) (|Seq#Append_5| s@@13 (|Seq#Take_3969| t (|Seq#Sub| n@@11 (|Seq#Length_3969| s@@13)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3969| (|Seq#Append_5| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_3| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_3364| (|Seq#Append_3| s@@14 t@@0) n@@12) (|Seq#Append_3| s@@14 (|Seq#Take_3364| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3364| (|Seq#Append_3| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9914) (ExhaleHeap@@1 T@PolymorphicMapType_9914) (Mask@@3 T@PolymorphicMapType_9935) (pm_f@@1 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_9974_26584 Mask@@3 null pm_f@@1) (IsPredicateField_9974_26611 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9974_53) ) (!  (=> (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@4) o2 f_2) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9987_9988) ) (!  (=> (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9974_26520) ) (!  (=> (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9974_26653) ) (!  (=> (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) null (PredicateMaskField_9974 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (IsPredicateField_9974_26611 pm_f@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9914) (ExhaleHeap@@2 T@PolymorphicMapType_9914) (Mask@@4 T@PolymorphicMapType_9935) (pm_f@@2 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_9974_26584 Mask@@4 null pm_f@@2) (IsWandField_9974_28160 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9974_53) ) (!  (=> (select (|PolymorphicMapType_10463_9974_53#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9987_9988) ) (!  (=> (select (|PolymorphicMapType_10463_9974_9988#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9974_26520) ) (!  (=> (select (|PolymorphicMapType_10463_9974_26520#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9974_26653) ) (!  (=> (select (|PolymorphicMapType_10463_9974_27633#PolymorphicMapType_10463| (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) null (WandMaskField_9974 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (IsWandField_9974_28160 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9914) (ExhaleHeap@@3 T@PolymorphicMapType_9914) (Mask@@5 T@PolymorphicMapType_9935) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_9974_26520) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9974_9974 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9974_9974 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3969) (s1 T@Seq_3969) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3969|)) (not (= s1 |Seq#Empty_3969|))) (<= (|Seq#Length_3969| s0) n@@13)) (< n@@13 (|Seq#Length_3969| (|Seq#Append_5| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_3969| s0)) (|Seq#Length_3969| s0)) n@@13) (= (|Seq#Index_5| (|Seq#Append_5| s0 s1) n@@13) (|Seq#Index_5| s1 (|Seq#Sub| n@@13 (|Seq#Length_3969| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5| (|Seq#Append_5| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3246|)) (not (= s1@@0 |Seq#Empty_3246|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9914) (ExhaleHeap@@4 T@PolymorphicMapType_9914) (Mask@@6 T@PolymorphicMapType_9935) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9935) (o_2@@3 T@Ref) (f_4@@3 T@Field_9974_26653) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@7) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9974_31123 f_4@@3))) (not (IsWandField_9974_31139 f_4@@3))) (<= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@7) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@7) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9935) (o_2@@4 T@Ref) (f_4@@4 T@Field_9974_26520) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9974_26611 f_4@@4))) (not (IsWandField_9974_28160 f_4@@4))) (<= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9935) (o_2@@5 T@Ref) (f_4@@5 T@Field_9987_9988) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9974_9988 f_4@@5))) (not (IsWandField_9974_9988 f_4@@5))) (<= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9935) (o_2@@6 T@Ref) (f_4@@6 T@Field_9974_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9974_53 f_4@@6))) (not (IsWandField_9974_53 f_4@@6))) (<= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9935) (o_2@@7 T@Ref) (f_4@@7 T@Field_9974_26653) ) (! (= (HasDirectPerm_9974_31494 Mask@@11 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| Mask@@11) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_31494 Mask@@11 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9935) (o_2@@8 T@Ref) (f_4@@8 T@Field_9974_26520) ) (! (= (HasDirectPerm_9974_26584 Mask@@12 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| Mask@@12) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_26584 Mask@@12 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9935) (o_2@@9 T@Ref) (f_4@@9 T@Field_9987_9988) ) (! (= (HasDirectPerm_9974_9988 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_9988 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9935) (o_2@@10 T@Ref) (f_4@@10 T@Field_9974_53) ) (! (= (HasDirectPerm_9974_53 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9974_53 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9914) (ExhaleHeap@@5 T@PolymorphicMapType_9914) (Mask@@15 T@PolymorphicMapType_9935) (o_1@@0 T@Ref) (f_2@@7 T@Field_9974_26653) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (=> (HasDirectPerm_9974_31494 Mask@@15 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@8) o_1@@0 f_2@@7) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@15) (select (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9914) (ExhaleHeap@@6 T@PolymorphicMapType_9914) (Mask@@16 T@PolymorphicMapType_9935) (o_1@@1 T@Ref) (f_2@@8 T@Field_9974_26520) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (=> (HasDirectPerm_9974_26584 Mask@@16 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@9) o_1@@1 f_2@@8) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@16) (select (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9914) (ExhaleHeap@@7 T@PolymorphicMapType_9914) (Mask@@17 T@PolymorphicMapType_9935) (o_1@@2 T@Ref) (f_2@@9 T@Field_9987_9988) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (=> (HasDirectPerm_9974_9988 Mask@@17 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@10) o_1@@2 f_2@@9) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@17) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9914) (ExhaleHeap@@8 T@PolymorphicMapType_9914) (Mask@@18 T@PolymorphicMapType_9935) (o_1@@3 T@Ref) (f_2@@10 T@Field_9974_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (=> (HasDirectPerm_9974_53 Mask@@18 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@11) o_1@@3 f_2@@10) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@18) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@1 T@Seq_3969) (s1@@1 T@Seq_3969) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_3969|)) (not (= s1@@1 |Seq#Empty_3969|))) (= (|Seq#Length_3969| (|Seq#Append_5| s0@@1 s1@@1)) (+ (|Seq#Length_3969| s0@@1) (|Seq#Length_3969| s1@@1))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3969| (|Seq#Append_5| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3246|)) (not (= s1@@2 |Seq#Empty_3246|))) (= (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9974_26653) ) (! (= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9974_26520) ) (! (= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9987_9988) ) (! (= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9974_53) ) (! (= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_3969) (t@@1 T@Seq_3969) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_3969| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_3969| s@@15)) (|Seq#Length_3969| s@@15)) n@@15) (= (|Seq#Drop_3969| (|Seq#Append_5| s@@15 t@@1) n@@15) (|Seq#Drop_3969| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_3969| s@@15))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3969| (|Seq#Append_5| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_3364| (|Seq#Append_3| s@@16 t@@2) n@@16) (|Seq#Drop_3364| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3364| (|Seq#Append_3| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9935) (SummandMask1 T@PolymorphicMapType_9935) (SummandMask2 T@PolymorphicMapType_9935) (o_2@@15 T@Ref) (f_4@@15 T@Field_9974_26653) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9935_9974_30214#PolymorphicMapType_9935| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9935) (SummandMask1@@0 T@PolymorphicMapType_9935) (SummandMask2@@0 T@PolymorphicMapType_9935) (o_2@@16 T@Ref) (f_4@@16 T@Field_9974_26520) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9935_9974_26520#PolymorphicMapType_9935| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9935) (SummandMask1@@1 T@PolymorphicMapType_9935) (SummandMask2@@1 T@PolymorphicMapType_9935) (o_2@@17 T@Ref) (f_4@@17 T@Field_9987_9988) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9935_9974_9988#PolymorphicMapType_9935| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9935) (SummandMask1@@2 T@PolymorphicMapType_9935) (SummandMask2@@2 T@PolymorphicMapType_9935) (o_2@@18 T@Ref) (f_4@@18 T@Field_9974_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9935_9974_53#PolymorphicMapType_9935| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3969) (b T@Seq_3969) ) (!  (=> (|Seq#Equal_3969| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3969| a b))
)))
(assert (forall ((a@@0 T@Seq_2867) (b@@0 T@Seq_2867) ) (!  (=> (|Seq#Equal_3208| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3208| a@@0 b@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9914) (Mask@@19 T@PolymorphicMapType_9935) (i@@5 Int) ) (!  (=> (state Heap@@12 Mask@@19) (= (|trivial'| Heap@@12 i@@5) (|trivial#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.567:15|
 :skolemid |61|
 :pattern ( (state Heap@@12 Mask@@19) (|trivial'| Heap@@12 i@@5))
)))
(assert (forall ((s@@17 T@Seq_3969) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3969| s@@17))) (|Seq#ContainsTrigger_3969| s@@17 (|Seq#Index_5| s@@17 i@@6)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5| s@@17 i@@6))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@7)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@7))
)))
(assert (forall ((s0@@3 T@Seq_3969) (s1@@3 T@Seq_3969) ) (!  (and (=> (= s0@@3 |Seq#Empty_3969|) (= (|Seq#Append_5| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_3969|) (= (|Seq#Append_5| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_5| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_3246|) (= (|Seq#Append_3| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3246|) (= (|Seq#Append_3| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 Bool) ) (! (= (|Seq#Index_5| (|Seq#Singleton_5| t@@3) 0) t@@3)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3193| t@@4) 0) t@@4)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3193| t@@4))
)))
(assert (forall ((s@@19 T@Seq_3969) ) (! (<= 0 (|Seq#Length_3969| s@@19))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3969| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9914) (i@@8 Int) ) (!  (and (= (trivial Heap@@13 i@@8) (|trivial'| Heap@@13 i@@8)) (dummyFunction_3153 (|trivial#triggerStateless| i@@8)))
 :qid |stdinbpl.550:15|
 :skolemid |58|
 :pattern ( (trivial Heap@@13 i@@8))
)))
(assert (forall ((s0@@5 T@Seq_3969) (s1@@5 T@Seq_3969) ) (!  (=> (|Seq#Equal_3969| s0@@5 s1@@5) (and (= (|Seq#Length_3969| s0@@5) (|Seq#Length_3969| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3969| s0@@5))) (= (|Seq#Index_5| s0@@5 j@@6) (|Seq#Index_5| s1@@5 j@@6)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5| s1@@5 j@@6))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3969| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_3208| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3208| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 Bool) ) (! (= (|Seq#Length_3969| (|Seq#Singleton_5| t@@5)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3193| t@@6)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3193| t@@6))
)))
(assert (forall ((s@@21 T@Seq_3969) (t@@7 T@Seq_3969) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_3969| s@@21))) (= (|Seq#Take_3969| (|Seq#Append_5| s@@21 t@@7) n@@17) (|Seq#Take_3969| s@@21 n@@17)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3969| (|Seq#Append_5| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_3364| (|Seq#Append_3| s@@22 t@@8) n@@18) (|Seq#Take_3364| s@@22 n@@18)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3364| (|Seq#Append_3| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_3969) (i@@9 Int) (v@@2 Bool) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_3969| s@@23))) (= (|Seq#Length_3969| (|Seq#Update_3969| s@@23 i@@9 v@@2)) (|Seq#Length_3969| s@@23)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3969| (|Seq#Update_3969| s@@23 i@@9 v@@2)))
 :pattern ( (|Seq#Length_3969| s@@23) (|Seq#Update_3969| s@@23 i@@9 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@10 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@10 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@10 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@10 v@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9914) (o T@Ref) (f_3 T@Field_9974_26520) (v@@4 T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@14) (store (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@14) o f_3 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@14) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@14) (store (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@14) o f_3 v@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9914) (o@@0 T@Ref) (f_3@@0 T@Field_9974_26653) (v@@5 T@PolymorphicMapType_10463) ) (! (succHeap Heap@@15 (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@15) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@15) (store (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@15) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@15) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@15) (store (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@15) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9914) (o@@1 T@Ref) (f_3@@1 T@Field_9987_9988) (v@@6 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@16) (store (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@16) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@16) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@16) (store (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@16) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@16) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9914) (o@@2 T@Ref) (f_3@@2 T@Field_9974_53) (v@@7 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_9914 (store (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@17) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9914 (store (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@17) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26697#PolymorphicMapType_9914| Heap@@17) (|PolymorphicMapType_9914_9974_26520#PolymorphicMapType_9914| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_3969) (t@@9 T@Seq_3969) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_3969| s@@25))) (= (|Seq#Drop_3969| (|Seq#Append_5| s@@25 t@@9) n@@19) (|Seq#Append_5| (|Seq#Drop_3969| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3969| (|Seq#Append_5| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_3364| (|Seq#Append_3| s@@26 t@@10) n@@20) (|Seq#Append_3| (|Seq#Drop_3364| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3364| (|Seq#Append_3| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_3969) (n@@21 Int) (i@@11 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@11)) (< i@@11 (|Seq#Length_3969| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@11 n@@21) n@@21) i@@11) (= (|Seq#Index_5| (|Seq#Drop_3969| s@@27 n@@21) (|Seq#Sub| i@@11 n@@21)) (|Seq#Index_5| s@@27 i@@11))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3969| s@@27 n@@21) (|Seq#Index_5| s@@27 i@@11))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@12 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@12)) (< i@@12 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@12 n@@22) n@@22) i@@12) (= (|Seq#Index_2867| (|Seq#Drop_3364| s@@28 n@@22) (|Seq#Sub| i@@12 n@@22)) (|Seq#Index_2867| s@@28 i@@12))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3364| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@12))
)))
(assert (forall ((s0@@7 T@Seq_3969) (s1@@7 T@Seq_3969) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_3969|)) (not (= s1@@7 |Seq#Empty_3969|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_3969| s0@@7))) (= (|Seq#Index_5| (|Seq#Append_5| s0@@7 s1@@7) n@@23) (|Seq#Index_5| s0@@7 n@@23)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5| (|Seq#Append_5| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5| s0@@7 n@@23) (|Seq#Append_5| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3246|)) (not (= s1@@8 |Seq#Empty_3246|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_3| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_3969) (s1@@9 T@Seq_3969) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_3969|)) (not (= s1@@9 |Seq#Empty_3969|))) (<= 0 m)) (< m (|Seq#Length_3969| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3969| s0@@9)) (|Seq#Length_3969| s0@@9)) m) (= (|Seq#Index_5| (|Seq#Append_5| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_3969| s0@@9))) (|Seq#Index_5| s1@@9 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5| s1@@9 m) (|Seq#Append_5| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3246|)) (not (= s1@@10 |Seq#Empty_3246|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_3| s0@@10 s1@@10))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_9987_9988) (Heap@@18 T@PolymorphicMapType_9914) ) (!  (=> (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@18) o@@3 $allocated) (select (|PolymorphicMapType_9914_5433_53#PolymorphicMapType_9914| Heap@@18) (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@18) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9914_5436_5437#PolymorphicMapType_9914| Heap@@18) o@@3 f))
)))
(assert (forall ((s@@29 T@Seq_3969) (x@@3 Bool) (i@@13 Int) ) (!  (=> (and (and (<= 0 i@@13) (< i@@13 (|Seq#Length_3969| s@@29))) (= (|Seq#Index_5| s@@29 i@@13) x@@3)) (|Seq#Contains_3969| s@@29 x@@3))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3969| s@@29 x@@3) (|Seq#Index_5| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@14 Int) ) (!  (=> (and (and (<= 0 i@@14) (< i@@14 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@14) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@14))
)))
(assert (forall ((s0@@11 T@Seq_3969) (s1@@11 T@Seq_3969) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_3969| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_3969| s0@@11 s1@@11))) (not (= (|Seq#Length_3969| s0@@11) (|Seq#Length_3969| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_3969| s0@@11 s1@@11))) (= (|Seq#Length_3969| s0@@11) (|Seq#Length_3969| s1@@11))) (= (|Seq#SkolemDiff_3969| s0@@11 s1@@11) (|Seq#SkolemDiff_3969| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_3969| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_3969| s0@@11 s1@@11) (|Seq#Length_3969| s0@@11))) (not (= (|Seq#Index_5| s0@@11 (|Seq#SkolemDiff_3969| s0@@11 s1@@11)) (|Seq#Index_5| s1@@11 (|Seq#SkolemDiff_3969| s0@@11 s1@@11))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3969| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3208| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3208| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3208| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3208| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9974_26520) (v_1@@0 T@FrameType) (q T@Field_9974_26520) (w@@0 T@FrameType) (r T@Field_9974_26520) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9974_9974 p@@1 v_1@@0 q w@@0) (InsidePredicate_9974_9974 q w@@0 r u)) (InsidePredicate_9974_9974 p@@1 v_1@@0 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9974_9974 p@@1 v_1@@0 q w@@0) (InsidePredicate_9974_9974 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_3969) ) (!  (=> (= (|Seq#Length_3969| s@@31) 0) (= s@@31 |Seq#Empty_3969|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3969| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_3246|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_3969) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_3969| s@@33 n@@25) |Seq#Empty_3969|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3969| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3364| s@@34 n@@26) |Seq#Empty_3246|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3364| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

