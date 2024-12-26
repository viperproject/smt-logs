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
(declare-sort T@Field_31713_53 0)
(declare-sort T@Field_31726_31727 0)
(declare-sort T@Field_37786_3658 0)
(declare-sort T@Field_21682_93049 0)
(declare-sort T@Field_21682_92916 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_31674 0)) (((PolymorphicMapType_31674 (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| (Array T@Ref T@Field_37786_3658 Real)) (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| (Array T@Ref T@Field_31713_53 Real)) (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| (Array T@Ref T@Field_31726_31727 Real)) (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| (Array T@Ref T@Field_21682_92916 Real)) (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| (Array T@Ref T@Field_21682_93049 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_32202 0)) (((PolymorphicMapType_32202 (|PolymorphicMapType_32202_31713_53#PolymorphicMapType_32202| (Array T@Ref T@Field_31713_53 Bool)) (|PolymorphicMapType_32202_31713_31727#PolymorphicMapType_32202| (Array T@Ref T@Field_31726_31727 Bool)) (|PolymorphicMapType_32202_31713_3658#PolymorphicMapType_32202| (Array T@Ref T@Field_37786_3658 Bool)) (|PolymorphicMapType_32202_31713_92916#PolymorphicMapType_32202| (Array T@Ref T@Field_21682_92916 Bool)) (|PolymorphicMapType_32202_31713_94227#PolymorphicMapType_32202| (Array T@Ref T@Field_21682_93049 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_31653 0)) (((PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| (Array T@Ref T@Field_31713_53 Bool)) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| (Array T@Ref T@Field_31726_31727 T@Ref)) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| (Array T@Ref T@Field_37786_3658 Int)) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| (Array T@Ref T@Field_21682_93049 T@PolymorphicMapType_32202)) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| (Array T@Ref T@Field_21682_92916 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_31713_53)
(declare-fun f_7 () T@Field_37786_3658)
(declare-sort T@Seq_37831 0)
(declare-fun |Seq#Length_21687| (T@Seq_37831) Int)
(declare-fun |Seq#Drop_21687| (T@Seq_37831 Int) T@Seq_37831)
(declare-sort T@Seq_3536 0)
(declare-fun |Seq#Length_3536| (T@Seq_3536) Int)
(declare-fun |Seq#Drop_3536| (T@Seq_3536 Int) T@Seq_3536)
(declare-fun succHeap (T@PolymorphicMapType_31653 T@PolymorphicMapType_31653) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_31653 T@PolymorphicMapType_31653) Bool)
(declare-fun state (T@PolymorphicMapType_31653 T@PolymorphicMapType_31674) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_31674) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_32202)
(declare-fun |Seq#Index_21687| (T@Seq_37831 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3536| (T@Seq_3536 Int) Int)
(declare-fun |Seq#Empty_21687| () T@Seq_37831)
(declare-fun |Seq#Empty_3536| () T@Seq_3536)
(declare-fun |Seq#Update_21687| (T@Seq_37831 Int T@Ref) T@Seq_37831)
(declare-fun |Seq#Update_3536| (T@Seq_3536 Int Int) T@Seq_3536)
(declare-fun |Seq#Take_21687| (T@Seq_37831 Int) T@Seq_37831)
(declare-fun |Seq#Take_3536| (T@Seq_3536 Int) T@Seq_3536)
(declare-fun |Seq#Contains_3536| (T@Seq_3536 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3536)
(declare-fun |Seq#Contains_37831| (T@Seq_37831 T@Ref) Bool)
(declare-fun |Seq#Skolem_37831| (T@Seq_37831 T@Ref) Int)
(declare-fun |Seq#Skolem_3536| (T@Seq_3536 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_31653 T@PolymorphicMapType_31653 T@PolymorphicMapType_31674) Bool)
(declare-fun IsPredicateField_21682_93007 (T@Field_21682_92916) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_21682 (T@Field_21682_92916) T@Field_21682_93049)
(declare-fun HasDirectPerm_21682_92980 (T@PolymorphicMapType_31674 T@Ref T@Field_21682_92916) Bool)
(declare-fun IsWandField_21682_94754 (T@Field_21682_92916) Bool)
(declare-fun WandMaskField_21682 (T@Field_21682_92916) T@Field_21682_93049)
(declare-fun |Seq#Singleton_21687| (T@Ref) T@Seq_37831)
(declare-fun |Seq#Singleton_3536| (Int) T@Seq_3536)
(declare-fun |Seq#Append_37831| (T@Seq_37831 T@Seq_37831) T@Seq_37831)
(declare-fun |Seq#Append_3536| (T@Seq_3536 T@Seq_3536) T@Seq_3536)
(declare-fun dummyHeap () T@PolymorphicMapType_31653)
(declare-fun ZeroMask () T@PolymorphicMapType_31674)
(declare-fun InsidePredicate_31713_31713 (T@Field_21682_92916 T@FrameType T@Field_21682_92916 T@FrameType) Bool)
(declare-fun IsPredicateField_21682_3658 (T@Field_37786_3658) Bool)
(declare-fun IsWandField_21682_3658 (T@Field_37786_3658) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_21682_98300 (T@Field_21682_93049) Bool)
(declare-fun IsWandField_21682_98316 (T@Field_21682_93049) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_21682_31727 (T@Field_31726_31727) Bool)
(declare-fun IsWandField_21682_31727 (T@Field_31726_31727) Bool)
(declare-fun IsPredicateField_21682_53 (T@Field_31713_53) Bool)
(declare-fun IsWandField_21682_53 (T@Field_31713_53) Bool)
(declare-fun HasDirectPerm_21682_98754 (T@PolymorphicMapType_31674 T@Ref T@Field_21682_93049) Bool)
(declare-fun HasDirectPerm_21682_31727 (T@PolymorphicMapType_31674 T@Ref T@Field_31726_31727) Bool)
(declare-fun HasDirectPerm_21682_53 (T@PolymorphicMapType_31674 T@Ref T@Field_31713_53) Bool)
(declare-fun HasDirectPerm_21682_3658 (T@PolymorphicMapType_31674 T@Ref T@Field_37786_3658) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_31674 T@PolymorphicMapType_31674 T@PolymorphicMapType_31674) Bool)
(declare-fun |Seq#Equal_37831| (T@Seq_37831 T@Seq_37831) Bool)
(declare-fun |Seq#Equal_3536| (T@Seq_3536 T@Seq_3536) Bool)
(declare-fun |Seq#ContainsTrigger_21687| (T@Seq_37831 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3536| (T@Seq_3536 Int) Bool)
(declare-fun |Seq#SkolemDiff_37831| (T@Seq_37831 T@Seq_37831) Int)
(declare-fun |Seq#SkolemDiff_3536| (T@Seq_3536 T@Seq_3536) Int)
(assert (forall ((s T@Seq_37831) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_21687| s)) (= (|Seq#Length_21687| (|Seq#Drop_21687| s n)) (- (|Seq#Length_21687| s) n))) (=> (< (|Seq#Length_21687| s) n) (= (|Seq#Length_21687| (|Seq#Drop_21687| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_21687| (|Seq#Drop_21687| s n)) (|Seq#Length_21687| s))))
 :qid |stdinbpl.369:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_21687| (|Seq#Drop_21687| s n)))
 :pattern ( (|Seq#Length_21687| s) (|Seq#Drop_21687| s n))
)))
(assert (forall ((s@@0 T@Seq_3536) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3536| s@@0)) (= (|Seq#Length_3536| (|Seq#Drop_3536| s@@0 n@@0)) (- (|Seq#Length_3536| s@@0) n@@0))) (=> (< (|Seq#Length_3536| s@@0) n@@0) (= (|Seq#Length_3536| (|Seq#Drop_3536| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3536| (|Seq#Drop_3536| s@@0 n@@0)) (|Seq#Length_3536| s@@0))))
 :qid |stdinbpl.369:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3536| (|Seq#Drop_3536| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3536| s@@0) (|Seq#Drop_3536| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_31653) (Heap1 T@PolymorphicMapType_31653) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_31653) (Mask T@PolymorphicMapType_31674) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_31653) (Heap1@@0 T@PolymorphicMapType_31653) (Heap2 T@PolymorphicMapType_31653) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_21682_93049) ) (!  (not (select (|PolymorphicMapType_32202_31713_94227#PolymorphicMapType_32202| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_32202_31713_94227#PolymorphicMapType_32202| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21682_92916) ) (!  (not (select (|PolymorphicMapType_32202_31713_92916#PolymorphicMapType_32202| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_32202_31713_92916#PolymorphicMapType_32202| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_37786_3658) ) (!  (not (select (|PolymorphicMapType_32202_31713_3658#PolymorphicMapType_32202| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_32202_31713_3658#PolymorphicMapType_32202| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_31726_31727) ) (!  (not (select (|PolymorphicMapType_32202_31713_31727#PolymorphicMapType_32202| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_32202_31713_31727#PolymorphicMapType_32202| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_31713_53) ) (!  (not (select (|PolymorphicMapType_32202_31713_53#PolymorphicMapType_32202| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_32202_31713_53#PolymorphicMapType_32202| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_37831) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_21687| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_21687| (|Seq#Drop_21687| s@@1 n@@1) j) (|Seq#Index_21687| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.390:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_21687| (|Seq#Drop_21687| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3536) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3536| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3536| (|Seq#Drop_3536| s@@2 n@@2) j@@0) (|Seq#Index_3536| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.390:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3536| (|Seq#Drop_3536| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_21687| |Seq#Empty_21687|) 0))
(assert (= (|Seq#Length_3536| |Seq#Empty_3536|) 0))
(assert (forall ((s@@3 T@Seq_37831) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_21687| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_21687| (|Seq#Update_21687| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_21687| (|Seq#Update_21687| s@@3 i v) n@@3) (|Seq#Index_21687| s@@3 n@@3)))))
 :qid |stdinbpl.345:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_21687| (|Seq#Update_21687| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_21687| s@@3 n@@3) (|Seq#Update_21687| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3536) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3536| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3536| (|Seq#Update_3536| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3536| (|Seq#Update_3536| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3536| s@@4 n@@4)))))
 :qid |stdinbpl.345:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3536| (|Seq#Update_3536| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3536| s@@4 n@@4) (|Seq#Update_3536| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_37831) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_21687| s@@5)) (= (|Seq#Length_21687| (|Seq#Take_21687| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_21687| s@@5) n@@5) (= (|Seq#Length_21687| (|Seq#Take_21687| s@@5 n@@5)) (|Seq#Length_21687| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_21687| (|Seq#Take_21687| s@@5 n@@5)) 0)))
 :qid |stdinbpl.356:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_21687| (|Seq#Take_21687| s@@5 n@@5)))
 :pattern ( (|Seq#Take_21687| s@@5 n@@5) (|Seq#Length_21687| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3536) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3536| s@@6)) (= (|Seq#Length_3536| (|Seq#Take_3536| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3536| s@@6) n@@6) (= (|Seq#Length_3536| (|Seq#Take_3536| s@@6 n@@6)) (|Seq#Length_3536| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3536| (|Seq#Take_3536| s@@6 n@@6)) 0)))
 :qid |stdinbpl.356:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3536| (|Seq#Take_3536| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3536| s@@6 n@@6) (|Seq#Length_3536| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3536| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.630:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_37831) (x T@Ref) ) (!  (=> (|Seq#Contains_37831| s@@7 x) (and (and (<= 0 (|Seq#Skolem_37831| s@@7 x)) (< (|Seq#Skolem_37831| s@@7 x) (|Seq#Length_21687| s@@7))) (= (|Seq#Index_21687| s@@7 (|Seq#Skolem_37831| s@@7 x)) x)))
 :qid |stdinbpl.488:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_37831| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3536) (x@@0 Int) ) (!  (=> (|Seq#Contains_3536| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3536| s@@8 x@@0)) (< (|Seq#Skolem_3536| s@@8 x@@0) (|Seq#Length_3536| s@@8))) (= (|Seq#Index_3536| s@@8 (|Seq#Skolem_3536| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.488:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3536| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_3536) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_3536| s@@9 n@@7) s@@9))
 :qid |stdinbpl.472:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3536| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_37831) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_21687| s@@10 n@@8) s@@10))
 :qid |stdinbpl.472:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_21687| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.325:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.323:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_31653) (ExhaleHeap T@PolymorphicMapType_31653) (Mask@@0 T@PolymorphicMapType_31674) (pm_f_29 T@Field_21682_92916) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_21682_92980 Mask@@0 null pm_f_29) (IsPredicateField_21682_93007 pm_f_29)) (= (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@0) null (PredicateMaskField_21682 pm_f_29)) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap) null (PredicateMaskField_21682 pm_f_29)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_21682_93007 pm_f_29) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap) null (PredicateMaskField_21682 pm_f_29)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_31653) (ExhaleHeap@@0 T@PolymorphicMapType_31653) (Mask@@1 T@PolymorphicMapType_31674) (pm_f_29@@0 T@Field_21682_92916) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_21682_92980 Mask@@1 null pm_f_29@@0) (IsWandField_21682_94754 pm_f_29@@0)) (= (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@1) null (WandMaskField_21682 pm_f_29@@0)) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@0) null (WandMaskField_21682 pm_f_29@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_21682_94754 pm_f_29@@0) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@0) null (WandMaskField_21682 pm_f_29@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_37831| (|Seq#Singleton_21687| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.613:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_37831| (|Seq#Singleton_21687| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3536| (|Seq#Singleton_3536| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.613:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3536| (|Seq#Singleton_3536| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_37831) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_21687| s@@11))) (= (|Seq#Index_21687| (|Seq#Take_21687| s@@11 n@@9) j@@3) (|Seq#Index_21687| s@@11 j@@3)))
 :qid |stdinbpl.364:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_21687| (|Seq#Take_21687| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_21687| s@@11 j@@3) (|Seq#Take_21687| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3536) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3536| s@@12))) (= (|Seq#Index_3536| (|Seq#Take_3536| s@@12 n@@10) j@@4) (|Seq#Index_3536| s@@12 j@@4)))
 :qid |stdinbpl.364:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3536| (|Seq#Take_3536| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3536| s@@12 j@@4) (|Seq#Take_3536| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_37831) (t T@Seq_37831) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_21687| s@@13))) (< n@@11 (|Seq#Length_21687| (|Seq#Append_37831| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_21687| s@@13)) (|Seq#Length_21687| s@@13)) n@@11) (= (|Seq#Take_21687| (|Seq#Append_37831| s@@13 t) n@@11) (|Seq#Append_37831| s@@13 (|Seq#Take_21687| t (|Seq#Sub| n@@11 (|Seq#Length_21687| s@@13)))))))
 :qid |stdinbpl.449:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_21687| (|Seq#Append_37831| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3536) (t@@0 T@Seq_3536) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3536| s@@14))) (< n@@12 (|Seq#Length_3536| (|Seq#Append_3536| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3536| s@@14)) (|Seq#Length_3536| s@@14)) n@@12) (= (|Seq#Take_3536| (|Seq#Append_3536| s@@14 t@@0) n@@12) (|Seq#Append_3536| s@@14 (|Seq#Take_3536| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3536| s@@14)))))))
 :qid |stdinbpl.449:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3536| (|Seq#Append_3536| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_31653) (ExhaleHeap@@1 T@PolymorphicMapType_31653) (Mask@@2 T@PolymorphicMapType_31674) (o_43 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@2) o_43 $allocated) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@1) o_43 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@1) o_43 $allocated))
)))
(assert (forall ((p T@Field_21682_92916) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_31713_31713 p v_1 p w))
 :qid |stdinbpl.267:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_31713_31713 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_37831) (s1 T@Seq_37831) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_21687|)) (not (= s1 |Seq#Empty_21687|))) (<= (|Seq#Length_21687| s0) n@@13)) (< n@@13 (|Seq#Length_21687| (|Seq#Append_37831| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_21687| s0)) (|Seq#Length_21687| s0)) n@@13) (= (|Seq#Index_21687| (|Seq#Append_37831| s0 s1) n@@13) (|Seq#Index_21687| s1 (|Seq#Sub| n@@13 (|Seq#Length_21687| s0))))))
 :qid |stdinbpl.336:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_21687| (|Seq#Append_37831| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3536) (s1@@0 T@Seq_3536) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3536|)) (not (= s1@@0 |Seq#Empty_3536|))) (<= (|Seq#Length_3536| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3536| (|Seq#Append_3536| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3536| s0@@0)) (|Seq#Length_3536| s0@@0)) n@@14) (= (|Seq#Index_3536| (|Seq#Append_3536| s0@@0 s1@@0) n@@14) (|Seq#Index_3536| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3536| s0@@0))))))
 :qid |stdinbpl.336:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3536| (|Seq#Append_3536| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_21682_3658 f_7)))
(assert  (not (IsWandField_21682_3658 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_31653) (ExhaleHeap@@2 T@PolymorphicMapType_31653) (Mask@@3 T@PolymorphicMapType_31674) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_31674) (o_2@@4 T@Ref) (f_4@@4 T@Field_21682_93049) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_21682_98300 f_4@@4))) (not (IsWandField_21682_98316 f_4@@4))) (<= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_31674) (o_2@@5 T@Ref) (f_4@@5 T@Field_21682_92916) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_21682_93007 f_4@@5))) (not (IsWandField_21682_94754 f_4@@5))) (<= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_31674) (o_2@@6 T@Ref) (f_4@@6 T@Field_31726_31727) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_21682_31727 f_4@@6))) (not (IsWandField_21682_31727 f_4@@6))) (<= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_31674) (o_2@@7 T@Ref) (f_4@@7 T@Field_31713_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_21682_53 f_4@@7))) (not (IsWandField_21682_53 f_4@@7))) (<= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_31674) (o_2@@8 T@Ref) (f_4@@8 T@Field_37786_3658) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_21682_3658 f_4@@8))) (not (IsWandField_21682_3658 f_4@@8))) (<= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_31674) (o_2@@9 T@Ref) (f_4@@9 T@Field_21682_93049) ) (! (= (HasDirectPerm_21682_98754 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21682_98754 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_31674) (o_2@@10 T@Ref) (f_4@@10 T@Field_21682_92916) ) (! (= (HasDirectPerm_21682_92980 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21682_92980 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_31674) (o_2@@11 T@Ref) (f_4@@11 T@Field_31726_31727) ) (! (= (HasDirectPerm_21682_31727 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21682_31727 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_31674) (o_2@@12 T@Ref) (f_4@@12 T@Field_31713_53) ) (! (= (HasDirectPerm_21682_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21682_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_31674) (o_2@@13 T@Ref) (f_4@@13 T@Field_37786_3658) ) (! (= (HasDirectPerm_21682_3658 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_21682_3658 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_31653) (ExhaleHeap@@3 T@PolymorphicMapType_31653) (Mask@@14 T@PolymorphicMapType_31674) (pm_f_29@@1 T@Field_21682_92916) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_21682_92980 Mask@@14 null pm_f_29@@1) (IsPredicateField_21682_93007 pm_f_29@@1)) (and (and (and (and (forall ((o2_29 T@Ref) (f_15 T@Field_31713_53) ) (!  (=> (select (|PolymorphicMapType_32202_31713_53#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@4) null (PredicateMaskField_21682 pm_f_29@@1))) o2_29 f_15) (= (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@4) o2_29 f_15) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29 f_15))
)) (forall ((o2_29@@0 T@Ref) (f_15@@0 T@Field_31726_31727) ) (!  (=> (select (|PolymorphicMapType_32202_31713_31727#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@4) null (PredicateMaskField_21682 pm_f_29@@1))) o2_29@@0 f_15@@0) (= (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@4) o2_29@@0 f_15@@0) (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@0 f_15@@0))
))) (forall ((o2_29@@1 T@Ref) (f_15@@1 T@Field_37786_3658) ) (!  (=> (select (|PolymorphicMapType_32202_31713_3658#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@4) null (PredicateMaskField_21682 pm_f_29@@1))) o2_29@@1 f_15@@1) (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@4) o2_29@@1 f_15@@1) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@1 f_15@@1))
))) (forall ((o2_29@@2 T@Ref) (f_15@@2 T@Field_21682_92916) ) (!  (=> (select (|PolymorphicMapType_32202_31713_92916#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@4) null (PredicateMaskField_21682 pm_f_29@@1))) o2_29@@2 f_15@@2) (= (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@4) o2_29@@2 f_15@@2) (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@2 f_15@@2))
))) (forall ((o2_29@@3 T@Ref) (f_15@@3 T@Field_21682_93049) ) (!  (=> (select (|PolymorphicMapType_32202_31713_94227#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@4) null (PredicateMaskField_21682 pm_f_29@@1))) o2_29@@3 f_15@@3) (= (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@4) o2_29@@3 f_15@@3) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@3) o2_29@@3 f_15@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_21682_93007 pm_f_29@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_31653) (ExhaleHeap@@4 T@PolymorphicMapType_31653) (Mask@@15 T@PolymorphicMapType_31674) (pm_f_29@@2 T@Field_21682_92916) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_21682_92980 Mask@@15 null pm_f_29@@2) (IsWandField_21682_94754 pm_f_29@@2)) (and (and (and (and (forall ((o2_29@@4 T@Ref) (f_15@@4 T@Field_31713_53) ) (!  (=> (select (|PolymorphicMapType_32202_31713_53#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@5) null (WandMaskField_21682 pm_f_29@@2))) o2_29@@4 f_15@@4) (= (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@5) o2_29@@4 f_15@@4) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@4 f_15@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@4 f_15@@4))
)) (forall ((o2_29@@5 T@Ref) (f_15@@5 T@Field_31726_31727) ) (!  (=> (select (|PolymorphicMapType_32202_31713_31727#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@5) null (WandMaskField_21682 pm_f_29@@2))) o2_29@@5 f_15@@5) (= (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@5) o2_29@@5 f_15@@5) (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@5 f_15@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@5 f_15@@5))
))) (forall ((o2_29@@6 T@Ref) (f_15@@6 T@Field_37786_3658) ) (!  (=> (select (|PolymorphicMapType_32202_31713_3658#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@5) null (WandMaskField_21682 pm_f_29@@2))) o2_29@@6 f_15@@6) (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@5) o2_29@@6 f_15@@6) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@6 f_15@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@6 f_15@@6))
))) (forall ((o2_29@@7 T@Ref) (f_15@@7 T@Field_21682_92916) ) (!  (=> (select (|PolymorphicMapType_32202_31713_92916#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@5) null (WandMaskField_21682 pm_f_29@@2))) o2_29@@7 f_15@@7) (= (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@5) o2_29@@7 f_15@@7) (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@7 f_15@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@7 f_15@@7))
))) (forall ((o2_29@@8 T@Ref) (f_15@@8 T@Field_21682_93049) ) (!  (=> (select (|PolymorphicMapType_32202_31713_94227#PolymorphicMapType_32202| (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@5) null (WandMaskField_21682 pm_f_29@@2))) o2_29@@8 f_15@@8) (= (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@5) o2_29@@8 f_15@@8) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@8 f_15@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@4) o2_29@@8 f_15@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_21682_94754 pm_f_29@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.255:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3536| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.628:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3536| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_31653) (ExhaleHeap@@5 T@PolymorphicMapType_31653) (Mask@@16 T@PolymorphicMapType_31674) (o_43@@0 T@Ref) (f_15@@9 T@Field_21682_93049) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_21682_98754 Mask@@16 o_43@@0 f_15@@9) (= (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@6) o_43@@0 f_15@@9) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@5) o_43@@0 f_15@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| ExhaleHeap@@5) o_43@@0 f_15@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_31653) (ExhaleHeap@@6 T@PolymorphicMapType_31653) (Mask@@17 T@PolymorphicMapType_31674) (o_43@@1 T@Ref) (f_15@@10 T@Field_21682_92916) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_21682_92980 Mask@@17 o_43@@1 f_15@@10) (= (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@7) o_43@@1 f_15@@10) (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| ExhaleHeap@@6) o_43@@1 f_15@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| ExhaleHeap@@6) o_43@@1 f_15@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_31653) (ExhaleHeap@@7 T@PolymorphicMapType_31653) (Mask@@18 T@PolymorphicMapType_31674) (o_43@@2 T@Ref) (f_15@@11 T@Field_31726_31727) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_21682_31727 Mask@@18 o_43@@2 f_15@@11) (= (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@8) o_43@@2 f_15@@11) (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| ExhaleHeap@@7) o_43@@2 f_15@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| ExhaleHeap@@7) o_43@@2 f_15@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_31653) (ExhaleHeap@@8 T@PolymorphicMapType_31653) (Mask@@19 T@PolymorphicMapType_31674) (o_43@@3 T@Ref) (f_15@@12 T@Field_31713_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_21682_53 Mask@@19 o_43@@3 f_15@@12) (= (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@9) o_43@@3 f_15@@12) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@8) o_43@@3 f_15@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| ExhaleHeap@@8) o_43@@3 f_15@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_31653) (ExhaleHeap@@9 T@PolymorphicMapType_31653) (Mask@@20 T@PolymorphicMapType_31674) (o_43@@4 T@Ref) (f_15@@13 T@Field_37786_3658) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_21682_3658 Mask@@20 o_43@@4 f_15@@13) (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@10) o_43@@4 f_15@@13) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@@9) o_43@@4 f_15@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@@9) o_43@@4 f_15@@13))
)))
(assert (forall ((s0@@1 T@Seq_37831) (s1@@1 T@Seq_37831) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_21687|)) (not (= s1@@1 |Seq#Empty_21687|))) (= (|Seq#Length_21687| (|Seq#Append_37831| s0@@1 s1@@1)) (+ (|Seq#Length_21687| s0@@1) (|Seq#Length_21687| s1@@1))))
 :qid |stdinbpl.305:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_21687| (|Seq#Append_37831| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3536) (s1@@2 T@Seq_3536) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3536|)) (not (= s1@@2 |Seq#Empty_3536|))) (= (|Seq#Length_3536| (|Seq#Append_3536| s0@@2 s1@@2)) (+ (|Seq#Length_3536| s0@@2) (|Seq#Length_3536| s1@@2))))
 :qid |stdinbpl.305:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3536| (|Seq#Append_3536| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_21682_93049) ) (! (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_21682_92916) ) (! (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_31726_31727) ) (! (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_31713_53) ) (! (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_37786_3658) ) (! (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_37831) (t@@1 T@Seq_37831) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_21687| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_21687| s@@15)) (|Seq#Length_21687| s@@15)) n@@15) (= (|Seq#Drop_21687| (|Seq#Append_37831| s@@15 t@@1) n@@15) (|Seq#Drop_21687| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_21687| s@@15))))))
 :qid |stdinbpl.462:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_21687| (|Seq#Append_37831| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3536) (t@@2 T@Seq_3536) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3536| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3536| s@@16)) (|Seq#Length_3536| s@@16)) n@@16) (= (|Seq#Drop_3536| (|Seq#Append_3536| s@@16 t@@2) n@@16) (|Seq#Drop_3536| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3536| s@@16))))))
 :qid |stdinbpl.462:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3536| (|Seq#Append_3536| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_31674) (SummandMask1 T@PolymorphicMapType_31674) (SummandMask2 T@PolymorphicMapType_31674) (o_2@@19 T@Ref) (f_4@@19 T@Field_21682_93049) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_31674) (SummandMask1@@0 T@PolymorphicMapType_31674) (SummandMask2@@0 T@PolymorphicMapType_31674) (o_2@@20 T@Ref) (f_4@@20 T@Field_21682_92916) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_31674) (SummandMask1@@1 T@PolymorphicMapType_31674) (SummandMask2@@1 T@PolymorphicMapType_31674) (o_2@@21 T@Ref) (f_4@@21 T@Field_31726_31727) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_31674) (SummandMask1@@2 T@PolymorphicMapType_31674) (SummandMask2@@2 T@PolymorphicMapType_31674) (o_2@@22 T@Ref) (f_4@@22 T@Field_31713_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_31674) (SummandMask1@@3 T@PolymorphicMapType_31674) (SummandMask2@@3 T@PolymorphicMapType_31674) (o_2@@23 T@Ref) (f_4@@23 T@Field_37786_3658) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3536| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3536| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.627:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3536| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_37831) (b T@Seq_37831) ) (!  (=> (|Seq#Equal_37831| a b) (= a b))
 :qid |stdinbpl.600:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_37831| a b))
)))
(assert (forall ((a@@0 T@Seq_3536) (b@@0 T@Seq_3536) ) (!  (=> (|Seq#Equal_3536| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.600:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3536| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_37831) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_21687| s@@17))) (|Seq#ContainsTrigger_21687| s@@17 (|Seq#Index_21687| s@@17 i@@3)))
 :qid |stdinbpl.493:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_21687| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3536) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3536| s@@18))) (|Seq#ContainsTrigger_3536| s@@18 (|Seq#Index_3536| s@@18 i@@4)))
 :qid |stdinbpl.493:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3536| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_37831) (s1@@3 T@Seq_37831) ) (!  (and (=> (= s0@@3 |Seq#Empty_21687|) (= (|Seq#Append_37831| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_21687|) (= (|Seq#Append_37831| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.311:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_37831| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3536) (s1@@4 T@Seq_3536) ) (!  (and (=> (= s0@@4 |Seq#Empty_3536|) (= (|Seq#Append_3536| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3536|) (= (|Seq#Append_3536| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.311:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3536| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_21687| (|Seq#Singleton_21687| t@@3) 0) t@@3)
 :qid |stdinbpl.315:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_21687| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3536| (|Seq#Singleton_3536| t@@4) 0) t@@4)
 :qid |stdinbpl.315:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3536| t@@4))
)))
(assert (forall ((s@@19 T@Seq_37831) ) (! (<= 0 (|Seq#Length_21687| s@@19))
 :qid |stdinbpl.294:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_21687| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3536) ) (! (<= 0 (|Seq#Length_3536| s@@20))
 :qid |stdinbpl.294:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3536| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_37831) (s1@@5 T@Seq_37831) ) (!  (=> (|Seq#Equal_37831| s0@@5 s1@@5) (and (= (|Seq#Length_21687| s0@@5) (|Seq#Length_21687| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_21687| s0@@5))) (= (|Seq#Index_21687| s0@@5 j@@6) (|Seq#Index_21687| s1@@5 j@@6)))
 :qid |stdinbpl.590:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_21687| s0@@5 j@@6))
 :pattern ( (|Seq#Index_21687| s1@@5 j@@6))
))))
 :qid |stdinbpl.587:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_37831| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3536) (s1@@6 T@Seq_3536) ) (!  (=> (|Seq#Equal_3536| s0@@6 s1@@6) (and (= (|Seq#Length_3536| s0@@6) (|Seq#Length_3536| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3536| s0@@6))) (= (|Seq#Index_3536| s0@@6 j@@7) (|Seq#Index_3536| s1@@6 j@@7)))
 :qid |stdinbpl.590:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3536| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3536| s1@@6 j@@7))
))))
 :qid |stdinbpl.587:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3536| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_21687| (|Seq#Singleton_21687| t@@5)) 1)
 :qid |stdinbpl.302:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_21687| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3536| (|Seq#Singleton_3536| t@@6)) 1)
 :qid |stdinbpl.302:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3536| t@@6))
)))
(assert (forall ((s@@21 T@Seq_37831) (t@@7 T@Seq_37831) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_21687| s@@21))) (= (|Seq#Take_21687| (|Seq#Append_37831| s@@21 t@@7) n@@17) (|Seq#Take_21687| s@@21 n@@17)))
 :qid |stdinbpl.444:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_21687| (|Seq#Append_37831| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3536) (t@@8 T@Seq_3536) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3536| s@@22))) (= (|Seq#Take_3536| (|Seq#Append_3536| s@@22 t@@8) n@@18) (|Seq#Take_3536| s@@22 n@@18)))
 :qid |stdinbpl.444:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3536| (|Seq#Append_3536| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_37831) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_21687| s@@23))) (= (|Seq#Length_21687| (|Seq#Update_21687| s@@23 i@@5 v@@2)) (|Seq#Length_21687| s@@23)))
 :qid |stdinbpl.343:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_21687| (|Seq#Update_21687| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_21687| s@@23) (|Seq#Update_21687| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3536) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3536| s@@24))) (= (|Seq#Length_3536| (|Seq#Update_3536| s@@24 i@@6 v@@3)) (|Seq#Length_3536| s@@24)))
 :qid |stdinbpl.343:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3536| (|Seq#Update_3536| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3536| s@@24) (|Seq#Update_3536| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_31653) (o_55 T@Ref) (f_26 T@Field_21682_92916) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@11) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@11) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@11) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@11) (store (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@11) o_55 f_26 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@11) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@11) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@11) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@11) (store (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@11) o_55 f_26 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_31653) (o_55@@0 T@Ref) (f_26@@0 T@Field_21682_93049) (v@@5 T@PolymorphicMapType_32202) ) (! (succHeap Heap@@12 (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@12) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@12) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@12) (store (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@12) o_55@@0 f_26@@0 v@@5) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@12) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@12) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@12) (store (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@12) o_55@@0 f_26@@0 v@@5) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_31653) (o_55@@1 T@Ref) (f_26@@1 T@Field_37786_3658) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@13) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@13) (store (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@13) o_55@@1 f_26@@1 v@@6) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@13) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@13) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@13) (store (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@13) o_55@@1 f_26@@1 v@@6) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@13) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_31653) (o_55@@2 T@Ref) (f_26@@2 T@Field_31726_31727) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@14) (store (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@14) o_55@@2 f_26@@2 v@@7) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@14) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@14) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31653 (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@14) (store (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@14) o_55@@2 f_26@@2 v@@7) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@14) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@14) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_31653) (o_55@@3 T@Ref) (f_26@@3 T@Field_31713_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_31653 (store (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@15) o_55@@3 f_26@@3 v@@8) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@15) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@15) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@15) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31653 (store (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@15) o_55@@3 f_26@@3 v@@8) (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@15) (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@15) (|PolymorphicMapType_31653_21682_93093#PolymorphicMapType_31653| Heap@@15) (|PolymorphicMapType_31653_31713_92916#PolymorphicMapType_31653| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_37831) (t@@9 T@Seq_37831) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_21687| s@@25))) (= (|Seq#Drop_21687| (|Seq#Append_37831| s@@25 t@@9) n@@19) (|Seq#Append_37831| (|Seq#Drop_21687| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.458:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_21687| (|Seq#Append_37831| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3536) (t@@10 T@Seq_3536) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3536| s@@26))) (= (|Seq#Drop_3536| (|Seq#Append_3536| s@@26 t@@10) n@@20) (|Seq#Append_3536| (|Seq#Drop_3536| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.458:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3536| (|Seq#Append_3536| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_37831) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_21687| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_21687| (|Seq#Drop_21687| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_21687| s@@27 i@@7))))
 :qid |stdinbpl.394:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_21687| s@@27 n@@21) (|Seq#Index_21687| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3536) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3536| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3536| (|Seq#Drop_3536| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3536| s@@28 i@@8))))
 :qid |stdinbpl.394:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3536| s@@28 n@@22) (|Seq#Index_3536| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_37831) (s1@@7 T@Seq_37831) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_21687|)) (not (= s1@@7 |Seq#Empty_21687|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_21687| s0@@7))) (= (|Seq#Index_21687| (|Seq#Append_37831| s0@@7 s1@@7) n@@23) (|Seq#Index_21687| s0@@7 n@@23)))
 :qid |stdinbpl.334:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_21687| (|Seq#Append_37831| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_21687| s0@@7 n@@23) (|Seq#Append_37831| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3536) (s1@@8 T@Seq_3536) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3536|)) (not (= s1@@8 |Seq#Empty_3536|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3536| s0@@8))) (= (|Seq#Index_3536| (|Seq#Append_3536| s0@@8 s1@@8) n@@24) (|Seq#Index_3536| s0@@8 n@@24)))
 :qid |stdinbpl.334:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3536| (|Seq#Append_3536| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3536| s0@@8 n@@24) (|Seq#Append_3536| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_37831) (s1@@9 T@Seq_37831) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_21687|)) (not (= s1@@9 |Seq#Empty_21687|))) (<= 0 m)) (< m (|Seq#Length_21687| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_21687| s0@@9)) (|Seq#Length_21687| s0@@9)) m) (= (|Seq#Index_21687| (|Seq#Append_37831| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_21687| s0@@9))) (|Seq#Index_21687| s1@@9 m))))
 :qid |stdinbpl.339:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_21687| s1@@9 m) (|Seq#Append_37831| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3536) (s1@@10 T@Seq_3536) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3536|)) (not (= s1@@10 |Seq#Empty_3536|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3536| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3536| s0@@10)) (|Seq#Length_3536| s0@@10)) m@@0) (= (|Seq#Index_3536| (|Seq#Append_3536| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3536| s0@@10))) (|Seq#Index_3536| s1@@10 m@@0))))
 :qid |stdinbpl.339:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3536| s1@@10 m@@0) (|Seq#Append_3536| s0@@10 s1@@10))
)))
(assert (forall ((o_55@@4 T@Ref) (f_54 T@Field_31726_31727) (Heap@@16 T@PolymorphicMapType_31653) ) (!  (=> (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@16) o_55@@4 $allocated) (select (|PolymorphicMapType_31653_21438_53#PolymorphicMapType_31653| Heap@@16) (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@16) o_55@@4 f_54) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_31653_21441_21442#PolymorphicMapType_31653| Heap@@16) o_55@@4 f_54))
)))
(assert (forall ((s@@29 T@Seq_37831) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_21687| s@@29))) (= (|Seq#Index_21687| s@@29 i@@9) x@@3)) (|Seq#Contains_37831| s@@29 x@@3))
 :qid |stdinbpl.491:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_37831| s@@29 x@@3) (|Seq#Index_21687| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3536) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3536| s@@30))) (= (|Seq#Index_3536| s@@30 i@@10) x@@4)) (|Seq#Contains_3536| s@@30 x@@4))
 :qid |stdinbpl.491:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3536| s@@30 x@@4) (|Seq#Index_3536| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_37831) (s1@@11 T@Seq_37831) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_37831| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_37831| s0@@11 s1@@11))) (not (= (|Seq#Length_21687| s0@@11) (|Seq#Length_21687| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_37831| s0@@11 s1@@11))) (= (|Seq#Length_21687| s0@@11) (|Seq#Length_21687| s1@@11))) (= (|Seq#SkolemDiff_37831| s0@@11 s1@@11) (|Seq#SkolemDiff_37831| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_37831| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_37831| s0@@11 s1@@11) (|Seq#Length_21687| s0@@11))) (not (= (|Seq#Index_21687| s0@@11 (|Seq#SkolemDiff_37831| s0@@11 s1@@11)) (|Seq#Index_21687| s1@@11 (|Seq#SkolemDiff_37831| s0@@11 s1@@11))))))
 :qid |stdinbpl.595:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_37831| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3536) (s1@@12 T@Seq_3536) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3536| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3536| s0@@12 s1@@12))) (not (= (|Seq#Length_3536| s0@@12) (|Seq#Length_3536| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3536| s0@@12 s1@@12))) (= (|Seq#Length_3536| s0@@12) (|Seq#Length_3536| s1@@12))) (= (|Seq#SkolemDiff_3536| s0@@12 s1@@12) (|Seq#SkolemDiff_3536| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3536| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3536| s0@@12 s1@@12) (|Seq#Length_3536| s0@@12))) (not (= (|Seq#Index_3536| s0@@12 (|Seq#SkolemDiff_3536| s0@@12 s1@@12)) (|Seq#Index_3536| s1@@12 (|Seq#SkolemDiff_3536| s0@@12 s1@@12))))))
 :qid |stdinbpl.595:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3536| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_21682_92916) (v_1@@0 T@FrameType) (q T@Field_21682_92916) (w@@0 T@FrameType) (r T@Field_21682_92916) (u T@FrameType) ) (!  (=> (and (InsidePredicate_31713_31713 p@@1 v_1@@0 q w@@0) (InsidePredicate_31713_31713 q w@@0 r u)) (InsidePredicate_31713_31713 p@@1 v_1@@0 r u))
 :qid |stdinbpl.262:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31713_31713 p@@1 v_1@@0 q w@@0) (InsidePredicate_31713_31713 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_37831) ) (!  (=> (= (|Seq#Length_21687| s@@31) 0) (= s@@31 |Seq#Empty_21687|))
 :qid |stdinbpl.298:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_21687| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3536) ) (!  (=> (= (|Seq#Length_3536| s@@32) 0) (= s@@32 |Seq#Empty_3536|))
 :qid |stdinbpl.298:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3536| s@@32))
)))
(assert (forall ((s@@33 T@Seq_3536) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_3536| s@@33 n@@25) |Seq#Empty_3536|))
 :qid |stdinbpl.474:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3536| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_37831) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_21687| s@@34 n@@26) |Seq#Empty_21687|))
 :qid |stdinbpl.474:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_21687| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S () T@Seq_37831)
(declare-fun i_7 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_31674)
(declare-fun PostHeap@0 () T@PolymorphicMapType_31653)
(declare-fun x@@5 () Int)
(declare-fun index () Int)
(declare-fun p_1 () Real)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i_6 () Int)
(declare-fun arg_S@0 () T@Seq_37831)
(declare-fun i_16_1 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_31653)
(declare-fun i_13_1 () Int)
(declare-fun j_2_1 () Int)
(declare-fun i_11_1 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_31653)
(declare-fun index@6 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_31674)
(declare-fun dummyFunction_3658 (Int) Bool)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_31674)
(declare-fun Heap@1 () T@PolymorphicMapType_31653)
(declare-fun Mask@1 () T@PolymorphicMapType_31674)
(declare-fun index@5 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_31653)
(declare-fun Mask@0 () T@PolymorphicMapType_31674)
(declare-fun index@4 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_31653)
(declare-fun QPMask@4 () T@PolymorphicMapType_31674)
(declare-fun index@3 () Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_31674)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_31674)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun k () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_31653)
(declare-fun QPMask@2 () T@PolymorphicMapType_31674)
(declare-fun index@2 () Int)
(declare-fun arg_S_1@0 () T@Seq_37831)
(declare-fun QPMask@1 () T@PolymorphicMapType_31674)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun index@1 () Int)
(declare-fun index@0 () Int)
(declare-fun i_23 () Int)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_20_1 () Int)
(declare-fun j_4_1 () Int)
(declare-fun i_4 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_2 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(set-info :boogie-vc-id bfind_orig)
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
 (=> (= (ControlFlow 0 0) 126) (let ((anon23_correct true))
(let ((anon80_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7)) (= (ControlFlow 0 108) 103)) anon23_correct)))
(let ((anon80_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7) (and (=> (= (ControlFlow 0 104) (- 0 107)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 104) (- 0 106)) (< i_7 (|Seq#Length_21687| S))) (=> (< i_7 (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 104) (- 0 105)) (HasDirectPerm_21682_3658 QPMask@6 (|Seq#Index_21687| S i_7) f_7)) (=> (HasDirectPerm_21682_3658 QPMask@6 (|Seq#Index_21687| S i_7) f_7) (=> (= (ControlFlow 0 104) 103) anon23_correct))))))))))
(let ((anon25_correct true))
(let ((anon79_Else_correct  (=> (and (forall ((i_9_1 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_9_1) (not (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S i_9_1) f_7) x@@5)))
 :qid |stdinbpl.874:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S i_9_1) f_7))
)) (= (ControlFlow 0 102) 100)) anon25_correct)))
(let ((anon78_Then_correct  (=> (= index (- 0 1)) (and (and (=> (= (ControlFlow 0 109) 102) anon79_Else_correct) (=> (= (ControlFlow 0 109) 104) anon80_Then_correct)) (=> (= (ControlFlow 0 109) 108) anon80_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (not (= index (- 0 1))) (= (ControlFlow 0 101) 100)) anon25_correct)))
(let ((anon19_correct  (=> (state PostHeap@0 QPMask@6) (and (=> (= (ControlFlow 0 110) 109) anon78_Then_correct) (=> (= (ControlFlow 0 110) 101) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) index)) (= (ControlFlow 0 115) 110)) anon19_correct)))
(let ((anon77_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) index) (and (=> (= (ControlFlow 0 111) (- 0 114)) (>= index 0)) (=> (>= index 0) (and (=> (= (ControlFlow 0 111) (- 0 113)) (< index (|Seq#Length_21687| S))) (=> (< index (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 111) (- 0 112)) (HasDirectPerm_21682_3658 QPMask@6 (|Seq#Index_21687| S index) f_7)) (=> (HasDirectPerm_21682_3658 QPMask@6 (|Seq#Index_21687| S index) f_7) (=> (and (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S index) f_7) x@@5) (= (ControlFlow 0 111) 110)) anon19_correct))))))))))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 116) (- 0 118)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_2)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| S i_7_1) (|Seq#Index_21687| S i_7_2))))
 :qid |stdinbpl.807:15|
 :skolemid |67|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_1@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_2@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| S i_7_1@@0) (|Seq#Index_21687| S i_7_2@@0))))
 :qid |stdinbpl.807:15|
 :skolemid |67|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_1@@1) (< NoPerm p_1)) (and (qpRange2 (|Seq#Index_21687| S i_7_1@@1)) (= (invRecv2 (|Seq#Index_21687| S i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.813:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_21687| S i_7_1@@1))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S i_7_1@@1) f_7))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv2 o_4)) (< NoPerm p_1)) (qpRange2 o_4)) (= (|Seq#Index_21687| S (invRecv2 o_4)) o_4))
 :qid |stdinbpl.817:22|
 :skolemid |69|
 :pattern ( (invRecv2 o_4))
))) (and (=> (= (ControlFlow 0 116) (- 0 117)) (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_1@@2) (>= p_1 NoPerm))
 :qid |stdinbpl.823:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_21687| S i_7_1@@2))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S i_7_1@@2) f_7))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_1@@3) (>= p_1 NoPerm))
 :qid |stdinbpl.823:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_21687| S i_7_1@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S i_7_1@@3) f_7))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_7_1@@4) (> p_1 NoPerm)) (not (= (|Seq#Index_21687| S i_7_1@@4) null)))
 :qid |stdinbpl.829:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_21687| S i_7_1@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| PostHeap@0) (|Seq#Index_21687| S i_7_1@@4) f_7))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv2 o_4@@0)) (< NoPerm p_1)) (qpRange2 o_4@@0)) (and (=> (< NoPerm p_1) (= (|Seq#Index_21687| S (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@6) o_4@@0 f_7) (+ (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@0 f_7) p_1)))) (=> (not (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv2 o_4@@0)) (< NoPerm p_1)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@6) o_4@@0 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.835:22|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@6) o_4@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@6) o_4@@1 f_5)))
 :qid |stdinbpl.839:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@6) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@6) o_4@@2 f_5@@0)))
 :qid |stdinbpl.839:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@6) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_37786_3658) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@6) o_4@@3 f_5@@1)))
 :qid |stdinbpl.839:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@6) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@6) o_4@@4 f_5@@2)))
 :qid |stdinbpl.839:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@6) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@6) o_4@@5 f_5@@3)))
 :qid |stdinbpl.839:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@6) o_4@@5 f_5@@3))
))) (and (and (state PostHeap@0 QPMask@6) (state PostHeap@0 QPMask@6)) (and (|Seq#Contains_3536| (|Seq#Range| (- 0 1) (|Seq#Length_21687| S)) index) (state PostHeap@0 QPMask@6)))) (and (=> (= (ControlFlow 0 116) 111) anon77_Then_correct) (=> (= (ControlFlow 0 116) 115) anon77_Else_correct)))))))))))
(let ((anon16_correct true))
(let ((anon76_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_6)) (= (ControlFlow 0 99) 95)) anon16_correct)))
(let ((anon76_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_6) (and (=> (= (ControlFlow 0 96) (- 0 98)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 96) (- 0 97)) (< i_6 (|Seq#Length_21687| S))) (=> (< i_6 (|Seq#Length_21687| S)) (=> (= (ControlFlow 0 96) 95) anon16_correct))))))))
(let ((anon74_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 119) 116) anon75_Else_correct) (=> (= (ControlFlow 0 119) 96) anon76_Then_correct)) (=> (= (ControlFlow 0 119) 99) anon76_Else_correct)))))
(let ((anon38_correct true))
(let ((anon87_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| arg_S@0) 1)) i_16_1)) (= (ControlFlow 0 74) 71)) anon38_correct)))
(let ((anon87_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| arg_S@0) 1)) i_16_1) (and (=> (= (ControlFlow 0 72) (- 0 73)) (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_16_1) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 (+ i_16_1 1)) f_7))) (=> (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_16_1) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 (+ i_16_1 1)) f_7)) (=> (= (ControlFlow 0 72) 71) anon38_correct))))))
(let ((anon34_correct true))
(let ((anon85_Else_correct  (=> (and (not (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_13_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_2_1) (not (= i_13_1 j_2_1))))) (= (ControlFlow 0 70) 67)) anon34_correct)))
(let ((anon85_Then_correct  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_13_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_2_1) (not (= i_13_1 j_2_1)))) (and (=> (= (ControlFlow 0 68) (- 0 69)) (not (= (|Seq#Index_21687| arg_S@0 i_13_1) (|Seq#Index_21687| arg_S@0 j_2_1)))) (=> (not (= (|Seq#Index_21687| arg_S@0 i_13_1) (|Seq#Index_21687| arg_S@0 j_2_1))) (=> (= (ControlFlow 0 68) 67) anon34_correct))))))
(let ((anon65_correct true))
(let ((anon99_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_11_1)) (= (ControlFlow 0 36) 33)) anon65_correct)))
(let ((anon99_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_11_1) (and (=> (= (ControlFlow 0 34) (- 0 35)) (not (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_11_1) f_7) x@@5))) (=> (not (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_11_1) f_7) x@@5)) (=> (= (ControlFlow 0 34) 33) anon65_correct))))))
(let ((anon67_correct true))
(let ((anon98_Else_correct  (=> (and (forall ((i_12_1_1 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_12_1_1) (not (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_12_1_1) f_7) x@@5)))
 :qid |stdinbpl.1274:22|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_12_1_1) f_7))
)) (= (ControlFlow 0 32) 30)) anon67_correct)))
(let ((anon97_Then_correct  (=> (= index@6 (- 0 1)) (and (and (=> (= (ControlFlow 0 37) 32) anon98_Else_correct) (=> (= (ControlFlow 0 37) 34) anon99_Then_correct)) (=> (= (ControlFlow 0 37) 36) anon99_Else_correct)))))
(let ((anon97_Else_correct  (=> (and (not (= index@6 (- 0 1))) (= (ControlFlow 0 31) 30)) anon67_correct)))
(let ((anon96_Else_correct  (=> (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) index@6)) (and (=> (= (ControlFlow 0 40) 37) anon97_Then_correct) (=> (= (ControlFlow 0 40) 31) anon97_Else_correct)))))
(let ((anon96_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) index@6) (and (=> (= (ControlFlow 0 38) (- 0 39)) (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S index@6) f_7) x@@5)) (=> (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S index@6) f_7) x@@5) (and (=> (= (ControlFlow 0 38) 37) anon97_Then_correct) (=> (= (ControlFlow 0 38) 31) anon97_Else_correct)))))))
(let ((anon59_correct  (=> (state Heap@2 Mask@2) (and (=> (= (ControlFlow 0 41) (- 0 45)) (forall ((i_10_1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1) (dummyFunction_3658 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.1219:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_21687| S i_10_1))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1) f_7))
))) (=> (forall ((i_10_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1@@0) (dummyFunction_3658 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1@@0) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.1219:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_21687| S i_10_1@@0))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1@@0) f_7))
)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (forall ((i_10_1@@1 Int) (i_10_2 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@1 i_10_2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1@@1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_2)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| S i_10_1@@1) (|Seq#Index_21687| S i_10_2))))
 :qid |stdinbpl.1226:17|
 :skolemid |110|
 :pattern ( (neverTriggered3 i_10_1@@1) (neverTriggered3 i_10_2))
))) (=> (forall ((i_10_1@@2 Int) (i_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@2 i_10_2@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1@@2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_2@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| S i_10_1@@2) (|Seq#Index_21687| S i_10_2@@0))))
 :qid |stdinbpl.1226:17|
 :skolemid |110|
 :pattern ( (neverTriggered3 i_10_1@@2) (neverTriggered3 i_10_2@@0))
)) (and (=> (= (ControlFlow 0 41) (- 0 43)) (forall ((i_10_1@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1@@3) (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@2) (|Seq#Index_21687| S i_10_1@@3) f_7) p_1))
 :qid |stdinbpl.1233:17|
 :skolemid |111|
 :pattern ( (|Seq#Index_21687| S i_10_1@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1@@3) f_7))
))) (=> (forall ((i_10_1@@4 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1@@4) (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@2) (|Seq#Index_21687| S i_10_1@@4) f_7) p_1))
 :qid |stdinbpl.1233:17|
 :skolemid |111|
 :pattern ( (|Seq#Index_21687| S i_10_1@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1@@4) f_7))
)) (=> (forall ((i_10_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_10_1@@5) (< NoPerm p_1)) (and (qpRange3 (|Seq#Index_21687| S i_10_1@@5)) (= (invRecv3 (|Seq#Index_21687| S i_10_1@@5)) i_10_1@@5)))
 :qid |stdinbpl.1239:22|
 :skolemid |112|
 :pattern ( (|Seq#Index_21687| S i_10_1@@5))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@2) (|Seq#Index_21687| S i_10_1@@5) f_7))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv3 o_4@@6)) (and (< NoPerm p_1) (qpRange3 o_4@@6))) (= (|Seq#Index_21687| S (invRecv3 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1243:22|
 :skolemid |113|
 :pattern ( (invRecv3 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv3 o_4@@7)) (and (< NoPerm p_1) (qpRange3 o_4@@7))) (and (= (|Seq#Index_21687| S (invRecv3 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@5) o_4@@7 f_7) (- (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@2) o_4@@7 f_7) p_1)))) (=> (not (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv3 o_4@@7)) (and (< NoPerm p_1) (qpRange3 o_4@@7)))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@5) o_4@@7 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@2) o_4@@7 f_7))))
 :qid |stdinbpl.1249:22|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@5) o_4@@7 f_7))
))) (=> (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| Mask@2) o_4@@8 f_5@@4) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@5) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1255:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@5) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| Mask@2) o_4@@9 f_5@@5) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@5) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1255:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@5) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_37786_3658) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| Mask@2) o_4@@10 f_5@@6) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@5) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1255:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@5) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| Mask@2) o_4@@11 f_5@@7) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@5) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1255:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@5) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| Mask@2) o_4@@12 f_5@@8) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@5) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1255:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@5) o_4@@12 f_5@@8))
))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (|Seq#Contains_3536| (|Seq#Range| (- 0 1) (|Seq#Length_21687| S)) index@6)) (=> (|Seq#Contains_3536| (|Seq#Range| (- 0 1) (|Seq#Length_21687| S)) index@6) (and (=> (= (ControlFlow 0 41) 38) anon96_Then_correct) (=> (= (ControlFlow 0 41) 40) anon96_Else_correct))))))))))))))))
(let ((anon58_correct  (=> (state Heap@1 Mask@1) (=> (and (and (= Heap@2 Heap@1) (= Mask@2 Mask@1)) (and (= index@6 index@5) (= (ControlFlow 0 47) 41))) anon59_correct))))
(let ((anon57_correct  (=> (state Heap@0 Mask@0) (=> (and (and (= Heap@1 Heap@0) (= Mask@1 Mask@0)) (and (= index@5 index@4) (= (ControlFlow 0 51) 47))) anon58_correct))))
(let ((anon43_correct  (=> (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4)) (=> (and (and (= Mask@0 QPMask@4) (= Heap@0 ExhaleHeap@1)) (and (= index@4 index@3) (= (ControlFlow 0 75) 51))) anon57_correct))))
(let ((anon89_Else_correct  (=> (and (not (= index@3 (- 0 1))) (= (ControlFlow 0 77) 75)) anon43_correct)))
(let ((anon89_Then_correct  (=> (= index@3 (- 0 1)) (=> (and (forall ((i_19 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_19) (not (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 i_19) f_7) x@@5)))
 :qid |stdinbpl.1056:36|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 i_19) f_7))
)) (= (ControlFlow 0 76) 75)) anon43_correct))))
(let ((anon88_Else_correct  (=> (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) index@3)) (and (=> (= (ControlFlow 0 79) 76) anon89_Then_correct) (=> (= (ControlFlow 0 79) 77) anon89_Else_correct)))))
(let ((anon88_Then_correct  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) index@3) (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 index@3) f_7) x@@5)) (and (=> (= (ControlFlow 0 78) 76) anon89_Then_correct) (=> (= (ControlFlow 0 78) 77) anon89_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (forall ((i_17_1_1 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| arg_S@0) 1)) i_17_1_1) (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_17_1_1) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 (+ i_17_1_1 1)) f_7)))
 :qid |stdinbpl.998:34|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_17_1_1) f_7))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@1 QPMask@3)) (and (=> (= (ControlFlow 0 80) (- 0 82)) (forall ((i_18_1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1 i_18_2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_2)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S@0 i_18_1) (|Seq#Index_21687| arg_S@0 i_18_2))))
 :qid |stdinbpl.1013:29|
 :skolemid |84|
))) (=> (forall ((i_18_1@@0 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@0 i_18_2@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_1@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_2@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S@0 i_18_1@@0) (|Seq#Index_21687| arg_S@0 i_18_2@@0))))
 :qid |stdinbpl.1013:29|
 :skolemid |84|
)) (=> (and (forall ((i_18_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_1@@1) (< NoPerm p_1)) (and (qpRange5 (|Seq#Index_21687| arg_S@0 i_18_1@@1)) (= (invRecv5 (|Seq#Index_21687| arg_S@0 i_18_1@@1)) i_18_1@@1)))
 :qid |stdinbpl.1019:36|
 :skolemid |85|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_18_1@@1))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 i_18_1@@1) f_7))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) (invRecv5 o_4@@13)) (< NoPerm p_1)) (qpRange5 o_4@@13)) (= (|Seq#Index_21687| arg_S@0 (invRecv5 o_4@@13)) o_4@@13))
 :qid |stdinbpl.1023:36|
 :skolemid |86|
 :pattern ( (invRecv5 o_4@@13))
))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (forall ((i_18_1@@2 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_1@@2) (>= p_1 NoPerm))
 :qid |stdinbpl.1029:29|
 :skolemid |87|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_18_1@@2))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 i_18_1@@2) f_7))
))) (=> (forall ((i_18_1@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_1@@3) (>= p_1 NoPerm))
 :qid |stdinbpl.1029:29|
 :skolemid |87|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_18_1@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 i_18_1@@3) f_7))
)) (=> (and (forall ((i_18_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_18_1@@4) (> p_1 NoPerm)) (not (= (|Seq#Index_21687| arg_S@0 i_18_1@@4) null)))
 :qid |stdinbpl.1035:36|
 :skolemid |88|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_18_1@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@1) (|Seq#Index_21687| arg_S@0 i_18_1@@4) f_7))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) (invRecv5 o_4@@14)) (< NoPerm p_1)) (qpRange5 o_4@@14)) (and (=> (< NoPerm p_1) (= (|Seq#Index_21687| arg_S@0 (invRecv5 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@4) o_4@@14 f_7) (+ (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@14 f_7) p_1)))) (=> (not (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) (invRecv5 o_4@@14)) (< NoPerm p_1)) (qpRange5 o_4@@14))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@4) o_4@@14 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@14 f_7))))
 :qid |stdinbpl.1041:36|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@4) o_4@@14 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@3) o_4@@15 f_5@@9) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@4) o_4@@15 f_5@@9)))
 :qid |stdinbpl.1045:43|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@3) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@4) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@3) o_4@@16 f_5@@10) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@4) o_4@@16 f_5@@10)))
 :qid |stdinbpl.1045:43|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@3) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@4) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_37786_3658) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@17 f_5@@11) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@4) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1045:43|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@4) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@3) o_4@@18 f_5@@12) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@4) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1045:43|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@3) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@4) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@3) o_4@@19 f_5@@13) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@4) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1045:43|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@3) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@4) o_4@@19 f_5@@13))
))) (and (state ExhaleHeap@1 QPMask@4) (|Seq#Contains_3536| (|Seq#Range| (- 0 1) (|Seq#Length_21687| arg_S@0)) index@3))) (and (=> (= (ControlFlow 0 80) 78) anon88_Then_correct) (=> (= (ControlFlow 0 80) 79) anon88_Else_correct))))))))))))
(let ((anon84_Else_correct  (=> (forall ((i_14_1_1 Int) (j_3_1_1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1) (not (= i_14_1_1 j_3_1_1)))) (not (= (|Seq#Index_21687| arg_S@0 i_14_1_1) (|Seq#Index_21687| arg_S@0 j_3_1_1))))
 :qid |stdinbpl.942:34|
 :skolemid |75|
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (|Seq#Index_21687| arg_S@0 j_3_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_14_1_1) (|Seq#Index_21687| arg_S@0 j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1) (|Seq#Index_21687| arg_S@0 i_14_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) j_3_1_1) (|Seq#Index_21687| arg_S@0 i_14_1_1))
 :pattern ( (|Seq#Index_21687| arg_S@0 i_14_1_1) (|Seq#Index_21687| arg_S@0 j_3_1_1))
)) (and (=> (= (ControlFlow 0 83) (- 0 86)) (forall ((i_15 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15) (dummyFunction_3658 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.950:31|
 :skolemid |76|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_15))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15) f_7))
))) (=> (forall ((i_15@@0 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15@@0) (dummyFunction_3658 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15@@0) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.950:31|
 :skolemid |76|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_15@@0))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15@@0) f_7))
)) (and (=> (= (ControlFlow 0 83) (- 0 85)) (forall ((i_15@@1 Int) (i_15_1 Int) ) (!  (=> (and (and (and (and (not (= i_15@@1 i_15_1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15@@1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15_1)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S@0 i_15@@1) (|Seq#Index_21687| arg_S@0 i_15_1))))
 :qid |stdinbpl.957:31|
 :skolemid |77|
 :pattern ( (neverTriggered4 i_15@@1) (neverTriggered4 i_15_1))
))) (=> (forall ((i_15@@2 Int) (i_15_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15@@2 i_15_1@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15@@2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15_1@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S@0 i_15@@2) (|Seq#Index_21687| arg_S@0 i_15_1@@0))))
 :qid |stdinbpl.957:31|
 :skolemid |77|
 :pattern ( (neverTriggered4 i_15@@2) (neverTriggered4 i_15_1@@0))
)) (and (=> (= (ControlFlow 0 83) (- 0 84)) (forall ((i_15@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15@@3) (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) (|Seq#Index_21687| arg_S@0 i_15@@3) f_7) p_1))
 :qid |stdinbpl.964:31|
 :skolemid |78|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_15@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15@@3) f_7))
))) (=> (forall ((i_15@@4 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15@@4) (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) (|Seq#Index_21687| arg_S@0 i_15@@4) f_7) p_1))
 :qid |stdinbpl.964:31|
 :skolemid |78|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_15@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15@@4) f_7))
)) (=> (forall ((i_15@@5 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) i_15@@5) (< NoPerm p_1)) (and (qpRange4 (|Seq#Index_21687| arg_S@0 i_15@@5)) (= (invRecv4 (|Seq#Index_21687| arg_S@0 i_15@@5)) i_15@@5)))
 :qid |stdinbpl.970:36|
 :skolemid |79|
 :pattern ( (|Seq#Index_21687| arg_S@0 i_15@@5))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S@0 i_15@@5) f_7))
)) (=> (and (forall ((o_4@@20 T@Ref) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) (invRecv4 o_4@@20)) (and (< NoPerm p_1) (qpRange4 o_4@@20))) (= (|Seq#Index_21687| arg_S@0 (invRecv4 o_4@@20)) o_4@@20))
 :qid |stdinbpl.974:36|
 :skolemid |80|
 :pattern ( (invRecv4 o_4@@20))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) (invRecv4 o_4@@21)) (and (< NoPerm p_1) (qpRange4 o_4@@21))) (and (= (|Seq#Index_21687| arg_S@0 (invRecv4 o_4@@21)) o_4@@21) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@21 f_7) (- (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@21 f_7) p_1)))) (=> (not (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S@0)) (invRecv4 o_4@@21)) (and (< NoPerm p_1) (qpRange4 o_4@@21)))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@21 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@21 f_7))))
 :qid |stdinbpl.980:36|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@21 f_7))
))) (=> (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@0) o_4@@22 f_5@@14) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@3) o_4@@22 f_5@@14)))
 :qid |stdinbpl.986:43|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@3) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@0) o_4@@23 f_5@@15) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@3) o_4@@23 f_5@@15)))
 :qid |stdinbpl.986:43|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@3) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_37786_3658) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@24 f_5@@16) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@24 f_5@@16)))
 :qid |stdinbpl.986:43|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@3) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@0) o_4@@25 f_5@@17) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.986:43|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@3) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@0) o_4@@26 f_5@@18) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.986:43|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@3) o_4@@26 f_5@@18))
))) (and (and (=> (= (ControlFlow 0 83) 80) anon86_Else_correct) (=> (= (ControlFlow 0 83) 72) anon87_Then_correct)) (=> (= (ControlFlow 0 83) 74) anon87_Else_correct))))))))))))))
(let ((anon83_Then_correct  (=> (and (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S k) f_7) x@@5) (= arg_S@0 (|Seq#Drop_21687| (|Seq#Take_21687| S k) 0))) (and (=> (= (ControlFlow 0 87) (- 0 89)) (< NoPerm p_1)) (=> (< NoPerm p_1) (and (=> (= (ControlFlow 0 87) (- 0 88)) (< p_1 FullPerm)) (=> (< p_1 FullPerm) (and (and (=> (= (ControlFlow 0 87) 83) anon84_Else_correct) (=> (= (ControlFlow 0 87) 68) anon85_Then_correct)) (=> (= (ControlFlow 0 87) 70) anon85_Else_correct)))))))))
(let ((anon56_correct  (=> (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (=> (and (and (= Mask@0 QPMask@2) (= Heap@0 ExhaleHeap@0)) (and (= index@4 index@2) (= (ControlFlow 0 52) 51))) anon57_correct))))
(let ((anon95_Else_correct  (=> (and (not (= index@2 (- 0 1))) (= (ControlFlow 0 54) 52)) anon56_correct)))
(let ((anon95_Then_correct  (=> (= index@2 (- 0 1)) (=> (and (forall ((i_26 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_26) (not (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 i_26) f_7) x@@5)))
 :qid |stdinbpl.1198:36|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 i_26) f_7))
)) (= (ControlFlow 0 53) 52)) anon56_correct))))
(let ((anon94_Else_correct  (=> (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) index@2)) (and (=> (= (ControlFlow 0 56) 53) anon95_Then_correct) (=> (= (ControlFlow 0 56) 54) anon95_Else_correct)))))
(let ((anon94_Then_correct  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) index@2) (= (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 index@2) f_7) x@@5)) (and (=> (= (ControlFlow 0 55) 53) anon95_Then_correct) (=> (= (ControlFlow 0 55) 54) anon95_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (forall ((i_24_1_1 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| arg_S_1@0) 1)) i_24_1_1) (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_24_1_1) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 (+ i_24_1_1 1)) f_7)))
 :qid |stdinbpl.1140:34|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_24_1_1) f_7))
)) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (forall ((i_25 Int) (i_25_2 Int) ) (!  (=> (and (and (and (and (not (= i_25 i_25_2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25_2)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S_1@0 i_25) (|Seq#Index_21687| arg_S_1@0 i_25_2))))
 :qid |stdinbpl.1155:29|
 :skolemid |101|
))) (=> (forall ((i_25@@0 Int) (i_25_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_25@@0 i_25_2@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25_2@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S_1@0 i_25@@0) (|Seq#Index_21687| arg_S_1@0 i_25_2@@0))))
 :qid |stdinbpl.1155:29|
 :skolemid |101|
)) (=> (and (forall ((i_25@@1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25@@1) (< NoPerm p_1)) (and (qpRange7 (|Seq#Index_21687| arg_S_1@0 i_25@@1)) (= (invRecv7 (|Seq#Index_21687| arg_S_1@0 i_25@@1)) i_25@@1)))
 :qid |stdinbpl.1161:36|
 :skolemid |102|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_25@@1))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 i_25@@1) f_7))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) (invRecv7 o_4@@27)) (< NoPerm p_1)) (qpRange7 o_4@@27)) (= (|Seq#Index_21687| arg_S_1@0 (invRecv7 o_4@@27)) o_4@@27))
 :qid |stdinbpl.1165:36|
 :skolemid |103|
 :pattern ( (invRecv7 o_4@@27))
))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((i_25@@2 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25@@2) (>= p_1 NoPerm))
 :qid |stdinbpl.1171:29|
 :skolemid |104|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_25@@2))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 i_25@@2) f_7))
))) (=> (forall ((i_25@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25@@3) (>= p_1 NoPerm))
 :qid |stdinbpl.1171:29|
 :skolemid |104|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_25@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 i_25@@3) f_7))
)) (=> (and (forall ((i_25@@4 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_25@@4) (> p_1 NoPerm)) (not (= (|Seq#Index_21687| arg_S_1@0 i_25@@4) null)))
 :qid |stdinbpl.1177:36|
 :skolemid |105|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_25@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| ExhaleHeap@0) (|Seq#Index_21687| arg_S_1@0 i_25@@4) f_7))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) (invRecv7 o_4@@28)) (< NoPerm p_1)) (qpRange7 o_4@@28)) (and (=> (< NoPerm p_1) (= (|Seq#Index_21687| arg_S_1@0 (invRecv7 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@2) o_4@@28 f_7) (+ (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@28 f_7) p_1)))) (=> (not (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) (invRecv7 o_4@@28)) (< NoPerm p_1)) (qpRange7 o_4@@28))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@2) o_4@@28 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@28 f_7))))
 :qid |stdinbpl.1183:36|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@2) o_4@@28 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@1) o_4@@29 f_5@@19) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@2) o_4@@29 f_5@@19)))
 :qid |stdinbpl.1187:43|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@1) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@2) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@1) o_4@@30 f_5@@20) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@2) o_4@@30 f_5@@20)))
 :qid |stdinbpl.1187:43|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@1) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@2) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_37786_3658) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@31 f_5@@21) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@2) o_4@@31 f_5@@21)))
 :qid |stdinbpl.1187:43|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@2) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@1) o_4@@32 f_5@@22) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@2) o_4@@32 f_5@@22)))
 :qid |stdinbpl.1187:43|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@1) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@2) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@1) o_4@@33 f_5@@23) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@2) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1187:43|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@1) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@2) o_4@@33 f_5@@23))
))) (and (state ExhaleHeap@0 QPMask@2) (|Seq#Contains_3536| (|Seq#Range| (- 0 1) (|Seq#Length_21687| arg_S_1@0)) index@2))) (and (=> (= (ControlFlow 0 57) 55) anon94_Then_correct) (=> (= (ControlFlow 0 57) 56) anon94_Else_correct))))))))))))
(let ((anon82_Then_correct  (=> (= (|Seq#Length_21687| S) 1) (and (=> (= (ControlFlow 0 48) (- 0 50)) (< 0 (|Seq#Length_21687| S))) (=> (< 0 (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S 0) f_7)) (=> (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S 0) f_7) (=> (and (= index@1 (ite (= x@@5 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S 0) f_7)) 0 (- 0 1))) (state Heap@@17 QPMask@0)) (=> (and (and (= Heap@1 Heap@@17) (= Mask@1 QPMask@0)) (and (= index@5 index@1) (= (ControlFlow 0 48) 47))) anon58_correct)))))))))
(let ((anon81_Then_correct  (=> (= (|Seq#Length_21687| S) 0) (=> (and (= index@0 (- 0 1)) (state Heap@@17 QPMask@0)) (=> (and (and (= Heap@2 Heap@@17) (= Mask@2 QPMask@0)) (and (= index@6 index@0) (= (ControlFlow 0 46) 41))) anon59_correct)))))
(let ((anon51_correct true))
(let ((anon93_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| arg_S_1@0) 1)) i_23)) (= (ControlFlow 0 29) 26)) anon51_correct)))
(let ((anon93_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| arg_S_1@0) 1)) i_23) (and (=> (= (ControlFlow 0 27) (- 0 28)) (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_23) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 (+ i_23 1)) f_7))) (=> (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_23) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 (+ i_23 1)) f_7)) (=> (= (ControlFlow 0 27) 26) anon51_correct))))))
(let ((anon90_Else_correct  (=> (forall ((i_21_1_1 Int) (j_5_1_1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1) (not (= i_21_1_1 j_5_1_1)))) (not (= (|Seq#Index_21687| arg_S_1@0 i_21_1_1) (|Seq#Index_21687| arg_S_1@0 j_5_1_1))))
 :qid |stdinbpl.1084:34|
 :skolemid |92|
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (|Seq#Index_21687| arg_S_1@0 j_5_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_21_1_1) (|Seq#Index_21687| arg_S_1@0 j_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1) (|Seq#Index_21687| arg_S_1@0 i_21_1_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_5_1_1) (|Seq#Index_21687| arg_S_1@0 i_21_1_1))
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_21_1_1) (|Seq#Index_21687| arg_S_1@0 j_5_1_1))
)) (and (=> (= (ControlFlow 0 60) (- 0 63)) (forall ((i_22_1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1) (dummyFunction_3658 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.1092:31|
 :skolemid |93|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_22_1))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1) f_7))
))) (=> (forall ((i_22_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1@@0) (dummyFunction_3658 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1@@0) f_7))) (>= p_1 NoPerm))
 :qid |stdinbpl.1092:31|
 :skolemid |93|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_22_1@@0))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1@@0) f_7))
)) (and (=> (= (ControlFlow 0 60) (- 0 62)) (forall ((i_22_1@@1 Int) (i_22_2 Int) ) (!  (=> (and (and (and (and (not (= i_22_1@@1 i_22_2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1@@1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_2)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S_1@0 i_22_1@@1) (|Seq#Index_21687| arg_S_1@0 i_22_2))))
 :qid |stdinbpl.1099:31|
 :skolemid |94|
 :pattern ( (neverTriggered6 i_22_1@@1) (neverTriggered6 i_22_2))
))) (=> (forall ((i_22_1@@2 Int) (i_22_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_22_1@@2 i_22_2@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1@@2)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_2@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| arg_S_1@0 i_22_1@@2) (|Seq#Index_21687| arg_S_1@0 i_22_2@@0))))
 :qid |stdinbpl.1099:31|
 :skolemid |94|
 :pattern ( (neverTriggered6 i_22_1@@2) (neverTriggered6 i_22_2@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((i_22_1@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1@@3) (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) (|Seq#Index_21687| arg_S_1@0 i_22_1@@3) f_7) p_1))
 :qid |stdinbpl.1106:31|
 :skolemid |95|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_22_1@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1@@3) f_7))
))) (=> (forall ((i_22_1@@4 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1@@4) (>= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) (|Seq#Index_21687| arg_S_1@0 i_22_1@@4) f_7) p_1))
 :qid |stdinbpl.1106:31|
 :skolemid |95|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_22_1@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1@@4) f_7))
)) (=> (forall ((i_22_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_22_1@@5) (< NoPerm p_1)) (and (qpRange6 (|Seq#Index_21687| arg_S_1@0 i_22_1@@5)) (= (invRecv6 (|Seq#Index_21687| arg_S_1@0 i_22_1@@5)) i_22_1@@5)))
 :qid |stdinbpl.1112:36|
 :skolemid |96|
 :pattern ( (|Seq#Index_21687| arg_S_1@0 i_22_1@@5))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| arg_S_1@0 i_22_1@@5) f_7))
)) (=> (and (forall ((o_4@@34 T@Ref) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) (invRecv6 o_4@@34)) (and (< NoPerm p_1) (qpRange6 o_4@@34))) (= (|Seq#Index_21687| arg_S_1@0 (invRecv6 o_4@@34)) o_4@@34))
 :qid |stdinbpl.1116:36|
 :skolemid |97|
 :pattern ( (invRecv6 o_4@@34))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) (invRecv6 o_4@@35)) (and (< NoPerm p_1) (qpRange6 o_4@@35))) (and (= (|Seq#Index_21687| arg_S_1@0 (invRecv6 o_4@@35)) o_4@@35) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@35 f_7) (- (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@35 f_7) p_1)))) (=> (not (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) (invRecv6 o_4@@35)) (and (< NoPerm p_1) (qpRange6 o_4@@35)))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@35 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@35 f_7))))
 :qid |stdinbpl.1122:36|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@35 f_7))
))) (=> (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@0) o_4@@36 f_5@@24) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@1) o_4@@36 f_5@@24)))
 :qid |stdinbpl.1128:43|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@1) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@0) o_4@@37 f_5@@25) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@1) o_4@@37 f_5@@25)))
 :qid |stdinbpl.1128:43|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@1) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_37786_3658) ) (!  (=> (not (= f_5@@26 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@38 f_5@@26) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@38 f_5@@26)))
 :qid |stdinbpl.1128:43|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@1) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@0) o_4@@39 f_5@@27) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@1) o_4@@39 f_5@@27)))
 :qid |stdinbpl.1128:43|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@1) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@0) o_4@@40 f_5@@28) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@1) o_4@@40 f_5@@28)))
 :qid |stdinbpl.1128:43|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@1) o_4@@40 f_5@@28))
))) (and (and (=> (= (ControlFlow 0 60) 57) anon92_Else_correct) (=> (= (ControlFlow 0 60) 27) anon93_Then_correct)) (=> (= (ControlFlow 0 60) 29) anon93_Else_correct))))))))))))))
(let ((anon47_correct true))
(let ((anon91_Else_correct  (=> (and (not (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_20_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_4_1) (not (= i_20_1 j_4_1))))) (= (ControlFlow 0 25) 22)) anon47_correct)))
(let ((anon91_Then_correct  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) i_20_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| arg_S_1@0)) j_4_1) (not (= i_20_1 j_4_1)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (not (= (|Seq#Index_21687| arg_S_1@0 i_20_1) (|Seq#Index_21687| arg_S_1@0 j_4_1)))) (=> (not (= (|Seq#Index_21687| arg_S_1@0 i_20_1) (|Seq#Index_21687| arg_S_1@0 j_4_1))) (=> (= (ControlFlow 0 23) 22) anon47_correct))))))
(let ((anon83_Else_correct  (=> (and (<= x@@5 (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S k) f_7)) (= arg_S_1@0 (|Seq#Drop_21687| (|Seq#Take_21687| S (|Seq#Length_21687| S)) k))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (< NoPerm p_1)) (=> (< NoPerm p_1) (and (=> (= (ControlFlow 0 64) (- 0 65)) (< p_1 FullPerm)) (=> (< p_1 FullPerm) (and (and (=> (= (ControlFlow 0 64) 60) anon90_Else_correct) (=> (= (ControlFlow 0 64) 23) anon91_Then_correct)) (=> (= (ControlFlow 0 64) 25) anon91_Else_correct)))))))))
(let ((anon82_Else_correct  (=> (not (= (|Seq#Length_21687| S) 1)) (=> (and (and (< 0 k) (< k (- (|Seq#Length_21687| S) 1))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 90) (- 0 93)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 90) (- 0 92)) (< k (|Seq#Length_21687| S))) (=> (< k (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 90) (- 0 91)) (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S k) f_7)) (=> (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S k) f_7) (and (=> (= (ControlFlow 0 90) 87) anon83_Then_correct) (=> (= (ControlFlow 0 90) 64) anon83_Else_correct))))))))))))
(let ((anon81_Else_correct  (=> (not (= (|Seq#Length_21687| S) 0)) (and (=> (= (ControlFlow 0 94) 48) anon82_Then_correct) (=> (= (ControlFlow 0 94) 90) anon82_Else_correct)))))
(let ((anon72_Else_correct  (=> (and (forall ((i_5 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| S) 1)) i_5) (< (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S i_5) f_7) (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S (+ i_5 1)) f_7)))
 :qid |stdinbpl.778:20|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S i_5) f_7))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 120) 119) anon74_Then_correct) (=> (= (ControlFlow 0 120) 46) anon81_Then_correct)) (=> (= (ControlFlow 0 120) 94) anon81_Else_correct)))))
(let ((anon11_correct true))
(let ((anon73_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| S) 1)) i_4)) (= (ControlFlow 0 21) 13)) anon11_correct)))
(let ((anon73_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (- (|Seq#Length_21687| S) 1)) i_4) (and (=> (= (ControlFlow 0 14) (- 0 20)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 14) (- 0 19)) (< i_4 (|Seq#Length_21687| S))) (=> (< i_4 (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 14) (- 0 18)) (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S i_4) f_7)) (=> (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S i_4) f_7) (and (=> (= (ControlFlow 0 14) (- 0 17)) (>= (+ i_4 1) 0)) (=> (>= (+ i_4 1) 0) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< (+ i_4 1) (|Seq#Length_21687| S))) (=> (< (+ i_4 1) (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S (+ i_4 1)) f_7)) (=> (HasDirectPerm_21682_3658 QPMask@0 (|Seq#Index_21687| S (+ i_4 1)) f_7) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))))))))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 121) (- 0 123)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3_1)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| S i_3) (|Seq#Index_21687| S i_3_1))))
 :qid |stdinbpl.720:15|
 :skolemid |59|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3@@0)) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3_1@@0)) (< NoPerm p_1)) (< NoPerm p_1)) (not (= (|Seq#Index_21687| S i_3@@0) (|Seq#Index_21687| S i_3_1@@0))))
 :qid |stdinbpl.720:15|
 :skolemid |59|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3@@1) (< NoPerm p_1)) (and (qpRange1 (|Seq#Index_21687| S i_3@@1)) (= (invRecv1 (|Seq#Index_21687| S i_3@@1)) i_3@@1)))
 :qid |stdinbpl.726:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_21687| S i_3@@1))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S i_3@@1) f_7))
)) (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv1 o_4@@41)) (< NoPerm p_1)) (qpRange1 o_4@@41)) (= (|Seq#Index_21687| S (invRecv1 o_4@@41)) o_4@@41))
 :qid |stdinbpl.730:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@41))
))) (and (=> (= (ControlFlow 0 121) (- 0 122)) (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3@@2) (>= p_1 NoPerm))
 :qid |stdinbpl.736:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_21687| S i_3@@2))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S i_3@@2) f_7))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3@@3) (>= p_1 NoPerm))
 :qid |stdinbpl.736:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_21687| S i_3@@3))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S i_3@@3) f_7))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_3@@4) (> p_1 NoPerm)) (not (= (|Seq#Index_21687| S i_3@@4) null)))
 :qid |stdinbpl.742:22|
 :skolemid |63|
 :pattern ( (|Seq#Index_21687| S i_3@@4))
 :pattern ( (select (|PolymorphicMapType_31653_21682_3658#PolymorphicMapType_31653| Heap@@17) (|Seq#Index_21687| S i_3@@4) f_7))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv1 o_4@@42)) (< NoPerm p_1)) (qpRange1 o_4@@42)) (and (=> (< NoPerm p_1) (= (|Seq#Index_21687| S (invRecv1 o_4@@42)) o_4@@42)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@42 f_7) (+ (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@42 f_7) p_1)))) (=> (not (and (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) (invRecv1 o_4@@42)) (< NoPerm p_1)) (qpRange1 o_4@@42))) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@42 f_7) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@42 f_7))))
 :qid |stdinbpl.748:22|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@42 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_31713_53) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ZeroMask) o_4@@43 f_5@@29) (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@0) o_4@@43 f_5@@29)))
 :qid |stdinbpl.752:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| ZeroMask) o_4@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_31674_21682_53#PolymorphicMapType_31674| QPMask@0) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_31726_31727) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ZeroMask) o_4@@44 f_5@@30) (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@0) o_4@@44 f_5@@30)))
 :qid |stdinbpl.752:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| ZeroMask) o_4@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_31674_21682_31727#PolymorphicMapType_31674| QPMask@0) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_37786_3658) ) (!  (=> (not (= f_5@@31 f_7)) (= (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@45 f_5@@31) (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@45 f_5@@31)))
 :qid |stdinbpl.752:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| ZeroMask) o_4@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_31674_21682_3658#PolymorphicMapType_31674| QPMask@0) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_21682_92916) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ZeroMask) o_4@@46 f_5@@32) (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@0) o_4@@46 f_5@@32)))
 :qid |stdinbpl.752:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| ZeroMask) o_4@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_31674_21682_92916#PolymorphicMapType_31674| QPMask@0) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_21682_93049) ) (!  (=> true (= (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ZeroMask) o_4@@47 f_5@@33) (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@0) o_4@@47 f_5@@33)))
 :qid |stdinbpl.752:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| ZeroMask) o_4@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_31674_21682_97171#PolymorphicMapType_31674| QPMask@0) o_4@@47 f_5@@33))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 121) 120) anon72_Else_correct) (=> (= (ControlFlow 0 121) 14) anon73_Then_correct)) (=> (= (ControlFlow 0 121) 21) anon73_Else_correct)))))))))))
(let ((anon7_correct true))
(let ((anon71_Else_correct  (=> (and (not (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_2)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon71_Then_correct  (=> (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_2) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_2 (|Seq#Length_21687| S))) (=> (< i_2 (|Seq#Length_21687| S)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon68_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_21687| S i_1) (|Seq#Index_21687| S j_1))))
 :qid |stdinbpl.702:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (|Seq#Index_21687| S j_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_1) (|Seq#Index_21687| S j_1))
 :pattern ( (|Seq#ContainsTrigger_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1) (|Seq#Index_21687| S i_1))
 :pattern ( (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_1) (|Seq#Index_21687| S i_1))
 :pattern ( (|Seq#Index_21687| S i_1) (|Seq#Index_21687| S j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 124) 121) anon70_Else_correct) (=> (= (ControlFlow 0 124) 9) anon71_Then_correct)) (=> (= (ControlFlow 0 124) 12) anon71_Else_correct)))))
(let ((anon3_correct true))
(let ((anon69_Else_correct  (=> (and (not (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_14) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_5) (not (= i_14 j_5))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon69_Then_correct  (=> (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) i_14) (and (|Seq#Contains_3536| (|Seq#Range| 0 (|Seq#Length_21687| S)) j_5) (not (= i_14 j_5)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_21687| S))) (=> (< i_14 (|Seq#Length_21687| S)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_21687| S))) (=> (< j_5 (|Seq#Length_21687| S)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (< NoPerm p_1)) (and (< p_1 FullPerm) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 125) 124) anon68_Else_correct) (=> (= (ControlFlow 0 125) 2) anon69_Then_correct)) (=> (= (ControlFlow 0 125) 7) anon69_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 126) 125) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 34) (- 35))))
(check-sat)
