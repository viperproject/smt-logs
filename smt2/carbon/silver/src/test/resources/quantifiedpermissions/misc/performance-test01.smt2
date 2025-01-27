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
(declare-sort T@Field_34449_53 0)
(declare-sort T@Field_34462_34463 0)
(declare-sort T@Field_40536_3826 0)
(declare-sort T@Field_34449_100364 0)
(declare-sort T@Field_34449_100231 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_34410 0)) (((PolymorphicMapType_34410 (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| (Array T@Ref T@Field_40536_3826 Real)) (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| (Array T@Ref T@Field_34449_53 Real)) (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| (Array T@Ref T@Field_34462_34463 Real)) (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| (Array T@Ref T@Field_34449_100231 Real)) (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| (Array T@Ref T@Field_34449_100364 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34938 0)) (((PolymorphicMapType_34938 (|PolymorphicMapType_34938_34449_53#PolymorphicMapType_34938| (Array T@Ref T@Field_34449_53 Bool)) (|PolymorphicMapType_34938_34449_34463#PolymorphicMapType_34938| (Array T@Ref T@Field_34462_34463 Bool)) (|PolymorphicMapType_34938_34449_3826#PolymorphicMapType_34938| (Array T@Ref T@Field_40536_3826 Bool)) (|PolymorphicMapType_34938_34449_100231#PolymorphicMapType_34938| (Array T@Ref T@Field_34449_100231 Bool)) (|PolymorphicMapType_34938_34449_101542#PolymorphicMapType_34938| (Array T@Ref T@Field_34449_100364 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34389 0)) (((PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| (Array T@Ref T@Field_34449_53 Bool)) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| (Array T@Ref T@Field_34462_34463 T@Ref)) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| (Array T@Ref T@Field_40536_3826 Int)) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| (Array T@Ref T@Field_34449_100364 T@PolymorphicMapType_34938)) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| (Array T@Ref T@Field_34449_100231 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_34449_53)
(declare-fun f_7 () T@Field_40536_3826)
(declare-sort T@Seq_40581 0)
(declare-fun |Seq#Length_23761| (T@Seq_40581) Int)
(declare-fun |Seq#Drop_23761| (T@Seq_40581 Int) T@Seq_40581)
(declare-sort T@Seq_3704 0)
(declare-fun |Seq#Length_3704| (T@Seq_3704) Int)
(declare-fun |Seq#Drop_3704| (T@Seq_3704 Int) T@Seq_3704)
(declare-fun succHeap (T@PolymorphicMapType_34389 T@PolymorphicMapType_34389) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34389 T@PolymorphicMapType_34389) Bool)
(declare-fun state (T@PolymorphicMapType_34389 T@PolymorphicMapType_34410) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_34410) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_34938)
(declare-fun |Seq#Index_23761| (T@Seq_40581 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3704| (T@Seq_3704 Int) Int)
(declare-fun |Seq#Empty_23761| () T@Seq_40581)
(declare-fun |Seq#Empty_3704| () T@Seq_3704)
(declare-fun |Seq#Update_23761| (T@Seq_40581 Int T@Ref) T@Seq_40581)
(declare-fun |Seq#Update_3704| (T@Seq_3704 Int Int) T@Seq_3704)
(declare-fun |Seq#Take_23761| (T@Seq_40581 Int) T@Seq_40581)
(declare-fun |Seq#Take_3704| (T@Seq_3704 Int) T@Seq_3704)
(declare-fun |Seq#Contains_3704| (T@Seq_3704 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3704)
(declare-fun |Seq#Contains_40581| (T@Seq_40581 T@Ref) Bool)
(declare-fun |Seq#Skolem_40581| (T@Seq_40581 T@Ref) Int)
(declare-fun |Seq#Skolem_3704| (T@Seq_3704 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34389 T@PolymorphicMapType_34389 T@PolymorphicMapType_34410) Bool)
(declare-fun IsPredicateField_34449_100322 (T@Field_34449_100231) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_34449 (T@Field_34449_100231) T@Field_34449_100364)
(declare-fun HasDirectPerm_34449_100295 (T@PolymorphicMapType_34410 T@Ref T@Field_34449_100231) Bool)
(declare-fun IsWandField_34449_102069 (T@Field_34449_100231) Bool)
(declare-fun WandMaskField_34449 (T@Field_34449_100231) T@Field_34449_100364)
(declare-fun |Seq#Singleton_23761| (T@Ref) T@Seq_40581)
(declare-fun |Seq#Singleton_3704| (Int) T@Seq_3704)
(declare-fun |Seq#Append_40581| (T@Seq_40581 T@Seq_40581) T@Seq_40581)
(declare-fun |Seq#Append_3704| (T@Seq_3704 T@Seq_3704) T@Seq_3704)
(declare-fun dummyHeap () T@PolymorphicMapType_34389)
(declare-fun ZeroMask () T@PolymorphicMapType_34410)
(declare-fun InsidePredicate_34449_34449 (T@Field_34449_100231 T@FrameType T@Field_34449_100231 T@FrameType) Bool)
(declare-fun IsPredicateField_23757_3826 (T@Field_40536_3826) Bool)
(declare-fun IsWandField_23757_3826 (T@Field_40536_3826) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_23757_105615 (T@Field_34449_100364) Bool)
(declare-fun IsWandField_23757_105631 (T@Field_34449_100364) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_23757_34463 (T@Field_34462_34463) Bool)
(declare-fun IsWandField_23757_34463 (T@Field_34462_34463) Bool)
(declare-fun IsPredicateField_23757_53 (T@Field_34449_53) Bool)
(declare-fun IsWandField_23757_53 (T@Field_34449_53) Bool)
(declare-fun HasDirectPerm_34449_106069 (T@PolymorphicMapType_34410 T@Ref T@Field_34449_100364) Bool)
(declare-fun HasDirectPerm_34449_3826 (T@PolymorphicMapType_34410 T@Ref T@Field_40536_3826) Bool)
(declare-fun HasDirectPerm_34449_34463 (T@PolymorphicMapType_34410 T@Ref T@Field_34462_34463) Bool)
(declare-fun HasDirectPerm_34449_53 (T@PolymorphicMapType_34410 T@Ref T@Field_34449_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_34410 T@PolymorphicMapType_34410 T@PolymorphicMapType_34410) Bool)
(declare-fun |Seq#Equal_40581| (T@Seq_40581 T@Seq_40581) Bool)
(declare-fun |Seq#Equal_3704| (T@Seq_3704 T@Seq_3704) Bool)
(declare-fun |Seq#ContainsTrigger_23761| (T@Seq_40581 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3704| (T@Seq_3704 Int) Bool)
(declare-fun |Seq#SkolemDiff_40581| (T@Seq_40581 T@Seq_40581) Int)
(declare-fun |Seq#SkolemDiff_3704| (T@Seq_3704 T@Seq_3704) Int)
(assert (forall ((s T@Seq_40581) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_23761| s)) (= (|Seq#Length_23761| (|Seq#Drop_23761| s n)) (- (|Seq#Length_23761| s) n))) (=> (< (|Seq#Length_23761| s) n) (= (|Seq#Length_23761| (|Seq#Drop_23761| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_23761| (|Seq#Drop_23761| s n)) (|Seq#Length_23761| s))))
 :qid |stdinbpl.390:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_23761| (|Seq#Drop_23761| s n)))
 :pattern ( (|Seq#Length_23761| s) (|Seq#Drop_23761| s n))
)))
(assert (forall ((s@@0 T@Seq_3704) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3704| s@@0)) (= (|Seq#Length_3704| (|Seq#Drop_3704| s@@0 n@@0)) (- (|Seq#Length_3704| s@@0) n@@0))) (=> (< (|Seq#Length_3704| s@@0) n@@0) (= (|Seq#Length_3704| (|Seq#Drop_3704| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3704| (|Seq#Drop_3704| s@@0 n@@0)) (|Seq#Length_3704| s@@0))))
 :qid |stdinbpl.390:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3704| (|Seq#Drop_3704| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3704| s@@0) (|Seq#Drop_3704| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_34389) (Heap1 T@PolymorphicMapType_34389) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_34389) (Mask T@PolymorphicMapType_34410) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34389) (Heap1@@0 T@PolymorphicMapType_34389) (Heap2 T@PolymorphicMapType_34389) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_34449_100364) ) (!  (not (select (|PolymorphicMapType_34938_34449_101542#PolymorphicMapType_34938| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34938_34449_101542#PolymorphicMapType_34938| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_34449_100231) ) (!  (not (select (|PolymorphicMapType_34938_34449_100231#PolymorphicMapType_34938| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34938_34449_100231#PolymorphicMapType_34938| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_40536_3826) ) (!  (not (select (|PolymorphicMapType_34938_34449_3826#PolymorphicMapType_34938| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34938_34449_3826#PolymorphicMapType_34938| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_34462_34463) ) (!  (not (select (|PolymorphicMapType_34938_34449_34463#PolymorphicMapType_34938| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34938_34449_34463#PolymorphicMapType_34938| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_34449_53) ) (!  (not (select (|PolymorphicMapType_34938_34449_53#PolymorphicMapType_34938| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_34938_34449_53#PolymorphicMapType_34938| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_40581) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_23761| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_23761| (|Seq#Drop_23761| s@@1 n@@1) j) (|Seq#Index_23761| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.411:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_23761| (|Seq#Drop_23761| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3704) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3704| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3704| (|Seq#Drop_3704| s@@2 n@@2) j@@0) (|Seq#Index_3704| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.411:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3704| (|Seq#Drop_3704| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_23761| |Seq#Empty_23761|) 0))
(assert (= (|Seq#Length_3704| |Seq#Empty_3704|) 0))
(assert (forall ((s@@3 T@Seq_40581) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_23761| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_23761| (|Seq#Update_23761| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_23761| (|Seq#Update_23761| s@@3 i v) n@@3) (|Seq#Index_23761| s@@3 n@@3)))))
 :qid |stdinbpl.366:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_23761| (|Seq#Update_23761| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_23761| s@@3 n@@3) (|Seq#Update_23761| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3704) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3704| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3704| (|Seq#Update_3704| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3704| (|Seq#Update_3704| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3704| s@@4 n@@4)))))
 :qid |stdinbpl.366:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3704| (|Seq#Update_3704| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3704| s@@4 n@@4) (|Seq#Update_3704| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_40581) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_23761| s@@5)) (= (|Seq#Length_23761| (|Seq#Take_23761| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_23761| s@@5) n@@5) (= (|Seq#Length_23761| (|Seq#Take_23761| s@@5 n@@5)) (|Seq#Length_23761| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_23761| (|Seq#Take_23761| s@@5 n@@5)) 0)))
 :qid |stdinbpl.377:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_23761| (|Seq#Take_23761| s@@5 n@@5)))
 :pattern ( (|Seq#Take_23761| s@@5 n@@5) (|Seq#Length_23761| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3704) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3704| s@@6)) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3704| s@@6) n@@6) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@6 n@@6)) (|Seq#Length_3704| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3704| (|Seq#Take_3704| s@@6 n@@6)) 0)))
 :qid |stdinbpl.377:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3704| (|Seq#Take_3704| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3704| s@@6 n@@6) (|Seq#Length_3704| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3704| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.651:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_40581) (x T@Ref) ) (!  (=> (|Seq#Contains_40581| s@@7 x) (and (and (<= 0 (|Seq#Skolem_40581| s@@7 x)) (< (|Seq#Skolem_40581| s@@7 x) (|Seq#Length_23761| s@@7))) (= (|Seq#Index_23761| s@@7 (|Seq#Skolem_40581| s@@7 x)) x)))
 :qid |stdinbpl.509:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_40581| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3704) (x@@0 Int) ) (!  (=> (|Seq#Contains_3704| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3704| s@@8 x@@0)) (< (|Seq#Skolem_3704| s@@8 x@@0) (|Seq#Length_3704| s@@8))) (= (|Seq#Index_3704| s@@8 (|Seq#Skolem_3704| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.509:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3704| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_40581) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_23761| s@@9 n@@7) s@@9))
 :qid |stdinbpl.493:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_23761| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3704) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3704| s@@10 n@@8) s@@10))
 :qid |stdinbpl.493:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3704| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.346:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.344:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34389) (ExhaleHeap T@PolymorphicMapType_34389) (Mask@@0 T@PolymorphicMapType_34410) (pm_f_10 T@Field_34449_100231) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_34449_100295 Mask@@0 null pm_f_10) (IsPredicateField_34449_100322 pm_f_10)) (= (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@0) null (PredicateMaskField_34449 pm_f_10)) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap) null (PredicateMaskField_34449 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_34449_100322 pm_f_10) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap) null (PredicateMaskField_34449 pm_f_10)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34389) (ExhaleHeap@@0 T@PolymorphicMapType_34389) (Mask@@1 T@PolymorphicMapType_34410) (pm_f_10@@0 T@Field_34449_100231) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_34449_100295 Mask@@1 null pm_f_10@@0) (IsWandField_34449_102069 pm_f_10@@0)) (= (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@1) null (WandMaskField_34449 pm_f_10@@0)) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@0) null (WandMaskField_34449 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_34449_102069 pm_f_10@@0) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@0) null (WandMaskField_34449 pm_f_10@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_40581| (|Seq#Singleton_23761| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.634:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_40581| (|Seq#Singleton_23761| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3704| (|Seq#Singleton_3704| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.634:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3704| (|Seq#Singleton_3704| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_40581) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_23761| s@@11))) (= (|Seq#Index_23761| (|Seq#Take_23761| s@@11 n@@9) j@@3) (|Seq#Index_23761| s@@11 j@@3)))
 :qid |stdinbpl.385:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_23761| (|Seq#Take_23761| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_23761| s@@11 j@@3) (|Seq#Take_23761| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3704) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3704| s@@12))) (= (|Seq#Index_3704| (|Seq#Take_3704| s@@12 n@@10) j@@4) (|Seq#Index_3704| s@@12 j@@4)))
 :qid |stdinbpl.385:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3704| (|Seq#Take_3704| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3704| s@@12 j@@4) (|Seq#Take_3704| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_40581) (t T@Seq_40581) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_23761| s@@13))) (< n@@11 (|Seq#Length_23761| (|Seq#Append_40581| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_23761| s@@13)) (|Seq#Length_23761| s@@13)) n@@11) (= (|Seq#Take_23761| (|Seq#Append_40581| s@@13 t) n@@11) (|Seq#Append_40581| s@@13 (|Seq#Take_23761| t (|Seq#Sub| n@@11 (|Seq#Length_23761| s@@13)))))))
 :qid |stdinbpl.470:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_23761| (|Seq#Append_40581| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3704) (t@@0 T@Seq_3704) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3704| s@@14))) (< n@@12 (|Seq#Length_3704| (|Seq#Append_3704| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3704| s@@14)) (|Seq#Length_3704| s@@14)) n@@12) (= (|Seq#Take_3704| (|Seq#Append_3704| s@@14 t@@0) n@@12) (|Seq#Append_3704| s@@14 (|Seq#Take_3704| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3704| s@@14)))))))
 :qid |stdinbpl.470:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3704| (|Seq#Append_3704| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34389) (ExhaleHeap@@1 T@PolymorphicMapType_34389) (Mask@@2 T@PolymorphicMapType_34410) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@2) o_23 $allocated) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@1) o_23 $allocated))
)))
(assert (forall ((p T@Field_34449_100231) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_34449_34449 p v_1 p w))
 :qid |stdinbpl.288:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34449_34449 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_40581) (s1 T@Seq_40581) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_23761|)) (not (= s1 |Seq#Empty_23761|))) (<= (|Seq#Length_23761| s0) n@@13)) (< n@@13 (|Seq#Length_23761| (|Seq#Append_40581| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_23761| s0)) (|Seq#Length_23761| s0)) n@@13) (= (|Seq#Index_23761| (|Seq#Append_40581| s0 s1) n@@13) (|Seq#Index_23761| s1 (|Seq#Sub| n@@13 (|Seq#Length_23761| s0))))))
 :qid |stdinbpl.357:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_23761| (|Seq#Append_40581| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3704) (s1@@0 T@Seq_3704) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3704|)) (not (= s1@@0 |Seq#Empty_3704|))) (<= (|Seq#Length_3704| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3704| (|Seq#Append_3704| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3704| s0@@0)) (|Seq#Length_3704| s0@@0)) n@@14) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@0 s1@@0) n@@14) (|Seq#Index_3704| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3704| s0@@0))))))
 :qid |stdinbpl.357:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3704| (|Seq#Append_3704| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_23757_3826 f_7)))
(assert  (not (IsWandField_23757_3826 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34389) (ExhaleHeap@@2 T@PolymorphicMapType_34389) (Mask@@3 T@PolymorphicMapType_34410) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_34410) (o_2@@4 T@Ref) (f_4@@4 T@Field_34449_100364) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_23757_105615 f_4@@4))) (not (IsWandField_23757_105631 f_4@@4))) (<= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_34410) (o_2@@5 T@Ref) (f_4@@5 T@Field_34449_100231) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_34449_100322 f_4@@5))) (not (IsWandField_34449_102069 f_4@@5))) (<= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_34410) (o_2@@6 T@Ref) (f_4@@6 T@Field_34462_34463) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_23757_34463 f_4@@6))) (not (IsWandField_23757_34463 f_4@@6))) (<= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_34410) (o_2@@7 T@Ref) (f_4@@7 T@Field_34449_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_23757_53 f_4@@7))) (not (IsWandField_23757_53 f_4@@7))) (<= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_34410) (o_2@@8 T@Ref) (f_4@@8 T@Field_40536_3826) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_23757_3826 f_4@@8))) (not (IsWandField_23757_3826 f_4@@8))) (<= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_34410) (o_2@@9 T@Ref) (f_4@@9 T@Field_34449_100364) ) (! (= (HasDirectPerm_34449_106069 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34449_106069 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_34410) (o_2@@10 T@Ref) (f_4@@10 T@Field_34449_100231) ) (! (= (HasDirectPerm_34449_100295 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34449_100295 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34410) (o_2@@11 T@Ref) (f_4@@11 T@Field_40536_3826) ) (! (= (HasDirectPerm_34449_3826 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34449_3826 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34410) (o_2@@12 T@Ref) (f_4@@12 T@Field_34462_34463) ) (! (= (HasDirectPerm_34449_34463 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34449_34463 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34410) (o_2@@13 T@Ref) (f_4@@13 T@Field_34449_53) ) (! (= (HasDirectPerm_34449_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34449_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34389) (ExhaleHeap@@3 T@PolymorphicMapType_34389) (Mask@@14 T@PolymorphicMapType_34410) (pm_f_10@@1 T@Field_34449_100231) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_34449_100295 Mask@@14 null pm_f_10@@1) (IsPredicateField_34449_100322 pm_f_10@@1)) (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_34449_53) ) (!  (=> (select (|PolymorphicMapType_34938_34449_53#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@4) null (PredicateMaskField_34449 pm_f_10@@1))) o2_10 f_15) (= (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@4) o2_10 f_15) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_34462_34463) ) (!  (=> (select (|PolymorphicMapType_34938_34449_34463#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@4) null (PredicateMaskField_34449 pm_f_10@@1))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@4) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_40536_3826) ) (!  (=> (select (|PolymorphicMapType_34938_34449_3826#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@4) null (PredicateMaskField_34449 pm_f_10@@1))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@4) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_34449_100231) ) (!  (=> (select (|PolymorphicMapType_34938_34449_100231#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@4) null (PredicateMaskField_34449 pm_f_10@@1))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@4) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_34449_100364) ) (!  (=> (select (|PolymorphicMapType_34938_34449_101542#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@4) null (PredicateMaskField_34449 pm_f_10@@1))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@4) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@3) o2_10@@3 f_15@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_34449_100322 pm_f_10@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34389) (ExhaleHeap@@4 T@PolymorphicMapType_34389) (Mask@@15 T@PolymorphicMapType_34410) (pm_f_10@@2 T@Field_34449_100231) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_34449_100295 Mask@@15 null pm_f_10@@2) (IsWandField_34449_102069 pm_f_10@@2)) (and (and (and (and (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_34449_53) ) (!  (=> (select (|PolymorphicMapType_34938_34449_53#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@5) null (WandMaskField_34449 pm_f_10@@2))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@5) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@4 f_15@@4))
)) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_34462_34463) ) (!  (=> (select (|PolymorphicMapType_34938_34449_34463#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@5) null (WandMaskField_34449 pm_f_10@@2))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@5) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_40536_3826) ) (!  (=> (select (|PolymorphicMapType_34938_34449_3826#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@5) null (WandMaskField_34449 pm_f_10@@2))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@5) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_34449_100231) ) (!  (=> (select (|PolymorphicMapType_34938_34449_100231#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@5) null (WandMaskField_34449 pm_f_10@@2))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@5) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_34449_100364) ) (!  (=> (select (|PolymorphicMapType_34938_34449_101542#PolymorphicMapType_34938| (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@5) null (WandMaskField_34449 pm_f_10@@2))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@5) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@4) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_34449_102069 pm_f_10@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.276:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3704| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.649:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3704| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34389) (ExhaleHeap@@5 T@PolymorphicMapType_34389) (Mask@@16 T@PolymorphicMapType_34410) (o_23@@0 T@Ref) (f_15@@9 T@Field_34449_100364) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_34449_106069 Mask@@16 o_23@@0 f_15@@9) (= (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@6) o_23@@0 f_15@@9) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@5) o_23@@0 f_15@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| ExhaleHeap@@5) o_23@@0 f_15@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34389) (ExhaleHeap@@6 T@PolymorphicMapType_34389) (Mask@@17 T@PolymorphicMapType_34410) (o_23@@1 T@Ref) (f_15@@10 T@Field_34449_100231) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_34449_100295 Mask@@17 o_23@@1 f_15@@10) (= (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@7) o_23@@1 f_15@@10) (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| ExhaleHeap@@6) o_23@@1 f_15@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| ExhaleHeap@@6) o_23@@1 f_15@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34389) (ExhaleHeap@@7 T@PolymorphicMapType_34389) (Mask@@18 T@PolymorphicMapType_34410) (o_23@@2 T@Ref) (f_15@@11 T@Field_40536_3826) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_34449_3826 Mask@@18 o_23@@2 f_15@@11) (= (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@8) o_23@@2 f_15@@11) (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@@7) o_23@@2 f_15@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@@7) o_23@@2 f_15@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34389) (ExhaleHeap@@8 T@PolymorphicMapType_34389) (Mask@@19 T@PolymorphicMapType_34410) (o_23@@3 T@Ref) (f_15@@12 T@Field_34462_34463) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_34449_34463 Mask@@19 o_23@@3 f_15@@12) (= (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@9) o_23@@3 f_15@@12) (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| ExhaleHeap@@8) o_23@@3 f_15@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| ExhaleHeap@@8) o_23@@3 f_15@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34389) (ExhaleHeap@@9 T@PolymorphicMapType_34389) (Mask@@20 T@PolymorphicMapType_34410) (o_23@@4 T@Ref) (f_15@@13 T@Field_34449_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_34449_53 Mask@@20 o_23@@4 f_15@@13) (= (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@10) o_23@@4 f_15@@13) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@9) o_23@@4 f_15@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| ExhaleHeap@@9) o_23@@4 f_15@@13))
)))
(assert (forall ((s0@@1 T@Seq_40581) (s1@@1 T@Seq_40581) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_23761|)) (not (= s1@@1 |Seq#Empty_23761|))) (= (|Seq#Length_23761| (|Seq#Append_40581| s0@@1 s1@@1)) (+ (|Seq#Length_23761| s0@@1) (|Seq#Length_23761| s1@@1))))
 :qid |stdinbpl.326:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_23761| (|Seq#Append_40581| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3704) (s1@@2 T@Seq_3704) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3704|)) (not (= s1@@2 |Seq#Empty_3704|))) (= (|Seq#Length_3704| (|Seq#Append_3704| s0@@2 s1@@2)) (+ (|Seq#Length_3704| s0@@2) (|Seq#Length_3704| s1@@2))))
 :qid |stdinbpl.326:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3704| (|Seq#Append_3704| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_34449_100364) ) (! (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_34449_100231) ) (! (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_34462_34463) ) (! (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_34449_53) ) (! (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_40536_3826) ) (! (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_40581) (t@@1 T@Seq_40581) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_23761| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_23761| s@@15)) (|Seq#Length_23761| s@@15)) n@@15) (= (|Seq#Drop_23761| (|Seq#Append_40581| s@@15 t@@1) n@@15) (|Seq#Drop_23761| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_23761| s@@15))))))
 :qid |stdinbpl.483:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_23761| (|Seq#Append_40581| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3704) (t@@2 T@Seq_3704) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3704| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3704| s@@16)) (|Seq#Length_3704| s@@16)) n@@16) (= (|Seq#Drop_3704| (|Seq#Append_3704| s@@16 t@@2) n@@16) (|Seq#Drop_3704| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3704| s@@16))))))
 :qid |stdinbpl.483:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3704| (|Seq#Append_3704| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34410) (SummandMask1 T@PolymorphicMapType_34410) (SummandMask2 T@PolymorphicMapType_34410) (o_2@@19 T@Ref) (f_4@@19 T@Field_34449_100364) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34410) (SummandMask1@@0 T@PolymorphicMapType_34410) (SummandMask2@@0 T@PolymorphicMapType_34410) (o_2@@20 T@Ref) (f_4@@20 T@Field_34449_100231) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34410) (SummandMask1@@1 T@PolymorphicMapType_34410) (SummandMask2@@1 T@PolymorphicMapType_34410) (o_2@@21 T@Ref) (f_4@@21 T@Field_34462_34463) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34410) (SummandMask1@@2 T@PolymorphicMapType_34410) (SummandMask2@@2 T@PolymorphicMapType_34410) (o_2@@22 T@Ref) (f_4@@22 T@Field_34449_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34410) (SummandMask1@@3 T@PolymorphicMapType_34410) (SummandMask2@@3 T@PolymorphicMapType_34410) (o_2@@23 T@Ref) (f_4@@23 T@Field_40536_3826) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.648:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3704| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_40581) (b T@Seq_40581) ) (!  (=> (|Seq#Equal_40581| a b) (= a b))
 :qid |stdinbpl.621:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_40581| a b))
)))
(assert (forall ((a@@0 T@Seq_3704) (b@@0 T@Seq_3704) ) (!  (=> (|Seq#Equal_3704| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.621:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3704| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_40581) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_23761| s@@17))) (|Seq#ContainsTrigger_23761| s@@17 (|Seq#Index_23761| s@@17 i@@3)))
 :qid |stdinbpl.514:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_23761| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3704) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3704| s@@18))) (|Seq#ContainsTrigger_3704| s@@18 (|Seq#Index_3704| s@@18 i@@4)))
 :qid |stdinbpl.514:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3704| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_40581) (s1@@3 T@Seq_40581) ) (!  (and (=> (= s0@@3 |Seq#Empty_23761|) (= (|Seq#Append_40581| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_23761|) (= (|Seq#Append_40581| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.332:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_40581| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3704) (s1@@4 T@Seq_3704) ) (!  (and (=> (= s0@@4 |Seq#Empty_3704|) (= (|Seq#Append_3704| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3704|) (= (|Seq#Append_3704| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.332:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3704| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_23761| (|Seq#Singleton_23761| t@@3) 0) t@@3)
 :qid |stdinbpl.336:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_23761| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3704| (|Seq#Singleton_3704| t@@4) 0) t@@4)
 :qid |stdinbpl.336:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3704| t@@4))
)))
(assert (forall ((s@@19 T@Seq_40581) ) (! (<= 0 (|Seq#Length_23761| s@@19))
 :qid |stdinbpl.315:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_23761| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3704) ) (! (<= 0 (|Seq#Length_3704| s@@20))
 :qid |stdinbpl.315:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3704| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_40581) (s1@@5 T@Seq_40581) ) (!  (=> (|Seq#Equal_40581| s0@@5 s1@@5) (and (= (|Seq#Length_23761| s0@@5) (|Seq#Length_23761| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_23761| s0@@5))) (= (|Seq#Index_23761| s0@@5 j@@6) (|Seq#Index_23761| s1@@5 j@@6)))
 :qid |stdinbpl.611:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_23761| s0@@5 j@@6))
 :pattern ( (|Seq#Index_23761| s1@@5 j@@6))
))))
 :qid |stdinbpl.608:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_40581| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3704) (s1@@6 T@Seq_3704) ) (!  (=> (|Seq#Equal_3704| s0@@6 s1@@6) (and (= (|Seq#Length_3704| s0@@6) (|Seq#Length_3704| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3704| s0@@6))) (= (|Seq#Index_3704| s0@@6 j@@7) (|Seq#Index_3704| s1@@6 j@@7)))
 :qid |stdinbpl.611:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3704| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3704| s1@@6 j@@7))
))))
 :qid |stdinbpl.608:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3704| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_23761| (|Seq#Singleton_23761| t@@5)) 1)
 :qid |stdinbpl.323:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_23761| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3704| (|Seq#Singleton_3704| t@@6)) 1)
 :qid |stdinbpl.323:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3704| t@@6))
)))
(assert (forall ((s@@21 T@Seq_40581) (t@@7 T@Seq_40581) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_23761| s@@21))) (= (|Seq#Take_23761| (|Seq#Append_40581| s@@21 t@@7) n@@17) (|Seq#Take_23761| s@@21 n@@17)))
 :qid |stdinbpl.465:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_23761| (|Seq#Append_40581| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3704) (t@@8 T@Seq_3704) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3704| s@@22))) (= (|Seq#Take_3704| (|Seq#Append_3704| s@@22 t@@8) n@@18) (|Seq#Take_3704| s@@22 n@@18)))
 :qid |stdinbpl.465:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3704| (|Seq#Append_3704| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_40581) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_23761| s@@23))) (= (|Seq#Length_23761| (|Seq#Update_23761| s@@23 i@@5 v@@2)) (|Seq#Length_23761| s@@23)))
 :qid |stdinbpl.364:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_23761| (|Seq#Update_23761| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_23761| s@@23) (|Seq#Update_23761| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3704) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3704| s@@24))) (= (|Seq#Length_3704| (|Seq#Update_3704| s@@24 i@@6 v@@3)) (|Seq#Length_3704| s@@24)))
 :qid |stdinbpl.364:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3704| (|Seq#Update_3704| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3704| s@@24) (|Seq#Update_3704| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34389) (o_4 T@Ref) (f_25 T@Field_34449_100231) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@11) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@11) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@11) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@11) (store (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@11) o_4 f_25 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@11) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@11) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@11) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@11) (store (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@11) o_4 f_25 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34389) (o_4@@0 T@Ref) (f_25@@0 T@Field_34449_100364) (v@@5 T@PolymorphicMapType_34938) ) (! (succHeap Heap@@12 (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@12) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@12) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@12) (store (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@12) o_4@@0 f_25@@0 v@@5) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@12) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@12) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@12) (store (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@12) o_4@@0 f_25@@0 v@@5) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34389) (o_4@@1 T@Ref) (f_25@@1 T@Field_40536_3826) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@13) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@13) (store (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@13) o_4@@1 f_25@@1 v@@6) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@13) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@13) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@13) (store (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@13) o_4@@1 f_25@@1 v@@6) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@13) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34389) (o_4@@2 T@Ref) (f_25@@2 T@Field_34462_34463) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@14) (store (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@14) o_4@@2 f_25@@2 v@@7) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@14) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@14) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34389 (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@14) (store (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@14) o_4@@2 f_25@@2 v@@7) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@14) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@14) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34389) (o_4@@3 T@Ref) (f_25@@3 T@Field_34449_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_34389 (store (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@15) o_4@@3 f_25@@3 v@@8) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@15) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@15) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@15) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34389 (store (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@15) o_4@@3 f_25@@3 v@@8) (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@15) (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@15) (|PolymorphicMapType_34389_34449_100408#PolymorphicMapType_34389| Heap@@15) (|PolymorphicMapType_34389_34449_100231#PolymorphicMapType_34389| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_40581) (t@@9 T@Seq_40581) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_23761| s@@25))) (= (|Seq#Drop_23761| (|Seq#Append_40581| s@@25 t@@9) n@@19) (|Seq#Append_40581| (|Seq#Drop_23761| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.479:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_23761| (|Seq#Append_40581| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3704) (t@@10 T@Seq_3704) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3704| s@@26))) (= (|Seq#Drop_3704| (|Seq#Append_3704| s@@26 t@@10) n@@20) (|Seq#Append_3704| (|Seq#Drop_3704| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.479:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3704| (|Seq#Append_3704| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_40581) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_23761| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_23761| (|Seq#Drop_23761| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_23761| s@@27 i@@7))))
 :qid |stdinbpl.415:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_23761| s@@27 n@@21) (|Seq#Index_23761| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3704) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3704| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3704| (|Seq#Drop_3704| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3704| s@@28 i@@8))))
 :qid |stdinbpl.415:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3704| s@@28 n@@22) (|Seq#Index_3704| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_40581) (s1@@7 T@Seq_40581) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_23761|)) (not (= s1@@7 |Seq#Empty_23761|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_23761| s0@@7))) (= (|Seq#Index_23761| (|Seq#Append_40581| s0@@7 s1@@7) n@@23) (|Seq#Index_23761| s0@@7 n@@23)))
 :qid |stdinbpl.355:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_23761| (|Seq#Append_40581| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_23761| s0@@7 n@@23) (|Seq#Append_40581| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3704) (s1@@8 T@Seq_3704) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3704|)) (not (= s1@@8 |Seq#Empty_3704|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3704| s0@@8))) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@8 s1@@8) n@@24) (|Seq#Index_3704| s0@@8 n@@24)))
 :qid |stdinbpl.355:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3704| (|Seq#Append_3704| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3704| s0@@8 n@@24) (|Seq#Append_3704| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_40581) (s1@@9 T@Seq_40581) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_23761|)) (not (= s1@@9 |Seq#Empty_23761|))) (<= 0 m)) (< m (|Seq#Length_23761| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_23761| s0@@9)) (|Seq#Length_23761| s0@@9)) m) (= (|Seq#Index_23761| (|Seq#Append_40581| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_23761| s0@@9))) (|Seq#Index_23761| s1@@9 m))))
 :qid |stdinbpl.360:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_23761| s1@@9 m) (|Seq#Append_40581| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3704) (s1@@10 T@Seq_3704) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3704|)) (not (= s1@@10 |Seq#Empty_3704|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3704| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3704| s0@@10)) (|Seq#Length_3704| s0@@10)) m@@0) (= (|Seq#Index_3704| (|Seq#Append_3704| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3704| s0@@10))) (|Seq#Index_3704| s1@@10 m@@0))))
 :qid |stdinbpl.360:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3704| s1@@10 m@@0) (|Seq#Append_3704| s0@@10 s1@@10))
)))
(assert (forall ((o_4@@4 T@Ref) (f_9 T@Field_34462_34463) (Heap@@16 T@PolymorphicMapType_34389) ) (!  (=> (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@16) o_4@@4 $allocated) (select (|PolymorphicMapType_34389_23499_53#PolymorphicMapType_34389| Heap@@16) (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@16) o_4@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34389_23502_23503#PolymorphicMapType_34389| Heap@@16) o_4@@4 f_9))
)))
(assert (forall ((s@@29 T@Seq_40581) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_23761| s@@29))) (= (|Seq#Index_23761| s@@29 i@@9) x@@3)) (|Seq#Contains_40581| s@@29 x@@3))
 :qid |stdinbpl.512:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_40581| s@@29 x@@3) (|Seq#Index_23761| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3704) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3704| s@@30))) (= (|Seq#Index_3704| s@@30 i@@10) x@@4)) (|Seq#Contains_3704| s@@30 x@@4))
 :qid |stdinbpl.512:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3704| s@@30 x@@4) (|Seq#Index_3704| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_40581) (s1@@11 T@Seq_40581) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_40581| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_40581| s0@@11 s1@@11))) (not (= (|Seq#Length_23761| s0@@11) (|Seq#Length_23761| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_40581| s0@@11 s1@@11))) (= (|Seq#Length_23761| s0@@11) (|Seq#Length_23761| s1@@11))) (= (|Seq#SkolemDiff_40581| s0@@11 s1@@11) (|Seq#SkolemDiff_40581| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_40581| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_40581| s0@@11 s1@@11) (|Seq#Length_23761| s0@@11))) (not (= (|Seq#Index_23761| s0@@11 (|Seq#SkolemDiff_40581| s0@@11 s1@@11)) (|Seq#Index_23761| s1@@11 (|Seq#SkolemDiff_40581| s0@@11 s1@@11))))))
 :qid |stdinbpl.616:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_40581| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3704) (s1@@12 T@Seq_3704) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3704| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3704| s0@@12 s1@@12))) (not (= (|Seq#Length_3704| s0@@12) (|Seq#Length_3704| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3704| s0@@12 s1@@12))) (= (|Seq#Length_3704| s0@@12) (|Seq#Length_3704| s1@@12))) (= (|Seq#SkolemDiff_3704| s0@@12 s1@@12) (|Seq#SkolemDiff_3704| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3704| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3704| s0@@12 s1@@12) (|Seq#Length_3704| s0@@12))) (not (= (|Seq#Index_3704| s0@@12 (|Seq#SkolemDiff_3704| s0@@12 s1@@12)) (|Seq#Index_3704| s1@@12 (|Seq#SkolemDiff_3704| s0@@12 s1@@12))))))
 :qid |stdinbpl.616:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3704| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_34449_100231) (v_1@@0 T@FrameType) (q T@Field_34449_100231) (w@@0 T@FrameType) (r T@Field_34449_100231) (u T@FrameType) ) (!  (=> (and (InsidePredicate_34449_34449 p@@1 v_1@@0 q w@@0) (InsidePredicate_34449_34449 q w@@0 r u)) (InsidePredicate_34449_34449 p@@1 v_1@@0 r u))
 :qid |stdinbpl.283:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34449_34449 p@@1 v_1@@0 q w@@0) (InsidePredicate_34449_34449 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_40581) ) (!  (=> (= (|Seq#Length_23761| s@@31) 0) (= s@@31 |Seq#Empty_23761|))
 :qid |stdinbpl.319:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_23761| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3704) ) (!  (=> (= (|Seq#Length_3704| s@@32) 0) (= s@@32 |Seq#Empty_3704|))
 :qid |stdinbpl.319:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3704| s@@32))
)))
(assert (forall ((s@@33 T@Seq_40581) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_23761| s@@33 n@@25) |Seq#Empty_23761|))
 :qid |stdinbpl.495:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_23761| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3704) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3704| s@@34 n@@26) |Seq#Empty_3704|))
 :qid |stdinbpl.495:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3704| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs2 () T@Seq_40581)
(declare-fun i_52 () Int)
(declare-fun j_27_2 () Int)
(declare-fun dummyFunction_3826 (Int) Bool)
(declare-fun ExhaleHeap@11 () T@PolymorphicMapType_34389)
(declare-fun arg_p_12@0 () Real)
(declare-fun neverTriggered35 (Int) Bool)
(declare-fun QPMask@24 () T@PolymorphicMapType_34410)
(declare-fun xs3 () T@Seq_40581)
(declare-fun ExhaleHeap@10 () T@PolymorphicMapType_34389)
(declare-fun arg_p_11@0 () Real)
(declare-fun neverTriggered34 (Int) Bool)
(declare-fun QPMask@23 () T@PolymorphicMapType_34410)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun i_49 () Int)
(declare-fun j_25_2 () Int)
(declare-fun xs1 () T@Seq_40581)
(declare-fun ExhaleHeap@9 () T@PolymorphicMapType_34389)
(declare-fun arg_p_10@0 () Real)
(declare-fun neverTriggered33 (Int) Bool)
(declare-fun QPMask@22 () T@PolymorphicMapType_34410)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun i_46 () Int)
(declare-fun j_23_1 () Int)
(declare-fun ExhaleHeap@8 () T@PolymorphicMapType_34389)
(declare-fun arg_p_9@0 () Real)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_34410)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun QPMask@20 () T@PolymorphicMapType_34410)
(declare-fun arg_q_4@0 () Real)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun QPMask@21 () T@PolymorphicMapType_34410)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun i_41 () Int)
(declare-fun j_21_1 () Int)
(declare-fun ExhaleHeap@7 () T@PolymorphicMapType_34389)
(declare-fun arg_p_8@0 () Real)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_34410)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun i_38 () Int)
(declare-fun j_19_2 () Int)
(declare-fun ExhaleHeap@6 () T@PolymorphicMapType_34389)
(declare-fun arg_p_7@0 () Real)
(declare-fun neverTriggered28 (Int) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_34410)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) Int)
(declare-fun i_35 () Int)
(declare-fun j_17_2 () Int)
(declare-fun ExhaleHeap@5 () T@PolymorphicMapType_34389)
(declare-fun arg_p_6@0 () Real)
(declare-fun neverTriggered25 (Int) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_34410)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) Int)
(declare-fun QPMask@15 () T@PolymorphicMapType_34410)
(declare-fun arg_q_3@0 () Real)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun QPMask@16 () T@PolymorphicMapType_34410)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun i_30 () Int)
(declare-fun j_15_2 () Int)
(declare-fun ExhaleHeap@4 () T@PolymorphicMapType_34389)
(declare-fun arg_p_5@0 () Real)
(declare-fun neverTriggered24 (Int) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_34410)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) Int)
(declare-fun i_27_2 () Int)
(declare-fun j_13_2 () Int)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_34389)
(declare-fun arg_p_4@0 () Real)
(declare-fun neverTriggered23 (Int) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_34410)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) Int)
(declare-fun i_24_1 () Int)
(declare-fun j_11_1 () Int)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_34389)
(declare-fun arg_p_3@0 () Real)
(declare-fun neverTriggered22 (Int) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_34410)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) Int)
(declare-fun i_21_1 () Int)
(declare-fun j_9_1 () Int)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_34389)
(declare-fun neverTriggered19 (Int) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_34410)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun QPMask@9 () T@PolymorphicMapType_34410)
(declare-fun arg_q_2@0 () Real)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun QPMask@10 () T@PolymorphicMapType_34410)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun i_16_1 () Int)
(declare-fun j_7_1 () Int)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_34389)
(declare-fun arg_p_1@0 () Real)
(declare-fun neverTriggered16 (Int) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_34410)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_34410)
(declare-fun arg_q_1@0 () Real)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_34410)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) Int)
(declare-fun i_11_1 () Int)
(declare-fun j_5 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_34389)
(declare-fun neverTriggered13 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_34410)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_34410)
(declare-fun arg_q@0 () Real)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_34410)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun i_6_2 () Int)
(declare-fun j_3 () Int)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_34410)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_34410)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 147) (let ((anon51_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_52) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_27_2) (not (= i_52 j_27_2))))) (= (ControlFlow 0 56) 53)) anon51_correct)))
(let ((anon78_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_52) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_27_2) (not (= i_52 j_27_2)))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (not (= (|Seq#Index_23761| xs2 i_52) (|Seq#Index_23761| xs2 j_27_2)))) (=> (not (= (|Seq#Index_23761| xs2 i_52) (|Seq#Index_23761| xs2 j_27_2))) (=> (= (ControlFlow 0 54) 53) anon51_correct))))))
(let ((anon77_Else_correct  (=> (forall ((i_53_1 Int) (j_28_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1) (not (= i_53_1 j_28_1)))) (not (= (|Seq#Index_23761| xs2 i_53_1) (|Seq#Index_23761| xs2 j_28_1))))
 :qid |stdinbpl.2882:22|
 :skolemid |310|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (|Seq#Index_23761| xs2 j_28_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_53_1) (|Seq#Index_23761| xs2 j_28_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1) (|Seq#Index_23761| xs2 i_53_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_28_1) (|Seq#Index_23761| xs2 i_53_1))
 :pattern ( (|Seq#Index_23761| xs2 i_53_1) (|Seq#Index_23761| xs2 j_28_1))
)) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((i_54 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@11) (|Seq#Index_23761| xs2 i_54) f_7))) (>= arg_p_12@0 NoPerm))
 :qid |stdinbpl.2890:19|
 :skolemid |311|
 :pattern ( (|Seq#Index_23761| xs2 i_54))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54))
 :pattern ( (|Seq#Index_23761| xs2 i_54))
))) (=> (forall ((i_54@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@11) (|Seq#Index_23761| xs2 i_54@@0) f_7))) (>= arg_p_12@0 NoPerm))
 :qid |stdinbpl.2890:19|
 :skolemid |311|
 :pattern ( (|Seq#Index_23761| xs2 i_54@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@0))
 :pattern ( (|Seq#Index_23761| xs2 i_54@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((i_54@@1 Int) (i_54_1 Int) ) (!  (=> (and (and (and (and (not (= i_54@@1 i_54_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54_1)) (< NoPerm arg_p_12@0)) (< NoPerm arg_p_12@0)) (not (= (|Seq#Index_23761| xs2 i_54@@1) (|Seq#Index_23761| xs2 i_54_1))))
 :qid |stdinbpl.2897:19|
 :skolemid |312|
 :pattern ( (neverTriggered35 i_54@@1) (neverTriggered35 i_54_1))
))) (=> (forall ((i_54@@2 Int) (i_54_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_54@@2 i_54_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54_1@@0)) (< NoPerm arg_p_12@0)) (< NoPerm arg_p_12@0)) (not (= (|Seq#Index_23761| xs2 i_54@@2) (|Seq#Index_23761| xs2 i_54_1@@0))))
 :qid |stdinbpl.2897:19|
 :skolemid |312|
 :pattern ( (neverTriggered35 i_54@@2) (neverTriggered35 i_54_1@@0))
)) (=> (= (ControlFlow 0 50) (- 0 49)) (forall ((i_54@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@24) (|Seq#Index_23761| xs2 i_54@@3) f_7) arg_p_12@0))
 :qid |stdinbpl.2904:19|
 :skolemid |313|
 :pattern ( (|Seq#Index_23761| xs2 i_54@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_54@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_54@@3))
))))))))))
(let ((anon75_Else_correct  (=> (forall ((i_50_1 Int) (j_26_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1) (not (= i_50_1 j_26_1)))) (not (= (|Seq#Index_23761| xs3 i_50_1) (|Seq#Index_23761| xs3 j_26_1))))
 :qid |stdinbpl.2807:22|
 :skolemid |302|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (|Seq#Index_23761| xs3 j_26_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_50_1) (|Seq#Index_23761| xs3 j_26_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1) (|Seq#Index_23761| xs3 i_50_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_26_1) (|Seq#Index_23761| xs3 i_50_1))
 :pattern ( (|Seq#Index_23761| xs3 i_50_1) (|Seq#Index_23761| xs3 j_26_1))
)) (and (=> (= (ControlFlow 0 57) (- 0 61)) (forall ((i_51_2 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@10) (|Seq#Index_23761| xs3 i_51_2) f_7))) (>= arg_p_11@0 NoPerm))
 :qid |stdinbpl.2815:19|
 :skolemid |303|
 :pattern ( (|Seq#Index_23761| xs3 i_51_2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2))
 :pattern ( (|Seq#Index_23761| xs3 i_51_2))
))) (=> (forall ((i_51_2@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@10) (|Seq#Index_23761| xs3 i_51_2@@0) f_7))) (>= arg_p_11@0 NoPerm))
 :qid |stdinbpl.2815:19|
 :skolemid |303|
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@0))
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 60)) (forall ((i_51_2@@1 Int) (i_51_3 Int) ) (!  (=> (and (and (and (and (not (= i_51_2@@1 i_51_3)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_3)) (< NoPerm arg_p_11@0)) (< NoPerm arg_p_11@0)) (not (= (|Seq#Index_23761| xs3 i_51_2@@1) (|Seq#Index_23761| xs3 i_51_3))))
 :qid |stdinbpl.2822:19|
 :skolemid |304|
 :pattern ( (neverTriggered34 i_51_2@@1) (neverTriggered34 i_51_3))
))) (=> (forall ((i_51_2@@2 Int) (i_51_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_51_2@@2 i_51_3@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_3@@0)) (< NoPerm arg_p_11@0)) (< NoPerm arg_p_11@0)) (not (= (|Seq#Index_23761| xs3 i_51_2@@2) (|Seq#Index_23761| xs3 i_51_3@@0))))
 :qid |stdinbpl.2822:19|
 :skolemid |304|
 :pattern ( (neverTriggered34 i_51_2@@2) (neverTriggered34 i_51_3@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (forall ((i_51_2@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) (|Seq#Index_23761| xs3 i_51_2@@3) f_7) arg_p_11@0))
 :qid |stdinbpl.2829:19|
 :skolemid |305|
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@3))
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@3))
))) (=> (forall ((i_51_2@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) (|Seq#Index_23761| xs3 i_51_2@@4) f_7) arg_p_11@0))
 :qid |stdinbpl.2829:19|
 :skolemid |305|
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@4))
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@4))
)) (=> (forall ((i_51_2@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@5) (< NoPerm arg_p_11@0)) (and (qpRange34 (|Seq#Index_23761| xs3 i_51_2@@5)) (= (invRecv34 (|Seq#Index_23761| xs3 i_51_2@@5)) i_51_2@@5)))
 :qid |stdinbpl.2835:24|
 :skolemid |306|
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_51_2@@5))
 :pattern ( (|Seq#Index_23761| xs3 i_51_2@@5))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv34 o_9)) (and (< NoPerm arg_p_11@0) (qpRange34 o_9))) (= (|Seq#Index_23761| xs3 (invRecv34 o_9)) o_9))
 :qid |stdinbpl.2839:24|
 :skolemid |307|
 :pattern ( (invRecv34 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv34 o_9@@0)) (and (< NoPerm arg_p_11@0) (qpRange34 o_9@@0))) (and (= (|Seq#Index_23761| xs3 (invRecv34 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@24) o_9@@0 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@0 f_7) arg_p_11@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv34 o_9@@0)) (and (< NoPerm arg_p_11@0) (qpRange34 o_9@@0)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@24) o_9@@0 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@0 f_7))))
 :qid |stdinbpl.2845:24|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@24) o_9@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@23) o_9@@1 f_5) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@24) o_9@@1 f_5)))
 :qid |stdinbpl.2851:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@24) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@23) o_9@@2 f_5@@0) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@24) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2851:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@24) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_40536_3826) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@3 f_5@@1) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@24) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2851:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@24) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@23) o_9@@4 f_5@@2) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@24) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2851:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@24) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@23) o_9@@5 f_5@@3) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@24) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2851:31|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@24) o_9@@5 f_5@@3))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@10 ExhaleHeap@11 QPMask@24) (state ExhaleHeap@11 QPMask@24)) (and (state ExhaleHeap@11 QPMask@24) (= arg_p_12@0 (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (<= NoPerm arg_p_12@0)) (=> (<= NoPerm arg_p_12@0) (and (and (=> (= (ControlFlow 0 57) 50) anon77_Else_correct) (=> (= (ControlFlow 0 57) 54) anon78_Then_correct)) (=> (= (ControlFlow 0 57) 56) anon78_Else_correct))))))))))))))))
(let ((anon47_correct true))
(let ((anon76_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_49) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_25_2) (not (= i_49 j_25_2))))) (= (ControlFlow 0 48) 45)) anon47_correct)))
(let ((anon76_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_49) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_25_2) (not (= i_49 j_25_2)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (not (= (|Seq#Index_23761| xs3 i_49) (|Seq#Index_23761| xs3 j_25_2)))) (=> (not (= (|Seq#Index_23761| xs3 i_49) (|Seq#Index_23761| xs3 j_25_2))) (=> (= (ControlFlow 0 46) 45) anon47_correct))))))
(let ((anon73_Else_correct  (=> (forall ((i_47_1 Int) (j_24_1_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1) (not (= i_47_1 j_24_1_1)))) (not (= (|Seq#Index_23761| xs1 i_47_1) (|Seq#Index_23761| xs1 j_24_1_1))))
 :qid |stdinbpl.2732:22|
 :skolemid |294|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (|Seq#Index_23761| xs1 j_24_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_47_1) (|Seq#Index_23761| xs1 j_24_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1) (|Seq#Index_23761| xs1 i_47_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_24_1_1) (|Seq#Index_23761| xs1 i_47_1))
 :pattern ( (|Seq#Index_23761| xs1 i_47_1) (|Seq#Index_23761| xs1 j_24_1_1))
)) (and (=> (= (ControlFlow 0 62) (- 0 66)) (forall ((i_48 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@9) (|Seq#Index_23761| xs1 i_48) f_7))) (>= arg_p_10@0 NoPerm))
 :qid |stdinbpl.2740:19|
 :skolemid |295|
 :pattern ( (|Seq#Index_23761| xs1 i_48))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48))
 :pattern ( (|Seq#Index_23761| xs1 i_48))
))) (=> (forall ((i_48@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@9) (|Seq#Index_23761| xs1 i_48@@0) f_7))) (>= arg_p_10@0 NoPerm))
 :qid |stdinbpl.2740:19|
 :skolemid |295|
 :pattern ( (|Seq#Index_23761| xs1 i_48@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@0))
 :pattern ( (|Seq#Index_23761| xs1 i_48@@0))
)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (forall ((i_48@@1 Int) (i_48_2 Int) ) (!  (=> (and (and (and (and (not (= i_48@@1 i_48_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48_2)) (< NoPerm arg_p_10@0)) (< NoPerm arg_p_10@0)) (not (= (|Seq#Index_23761| xs1 i_48@@1) (|Seq#Index_23761| xs1 i_48_2))))
 :qid |stdinbpl.2747:19|
 :skolemid |296|
 :pattern ( (neverTriggered33 i_48@@1) (neverTriggered33 i_48_2))
))) (=> (forall ((i_48@@2 Int) (i_48_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_48@@2 i_48_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48_2@@0)) (< NoPerm arg_p_10@0)) (< NoPerm arg_p_10@0)) (not (= (|Seq#Index_23761| xs1 i_48@@2) (|Seq#Index_23761| xs1 i_48_2@@0))))
 :qid |stdinbpl.2747:19|
 :skolemid |296|
 :pattern ( (neverTriggered33 i_48@@2) (neverTriggered33 i_48_2@@0))
)) (and (=> (= (ControlFlow 0 62) (- 0 64)) (forall ((i_48@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) (|Seq#Index_23761| xs1 i_48@@3) f_7) arg_p_10@0))
 :qid |stdinbpl.2754:19|
 :skolemid |297|
 :pattern ( (|Seq#Index_23761| xs1 i_48@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_48@@3))
))) (=> (forall ((i_48@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) (|Seq#Index_23761| xs1 i_48@@4) f_7) arg_p_10@0))
 :qid |stdinbpl.2754:19|
 :skolemid |297|
 :pattern ( (|Seq#Index_23761| xs1 i_48@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_48@@4))
)) (=> (forall ((i_48@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@5) (< NoPerm arg_p_10@0)) (and (qpRange33 (|Seq#Index_23761| xs1 i_48@@5)) (= (invRecv33 (|Seq#Index_23761| xs1 i_48@@5)) i_48@@5)))
 :qid |stdinbpl.2760:24|
 :skolemid |298|
 :pattern ( (|Seq#Index_23761| xs1 i_48@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_48@@5))
 :pattern ( (|Seq#Index_23761| xs1 i_48@@5))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv33 o_9@@6)) (and (< NoPerm arg_p_10@0) (qpRange33 o_9@@6))) (= (|Seq#Index_23761| xs1 (invRecv33 o_9@@6)) o_9@@6))
 :qid |stdinbpl.2764:24|
 :skolemid |299|
 :pattern ( (invRecv33 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv33 o_9@@7)) (and (< NoPerm arg_p_10@0) (qpRange33 o_9@@7))) (and (= (|Seq#Index_23761| xs1 (invRecv33 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@7 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@7 f_7) arg_p_10@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv33 o_9@@7)) (and (< NoPerm arg_p_10@0) (qpRange33 o_9@@7)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@7 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@7 f_7))))
 :qid |stdinbpl.2770:24|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@7 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@22) o_9@@8 f_5@@4) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@23) o_9@@8 f_5@@4)))
 :qid |stdinbpl.2776:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@23) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@22) o_9@@9 f_5@@5) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@23) o_9@@9 f_5@@5)))
 :qid |stdinbpl.2776:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@23) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_40536_3826) ) (!  (=> (not (= f_5@@6 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@10 f_5@@6) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@10 f_5@@6)))
 :qid |stdinbpl.2776:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@23) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@22) o_9@@11 f_5@@7) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@23) o_9@@11 f_5@@7)))
 :qid |stdinbpl.2776:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@23) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@22) o_9@@12 f_5@@8) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@23) o_9@@12 f_5@@8)))
 :qid |stdinbpl.2776:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@23) o_9@@12 f_5@@8))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@9 ExhaleHeap@10 QPMask@23) (state ExhaleHeap@10 QPMask@23)) (and (state ExhaleHeap@10 QPMask@23) (= arg_p_11@0 (/ (to_real 1) (to_real 3)))))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (<= NoPerm arg_p_11@0)) (=> (<= NoPerm arg_p_11@0) (and (and (=> (= (ControlFlow 0 62) 57) anon75_Else_correct) (=> (= (ControlFlow 0 62) 46) anon76_Then_correct)) (=> (= (ControlFlow 0 62) 48) anon76_Else_correct))))))))))))))))
(let ((anon43_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_46) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_23_1) (not (= i_46 j_23_1))))) (= (ControlFlow 0 44) 41)) anon43_correct)))
(let ((anon74_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_46) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_23_1) (not (= i_46 j_23_1)))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (not (= (|Seq#Index_23761| xs1 i_46) (|Seq#Index_23761| xs1 j_23_1)))) (=> (not (= (|Seq#Index_23761| xs1 i_46) (|Seq#Index_23761| xs1 j_23_1))) (=> (= (ControlFlow 0 42) 41) anon43_correct))))))
(let ((anon71_Else_correct  (=> (forall ((i_42_1_1 Int) (j_22_1_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1) (not (= i_42_1_1 j_22_1_1)))) (not (= (|Seq#Index_23761| xs2 i_42_1_1) (|Seq#Index_23761| xs2 j_22_1_1))))
 :qid |stdinbpl.2577:22|
 :skolemid |272|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (|Seq#Index_23761| xs2 j_22_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_42_1_1) (|Seq#Index_23761| xs2 j_22_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1) (|Seq#Index_23761| xs2 i_42_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_22_1_1) (|Seq#Index_23761| xs2 i_42_1_1))
 :pattern ( (|Seq#Index_23761| xs2 i_42_1_1) (|Seq#Index_23761| xs2 j_22_1_1))
)) (and (=> (= (ControlFlow 0 67) (- 0 75)) (forall ((i_43 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@8) (|Seq#Index_23761| xs2 i_43) f_7))) (>= arg_p_9@0 NoPerm))
 :qid |stdinbpl.2585:19|
 :skolemid |273|
 :pattern ( (|Seq#Index_23761| xs2 i_43))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43))
 :pattern ( (|Seq#Index_23761| xs2 i_43))
))) (=> (forall ((i_43@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@8) (|Seq#Index_23761| xs2 i_43@@0) f_7))) (>= arg_p_9@0 NoPerm))
 :qid |stdinbpl.2585:19|
 :skolemid |273|
 :pattern ( (|Seq#Index_23761| xs2 i_43@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@0))
 :pattern ( (|Seq#Index_23761| xs2 i_43@@0))
)) (and (=> (= (ControlFlow 0 67) (- 0 74)) (forall ((i_43@@1 Int) (i_43_1 Int) ) (!  (=> (and (and (and (and (not (= i_43@@1 i_43_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43_1)) (< NoPerm arg_p_9@0)) (< NoPerm arg_p_9@0)) (not (= (|Seq#Index_23761| xs2 i_43@@1) (|Seq#Index_23761| xs2 i_43_1))))
 :qid |stdinbpl.2592:19|
 :skolemid |274|
 :pattern ( (neverTriggered30 i_43@@1) (neverTriggered30 i_43_1))
))) (=> (forall ((i_43@@2 Int) (i_43_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_43@@2 i_43_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43_1@@0)) (< NoPerm arg_p_9@0)) (< NoPerm arg_p_9@0)) (not (= (|Seq#Index_23761| xs2 i_43@@2) (|Seq#Index_23761| xs2 i_43_1@@0))))
 :qid |stdinbpl.2592:19|
 :skolemid |274|
 :pattern ( (neverTriggered30 i_43@@2) (neverTriggered30 i_43_1@@0))
)) (and (=> (= (ControlFlow 0 67) (- 0 73)) (forall ((i_43@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) (|Seq#Index_23761| xs2 i_43@@3) f_7) arg_p_9@0))
 :qid |stdinbpl.2599:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_23761| xs2 i_43@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_43@@3))
))) (=> (forall ((i_43@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) (|Seq#Index_23761| xs2 i_43@@4) f_7) arg_p_9@0))
 :qid |stdinbpl.2599:19|
 :skolemid |275|
 :pattern ( (|Seq#Index_23761| xs2 i_43@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_43@@4))
)) (=> (forall ((i_43@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@5) (< NoPerm arg_p_9@0)) (and (qpRange30 (|Seq#Index_23761| xs2 i_43@@5)) (= (invRecv30 (|Seq#Index_23761| xs2 i_43@@5)) i_43@@5)))
 :qid |stdinbpl.2605:24|
 :skolemid |276|
 :pattern ( (|Seq#Index_23761| xs2 i_43@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_43@@5))
 :pattern ( (|Seq#Index_23761| xs2 i_43@@5))
)) (=> (and (forall ((o_9@@13 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv30 o_9@@13)) (and (< NoPerm arg_p_9@0) (qpRange30 o_9@@13))) (= (|Seq#Index_23761| xs2 (invRecv30 o_9@@13)) o_9@@13))
 :qid |stdinbpl.2609:24|
 :skolemid |277|
 :pattern ( (invRecv30 o_9@@13))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv30 o_9@@14)) (and (< NoPerm arg_p_9@0) (qpRange30 o_9@@14))) (and (= (|Seq#Index_23761| xs2 (invRecv30 o_9@@14)) o_9@@14) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@14 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@14 f_7) arg_p_9@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv30 o_9@@14)) (and (< NoPerm arg_p_9@0) (qpRange30 o_9@@14)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@14 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@14 f_7))))
 :qid |stdinbpl.2615:24|
 :skolemid |278|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@14 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@19) o_9@@15 f_5@@9) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@20) o_9@@15 f_5@@9)))
 :qid |stdinbpl.2621:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@20) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@19) o_9@@16 f_5@@10) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@20) o_9@@16 f_5@@10)))
 :qid |stdinbpl.2621:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@20) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_40536_3826) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@17 f_5@@11) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2621:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@19) o_9@@18 f_5@@12) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@20) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2621:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@20) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@19) o_9@@19 f_5@@13) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@20) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2621:31|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@20) o_9@@19 f_5@@13))
))) (IdenticalOnKnownLocations ExhaleHeap@8 ExhaleHeap@9 QPMask@20)) (and (=> (= (ControlFlow 0 67) (- 0 72)) (forall ((i_44 Int) (i_44_1 Int) ) (!  (=> (and (and (and (and (not (= i_44 i_44_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44_1)) (< NoPerm arg_q_4@0)) (< NoPerm arg_q_4@0)) (not (= (|Seq#Index_23761| xs2 i_44) (|Seq#Index_23761| xs2 i_44_1))))
 :qid |stdinbpl.2634:17|
 :skolemid |280|
))) (=> (forall ((i_44@@0 Int) (i_44_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_44@@0 i_44_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44_1@@0)) (< NoPerm arg_q_4@0)) (< NoPerm arg_q_4@0)) (not (= (|Seq#Index_23761| xs2 i_44@@0) (|Seq#Index_23761| xs2 i_44_1@@0))))
 :qid |stdinbpl.2634:17|
 :skolemid |280|
)) (=> (and (forall ((i_44@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@1) (< NoPerm arg_q_4@0)) (and (qpRange31 (|Seq#Index_23761| xs2 i_44@@1)) (= (invRecv31 (|Seq#Index_23761| xs2 i_44@@1)) i_44@@1)))
 :qid |stdinbpl.2640:24|
 :skolemid |281|
 :pattern ( (|Seq#Index_23761| xs2 i_44@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@1))
 :pattern ( (|Seq#Index_23761| xs2 i_44@@1))
)) (forall ((o_9@@20 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv31 o_9@@20)) (< NoPerm arg_q_4@0)) (qpRange31 o_9@@20)) (= (|Seq#Index_23761| xs2 (invRecv31 o_9@@20)) o_9@@20))
 :qid |stdinbpl.2644:24|
 :skolemid |282|
 :pattern ( (invRecv31 o_9@@20))
))) (and (=> (= (ControlFlow 0 67) (- 0 71)) (forall ((i_44@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@2) (>= arg_q_4@0 NoPerm))
 :qid |stdinbpl.2650:17|
 :skolemid |283|
 :pattern ( (|Seq#Index_23761| xs2 i_44@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@2))
 :pattern ( (|Seq#Index_23761| xs2 i_44@@2))
))) (=> (forall ((i_44@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@3) (>= arg_q_4@0 NoPerm))
 :qid |stdinbpl.2650:17|
 :skolemid |283|
 :pattern ( (|Seq#Index_23761| xs2 i_44@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_44@@3))
)) (=> (and (forall ((i_44@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@4) (> arg_q_4@0 NoPerm)) (not (= (|Seq#Index_23761| xs2 i_44@@4) null)))
 :qid |stdinbpl.2656:24|
 :skolemid |284|
 :pattern ( (|Seq#Index_23761| xs2 i_44@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_44@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_44@@4))
)) (forall ((o_9@@21 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv31 o_9@@21)) (< NoPerm arg_q_4@0)) (qpRange31 o_9@@21)) (and (=> (< NoPerm arg_q_4@0) (= (|Seq#Index_23761| xs2 (invRecv31 o_9@@21)) o_9@@21)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@21 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@21 f_7) arg_q_4@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv31 o_9@@21)) (< NoPerm arg_q_4@0)) (qpRange31 o_9@@21))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@21 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@21 f_7))))
 :qid |stdinbpl.2662:24|
 :skolemid |285|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@21 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@20) o_9@@22 f_5@@14) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@21) o_9@@22 f_5@@14)))
 :qid |stdinbpl.2666:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@20) o_9@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@21) o_9@@22 f_5@@14))
)) (forall ((o_9@@23 T@Ref) (f_5@@15 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@20) o_9@@23 f_5@@15) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@21) o_9@@23 f_5@@15)))
 :qid |stdinbpl.2666:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@20) o_9@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@21) o_9@@23 f_5@@15))
))) (forall ((o_9@@24 T@Ref) (f_5@@16 T@Field_40536_3826) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@24 f_5@@16) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@24 f_5@@16)))
 :qid |stdinbpl.2666:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@20) o_9@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@24 f_5@@16))
))) (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@20) o_9@@25 f_5@@17) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@21) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2666:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@20) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@21) o_9@@25 f_5@@17))
))) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@20) o_9@@26 f_5@@18) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@21) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2666:31|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@20) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@21) o_9@@26 f_5@@18))
))) (state ExhaleHeap@9 QPMask@21)) (and (=> (= (ControlFlow 0 67) (- 0 70)) (forall ((i_45 Int) (i_45_2 Int) ) (!  (=> (and (and (and (and (not (= i_45 i_45_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45_2)) (< NoPerm arg_q_4@0)) (< NoPerm arg_q_4@0)) (not (= (|Seq#Index_23761| xs2 i_45) (|Seq#Index_23761| xs2 i_45_2))))
 :qid |stdinbpl.2674:17|
 :skolemid |287|
))) (=> (forall ((i_45@@0 Int) (i_45_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_45@@0 i_45_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45_2@@0)) (< NoPerm arg_q_4@0)) (< NoPerm arg_q_4@0)) (not (= (|Seq#Index_23761| xs2 i_45@@0) (|Seq#Index_23761| xs2 i_45_2@@0))))
 :qid |stdinbpl.2674:17|
 :skolemid |287|
)) (=> (and (forall ((i_45@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@1) (< NoPerm arg_q_4@0)) (and (qpRange32 (|Seq#Index_23761| xs2 i_45@@1)) (= (invRecv32 (|Seq#Index_23761| xs2 i_45@@1)) i_45@@1)))
 :qid |stdinbpl.2680:24|
 :skolemid |288|
 :pattern ( (|Seq#Index_23761| xs2 i_45@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@1))
 :pattern ( (|Seq#Index_23761| xs2 i_45@@1))
)) (forall ((o_9@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv32 o_9@@27)) (< NoPerm arg_q_4@0)) (qpRange32 o_9@@27)) (= (|Seq#Index_23761| xs2 (invRecv32 o_9@@27)) o_9@@27))
 :qid |stdinbpl.2684:24|
 :skolemid |289|
 :pattern ( (invRecv32 o_9@@27))
))) (and (=> (= (ControlFlow 0 67) (- 0 69)) (forall ((i_45@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@2) (>= arg_q_4@0 NoPerm))
 :qid |stdinbpl.2690:17|
 :skolemid |290|
 :pattern ( (|Seq#Index_23761| xs2 i_45@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@2))
 :pattern ( (|Seq#Index_23761| xs2 i_45@@2))
))) (=> (forall ((i_45@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@3) (>= arg_q_4@0 NoPerm))
 :qid |stdinbpl.2690:17|
 :skolemid |290|
 :pattern ( (|Seq#Index_23761| xs2 i_45@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_45@@3))
)) (=> (and (forall ((i_45@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@4) (> arg_q_4@0 NoPerm)) (not (= (|Seq#Index_23761| xs2 i_45@@4) null)))
 :qid |stdinbpl.2696:24|
 :skolemid |291|
 :pattern ( (|Seq#Index_23761| xs2 i_45@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_45@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_45@@4))
)) (forall ((o_9@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv32 o_9@@28)) (< NoPerm arg_q_4@0)) (qpRange32 o_9@@28)) (and (=> (< NoPerm arg_q_4@0) (= (|Seq#Index_23761| xs2 (invRecv32 o_9@@28)) o_9@@28)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@28 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@28 f_7) arg_q_4@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv32 o_9@@28)) (< NoPerm arg_q_4@0)) (qpRange32 o_9@@28))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@28 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@28 f_7))))
 :qid |stdinbpl.2702:24|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@28 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@29 T@Ref) (f_5@@19 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@21) o_9@@29 f_5@@19) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@22) o_9@@29 f_5@@19)))
 :qid |stdinbpl.2706:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@21) o_9@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@22) o_9@@29 f_5@@19))
)) (forall ((o_9@@30 T@Ref) (f_5@@20 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@21) o_9@@30 f_5@@20) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@22) o_9@@30 f_5@@20)))
 :qid |stdinbpl.2706:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@21) o_9@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@22) o_9@@30 f_5@@20))
))) (forall ((o_9@@31 T@Ref) (f_5@@21 T@Field_40536_3826) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@31 f_5@@21) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@31 f_5@@21)))
 :qid |stdinbpl.2706:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@21) o_9@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@22) o_9@@31 f_5@@21))
))) (forall ((o_9@@32 T@Ref) (f_5@@22 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@21) o_9@@32 f_5@@22) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@22) o_9@@32 f_5@@22)))
 :qid |stdinbpl.2706:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@21) o_9@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@22) o_9@@32 f_5@@22))
))) (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@21) o_9@@33 f_5@@23) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@22) o_9@@33 f_5@@23)))
 :qid |stdinbpl.2706:31|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@21) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@22) o_9@@33 f_5@@23))
))) (and (and (state ExhaleHeap@9 QPMask@22) (state ExhaleHeap@9 QPMask@22)) (and (state ExhaleHeap@9 QPMask@22) (= arg_p_10@0 (/ (to_real 1) (to_real 4)))))) (and (=> (= (ControlFlow 0 67) (- 0 68)) (<= NoPerm arg_p_10@0)) (=> (<= NoPerm arg_p_10@0) (and (and (=> (= (ControlFlow 0 67) 62) anon73_Else_correct) (=> (= (ControlFlow 0 67) 42) anon74_Then_correct)) (=> (= (ControlFlow 0 67) 44) anon74_Else_correct))))))))))))))))))))))))))))))
(let ((anon39_correct true))
(let ((anon72_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_41) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_21_1) (not (= i_41 j_21_1))))) (= (ControlFlow 0 40) 37)) anon39_correct)))
(let ((anon72_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_41) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_21_1) (not (= i_41 j_21_1)))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (not (= (|Seq#Index_23761| xs2 i_41) (|Seq#Index_23761| xs2 j_21_1)))) (=> (not (= (|Seq#Index_23761| xs2 i_41) (|Seq#Index_23761| xs2 j_21_1))) (=> (= (ControlFlow 0 38) 37) anon39_correct))))))
(let ((anon69_Else_correct  (=> (forall ((i_39_1_1 Int) (j_20_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1) (not (= i_39_1_1 j_20_1)))) (not (= (|Seq#Index_23761| xs3 i_39_1_1) (|Seq#Index_23761| xs3 j_20_1))))
 :qid |stdinbpl.2499:22|
 :skolemid |264|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (|Seq#Index_23761| xs3 j_20_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_39_1_1) (|Seq#Index_23761| xs3 j_20_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1) (|Seq#Index_23761| xs3 i_39_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_20_1) (|Seq#Index_23761| xs3 i_39_1_1))
 :pattern ( (|Seq#Index_23761| xs3 i_39_1_1) (|Seq#Index_23761| xs3 j_20_1))
)) (and (=> (= (ControlFlow 0 76) (- 0 81)) (forall ((i_40 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@7) (|Seq#Index_23761| xs3 i_40) f_7))) (>= arg_p_8@0 NoPerm))
 :qid |stdinbpl.2507:19|
 :skolemid |265|
 :pattern ( (|Seq#Index_23761| xs3 i_40))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40))
 :pattern ( (|Seq#Index_23761| xs3 i_40))
))) (=> (forall ((i_40@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@7) (|Seq#Index_23761| xs3 i_40@@0) f_7))) (>= arg_p_8@0 NoPerm))
 :qid |stdinbpl.2507:19|
 :skolemid |265|
 :pattern ( (|Seq#Index_23761| xs3 i_40@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@0))
 :pattern ( (|Seq#Index_23761| xs3 i_40@@0))
)) (and (=> (= (ControlFlow 0 76) (- 0 80)) (forall ((i_40@@1 Int) (i_40_2 Int) ) (!  (=> (and (and (and (and (not (= i_40@@1 i_40_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40_2)) (< NoPerm arg_p_8@0)) (< NoPerm arg_p_8@0)) (not (= (|Seq#Index_23761| xs3 i_40@@1) (|Seq#Index_23761| xs3 i_40_2))))
 :qid |stdinbpl.2514:19|
 :skolemid |266|
 :pattern ( (neverTriggered29 i_40@@1) (neverTriggered29 i_40_2))
))) (=> (forall ((i_40@@2 Int) (i_40_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_40@@2 i_40_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40_2@@0)) (< NoPerm arg_p_8@0)) (< NoPerm arg_p_8@0)) (not (= (|Seq#Index_23761| xs3 i_40@@2) (|Seq#Index_23761| xs3 i_40_2@@0))))
 :qid |stdinbpl.2514:19|
 :skolemid |266|
 :pattern ( (neverTriggered29 i_40@@2) (neverTriggered29 i_40_2@@0))
)) (and (=> (= (ControlFlow 0 76) (- 0 79)) (forall ((i_40@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) (|Seq#Index_23761| xs3 i_40@@3) f_7) arg_p_8@0))
 :qid |stdinbpl.2521:19|
 :skolemid |267|
 :pattern ( (|Seq#Index_23761| xs3 i_40@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@3))
 :pattern ( (|Seq#Index_23761| xs3 i_40@@3))
))) (=> (forall ((i_40@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) (|Seq#Index_23761| xs3 i_40@@4) f_7) arg_p_8@0))
 :qid |stdinbpl.2521:19|
 :skolemid |267|
 :pattern ( (|Seq#Index_23761| xs3 i_40@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@4))
 :pattern ( (|Seq#Index_23761| xs3 i_40@@4))
)) (=> (forall ((i_40@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@5) (< NoPerm arg_p_8@0)) (and (qpRange29 (|Seq#Index_23761| xs3 i_40@@5)) (= (invRecv29 (|Seq#Index_23761| xs3 i_40@@5)) i_40@@5)))
 :qid |stdinbpl.2527:24|
 :skolemid |268|
 :pattern ( (|Seq#Index_23761| xs3 i_40@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_40@@5))
 :pattern ( (|Seq#Index_23761| xs3 i_40@@5))
)) (=> (and (forall ((o_9@@34 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv29 o_9@@34)) (and (< NoPerm arg_p_8@0) (qpRange29 o_9@@34))) (= (|Seq#Index_23761| xs3 (invRecv29 o_9@@34)) o_9@@34))
 :qid |stdinbpl.2531:24|
 :skolemid |269|
 :pattern ( (invRecv29 o_9@@34))
)) (forall ((o_9@@35 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv29 o_9@@35)) (and (< NoPerm arg_p_8@0) (qpRange29 o_9@@35))) (and (= (|Seq#Index_23761| xs3 (invRecv29 o_9@@35)) o_9@@35) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@35 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@35 f_7) arg_p_8@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv29 o_9@@35)) (and (< NoPerm arg_p_8@0) (qpRange29 o_9@@35)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@35 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@35 f_7))))
 :qid |stdinbpl.2537:24|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@35 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_9@@36 T@Ref) (f_5@@24 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@18) o_9@@36 f_5@@24) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@19) o_9@@36 f_5@@24)))
 :qid |stdinbpl.2543:31|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@19) o_9@@36 f_5@@24))
)) (forall ((o_9@@37 T@Ref) (f_5@@25 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@18) o_9@@37 f_5@@25) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@19) o_9@@37 f_5@@25)))
 :qid |stdinbpl.2543:31|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@19) o_9@@37 f_5@@25))
))) (forall ((o_9@@38 T@Ref) (f_5@@26 T@Field_40536_3826) ) (!  (=> (not (= f_5@@26 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@38 f_5@@26) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@38 f_5@@26)))
 :qid |stdinbpl.2543:31|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@19) o_9@@38 f_5@@26))
))) (forall ((o_9@@39 T@Ref) (f_5@@27 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@18) o_9@@39 f_5@@27) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@19) o_9@@39 f_5@@27)))
 :qid |stdinbpl.2543:31|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@19) o_9@@39 f_5@@27))
))) (forall ((o_9@@40 T@Ref) (f_5@@28 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@18) o_9@@40 f_5@@28) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@19) o_9@@40 f_5@@28)))
 :qid |stdinbpl.2543:31|
 :skolemid |271|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@19) o_9@@40 f_5@@28))
))) (IdenticalOnKnownLocations ExhaleHeap@7 ExhaleHeap@8 QPMask@19)) (and (and (state ExhaleHeap@8 QPMask@19) (state ExhaleHeap@8 QPMask@19)) (and (= arg_p_9@0 (/ (to_real 1) (to_real 2))) (= arg_q_4@0 (/ (to_real 1) (to_real 4)))))) (and (=> (= (ControlFlow 0 76) (- 0 78)) (= arg_p_9@0 (* (to_real 2) arg_q_4@0))) (=> (= arg_p_9@0 (* (to_real 2) arg_q_4@0)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (<= NoPerm arg_p_9@0)) (=> (<= NoPerm arg_p_9@0) (and (and (=> (= (ControlFlow 0 76) 67) anon71_Else_correct) (=> (= (ControlFlow 0 76) 38) anon72_Then_correct)) (=> (= (ControlFlow 0 76) 40) anon72_Else_correct))))))))))))))))))
(let ((anon35_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_38) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_19_2) (not (= i_38 j_19_2))))) (= (ControlFlow 0 36) 33)) anon35_correct)))
(let ((anon70_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_38) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_19_2) (not (= i_38 j_19_2)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (not (= (|Seq#Index_23761| xs3 i_38) (|Seq#Index_23761| xs3 j_19_2)))) (=> (not (= (|Seq#Index_23761| xs3 i_38) (|Seq#Index_23761| xs3 j_19_2))) (=> (= (ControlFlow 0 34) 33) anon35_correct))))))
(let ((anon67_Else_correct  (=> (forall ((i_36_1 Int) (j_18_1_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1) (not (= i_36_1 j_18_1_1)))) (not (= (|Seq#Index_23761| xs1 i_36_1) (|Seq#Index_23761| xs1 j_18_1_1))))
 :qid |stdinbpl.2424:22|
 :skolemid |256|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (|Seq#Index_23761| xs1 j_18_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_36_1) (|Seq#Index_23761| xs1 j_18_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1) (|Seq#Index_23761| xs1 i_36_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_18_1_1) (|Seq#Index_23761| xs1 i_36_1))
 :pattern ( (|Seq#Index_23761| xs1 i_36_1) (|Seq#Index_23761| xs1 j_18_1_1))
)) (and (=> (= (ControlFlow 0 82) (- 0 86)) (forall ((i_37 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@6) (|Seq#Index_23761| xs1 i_37) f_7))) (>= arg_p_7@0 NoPerm))
 :qid |stdinbpl.2432:19|
 :skolemid |257|
 :pattern ( (|Seq#Index_23761| xs1 i_37))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37))
 :pattern ( (|Seq#Index_23761| xs1 i_37))
))) (=> (forall ((i_37@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@6) (|Seq#Index_23761| xs1 i_37@@0) f_7))) (>= arg_p_7@0 NoPerm))
 :qid |stdinbpl.2432:19|
 :skolemid |257|
 :pattern ( (|Seq#Index_23761| xs1 i_37@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@0))
 :pattern ( (|Seq#Index_23761| xs1 i_37@@0))
)) (and (=> (= (ControlFlow 0 82) (- 0 85)) (forall ((i_37@@1 Int) (i_37_1 Int) ) (!  (=> (and (and (and (and (not (= i_37@@1 i_37_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37_1)) (< NoPerm arg_p_7@0)) (< NoPerm arg_p_7@0)) (not (= (|Seq#Index_23761| xs1 i_37@@1) (|Seq#Index_23761| xs1 i_37_1))))
 :qid |stdinbpl.2439:19|
 :skolemid |258|
 :pattern ( (neverTriggered28 i_37@@1) (neverTriggered28 i_37_1))
))) (=> (forall ((i_37@@2 Int) (i_37_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_37@@2 i_37_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37_1@@0)) (< NoPerm arg_p_7@0)) (< NoPerm arg_p_7@0)) (not (= (|Seq#Index_23761| xs1 i_37@@2) (|Seq#Index_23761| xs1 i_37_1@@0))))
 :qid |stdinbpl.2439:19|
 :skolemid |258|
 :pattern ( (neverTriggered28 i_37@@2) (neverTriggered28 i_37_1@@0))
)) (and (=> (= (ControlFlow 0 82) (- 0 84)) (forall ((i_37@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) (|Seq#Index_23761| xs1 i_37@@3) f_7) arg_p_7@0))
 :qid |stdinbpl.2446:19|
 :skolemid |259|
 :pattern ( (|Seq#Index_23761| xs1 i_37@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_37@@3))
))) (=> (forall ((i_37@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) (|Seq#Index_23761| xs1 i_37@@4) f_7) arg_p_7@0))
 :qid |stdinbpl.2446:19|
 :skolemid |259|
 :pattern ( (|Seq#Index_23761| xs1 i_37@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_37@@4))
)) (=> (forall ((i_37@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@5) (< NoPerm arg_p_7@0)) (and (qpRange28 (|Seq#Index_23761| xs1 i_37@@5)) (= (invRecv28 (|Seq#Index_23761| xs1 i_37@@5)) i_37@@5)))
 :qid |stdinbpl.2452:24|
 :skolemid |260|
 :pattern ( (|Seq#Index_23761| xs1 i_37@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_37@@5))
 :pattern ( (|Seq#Index_23761| xs1 i_37@@5))
)) (=> (and (forall ((o_9@@41 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv28 o_9@@41)) (and (< NoPerm arg_p_7@0) (qpRange28 o_9@@41))) (= (|Seq#Index_23761| xs1 (invRecv28 o_9@@41)) o_9@@41))
 :qid |stdinbpl.2456:24|
 :skolemid |261|
 :pattern ( (invRecv28 o_9@@41))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv28 o_9@@42)) (and (< NoPerm arg_p_7@0) (qpRange28 o_9@@42))) (and (= (|Seq#Index_23761| xs1 (invRecv28 o_9@@42)) o_9@@42) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@42 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@42 f_7) arg_p_7@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv28 o_9@@42)) (and (< NoPerm arg_p_7@0) (qpRange28 o_9@@42)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@42 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@42 f_7))))
 :qid |stdinbpl.2462:24|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@42 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@29 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@17) o_9@@43 f_5@@29) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@18) o_9@@43 f_5@@29)))
 :qid |stdinbpl.2468:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@18) o_9@@43 f_5@@29))
)) (forall ((o_9@@44 T@Ref) (f_5@@30 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@17) o_9@@44 f_5@@30) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@18) o_9@@44 f_5@@30)))
 :qid |stdinbpl.2468:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@18) o_9@@44 f_5@@30))
))) (forall ((o_9@@45 T@Ref) (f_5@@31 T@Field_40536_3826) ) (!  (=> (not (= f_5@@31 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@45 f_5@@31) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@45 f_5@@31)))
 :qid |stdinbpl.2468:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@18) o_9@@45 f_5@@31))
))) (forall ((o_9@@46 T@Ref) (f_5@@32 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@17) o_9@@46 f_5@@32) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@18) o_9@@46 f_5@@32)))
 :qid |stdinbpl.2468:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@18) o_9@@46 f_5@@32))
))) (forall ((o_9@@47 T@Ref) (f_5@@33 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@17) o_9@@47 f_5@@33) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@18) o_9@@47 f_5@@33)))
 :qid |stdinbpl.2468:31|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@18) o_9@@47 f_5@@33))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@6 ExhaleHeap@7 QPMask@18) (state ExhaleHeap@7 QPMask@18)) (and (state ExhaleHeap@7 QPMask@18) (= arg_p_8@0 (/ (to_real 1) (to_real 3)))))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (<= NoPerm arg_p_8@0)) (=> (<= NoPerm arg_p_8@0) (and (and (=> (= (ControlFlow 0 82) 76) anon69_Else_correct) (=> (= (ControlFlow 0 82) 34) anon70_Then_correct)) (=> (= (ControlFlow 0 82) 36) anon70_Else_correct))))))))))))))))
(let ((anon31_correct true))
(let ((anon68_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_35) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_17_2) (not (= i_35 j_17_2))))) (= (ControlFlow 0 32) 29)) anon31_correct)))
(let ((anon68_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_35) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_17_2) (not (= i_35 j_17_2)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (not (= (|Seq#Index_23761| xs1 i_35) (|Seq#Index_23761| xs1 j_17_2)))) (=> (not (= (|Seq#Index_23761| xs1 i_35) (|Seq#Index_23761| xs1 j_17_2))) (=> (= (ControlFlow 0 30) 29) anon31_correct))))))
(let ((anon65_Else_correct  (=> (forall ((i_31_1 Int) (j_16_1_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1) (not (= i_31_1 j_16_1_1)))) (not (= (|Seq#Index_23761| xs1 i_31_1) (|Seq#Index_23761| xs1 j_16_1_1))))
 :qid |stdinbpl.2269:22|
 :skolemid |234|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (|Seq#Index_23761| xs1 j_16_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_31_1) (|Seq#Index_23761| xs1 j_16_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1) (|Seq#Index_23761| xs1 i_31_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_16_1_1) (|Seq#Index_23761| xs1 i_31_1))
 :pattern ( (|Seq#Index_23761| xs1 i_31_1) (|Seq#Index_23761| xs1 j_16_1_1))
)) (and (=> (= (ControlFlow 0 87) (- 0 95)) (forall ((i_32 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@5) (|Seq#Index_23761| xs1 i_32) f_7))) (>= arg_p_6@0 NoPerm))
 :qid |stdinbpl.2277:19|
 :skolemid |235|
 :pattern ( (|Seq#Index_23761| xs1 i_32))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32))
 :pattern ( (|Seq#Index_23761| xs1 i_32))
))) (=> (forall ((i_32@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@5) (|Seq#Index_23761| xs1 i_32@@0) f_7))) (>= arg_p_6@0 NoPerm))
 :qid |stdinbpl.2277:19|
 :skolemid |235|
 :pattern ( (|Seq#Index_23761| xs1 i_32@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@0))
 :pattern ( (|Seq#Index_23761| xs1 i_32@@0))
)) (and (=> (= (ControlFlow 0 87) (- 0 94)) (forall ((i_32@@1 Int) (i_32_1 Int) ) (!  (=> (and (and (and (and (not (= i_32@@1 i_32_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32_1)) (< NoPerm arg_p_6@0)) (< NoPerm arg_p_6@0)) (not (= (|Seq#Index_23761| xs1 i_32@@1) (|Seq#Index_23761| xs1 i_32_1))))
 :qid |stdinbpl.2284:19|
 :skolemid |236|
 :pattern ( (neverTriggered25 i_32@@1) (neverTriggered25 i_32_1))
))) (=> (forall ((i_32@@2 Int) (i_32_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_32@@2 i_32_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32_1@@0)) (< NoPerm arg_p_6@0)) (< NoPerm arg_p_6@0)) (not (= (|Seq#Index_23761| xs1 i_32@@2) (|Seq#Index_23761| xs1 i_32_1@@0))))
 :qid |stdinbpl.2284:19|
 :skolemid |236|
 :pattern ( (neverTriggered25 i_32@@2) (neverTriggered25 i_32_1@@0))
)) (and (=> (= (ControlFlow 0 87) (- 0 93)) (forall ((i_32@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) (|Seq#Index_23761| xs1 i_32@@3) f_7) arg_p_6@0))
 :qid |stdinbpl.2291:19|
 :skolemid |237|
 :pattern ( (|Seq#Index_23761| xs1 i_32@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_32@@3))
))) (=> (forall ((i_32@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) (|Seq#Index_23761| xs1 i_32@@4) f_7) arg_p_6@0))
 :qid |stdinbpl.2291:19|
 :skolemid |237|
 :pattern ( (|Seq#Index_23761| xs1 i_32@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_32@@4))
)) (=> (forall ((i_32@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@5) (< NoPerm arg_p_6@0)) (and (qpRange25 (|Seq#Index_23761| xs1 i_32@@5)) (= (invRecv25 (|Seq#Index_23761| xs1 i_32@@5)) i_32@@5)))
 :qid |stdinbpl.2297:24|
 :skolemid |238|
 :pattern ( (|Seq#Index_23761| xs1 i_32@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_32@@5))
 :pattern ( (|Seq#Index_23761| xs1 i_32@@5))
)) (=> (and (forall ((o_9@@48 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv25 o_9@@48)) (and (< NoPerm arg_p_6@0) (qpRange25 o_9@@48))) (= (|Seq#Index_23761| xs1 (invRecv25 o_9@@48)) o_9@@48))
 :qid |stdinbpl.2301:24|
 :skolemid |239|
 :pattern ( (invRecv25 o_9@@48))
)) (forall ((o_9@@49 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv25 o_9@@49)) (and (< NoPerm arg_p_6@0) (qpRange25 o_9@@49))) (and (= (|Seq#Index_23761| xs1 (invRecv25 o_9@@49)) o_9@@49) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@49 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@49 f_7) arg_p_6@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv25 o_9@@49)) (and (< NoPerm arg_p_6@0) (qpRange25 o_9@@49)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@49 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@49 f_7))))
 :qid |stdinbpl.2307:24|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@49 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@50 T@Ref) (f_5@@34 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@14) o_9@@50 f_5@@34) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@15) o_9@@50 f_5@@34)))
 :qid |stdinbpl.2313:31|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@15) o_9@@50 f_5@@34))
)) (forall ((o_9@@51 T@Ref) (f_5@@35 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@14) o_9@@51 f_5@@35) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@15) o_9@@51 f_5@@35)))
 :qid |stdinbpl.2313:31|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@15) o_9@@51 f_5@@35))
))) (forall ((o_9@@52 T@Ref) (f_5@@36 T@Field_40536_3826) ) (!  (=> (not (= f_5@@36 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@52 f_5@@36) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@52 f_5@@36)))
 :qid |stdinbpl.2313:31|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@52 f_5@@36))
))) (forall ((o_9@@53 T@Ref) (f_5@@37 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@14) o_9@@53 f_5@@37) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@15) o_9@@53 f_5@@37)))
 :qid |stdinbpl.2313:31|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@15) o_9@@53 f_5@@37))
))) (forall ((o_9@@54 T@Ref) (f_5@@38 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@14) o_9@@54 f_5@@38) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@15) o_9@@54 f_5@@38)))
 :qid |stdinbpl.2313:31|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@15) o_9@@54 f_5@@38))
))) (IdenticalOnKnownLocations ExhaleHeap@5 ExhaleHeap@6 QPMask@15)) (and (=> (= (ControlFlow 0 87) (- 0 92)) (forall ((i_33 Int) (i_33_2 Int) ) (!  (=> (and (and (and (and (not (= i_33 i_33_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33_2)) (< NoPerm arg_q_3@0)) (< NoPerm arg_q_3@0)) (not (= (|Seq#Index_23761| xs1 i_33) (|Seq#Index_23761| xs1 i_33_2))))
 :qid |stdinbpl.2326:17|
 :skolemid |242|
))) (=> (forall ((i_33@@0 Int) (i_33_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_33@@0 i_33_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33_2@@0)) (< NoPerm arg_q_3@0)) (< NoPerm arg_q_3@0)) (not (= (|Seq#Index_23761| xs1 i_33@@0) (|Seq#Index_23761| xs1 i_33_2@@0))))
 :qid |stdinbpl.2326:17|
 :skolemid |242|
)) (=> (and (forall ((i_33@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@1) (< NoPerm arg_q_3@0)) (and (qpRange26 (|Seq#Index_23761| xs1 i_33@@1)) (= (invRecv26 (|Seq#Index_23761| xs1 i_33@@1)) i_33@@1)))
 :qid |stdinbpl.2332:24|
 :skolemid |243|
 :pattern ( (|Seq#Index_23761| xs1 i_33@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@1))
 :pattern ( (|Seq#Index_23761| xs1 i_33@@1))
)) (forall ((o_9@@55 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv26 o_9@@55)) (< NoPerm arg_q_3@0)) (qpRange26 o_9@@55)) (= (|Seq#Index_23761| xs1 (invRecv26 o_9@@55)) o_9@@55))
 :qid |stdinbpl.2336:24|
 :skolemid |244|
 :pattern ( (invRecv26 o_9@@55))
))) (and (=> (= (ControlFlow 0 87) (- 0 91)) (forall ((i_33@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@2) (>= arg_q_3@0 NoPerm))
 :qid |stdinbpl.2342:17|
 :skolemid |245|
 :pattern ( (|Seq#Index_23761| xs1 i_33@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@2))
 :pattern ( (|Seq#Index_23761| xs1 i_33@@2))
))) (=> (forall ((i_33@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@3) (>= arg_q_3@0 NoPerm))
 :qid |stdinbpl.2342:17|
 :skolemid |245|
 :pattern ( (|Seq#Index_23761| xs1 i_33@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_33@@3))
)) (=> (and (forall ((i_33@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@4) (> arg_q_3@0 NoPerm)) (not (= (|Seq#Index_23761| xs1 i_33@@4) null)))
 :qid |stdinbpl.2348:24|
 :skolemid |246|
 :pattern ( (|Seq#Index_23761| xs1 i_33@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_33@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_33@@4))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv26 o_9@@56)) (< NoPerm arg_q_3@0)) (qpRange26 o_9@@56)) (and (=> (< NoPerm arg_q_3@0) (= (|Seq#Index_23761| xs1 (invRecv26 o_9@@56)) o_9@@56)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@56 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@56 f_7) arg_q_3@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv26 o_9@@56)) (< NoPerm arg_q_3@0)) (qpRange26 o_9@@56))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@56 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@56 f_7))))
 :qid |stdinbpl.2354:24|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@56 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@39 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@15) o_9@@57 f_5@@39) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@16) o_9@@57 f_5@@39)))
 :qid |stdinbpl.2358:31|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@15) o_9@@57 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@16) o_9@@57 f_5@@39))
)) (forall ((o_9@@58 T@Ref) (f_5@@40 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@15) o_9@@58 f_5@@40) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@16) o_9@@58 f_5@@40)))
 :qid |stdinbpl.2358:31|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@15) o_9@@58 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@16) o_9@@58 f_5@@40))
))) (forall ((o_9@@59 T@Ref) (f_5@@41 T@Field_40536_3826) ) (!  (=> (not (= f_5@@41 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@59 f_5@@41) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@59 f_5@@41)))
 :qid |stdinbpl.2358:31|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@15) o_9@@59 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@59 f_5@@41))
))) (forall ((o_9@@60 T@Ref) (f_5@@42 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@15) o_9@@60 f_5@@42) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@16) o_9@@60 f_5@@42)))
 :qid |stdinbpl.2358:31|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@15) o_9@@60 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@16) o_9@@60 f_5@@42))
))) (forall ((o_9@@61 T@Ref) (f_5@@43 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@15) o_9@@61 f_5@@43) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@16) o_9@@61 f_5@@43)))
 :qid |stdinbpl.2358:31|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@15) o_9@@61 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@16) o_9@@61 f_5@@43))
))) (state ExhaleHeap@6 QPMask@16)) (and (=> (= (ControlFlow 0 87) (- 0 90)) (forall ((i_34 Int) (i_34_2 Int) ) (!  (=> (and (and (and (and (not (= i_34 i_34_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34_2)) (< NoPerm arg_q_3@0)) (< NoPerm arg_q_3@0)) (not (= (|Seq#Index_23761| xs1 i_34) (|Seq#Index_23761| xs1 i_34_2))))
 :qid |stdinbpl.2366:17|
 :skolemid |249|
))) (=> (forall ((i_34@@0 Int) (i_34_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_34@@0 i_34_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34_2@@0)) (< NoPerm arg_q_3@0)) (< NoPerm arg_q_3@0)) (not (= (|Seq#Index_23761| xs1 i_34@@0) (|Seq#Index_23761| xs1 i_34_2@@0))))
 :qid |stdinbpl.2366:17|
 :skolemid |249|
)) (=> (and (forall ((i_34@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@1) (< NoPerm arg_q_3@0)) (and (qpRange27 (|Seq#Index_23761| xs1 i_34@@1)) (= (invRecv27 (|Seq#Index_23761| xs1 i_34@@1)) i_34@@1)))
 :qid |stdinbpl.2372:24|
 :skolemid |250|
 :pattern ( (|Seq#Index_23761| xs1 i_34@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@1))
 :pattern ( (|Seq#Index_23761| xs1 i_34@@1))
)) (forall ((o_9@@62 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv27 o_9@@62)) (< NoPerm arg_q_3@0)) (qpRange27 o_9@@62)) (= (|Seq#Index_23761| xs1 (invRecv27 o_9@@62)) o_9@@62))
 :qid |stdinbpl.2376:24|
 :skolemid |251|
 :pattern ( (invRecv27 o_9@@62))
))) (and (=> (= (ControlFlow 0 87) (- 0 89)) (forall ((i_34@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@2) (>= arg_q_3@0 NoPerm))
 :qid |stdinbpl.2382:17|
 :skolemid |252|
 :pattern ( (|Seq#Index_23761| xs1 i_34@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@2))
 :pattern ( (|Seq#Index_23761| xs1 i_34@@2))
))) (=> (forall ((i_34@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@3) (>= arg_q_3@0 NoPerm))
 :qid |stdinbpl.2382:17|
 :skolemid |252|
 :pattern ( (|Seq#Index_23761| xs1 i_34@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_34@@3))
)) (=> (and (forall ((i_34@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@4) (> arg_q_3@0 NoPerm)) (not (= (|Seq#Index_23761| xs1 i_34@@4) null)))
 :qid |stdinbpl.2388:24|
 :skolemid |253|
 :pattern ( (|Seq#Index_23761| xs1 i_34@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_34@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_34@@4))
)) (forall ((o_9@@63 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv27 o_9@@63)) (< NoPerm arg_q_3@0)) (qpRange27 o_9@@63)) (and (=> (< NoPerm arg_q_3@0) (= (|Seq#Index_23761| xs1 (invRecv27 o_9@@63)) o_9@@63)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@63 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@63 f_7) arg_q_3@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv27 o_9@@63)) (< NoPerm arg_q_3@0)) (qpRange27 o_9@@63))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@63 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@63 f_7))))
 :qid |stdinbpl.2394:24|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@63 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@64 T@Ref) (f_5@@44 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@16) o_9@@64 f_5@@44) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@17) o_9@@64 f_5@@44)))
 :qid |stdinbpl.2398:31|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@16) o_9@@64 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@17) o_9@@64 f_5@@44))
)) (forall ((o_9@@65 T@Ref) (f_5@@45 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@16) o_9@@65 f_5@@45) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@17) o_9@@65 f_5@@45)))
 :qid |stdinbpl.2398:31|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@16) o_9@@65 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@17) o_9@@65 f_5@@45))
))) (forall ((o_9@@66 T@Ref) (f_5@@46 T@Field_40536_3826) ) (!  (=> (not (= f_5@@46 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@66 f_5@@46) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@66 f_5@@46)))
 :qid |stdinbpl.2398:31|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@16) o_9@@66 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@17) o_9@@66 f_5@@46))
))) (forall ((o_9@@67 T@Ref) (f_5@@47 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@16) o_9@@67 f_5@@47) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@17) o_9@@67 f_5@@47)))
 :qid |stdinbpl.2398:31|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@16) o_9@@67 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@17) o_9@@67 f_5@@47))
))) (forall ((o_9@@68 T@Ref) (f_5@@48 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@16) o_9@@68 f_5@@48) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@17) o_9@@68 f_5@@48)))
 :qid |stdinbpl.2398:31|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@16) o_9@@68 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@17) o_9@@68 f_5@@48))
))) (and (and (state ExhaleHeap@6 QPMask@17) (state ExhaleHeap@6 QPMask@17)) (and (state ExhaleHeap@6 QPMask@17) (= arg_p_7@0 (/ (to_real 1) (to_real 4)))))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (<= NoPerm arg_p_7@0)) (=> (<= NoPerm arg_p_7@0) (and (and (=> (= (ControlFlow 0 87) 82) anon67_Else_correct) (=> (= (ControlFlow 0 87) 30) anon68_Then_correct)) (=> (= (ControlFlow 0 87) 32) anon68_Else_correct))))))))))))))))))))))))))))))
(let ((anon27_correct true))
(let ((anon66_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_30) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_15_2) (not (= i_30 j_15_2))))) (= (ControlFlow 0 28) 25)) anon27_correct)))
(let ((anon66_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_30) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_15_2) (not (= i_30 j_15_2)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (not (= (|Seq#Index_23761| xs1 i_30) (|Seq#Index_23761| xs1 j_15_2)))) (=> (not (= (|Seq#Index_23761| xs1 i_30) (|Seq#Index_23761| xs1 j_15_2))) (=> (= (ControlFlow 0 26) 25) anon27_correct))))))
(let ((anon63_Else_correct  (=> (forall ((i_28_1 Int) (j_14_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1) (not (= i_28_1 j_14_1)))) (not (= (|Seq#Index_23761| xs3 i_28_1) (|Seq#Index_23761| xs3 j_14_1))))
 :qid |stdinbpl.2191:22|
 :skolemid |226|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (|Seq#Index_23761| xs3 j_14_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_28_1) (|Seq#Index_23761| xs3 j_14_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1) (|Seq#Index_23761| xs3 i_28_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_14_1) (|Seq#Index_23761| xs3 i_28_1))
 :pattern ( (|Seq#Index_23761| xs3 i_28_1) (|Seq#Index_23761| xs3 j_14_1))
)) (and (=> (= (ControlFlow 0 96) (- 0 101)) (forall ((i_29 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@4) (|Seq#Index_23761| xs3 i_29) f_7))) (>= arg_p_5@0 NoPerm))
 :qid |stdinbpl.2199:19|
 :skolemid |227|
 :pattern ( (|Seq#Index_23761| xs3 i_29))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29))
 :pattern ( (|Seq#Index_23761| xs3 i_29))
))) (=> (forall ((i_29@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@4) (|Seq#Index_23761| xs3 i_29@@0) f_7))) (>= arg_p_5@0 NoPerm))
 :qid |stdinbpl.2199:19|
 :skolemid |227|
 :pattern ( (|Seq#Index_23761| xs3 i_29@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@0))
 :pattern ( (|Seq#Index_23761| xs3 i_29@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 100)) (forall ((i_29@@1 Int) (i_29_2 Int) ) (!  (=> (and (and (and (and (not (= i_29@@1 i_29_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29_2)) (< NoPerm arg_p_5@0)) (< NoPerm arg_p_5@0)) (not (= (|Seq#Index_23761| xs3 i_29@@1) (|Seq#Index_23761| xs3 i_29_2))))
 :qid |stdinbpl.2206:19|
 :skolemid |228|
 :pattern ( (neverTriggered24 i_29@@1) (neverTriggered24 i_29_2))
))) (=> (forall ((i_29@@2 Int) (i_29_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_29@@2 i_29_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29_2@@0)) (< NoPerm arg_p_5@0)) (< NoPerm arg_p_5@0)) (not (= (|Seq#Index_23761| xs3 i_29@@2) (|Seq#Index_23761| xs3 i_29_2@@0))))
 :qid |stdinbpl.2206:19|
 :skolemid |228|
 :pattern ( (neverTriggered24 i_29@@2) (neverTriggered24 i_29_2@@0))
)) (and (=> (= (ControlFlow 0 96) (- 0 99)) (forall ((i_29@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) (|Seq#Index_23761| xs3 i_29@@3) f_7) arg_p_5@0))
 :qid |stdinbpl.2213:19|
 :skolemid |229|
 :pattern ( (|Seq#Index_23761| xs3 i_29@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@3))
 :pattern ( (|Seq#Index_23761| xs3 i_29@@3))
))) (=> (forall ((i_29@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) (|Seq#Index_23761| xs3 i_29@@4) f_7) arg_p_5@0))
 :qid |stdinbpl.2213:19|
 :skolemid |229|
 :pattern ( (|Seq#Index_23761| xs3 i_29@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@4))
 :pattern ( (|Seq#Index_23761| xs3 i_29@@4))
)) (=> (forall ((i_29@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@5) (< NoPerm arg_p_5@0)) (and (qpRange24 (|Seq#Index_23761| xs3 i_29@@5)) (= (invRecv24 (|Seq#Index_23761| xs3 i_29@@5)) i_29@@5)))
 :qid |stdinbpl.2219:24|
 :skolemid |230|
 :pattern ( (|Seq#Index_23761| xs3 i_29@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_29@@5))
 :pattern ( (|Seq#Index_23761| xs3 i_29@@5))
)) (=> (and (forall ((o_9@@69 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv24 o_9@@69)) (and (< NoPerm arg_p_5@0) (qpRange24 o_9@@69))) (= (|Seq#Index_23761| xs3 (invRecv24 o_9@@69)) o_9@@69))
 :qid |stdinbpl.2223:24|
 :skolemid |231|
 :pattern ( (invRecv24 o_9@@69))
)) (forall ((o_9@@70 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv24 o_9@@70)) (and (< NoPerm arg_p_5@0) (qpRange24 o_9@@70))) (and (= (|Seq#Index_23761| xs3 (invRecv24 o_9@@70)) o_9@@70) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@70 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@70 f_7) arg_p_5@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv24 o_9@@70)) (and (< NoPerm arg_p_5@0) (qpRange24 o_9@@70)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@70 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@70 f_7))))
 :qid |stdinbpl.2229:24|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@70 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_9@@71 T@Ref) (f_5@@49 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@13) o_9@@71 f_5@@49) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@14) o_9@@71 f_5@@49)))
 :qid |stdinbpl.2235:31|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@14) o_9@@71 f_5@@49))
)) (forall ((o_9@@72 T@Ref) (f_5@@50 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@13) o_9@@72 f_5@@50) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@14) o_9@@72 f_5@@50)))
 :qid |stdinbpl.2235:31|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@14) o_9@@72 f_5@@50))
))) (forall ((o_9@@73 T@Ref) (f_5@@51 T@Field_40536_3826) ) (!  (=> (not (= f_5@@51 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@73 f_5@@51) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@73 f_5@@51)))
 :qid |stdinbpl.2235:31|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@14) o_9@@73 f_5@@51))
))) (forall ((o_9@@74 T@Ref) (f_5@@52 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@13) o_9@@74 f_5@@52) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@14) o_9@@74 f_5@@52)))
 :qid |stdinbpl.2235:31|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@14) o_9@@74 f_5@@52))
))) (forall ((o_9@@75 T@Ref) (f_5@@53 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@13) o_9@@75 f_5@@53) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@14) o_9@@75 f_5@@53)))
 :qid |stdinbpl.2235:31|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@14) o_9@@75 f_5@@53))
))) (IdenticalOnKnownLocations ExhaleHeap@4 ExhaleHeap@5 QPMask@14)) (and (and (state ExhaleHeap@5 QPMask@14) (state ExhaleHeap@5 QPMask@14)) (and (= arg_p_6@0 (/ (to_real 1) (to_real 2))) (= arg_q_3@0 (/ (to_real 1) (to_real 4)))))) (and (=> (= (ControlFlow 0 96) (- 0 98)) (= arg_p_6@0 (* (to_real 2) arg_q_3@0))) (=> (= arg_p_6@0 (* (to_real 2) arg_q_3@0)) (and (=> (= (ControlFlow 0 96) (- 0 97)) (<= NoPerm arg_p_6@0)) (=> (<= NoPerm arg_p_6@0) (and (and (=> (= (ControlFlow 0 96) 87) anon65_Else_correct) (=> (= (ControlFlow 0 96) 26) anon66_Then_correct)) (=> (= (ControlFlow 0 96) 28) anon66_Else_correct))))))))))))))))))
(let ((anon23_correct true))
(let ((anon64_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_27_2) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_13_2) (not (= i_27_2 j_13_2))))) (= (ControlFlow 0 24) 21)) anon23_correct)))
(let ((anon64_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_27_2) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_13_2) (not (= i_27_2 j_13_2)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (not (= (|Seq#Index_23761| xs3 i_27_2) (|Seq#Index_23761| xs3 j_13_2)))) (=> (not (= (|Seq#Index_23761| xs3 i_27_2) (|Seq#Index_23761| xs3 j_13_2))) (=> (= (ControlFlow 0 22) 21) anon23_correct))))))
(let ((anon61_Else_correct  (=> (forall ((i_25_1_1 Int) (j_12_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1) (not (= i_25_1_1 j_12_1)))) (not (= (|Seq#Index_23761| xs2 i_25_1_1) (|Seq#Index_23761| xs2 j_12_1))))
 :qid |stdinbpl.2116:22|
 :skolemid |218|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (|Seq#Index_23761| xs2 j_12_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_25_1_1) (|Seq#Index_23761| xs2 j_12_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1) (|Seq#Index_23761| xs2 i_25_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_12_1) (|Seq#Index_23761| xs2 i_25_1_1))
 :pattern ( (|Seq#Index_23761| xs2 i_25_1_1) (|Seq#Index_23761| xs2 j_12_1))
)) (and (=> (= (ControlFlow 0 102) (- 0 106)) (forall ((i_26_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@3) (|Seq#Index_23761| xs2 i_26_1) f_7))) (>= arg_p_4@0 NoPerm))
 :qid |stdinbpl.2124:19|
 :skolemid |219|
 :pattern ( (|Seq#Index_23761| xs2 i_26_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1))
 :pattern ( (|Seq#Index_23761| xs2 i_26_1))
))) (=> (forall ((i_26_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@3) (|Seq#Index_23761| xs2 i_26_1@@0) f_7))) (>= arg_p_4@0 NoPerm))
 :qid |stdinbpl.2124:19|
 :skolemid |219|
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@0))
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@0))
)) (and (=> (= (ControlFlow 0 102) (- 0 105)) (forall ((i_26_1@@1 Int) (i_26_2 Int) ) (!  (=> (and (and (and (and (not (= i_26_1@@1 i_26_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_2)) (< NoPerm arg_p_4@0)) (< NoPerm arg_p_4@0)) (not (= (|Seq#Index_23761| xs2 i_26_1@@1) (|Seq#Index_23761| xs2 i_26_2))))
 :qid |stdinbpl.2131:19|
 :skolemid |220|
 :pattern ( (neverTriggered23 i_26_1@@1) (neverTriggered23 i_26_2))
))) (=> (forall ((i_26_1@@2 Int) (i_26_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_26_1@@2 i_26_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_2@@0)) (< NoPerm arg_p_4@0)) (< NoPerm arg_p_4@0)) (not (= (|Seq#Index_23761| xs2 i_26_1@@2) (|Seq#Index_23761| xs2 i_26_2@@0))))
 :qid |stdinbpl.2131:19|
 :skolemid |220|
 :pattern ( (neverTriggered23 i_26_1@@2) (neverTriggered23 i_26_2@@0))
)) (and (=> (= (ControlFlow 0 102) (- 0 104)) (forall ((i_26_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) (|Seq#Index_23761| xs2 i_26_1@@3) f_7) arg_p_4@0))
 :qid |stdinbpl.2138:19|
 :skolemid |221|
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@3))
))) (=> (forall ((i_26_1@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) (|Seq#Index_23761| xs2 i_26_1@@4) f_7) arg_p_4@0))
 :qid |stdinbpl.2138:19|
 :skolemid |221|
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@4))
)) (=> (forall ((i_26_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@5) (< NoPerm arg_p_4@0)) (and (qpRange23 (|Seq#Index_23761| xs2 i_26_1@@5)) (= (invRecv23 (|Seq#Index_23761| xs2 i_26_1@@5)) i_26_1@@5)))
 :qid |stdinbpl.2144:24|
 :skolemid |222|
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_26_1@@5))
 :pattern ( (|Seq#Index_23761| xs2 i_26_1@@5))
)) (=> (and (forall ((o_9@@76 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv23 o_9@@76)) (and (< NoPerm arg_p_4@0) (qpRange23 o_9@@76))) (= (|Seq#Index_23761| xs2 (invRecv23 o_9@@76)) o_9@@76))
 :qid |stdinbpl.2148:24|
 :skolemid |223|
 :pattern ( (invRecv23 o_9@@76))
)) (forall ((o_9@@77 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv23 o_9@@77)) (and (< NoPerm arg_p_4@0) (qpRange23 o_9@@77))) (and (= (|Seq#Index_23761| xs2 (invRecv23 o_9@@77)) o_9@@77) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@77 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@77 f_7) arg_p_4@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv23 o_9@@77)) (and (< NoPerm arg_p_4@0) (qpRange23 o_9@@77)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@77 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@77 f_7))))
 :qid |stdinbpl.2154:24|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@77 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@78 T@Ref) (f_5@@54 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@12) o_9@@78 f_5@@54) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@13) o_9@@78 f_5@@54)))
 :qid |stdinbpl.2160:31|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@13) o_9@@78 f_5@@54))
)) (forall ((o_9@@79 T@Ref) (f_5@@55 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@12) o_9@@79 f_5@@55) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@13) o_9@@79 f_5@@55)))
 :qid |stdinbpl.2160:31|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@13) o_9@@79 f_5@@55))
))) (forall ((o_9@@80 T@Ref) (f_5@@56 T@Field_40536_3826) ) (!  (=> (not (= f_5@@56 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@80 f_5@@56) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@80 f_5@@56)))
 :qid |stdinbpl.2160:31|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@13) o_9@@80 f_5@@56))
))) (forall ((o_9@@81 T@Ref) (f_5@@57 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@12) o_9@@81 f_5@@57) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@13) o_9@@81 f_5@@57)))
 :qid |stdinbpl.2160:31|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@13) o_9@@81 f_5@@57))
))) (forall ((o_9@@82 T@Ref) (f_5@@58 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@12) o_9@@82 f_5@@58) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@13) o_9@@82 f_5@@58)))
 :qid |stdinbpl.2160:31|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@13) o_9@@82 f_5@@58))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@3 ExhaleHeap@4 QPMask@13) (state ExhaleHeap@4 QPMask@13)) (and (state ExhaleHeap@4 QPMask@13) (= arg_p_5@0 (/ (to_real 1) (to_real 3)))))) (and (=> (= (ControlFlow 0 102) (- 0 103)) (<= NoPerm arg_p_5@0)) (=> (<= NoPerm arg_p_5@0) (and (and (=> (= (ControlFlow 0 102) 96) anon63_Else_correct) (=> (= (ControlFlow 0 102) 22) anon64_Then_correct)) (=> (= (ControlFlow 0 102) 24) anon64_Else_correct))))))))))))))))
(let ((anon19_correct true))
(let ((anon62_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_24_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_11_1) (not (= i_24_1 j_11_1))))) (= (ControlFlow 0 20) 17)) anon19_correct)))
(let ((anon62_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_24_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_11_1) (not (= i_24_1 j_11_1)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (not (= (|Seq#Index_23761| xs2 i_24_1) (|Seq#Index_23761| xs2 j_11_1)))) (=> (not (= (|Seq#Index_23761| xs2 i_24_1) (|Seq#Index_23761| xs2 j_11_1))) (=> (= (ControlFlow 0 18) 17) anon19_correct))))))
(let ((anon59_Else_correct  (=> (forall ((i_22_1_1 Int) (j_10_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1) (not (= i_22_1_1 j_10_1)))) (not (= (|Seq#Index_23761| xs1 i_22_1_1) (|Seq#Index_23761| xs1 j_10_1))))
 :qid |stdinbpl.2041:22|
 :skolemid |210|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (|Seq#Index_23761| xs1 j_10_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_22_1_1) (|Seq#Index_23761| xs1 j_10_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1) (|Seq#Index_23761| xs1 i_22_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_10_1) (|Seq#Index_23761| xs1 i_22_1_1))
 :pattern ( (|Seq#Index_23761| xs1 i_22_1_1) (|Seq#Index_23761| xs1 j_10_1))
)) (and (=> (= (ControlFlow 0 107) (- 0 111)) (forall ((i_23_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@2) (|Seq#Index_23761| xs1 i_23_1) f_7))) (>= arg_p_3@0 NoPerm))
 :qid |stdinbpl.2049:19|
 :skolemid |211|
 :pattern ( (|Seq#Index_23761| xs1 i_23_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1))
 :pattern ( (|Seq#Index_23761| xs1 i_23_1))
))) (=> (forall ((i_23_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@2) (|Seq#Index_23761| xs1 i_23_1@@0) f_7))) (>= arg_p_3@0 NoPerm))
 :qid |stdinbpl.2049:19|
 :skolemid |211|
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@0))
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@0))
)) (and (=> (= (ControlFlow 0 107) (- 0 110)) (forall ((i_23_1@@1 Int) (i_23_2 Int) ) (!  (=> (and (and (and (and (not (= i_23_1@@1 i_23_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_2)) (< NoPerm arg_p_3@0)) (< NoPerm arg_p_3@0)) (not (= (|Seq#Index_23761| xs1 i_23_1@@1) (|Seq#Index_23761| xs1 i_23_2))))
 :qid |stdinbpl.2056:19|
 :skolemid |212|
 :pattern ( (neverTriggered22 i_23_1@@1) (neverTriggered22 i_23_2))
))) (=> (forall ((i_23_1@@2 Int) (i_23_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_23_1@@2 i_23_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_2@@0)) (< NoPerm arg_p_3@0)) (< NoPerm arg_p_3@0)) (not (= (|Seq#Index_23761| xs1 i_23_1@@2) (|Seq#Index_23761| xs1 i_23_2@@0))))
 :qid |stdinbpl.2056:19|
 :skolemid |212|
 :pattern ( (neverTriggered22 i_23_1@@2) (neverTriggered22 i_23_2@@0))
)) (and (=> (= (ControlFlow 0 107) (- 0 109)) (forall ((i_23_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) (|Seq#Index_23761| xs1 i_23_1@@3) f_7) arg_p_3@0))
 :qid |stdinbpl.2063:19|
 :skolemid |213|
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@3))
))) (=> (forall ((i_23_1@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) (|Seq#Index_23761| xs1 i_23_1@@4) f_7) arg_p_3@0))
 :qid |stdinbpl.2063:19|
 :skolemid |213|
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@4))
)) (=> (forall ((i_23_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@5) (< NoPerm arg_p_3@0)) (and (qpRange22 (|Seq#Index_23761| xs1 i_23_1@@5)) (= (invRecv22 (|Seq#Index_23761| xs1 i_23_1@@5)) i_23_1@@5)))
 :qid |stdinbpl.2069:24|
 :skolemid |214|
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_23_1@@5))
 :pattern ( (|Seq#Index_23761| xs1 i_23_1@@5))
)) (=> (and (forall ((o_9@@83 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv22 o_9@@83)) (and (< NoPerm arg_p_3@0) (qpRange22 o_9@@83))) (= (|Seq#Index_23761| xs1 (invRecv22 o_9@@83)) o_9@@83))
 :qid |stdinbpl.2073:24|
 :skolemid |215|
 :pattern ( (invRecv22 o_9@@83))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv22 o_9@@84)) (and (< NoPerm arg_p_3@0) (qpRange22 o_9@@84))) (and (= (|Seq#Index_23761| xs1 (invRecv22 o_9@@84)) o_9@@84) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@84 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@84 f_7) arg_p_3@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv22 o_9@@84)) (and (< NoPerm arg_p_3@0) (qpRange22 o_9@@84)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@84 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@84 f_7))))
 :qid |stdinbpl.2079:24|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@84 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@59 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@11) o_9@@85 f_5@@59) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@12) o_9@@85 f_5@@59)))
 :qid |stdinbpl.2085:31|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@12) o_9@@85 f_5@@59))
)) (forall ((o_9@@86 T@Ref) (f_5@@60 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@11) o_9@@86 f_5@@60) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@12) o_9@@86 f_5@@60)))
 :qid |stdinbpl.2085:31|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@12) o_9@@86 f_5@@60))
))) (forall ((o_9@@87 T@Ref) (f_5@@61 T@Field_40536_3826) ) (!  (=> (not (= f_5@@61 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@87 f_5@@61) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@87 f_5@@61)))
 :qid |stdinbpl.2085:31|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@12) o_9@@87 f_5@@61))
))) (forall ((o_9@@88 T@Ref) (f_5@@62 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@11) o_9@@88 f_5@@62) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@12) o_9@@88 f_5@@62)))
 :qid |stdinbpl.2085:31|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@12) o_9@@88 f_5@@62))
))) (forall ((o_9@@89 T@Ref) (f_5@@63 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@11) o_9@@89 f_5@@63) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@12) o_9@@89 f_5@@63)))
 :qid |stdinbpl.2085:31|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@12) o_9@@89 f_5@@63))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@2 ExhaleHeap@3 QPMask@12) (state ExhaleHeap@3 QPMask@12)) (and (state ExhaleHeap@3 QPMask@12) (= arg_p_4@0 (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 107) (- 0 108)) (<= NoPerm arg_p_4@0)) (=> (<= NoPerm arg_p_4@0) (and (and (=> (= (ControlFlow 0 107) 102) anon61_Else_correct) (=> (= (ControlFlow 0 107) 18) anon62_Then_correct)) (=> (= (ControlFlow 0 107) 20) anon62_Else_correct))))))))))))))))
(let ((anon15_correct true))
(let ((anon60_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_21_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_9_1) (not (= i_21_1 j_9_1))))) (= (ControlFlow 0 16) 13)) anon15_correct)))
(let ((anon60_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_21_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_9_1) (not (= i_21_1 j_9_1)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (= (|Seq#Index_23761| xs1 i_21_1) (|Seq#Index_23761| xs1 j_9_1)))) (=> (not (= (|Seq#Index_23761| xs1 i_21_1) (|Seq#Index_23761| xs1 j_9_1))) (=> (= (ControlFlow 0 14) 13) anon15_correct))))))
(let ((anon57_Else_correct  (=> (forall ((i_17_1_1 Int) (j_8_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1) (not (= i_17_1_1 j_8_1)))) (not (= (|Seq#Index_23761| xs3 i_17_1_1) (|Seq#Index_23761| xs3 j_8_1))))
 :qid |stdinbpl.1886:22|
 :skolemid |188|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (|Seq#Index_23761| xs3 j_8_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_17_1_1) (|Seq#Index_23761| xs3 j_8_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1) (|Seq#Index_23761| xs3 i_17_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_8_1) (|Seq#Index_23761| xs3 i_17_1_1))
 :pattern ( (|Seq#Index_23761| xs3 i_17_1_1) (|Seq#Index_23761| xs3 j_8_1))
)) (and (=> (= (ControlFlow 0 112) (- 0 120)) (forall ((i_18_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@1) (|Seq#Index_23761| xs3 i_18_1) f_7))) (>= FullPerm NoPerm))
 :qid |stdinbpl.1894:19|
 :skolemid |189|
 :pattern ( (|Seq#Index_23761| xs3 i_18_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1))
 :pattern ( (|Seq#Index_23761| xs3 i_18_1))
))) (=> (forall ((i_18_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@1) (|Seq#Index_23761| xs3 i_18_1@@0) f_7))) (>= FullPerm NoPerm))
 :qid |stdinbpl.1894:19|
 :skolemid |189|
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@0))
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@0))
)) (and (=> (= (ControlFlow 0 112) (- 0 119)) (forall ((i_18_1@@1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@1 i_18_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs3 i_18_1@@1) (|Seq#Index_23761| xs3 i_18_2))))
 :qid |stdinbpl.1901:19|
 :skolemid |190|
 :pattern ( (neverTriggered19 i_18_1@@1) (neverTriggered19 i_18_2))
))) (=> (forall ((i_18_1@@2 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@2 i_18_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs3 i_18_1@@2) (|Seq#Index_23761| xs3 i_18_2@@0))))
 :qid |stdinbpl.1901:19|
 :skolemid |190|
 :pattern ( (neverTriggered19 i_18_1@@2) (neverTriggered19 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 112) (- 0 118)) (forall ((i_18_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) (|Seq#Index_23761| xs3 i_18_1@@3) f_7) FullPerm))
 :qid |stdinbpl.1908:19|
 :skolemid |191|
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@3))
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@3))
))) (=> (forall ((i_18_1@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) (|Seq#Index_23761| xs3 i_18_1@@4) f_7) FullPerm))
 :qid |stdinbpl.1908:19|
 :skolemid |191|
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@4))
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@4))
)) (=> (forall ((i_18_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@5) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_23761| xs3 i_18_1@@5)) (= (invRecv19 (|Seq#Index_23761| xs3 i_18_1@@5)) i_18_1@@5)))
 :qid |stdinbpl.1914:24|
 :skolemid |192|
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_18_1@@5))
 :pattern ( (|Seq#Index_23761| xs3 i_18_1@@5))
)) (=> (and (forall ((o_9@@90 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv19 o_9@@90)) (and (< NoPerm FullPerm) (qpRange19 o_9@@90))) (= (|Seq#Index_23761| xs3 (invRecv19 o_9@@90)) o_9@@90))
 :qid |stdinbpl.1918:24|
 :skolemid |193|
 :pattern ( (invRecv19 o_9@@90))
)) (forall ((o_9@@91 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv19 o_9@@91)) (and (< NoPerm FullPerm) (qpRange19 o_9@@91))) (and (= (|Seq#Index_23761| xs3 (invRecv19 o_9@@91)) o_9@@91) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@91 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@91 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv19 o_9@@91)) (and (< NoPerm FullPerm) (qpRange19 o_9@@91)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@91 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@91 f_7))))
 :qid |stdinbpl.1924:24|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@91 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@92 T@Ref) (f_5@@64 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@8) o_9@@92 f_5@@64) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@9) o_9@@92 f_5@@64)))
 :qid |stdinbpl.1930:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@9) o_9@@92 f_5@@64))
)) (forall ((o_9@@93 T@Ref) (f_5@@65 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@8) o_9@@93 f_5@@65) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@9) o_9@@93 f_5@@65)))
 :qid |stdinbpl.1930:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@9) o_9@@93 f_5@@65))
))) (forall ((o_9@@94 T@Ref) (f_5@@66 T@Field_40536_3826) ) (!  (=> (not (= f_5@@66 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@94 f_5@@66) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@94 f_5@@66)))
 :qid |stdinbpl.1930:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@94 f_5@@66))
))) (forall ((o_9@@95 T@Ref) (f_5@@67 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@8) o_9@@95 f_5@@67) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@9) o_9@@95 f_5@@67)))
 :qid |stdinbpl.1930:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@9) o_9@@95 f_5@@67))
))) (forall ((o_9@@96 T@Ref) (f_5@@68 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@8) o_9@@96 f_5@@68) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@9) o_9@@96 f_5@@68)))
 :qid |stdinbpl.1930:31|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@9) o_9@@96 f_5@@68))
))) (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 QPMask@9)) (and (=> (= (ControlFlow 0 112) (- 0 117)) (forall ((i_19_1 Int) (i_19_2 Int) ) (!  (=> (and (and (and (and (not (= i_19_1 i_19_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_2)) (< NoPerm arg_q_2@0)) (< NoPerm arg_q_2@0)) (not (= (|Seq#Index_23761| xs3 i_19_1) (|Seq#Index_23761| xs3 i_19_2))))
 :qid |stdinbpl.1943:17|
 :skolemid |196|
))) (=> (forall ((i_19_1@@0 Int) (i_19_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_19_1@@0 i_19_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_2@@0)) (< NoPerm arg_q_2@0)) (< NoPerm arg_q_2@0)) (not (= (|Seq#Index_23761| xs3 i_19_1@@0) (|Seq#Index_23761| xs3 i_19_2@@0))))
 :qid |stdinbpl.1943:17|
 :skolemid |196|
)) (=> (and (forall ((i_19_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@1) (< NoPerm arg_q_2@0)) (and (qpRange20 (|Seq#Index_23761| xs3 i_19_1@@1)) (= (invRecv20 (|Seq#Index_23761| xs3 i_19_1@@1)) i_19_1@@1)))
 :qid |stdinbpl.1949:24|
 :skolemid |197|
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@1))
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@1))
)) (forall ((o_9@@97 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv20 o_9@@97)) (< NoPerm arg_q_2@0)) (qpRange20 o_9@@97)) (= (|Seq#Index_23761| xs3 (invRecv20 o_9@@97)) o_9@@97))
 :qid |stdinbpl.1953:24|
 :skolemid |198|
 :pattern ( (invRecv20 o_9@@97))
))) (and (=> (= (ControlFlow 0 112) (- 0 116)) (forall ((i_19_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@2) (>= arg_q_2@0 NoPerm))
 :qid |stdinbpl.1959:17|
 :skolemid |199|
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@2))
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@2))
))) (=> (forall ((i_19_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@3) (>= arg_q_2@0 NoPerm))
 :qid |stdinbpl.1959:17|
 :skolemid |199|
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@3))
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@3))
)) (=> (and (forall ((i_19_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@4) (> arg_q_2@0 NoPerm)) (not (= (|Seq#Index_23761| xs3 i_19_1@@4) null)))
 :qid |stdinbpl.1965:24|
 :skolemid |200|
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_19_1@@4))
 :pattern ( (|Seq#Index_23761| xs3 i_19_1@@4))
)) (forall ((o_9@@98 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv20 o_9@@98)) (< NoPerm arg_q_2@0)) (qpRange20 o_9@@98)) (and (=> (< NoPerm arg_q_2@0) (= (|Seq#Index_23761| xs3 (invRecv20 o_9@@98)) o_9@@98)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@98 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@98 f_7) arg_q_2@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv20 o_9@@98)) (< NoPerm arg_q_2@0)) (qpRange20 o_9@@98))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@98 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@98 f_7))))
 :qid |stdinbpl.1971:24|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@98 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@99 T@Ref) (f_5@@69 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@9) o_9@@99 f_5@@69) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@10) o_9@@99 f_5@@69)))
 :qid |stdinbpl.1975:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@9) o_9@@99 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@10) o_9@@99 f_5@@69))
)) (forall ((o_9@@100 T@Ref) (f_5@@70 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@9) o_9@@100 f_5@@70) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@10) o_9@@100 f_5@@70)))
 :qid |stdinbpl.1975:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@9) o_9@@100 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@10) o_9@@100 f_5@@70))
))) (forall ((o_9@@101 T@Ref) (f_5@@71 T@Field_40536_3826) ) (!  (=> (not (= f_5@@71 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@101 f_5@@71) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@101 f_5@@71)))
 :qid |stdinbpl.1975:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@9) o_9@@101 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@101 f_5@@71))
))) (forall ((o_9@@102 T@Ref) (f_5@@72 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@9) o_9@@102 f_5@@72) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@10) o_9@@102 f_5@@72)))
 :qid |stdinbpl.1975:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@9) o_9@@102 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@10) o_9@@102 f_5@@72))
))) (forall ((o_9@@103 T@Ref) (f_5@@73 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@9) o_9@@103 f_5@@73) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@10) o_9@@103 f_5@@73)))
 :qid |stdinbpl.1975:31|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@9) o_9@@103 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@10) o_9@@103 f_5@@73))
))) (state ExhaleHeap@2 QPMask@10)) (and (=> (= (ControlFlow 0 112) (- 0 115)) (forall ((i_20_2 Int) (i_20_3 Int) ) (!  (=> (and (and (and (and (not (= i_20_2 i_20_3)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_3)) (< NoPerm arg_q_2@0)) (< NoPerm arg_q_2@0)) (not (= (|Seq#Index_23761| xs3 i_20_2) (|Seq#Index_23761| xs3 i_20_3))))
 :qid |stdinbpl.1983:17|
 :skolemid |203|
))) (=> (forall ((i_20_2@@0 Int) (i_20_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_20_2@@0 i_20_3@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_3@@0)) (< NoPerm arg_q_2@0)) (< NoPerm arg_q_2@0)) (not (= (|Seq#Index_23761| xs3 i_20_2@@0) (|Seq#Index_23761| xs3 i_20_3@@0))))
 :qid |stdinbpl.1983:17|
 :skolemid |203|
)) (=> (and (forall ((i_20_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@1) (< NoPerm arg_q_2@0)) (and (qpRange21 (|Seq#Index_23761| xs3 i_20_2@@1)) (= (invRecv21 (|Seq#Index_23761| xs3 i_20_2@@1)) i_20_2@@1)))
 :qid |stdinbpl.1989:24|
 :skolemid |204|
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@1))
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@1))
)) (forall ((o_9@@104 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv21 o_9@@104)) (< NoPerm arg_q_2@0)) (qpRange21 o_9@@104)) (= (|Seq#Index_23761| xs3 (invRecv21 o_9@@104)) o_9@@104))
 :qid |stdinbpl.1993:24|
 :skolemid |205|
 :pattern ( (invRecv21 o_9@@104))
))) (and (=> (= (ControlFlow 0 112) (- 0 114)) (forall ((i_20_2@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@2) (>= arg_q_2@0 NoPerm))
 :qid |stdinbpl.1999:17|
 :skolemid |206|
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@2))
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@2))
))) (=> (forall ((i_20_2@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@3) (>= arg_q_2@0 NoPerm))
 :qid |stdinbpl.1999:17|
 :skolemid |206|
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@3))
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@3))
)) (=> (and (forall ((i_20_2@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@4) (> arg_q_2@0 NoPerm)) (not (= (|Seq#Index_23761| xs3 i_20_2@@4) null)))
 :qid |stdinbpl.2005:24|
 :skolemid |207|
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_20_2@@4))
 :pattern ( (|Seq#Index_23761| xs3 i_20_2@@4))
)) (forall ((o_9@@105 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv21 o_9@@105)) (< NoPerm arg_q_2@0)) (qpRange21 o_9@@105)) (and (=> (< NoPerm arg_q_2@0) (= (|Seq#Index_23761| xs3 (invRecv21 o_9@@105)) o_9@@105)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@105 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@105 f_7) arg_q_2@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv21 o_9@@105)) (< NoPerm arg_q_2@0)) (qpRange21 o_9@@105))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@105 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@105 f_7))))
 :qid |stdinbpl.2011:24|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@105 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@106 T@Ref) (f_5@@74 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@10) o_9@@106 f_5@@74) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@11) o_9@@106 f_5@@74)))
 :qid |stdinbpl.2015:31|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@10) o_9@@106 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@11) o_9@@106 f_5@@74))
)) (forall ((o_9@@107 T@Ref) (f_5@@75 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@10) o_9@@107 f_5@@75) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@11) o_9@@107 f_5@@75)))
 :qid |stdinbpl.2015:31|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@10) o_9@@107 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@11) o_9@@107 f_5@@75))
))) (forall ((o_9@@108 T@Ref) (f_5@@76 T@Field_40536_3826) ) (!  (=> (not (= f_5@@76 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@108 f_5@@76) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@108 f_5@@76)))
 :qid |stdinbpl.2015:31|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@10) o_9@@108 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@11) o_9@@108 f_5@@76))
))) (forall ((o_9@@109 T@Ref) (f_5@@77 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@10) o_9@@109 f_5@@77) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@11) o_9@@109 f_5@@77)))
 :qid |stdinbpl.2015:31|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@10) o_9@@109 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@11) o_9@@109 f_5@@77))
))) (forall ((o_9@@110 T@Ref) (f_5@@78 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@10) o_9@@110 f_5@@78) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@11) o_9@@110 f_5@@78)))
 :qid |stdinbpl.2015:31|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@10) o_9@@110 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@11) o_9@@110 f_5@@78))
))) (and (and (state ExhaleHeap@2 QPMask@11) (state ExhaleHeap@2 QPMask@11)) (and (state ExhaleHeap@2 QPMask@11) (= arg_p_3@0 (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 112) (- 0 113)) (<= NoPerm arg_p_3@0)) (=> (<= NoPerm arg_p_3@0) (and (and (=> (= (ControlFlow 0 112) 107) anon59_Else_correct) (=> (= (ControlFlow 0 112) 14) anon60_Then_correct)) (=> (= (ControlFlow 0 112) 16) anon60_Else_correct))))))))))))))))))))))))))))))
(let ((anon11_correct true))
(let ((anon58_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_16_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_7_1) (not (= i_16_1 j_7_1))))) (= (ControlFlow 0 12) 9)) anon11_correct)))
(let ((anon58_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_16_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_7_1) (not (= i_16_1 j_7_1)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (not (= (|Seq#Index_23761| xs3 i_16_1) (|Seq#Index_23761| xs3 j_7_1)))) (=> (not (= (|Seq#Index_23761| xs3 i_16_1) (|Seq#Index_23761| xs3 j_7_1))) (=> (= (ControlFlow 0 10) 9) anon11_correct))))))
(let ((anon55_Else_correct  (=> (forall ((i_12_1_1 Int) (j_6_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1) (not (= i_12_1_1 j_6_1)))) (not (= (|Seq#Index_23761| xs2 i_12_1_1) (|Seq#Index_23761| xs2 j_6_1))))
 :qid |stdinbpl.1728:22|
 :skolemid |166|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (|Seq#Index_23761| xs2 j_6_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_12_1_1) (|Seq#Index_23761| xs2 j_6_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1) (|Seq#Index_23761| xs2 i_12_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_6_1) (|Seq#Index_23761| xs2 i_12_1_1))
 :pattern ( (|Seq#Index_23761| xs2 i_12_1_1) (|Seq#Index_23761| xs2 j_6_1))
)) (and (=> (= (ControlFlow 0 121) (- 0 130)) (forall ((i_13_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@0) (|Seq#Index_23761| xs2 i_13_1) f_7))) (>= arg_p_1@0 NoPerm))
 :qid |stdinbpl.1736:19|
 :skolemid |167|
 :pattern ( (|Seq#Index_23761| xs2 i_13_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1))
 :pattern ( (|Seq#Index_23761| xs2 i_13_1))
))) (=> (forall ((i_13_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| ExhaleHeap@0) (|Seq#Index_23761| xs2 i_13_1@@0) f_7))) (>= arg_p_1@0 NoPerm))
 :qid |stdinbpl.1736:19|
 :skolemid |167|
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@0))
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@0))
)) (and (=> (= (ControlFlow 0 121) (- 0 129)) (forall ((i_13_1@@1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@1 i_13_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_2)) (< NoPerm arg_p_1@0)) (< NoPerm arg_p_1@0)) (not (= (|Seq#Index_23761| xs2 i_13_1@@1) (|Seq#Index_23761| xs2 i_13_2))))
 :qid |stdinbpl.1743:19|
 :skolemid |168|
 :pattern ( (neverTriggered16 i_13_1@@1) (neverTriggered16 i_13_2))
))) (=> (forall ((i_13_1@@2 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@2 i_13_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_2@@0)) (< NoPerm arg_p_1@0)) (< NoPerm arg_p_1@0)) (not (= (|Seq#Index_23761| xs2 i_13_1@@2) (|Seq#Index_23761| xs2 i_13_2@@0))))
 :qid |stdinbpl.1743:19|
 :skolemid |168|
 :pattern ( (neverTriggered16 i_13_1@@2) (neverTriggered16 i_13_2@@0))
)) (and (=> (= (ControlFlow 0 121) (- 0 128)) (forall ((i_13_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) (|Seq#Index_23761| xs2 i_13_1@@3) f_7) arg_p_1@0))
 :qid |stdinbpl.1750:19|
 :skolemid |169|
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@3))
))) (=> (forall ((i_13_1@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) (|Seq#Index_23761| xs2 i_13_1@@4) f_7) arg_p_1@0))
 :qid |stdinbpl.1750:19|
 :skolemid |169|
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@4))
)) (=> (forall ((i_13_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@5) (< NoPerm arg_p_1@0)) (and (qpRange16 (|Seq#Index_23761| xs2 i_13_1@@5)) (= (invRecv16 (|Seq#Index_23761| xs2 i_13_1@@5)) i_13_1@@5)))
 :qid |stdinbpl.1756:24|
 :skolemid |170|
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_13_1@@5))
 :pattern ( (|Seq#Index_23761| xs2 i_13_1@@5))
)) (=> (and (forall ((o_9@@111 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv16 o_9@@111)) (and (< NoPerm arg_p_1@0) (qpRange16 o_9@@111))) (= (|Seq#Index_23761| xs2 (invRecv16 o_9@@111)) o_9@@111))
 :qid |stdinbpl.1760:24|
 :skolemid |171|
 :pattern ( (invRecv16 o_9@@111))
)) (forall ((o_9@@112 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv16 o_9@@112)) (and (< NoPerm arg_p_1@0) (qpRange16 o_9@@112))) (and (= (|Seq#Index_23761| xs2 (invRecv16 o_9@@112)) o_9@@112) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@112 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@112 f_7) arg_p_1@0)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv16 o_9@@112)) (and (< NoPerm arg_p_1@0) (qpRange16 o_9@@112)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@112 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@112 f_7))))
 :qid |stdinbpl.1766:24|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@112 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@113 T@Ref) (f_5@@79 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@5) o_9@@113 f_5@@79) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@6) o_9@@113 f_5@@79)))
 :qid |stdinbpl.1772:31|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@6) o_9@@113 f_5@@79))
)) (forall ((o_9@@114 T@Ref) (f_5@@80 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@5) o_9@@114 f_5@@80) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@6) o_9@@114 f_5@@80)))
 :qid |stdinbpl.1772:31|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@6) o_9@@114 f_5@@80))
))) (forall ((o_9@@115 T@Ref) (f_5@@81 T@Field_40536_3826) ) (!  (=> (not (= f_5@@81 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@115 f_5@@81) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@115 f_5@@81)))
 :qid |stdinbpl.1772:31|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@115 f_5@@81))
))) (forall ((o_9@@116 T@Ref) (f_5@@82 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@5) o_9@@116 f_5@@82) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@6) o_9@@116 f_5@@82)))
 :qid |stdinbpl.1772:31|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@6) o_9@@116 f_5@@82))
))) (forall ((o_9@@117 T@Ref) (f_5@@83 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@5) o_9@@117 f_5@@83) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@6) o_9@@117 f_5@@83)))
 :qid |stdinbpl.1772:31|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@6) o_9@@117 f_5@@83))
))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@6)) (and (=> (= (ControlFlow 0 121) (- 0 127)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_2)) (< NoPerm arg_q_1@0)) (< NoPerm arg_q_1@0)) (not (= (|Seq#Index_23761| xs2 i_14_1) (|Seq#Index_23761| xs2 i_14_2))))
 :qid |stdinbpl.1785:17|
 :skolemid |174|
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_2@@0)) (< NoPerm arg_q_1@0)) (< NoPerm arg_q_1@0)) (not (= (|Seq#Index_23761| xs2 i_14_1@@0) (|Seq#Index_23761| xs2 i_14_2@@0))))
 :qid |stdinbpl.1785:17|
 :skolemid |174|
)) (=> (and (forall ((i_14_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@1) (< NoPerm arg_q_1@0)) (and (qpRange17 (|Seq#Index_23761| xs2 i_14_1@@1)) (= (invRecv17 (|Seq#Index_23761| xs2 i_14_1@@1)) i_14_1@@1)))
 :qid |stdinbpl.1791:24|
 :skolemid |175|
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@1))
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@1))
)) (forall ((o_9@@118 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv17 o_9@@118)) (< NoPerm arg_q_1@0)) (qpRange17 o_9@@118)) (= (|Seq#Index_23761| xs2 (invRecv17 o_9@@118)) o_9@@118))
 :qid |stdinbpl.1795:24|
 :skolemid |176|
 :pattern ( (invRecv17 o_9@@118))
))) (and (=> (= (ControlFlow 0 121) (- 0 126)) (forall ((i_14_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@2) (>= arg_q_1@0 NoPerm))
 :qid |stdinbpl.1801:17|
 :skolemid |177|
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@2))
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@2))
))) (=> (forall ((i_14_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@3) (>= arg_q_1@0 NoPerm))
 :qid |stdinbpl.1801:17|
 :skolemid |177|
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@3))
)) (=> (and (forall ((i_14_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@4) (> arg_q_1@0 NoPerm)) (not (= (|Seq#Index_23761| xs2 i_14_1@@4) null)))
 :qid |stdinbpl.1807:24|
 :skolemid |178|
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_14_1@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_14_1@@4))
)) (forall ((o_9@@119 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv17 o_9@@119)) (< NoPerm arg_q_1@0)) (qpRange17 o_9@@119)) (and (=> (< NoPerm arg_q_1@0) (= (|Seq#Index_23761| xs2 (invRecv17 o_9@@119)) o_9@@119)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@119 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@119 f_7) arg_q_1@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv17 o_9@@119)) (< NoPerm arg_q_1@0)) (qpRange17 o_9@@119))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@119 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@119 f_7))))
 :qid |stdinbpl.1813:24|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@119 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@120 T@Ref) (f_5@@84 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@6) o_9@@120 f_5@@84) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@7) o_9@@120 f_5@@84)))
 :qid |stdinbpl.1817:31|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@6) o_9@@120 f_5@@84))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@7) o_9@@120 f_5@@84))
)) (forall ((o_9@@121 T@Ref) (f_5@@85 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@6) o_9@@121 f_5@@85) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@7) o_9@@121 f_5@@85)))
 :qid |stdinbpl.1817:31|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@6) o_9@@121 f_5@@85))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@7) o_9@@121 f_5@@85))
))) (forall ((o_9@@122 T@Ref) (f_5@@86 T@Field_40536_3826) ) (!  (=> (not (= f_5@@86 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@122 f_5@@86) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@122 f_5@@86)))
 :qid |stdinbpl.1817:31|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@6) o_9@@122 f_5@@86))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@122 f_5@@86))
))) (forall ((o_9@@123 T@Ref) (f_5@@87 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@6) o_9@@123 f_5@@87) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@7) o_9@@123 f_5@@87)))
 :qid |stdinbpl.1817:31|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@6) o_9@@123 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@7) o_9@@123 f_5@@87))
))) (forall ((o_9@@124 T@Ref) (f_5@@88 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@6) o_9@@124 f_5@@88) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@7) o_9@@124 f_5@@88)))
 :qid |stdinbpl.1817:31|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@6) o_9@@124 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@7) o_9@@124 f_5@@88))
))) (state ExhaleHeap@1 QPMask@7)) (and (=> (= (ControlFlow 0 121) (- 0 125)) (forall ((i_15_1 Int) (i_15_2 Int) ) (!  (=> (and (and (and (and (not (= i_15_1 i_15_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_2)) (< NoPerm arg_q_1@0)) (< NoPerm arg_q_1@0)) (not (= (|Seq#Index_23761| xs2 i_15_1) (|Seq#Index_23761| xs2 i_15_2))))
 :qid |stdinbpl.1825:17|
 :skolemid |181|
))) (=> (forall ((i_15_1@@0 Int) (i_15_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_15_1@@0 i_15_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_2@@0)) (< NoPerm arg_q_1@0)) (< NoPerm arg_q_1@0)) (not (= (|Seq#Index_23761| xs2 i_15_1@@0) (|Seq#Index_23761| xs2 i_15_2@@0))))
 :qid |stdinbpl.1825:17|
 :skolemid |181|
)) (=> (and (forall ((i_15_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@1) (< NoPerm arg_q_1@0)) (and (qpRange18 (|Seq#Index_23761| xs2 i_15_1@@1)) (= (invRecv18 (|Seq#Index_23761| xs2 i_15_1@@1)) i_15_1@@1)))
 :qid |stdinbpl.1831:24|
 :skolemid |182|
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@1))
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@1))
)) (forall ((o_9@@125 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv18 o_9@@125)) (< NoPerm arg_q_1@0)) (qpRange18 o_9@@125)) (= (|Seq#Index_23761| xs2 (invRecv18 o_9@@125)) o_9@@125))
 :qid |stdinbpl.1835:24|
 :skolemid |183|
 :pattern ( (invRecv18 o_9@@125))
))) (and (=> (= (ControlFlow 0 121) (- 0 124)) (forall ((i_15_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@2) (>= arg_q_1@0 NoPerm))
 :qid |stdinbpl.1841:17|
 :skolemid |184|
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@2))
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@2))
))) (=> (forall ((i_15_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@3) (>= arg_q_1@0 NoPerm))
 :qid |stdinbpl.1841:17|
 :skolemid |184|
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@3))
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@3))
)) (=> (and (forall ((i_15_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@4) (> arg_q_1@0 NoPerm)) (not (= (|Seq#Index_23761| xs2 i_15_1@@4) null)))
 :qid |stdinbpl.1847:24|
 :skolemid |185|
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_15_1@@4))
 :pattern ( (|Seq#Index_23761| xs2 i_15_1@@4))
)) (forall ((o_9@@126 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv18 o_9@@126)) (< NoPerm arg_q_1@0)) (qpRange18 o_9@@126)) (and (=> (< NoPerm arg_q_1@0) (= (|Seq#Index_23761| xs2 (invRecv18 o_9@@126)) o_9@@126)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@126 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@126 f_7) arg_q_1@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv18 o_9@@126)) (< NoPerm arg_q_1@0)) (qpRange18 o_9@@126))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@126 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@126 f_7))))
 :qid |stdinbpl.1853:24|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@126 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@127 T@Ref) (f_5@@89 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@7) o_9@@127 f_5@@89) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@8) o_9@@127 f_5@@89)))
 :qid |stdinbpl.1857:31|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@7) o_9@@127 f_5@@89))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@8) o_9@@127 f_5@@89))
)) (forall ((o_9@@128 T@Ref) (f_5@@90 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@7) o_9@@128 f_5@@90) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@8) o_9@@128 f_5@@90)))
 :qid |stdinbpl.1857:31|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@7) o_9@@128 f_5@@90))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@8) o_9@@128 f_5@@90))
))) (forall ((o_9@@129 T@Ref) (f_5@@91 T@Field_40536_3826) ) (!  (=> (not (= f_5@@91 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@129 f_5@@91) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@129 f_5@@91)))
 :qid |stdinbpl.1857:31|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@7) o_9@@129 f_5@@91))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@8) o_9@@129 f_5@@91))
))) (forall ((o_9@@130 T@Ref) (f_5@@92 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@7) o_9@@130 f_5@@92) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@8) o_9@@130 f_5@@92)))
 :qid |stdinbpl.1857:31|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@7) o_9@@130 f_5@@92))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@8) o_9@@130 f_5@@92))
))) (forall ((o_9@@131 T@Ref) (f_5@@93 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@7) o_9@@131 f_5@@93) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@8) o_9@@131 f_5@@93)))
 :qid |stdinbpl.1857:31|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@7) o_9@@131 f_5@@93))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@8) o_9@@131 f_5@@93))
))) (and (and (state ExhaleHeap@1 QPMask@8) (state ExhaleHeap@1 QPMask@8)) (and (state ExhaleHeap@1 QPMask@8) (= arg_q_2@0 (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 121) (- 0 123)) (= FullPerm (* (to_real 2) arg_q_2@0))) (=> (= FullPerm (* (to_real 2) arg_q_2@0)) (and (=> (= (ControlFlow 0 121) (- 0 122)) (<= NoPerm FullPerm)) (=> (<= NoPerm FullPerm) (and (and (=> (= (ControlFlow 0 121) 112) anon57_Else_correct) (=> (= (ControlFlow 0 121) 10) anon58_Then_correct)) (=> (= (ControlFlow 0 121) 12) anon58_Else_correct))))))))))))))))))))))))))))))))
(let ((anon7_correct true))
(let ((anon56_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_11_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_5) (not (= i_11_1 j_5))))) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon56_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_11_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_5) (not (= i_11_1 j_5)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (= (|Seq#Index_23761| xs2 i_11_1) (|Seq#Index_23761| xs2 j_5)))) (=> (not (= (|Seq#Index_23761| xs2 i_11_1) (|Seq#Index_23761| xs2 j_5))) (=> (= (ControlFlow 0 6) 5) anon7_correct))))))
(let ((anon53_Else_correct  (=> (forall ((i_7_1_1 Int) (j_4_1_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1) (not (= i_7_1_1 j_4_1_1)))) (not (= (|Seq#Index_23761| xs1 i_7_1_1) (|Seq#Index_23761| xs1 j_4_1_1))))
 :qid |stdinbpl.1570:22|
 :skolemid |144|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (|Seq#Index_23761| xs1 j_4_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_7_1_1) (|Seq#Index_23761| xs1 j_4_1_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1) (|Seq#Index_23761| xs1 i_7_1_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_4_1_1) (|Seq#Index_23761| xs1 i_7_1_1))
 :pattern ( (|Seq#Index_23761| xs1 i_7_1_1) (|Seq#Index_23761| xs1 j_4_1_1))
)) (and (=> (= (ControlFlow 0 131) (- 0 140)) (forall ((i_8_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@17) (|Seq#Index_23761| xs1 i_8_1) f_7))) (>= FullPerm NoPerm))
 :qid |stdinbpl.1578:19|
 :skolemid |145|
 :pattern ( (|Seq#Index_23761| xs1 i_8_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1))
 :pattern ( (|Seq#Index_23761| xs1 i_8_1))
))) (=> (forall ((i_8_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@0) (dummyFunction_3826 (select (|PolymorphicMapType_34389_23757_3826#PolymorphicMapType_34389| Heap@@17) (|Seq#Index_23761| xs1 i_8_1@@0) f_7))) (>= FullPerm NoPerm))
 :qid |stdinbpl.1578:19|
 :skolemid |145|
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@0))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@0))
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@0))
)) (and (=> (= (ControlFlow 0 131) (- 0 139)) (forall ((i_8_1@@1 Int) (i_8_2 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@1 i_8_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs1 i_8_1@@1) (|Seq#Index_23761| xs1 i_8_2))))
 :qid |stdinbpl.1585:19|
 :skolemid |146|
 :pattern ( (neverTriggered13 i_8_1@@1) (neverTriggered13 i_8_2))
))) (=> (forall ((i_8_1@@2 Int) (i_8_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@2 i_8_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs1 i_8_1@@2) (|Seq#Index_23761| xs1 i_8_2@@0))))
 :qid |stdinbpl.1585:19|
 :skolemid |146|
 :pattern ( (neverTriggered13 i_8_1@@2) (neverTriggered13 i_8_2@@0))
)) (and (=> (= (ControlFlow 0 131) (- 0 138)) (forall ((i_8_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@3) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) (|Seq#Index_23761| xs1 i_8_1@@3) f_7) FullPerm))
 :qid |stdinbpl.1592:19|
 :skolemid |147|
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@3))
))) (=> (forall ((i_8_1@@4 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@4) (>= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) (|Seq#Index_23761| xs1 i_8_1@@4) f_7) FullPerm))
 :qid |stdinbpl.1592:19|
 :skolemid |147|
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@4))
)) (=> (forall ((i_8_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@5) (< NoPerm FullPerm)) (and (qpRange13 (|Seq#Index_23761| xs1 i_8_1@@5)) (= (invRecv13 (|Seq#Index_23761| xs1 i_8_1@@5)) i_8_1@@5)))
 :qid |stdinbpl.1598:24|
 :skolemid |148|
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@5))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_8_1@@5))
 :pattern ( (|Seq#Index_23761| xs1 i_8_1@@5))
)) (=> (and (forall ((o_9@@132 T@Ref) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv13 o_9@@132)) (and (< NoPerm FullPerm) (qpRange13 o_9@@132))) (= (|Seq#Index_23761| xs1 (invRecv13 o_9@@132)) o_9@@132))
 :qid |stdinbpl.1602:24|
 :skolemid |149|
 :pattern ( (invRecv13 o_9@@132))
)) (forall ((o_9@@133 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv13 o_9@@133)) (and (< NoPerm FullPerm) (qpRange13 o_9@@133))) (and (= (|Seq#Index_23761| xs1 (invRecv13 o_9@@133)) o_9@@133) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@133 f_7) (- (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@133 f_7) FullPerm)))) (=> (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv13 o_9@@133)) (and (< NoPerm FullPerm) (qpRange13 o_9@@133)))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@133 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@133 f_7))))
 :qid |stdinbpl.1608:24|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@133 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@134 T@Ref) (f_5@@94 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@2) o_9@@134 f_5@@94) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@3) o_9@@134 f_5@@94)))
 :qid |stdinbpl.1614:31|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@3) o_9@@134 f_5@@94))
)) (forall ((o_9@@135 T@Ref) (f_5@@95 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@2) o_9@@135 f_5@@95) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@3) o_9@@135 f_5@@95)))
 :qid |stdinbpl.1614:31|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@3) o_9@@135 f_5@@95))
))) (forall ((o_9@@136 T@Ref) (f_5@@96 T@Field_40536_3826) ) (!  (=> (not (= f_5@@96 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@136 f_5@@96) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@136 f_5@@96)))
 :qid |stdinbpl.1614:31|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@136 f_5@@96))
))) (forall ((o_9@@137 T@Ref) (f_5@@97 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@2) o_9@@137 f_5@@97) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@3) o_9@@137 f_5@@97)))
 :qid |stdinbpl.1614:31|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@3) o_9@@137 f_5@@97))
))) (forall ((o_9@@138 T@Ref) (f_5@@98 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@2) o_9@@138 f_5@@98) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@3) o_9@@138 f_5@@98)))
 :qid |stdinbpl.1614:31|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@3) o_9@@138 f_5@@98))
))) (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 131) (- 0 137)) (forall ((i_9_1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1 i_9_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_2)) (< NoPerm arg_q@0)) (< NoPerm arg_q@0)) (not (= (|Seq#Index_23761| xs1 i_9_1) (|Seq#Index_23761| xs1 i_9_2))))
 :qid |stdinbpl.1627:17|
 :skolemid |152|
))) (=> (forall ((i_9_1@@0 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@0 i_9_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_2@@0)) (< NoPerm arg_q@0)) (< NoPerm arg_q@0)) (not (= (|Seq#Index_23761| xs1 i_9_1@@0) (|Seq#Index_23761| xs1 i_9_2@@0))))
 :qid |stdinbpl.1627:17|
 :skolemid |152|
)) (=> (and (forall ((i_9_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@1) (< NoPerm arg_q@0)) (and (qpRange14 (|Seq#Index_23761| xs1 i_9_1@@1)) (= (invRecv14 (|Seq#Index_23761| xs1 i_9_1@@1)) i_9_1@@1)))
 :qid |stdinbpl.1633:24|
 :skolemid |153|
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@1))
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@1))
)) (forall ((o_9@@139 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv14 o_9@@139)) (< NoPerm arg_q@0)) (qpRange14 o_9@@139)) (= (|Seq#Index_23761| xs1 (invRecv14 o_9@@139)) o_9@@139))
 :qid |stdinbpl.1637:24|
 :skolemid |154|
 :pattern ( (invRecv14 o_9@@139))
))) (and (=> (= (ControlFlow 0 131) (- 0 136)) (forall ((i_9_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@2) (>= arg_q@0 NoPerm))
 :qid |stdinbpl.1643:17|
 :skolemid |155|
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@2))
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@2))
))) (=> (forall ((i_9_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@3) (>= arg_q@0 NoPerm))
 :qid |stdinbpl.1643:17|
 :skolemid |155|
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@3))
)) (=> (and (forall ((i_9_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@4) (> arg_q@0 NoPerm)) (not (= (|Seq#Index_23761| xs1 i_9_1@@4) null)))
 :qid |stdinbpl.1649:24|
 :skolemid |156|
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_9_1@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_9_1@@4))
)) (forall ((o_9@@140 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv14 o_9@@140)) (< NoPerm arg_q@0)) (qpRange14 o_9@@140)) (and (=> (< NoPerm arg_q@0) (= (|Seq#Index_23761| xs1 (invRecv14 o_9@@140)) o_9@@140)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@140 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@140 f_7) arg_q@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv14 o_9@@140)) (< NoPerm arg_q@0)) (qpRange14 o_9@@140))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@140 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@140 f_7))))
 :qid |stdinbpl.1655:24|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@140 f_7))
))) (=> (and (and (and (and (and (forall ((o_9@@141 T@Ref) (f_5@@99 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@3) o_9@@141 f_5@@99) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@4) o_9@@141 f_5@@99)))
 :qid |stdinbpl.1659:31|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@3) o_9@@141 f_5@@99))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@4) o_9@@141 f_5@@99))
)) (forall ((o_9@@142 T@Ref) (f_5@@100 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@3) o_9@@142 f_5@@100) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@4) o_9@@142 f_5@@100)))
 :qid |stdinbpl.1659:31|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@3) o_9@@142 f_5@@100))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@4) o_9@@142 f_5@@100))
))) (forall ((o_9@@143 T@Ref) (f_5@@101 T@Field_40536_3826) ) (!  (=> (not (= f_5@@101 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@143 f_5@@101) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@143 f_5@@101)))
 :qid |stdinbpl.1659:31|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@3) o_9@@143 f_5@@101))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@143 f_5@@101))
))) (forall ((o_9@@144 T@Ref) (f_5@@102 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@3) o_9@@144 f_5@@102) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@4) o_9@@144 f_5@@102)))
 :qid |stdinbpl.1659:31|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@3) o_9@@144 f_5@@102))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@4) o_9@@144 f_5@@102))
))) (forall ((o_9@@145 T@Ref) (f_5@@103 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@3) o_9@@145 f_5@@103) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@4) o_9@@145 f_5@@103)))
 :qid |stdinbpl.1659:31|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@3) o_9@@145 f_5@@103))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@4) o_9@@145 f_5@@103))
))) (state ExhaleHeap@0 QPMask@4)) (and (=> (= (ControlFlow 0 131) (- 0 135)) (forall ((i_10_1 Int) (i_10_2 Int) ) (!  (=> (and (and (and (and (not (= i_10_1 i_10_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_2)) (< NoPerm arg_q@0)) (< NoPerm arg_q@0)) (not (= (|Seq#Index_23761| xs1 i_10_1) (|Seq#Index_23761| xs1 i_10_2))))
 :qid |stdinbpl.1667:17|
 :skolemid |159|
))) (=> (forall ((i_10_1@@0 Int) (i_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@0 i_10_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_2@@0)) (< NoPerm arg_q@0)) (< NoPerm arg_q@0)) (not (= (|Seq#Index_23761| xs1 i_10_1@@0) (|Seq#Index_23761| xs1 i_10_2@@0))))
 :qid |stdinbpl.1667:17|
 :skolemid |159|
)) (=> (and (forall ((i_10_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@1) (< NoPerm arg_q@0)) (and (qpRange15 (|Seq#Index_23761| xs1 i_10_1@@1)) (= (invRecv15 (|Seq#Index_23761| xs1 i_10_1@@1)) i_10_1@@1)))
 :qid |stdinbpl.1673:24|
 :skolemid |160|
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@1))
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@1))
)) (forall ((o_9@@146 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv15 o_9@@146)) (< NoPerm arg_q@0)) (qpRange15 o_9@@146)) (= (|Seq#Index_23761| xs1 (invRecv15 o_9@@146)) o_9@@146))
 :qid |stdinbpl.1677:24|
 :skolemid |161|
 :pattern ( (invRecv15 o_9@@146))
))) (and (=> (= (ControlFlow 0 131) (- 0 134)) (forall ((i_10_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@2) (>= arg_q@0 NoPerm))
 :qid |stdinbpl.1683:17|
 :skolemid |162|
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@2))
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@2))
))) (=> (forall ((i_10_1@@3 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@3) (>= arg_q@0 NoPerm))
 :qid |stdinbpl.1683:17|
 :skolemid |162|
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@3))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@3))
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@3))
)) (=> (and (forall ((i_10_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@4) (> arg_q@0 NoPerm)) (not (= (|Seq#Index_23761| xs1 i_10_1@@4) null)))
 :qid |stdinbpl.1689:24|
 :skolemid |163|
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@4))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_10_1@@4))
 :pattern ( (|Seq#Index_23761| xs1 i_10_1@@4))
)) (forall ((o_9@@147 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv15 o_9@@147)) (< NoPerm arg_q@0)) (qpRange15 o_9@@147)) (and (=> (< NoPerm arg_q@0) (= (|Seq#Index_23761| xs1 (invRecv15 o_9@@147)) o_9@@147)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@147 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@147 f_7) arg_q@0)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv15 o_9@@147)) (< NoPerm arg_q@0)) (qpRange15 o_9@@147))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@147 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@147 f_7))))
 :qid |stdinbpl.1695:24|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@147 f_7))
))) (=> (and (and (and (and (and (and (forall ((o_9@@148 T@Ref) (f_5@@104 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@4) o_9@@148 f_5@@104) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@5) o_9@@148 f_5@@104)))
 :qid |stdinbpl.1699:31|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@4) o_9@@148 f_5@@104))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@5) o_9@@148 f_5@@104))
)) (forall ((o_9@@149 T@Ref) (f_5@@105 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@4) o_9@@149 f_5@@105) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@5) o_9@@149 f_5@@105)))
 :qid |stdinbpl.1699:31|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@4) o_9@@149 f_5@@105))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@5) o_9@@149 f_5@@105))
))) (forall ((o_9@@150 T@Ref) (f_5@@106 T@Field_40536_3826) ) (!  (=> (not (= f_5@@106 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@150 f_5@@106) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@150 f_5@@106)))
 :qid |stdinbpl.1699:31|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@4) o_9@@150 f_5@@106))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@5) o_9@@150 f_5@@106))
))) (forall ((o_9@@151 T@Ref) (f_5@@107 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@4) o_9@@151 f_5@@107) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@5) o_9@@151 f_5@@107)))
 :qid |stdinbpl.1699:31|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@4) o_9@@151 f_5@@107))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@5) o_9@@151 f_5@@107))
))) (forall ((o_9@@152 T@Ref) (f_5@@108 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@4) o_9@@152 f_5@@108) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@5) o_9@@152 f_5@@108)))
 :qid |stdinbpl.1699:31|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@4) o_9@@152 f_5@@108))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@5) o_9@@152 f_5@@108))
))) (state ExhaleHeap@0 QPMask@5)) (and (and (state ExhaleHeap@0 QPMask@5) (state ExhaleHeap@0 QPMask@5)) (and (= arg_p_1@0 (/ (to_real 1) (to_real 2))) (= arg_q_1@0 (/ (to_real 1) (to_real 4)))))) (and (=> (= (ControlFlow 0 131) (- 0 133)) (= arg_p_1@0 (* (to_real 2) arg_q_1@0))) (=> (= arg_p_1@0 (* (to_real 2) arg_q_1@0)) (and (=> (= (ControlFlow 0 131) (- 0 132)) (<= NoPerm arg_p_1@0)) (=> (<= NoPerm arg_p_1@0) (and (and (=> (= (ControlFlow 0 131) 121) anon55_Else_correct) (=> (= (ControlFlow 0 131) 6) anon56_Then_correct)) (=> (= (ControlFlow 0 131) 8) anon56_Else_correct))))))))))))))))))))))))))))))))
(let ((anon3_correct true))
(let ((anon54_Else_correct  (=> (and (not (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_6_2) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_3) (not (= i_6_2 j_3))))) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon54_Then_correct  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_6_2) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j_3) (not (= i_6_2 j_3)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (|Seq#Index_23761| xs1 i_6_2) (|Seq#Index_23761| xs1 j_3)))) (=> (not (= (|Seq#Index_23761| xs1 i_6_2) (|Seq#Index_23761| xs1 j_3))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (forall ((i@@11 Int) (j@@8 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8) (not (= i@@11 j@@8)))) (not (= (|Seq#Index_23761| xs1 i@@11) (|Seq#Index_23761| xs1 j@@8))))
 :qid |stdinbpl.1417:22|
 :skolemid |123|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (|Seq#Index_23761| xs1 j@@8))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i@@11) (|Seq#Index_23761| xs1 j@@8))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8) (|Seq#Index_23761| xs1 i@@11))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) j@@8) (|Seq#Index_23761| xs1 i@@11))
 :pattern ( (|Seq#Index_23761| xs1 i@@11) (|Seq#Index_23761| xs1 j@@8))
))) (and (=> (= (ControlFlow 0 141) (- 0 146)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs1 i_1) (|Seq#Index_23761| xs1 i_1_1))))
 :qid |stdinbpl.1423:17|
 :skolemid |124|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs1 i_1@@0) (|Seq#Index_23761| xs1 i_1_1@@0))))
 :qid |stdinbpl.1423:17|
 :skolemid |124|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_23761| xs1 i_1@@1)) (= (invRecv10 (|Seq#Index_23761| xs1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1429:24|
 :skolemid |125|
 :pattern ( (|Seq#Index_23761| xs1 i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@1))
 :pattern ( (|Seq#Index_23761| xs1 i_1@@1))
)) (forall ((o_9@@153 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv10 o_9@@153)) (< NoPerm FullPerm)) (qpRange10 o_9@@153)) (= (|Seq#Index_23761| xs1 (invRecv10 o_9@@153)) o_9@@153))
 :qid |stdinbpl.1433:24|
 :skolemid |126|
 :pattern ( (invRecv10 o_9@@153))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@2) (not (= (|Seq#Index_23761| xs1 i_1@@2) null)))
 :qid |stdinbpl.1439:24|
 :skolemid |127|
 :pattern ( (|Seq#Index_23761| xs1 i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) i_1@@2))
 :pattern ( (|Seq#Index_23761| xs1 i_1@@2))
)) (forall ((o_9@@154 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv10 o_9@@154)) (< NoPerm FullPerm)) (qpRange10 o_9@@154)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_23761| xs1 (invRecv10 o_9@@154)) o_9@@154)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@154 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ZeroMask) o_9@@154 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs1)) (invRecv10 o_9@@154)) (< NoPerm FullPerm)) (qpRange10 o_9@@154))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@154 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ZeroMask) o_9@@154 f_7))))
 :qid |stdinbpl.1445:24|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@154 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@155 T@Ref) (f_5@@109 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| ZeroMask) o_9@@155 f_5@@109) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@0) o_9@@155 f_5@@109)))
 :qid |stdinbpl.1449:31|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| ZeroMask) o_9@@155 f_5@@109))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@0) o_9@@155 f_5@@109))
)) (forall ((o_9@@156 T@Ref) (f_5@@110 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| ZeroMask) o_9@@156 f_5@@110) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@0) o_9@@156 f_5@@110)))
 :qid |stdinbpl.1449:31|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| ZeroMask) o_9@@156 f_5@@110))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@0) o_9@@156 f_5@@110))
))) (forall ((o_9@@157 T@Ref) (f_5@@111 T@Field_40536_3826) ) (!  (=> (not (= f_5@@111 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ZeroMask) o_9@@157 f_5@@111) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@157 f_5@@111)))
 :qid |stdinbpl.1449:31|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| ZeroMask) o_9@@157 f_5@@111))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@157 f_5@@111))
))) (forall ((o_9@@158 T@Ref) (f_5@@112 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| ZeroMask) o_9@@158 f_5@@112) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@0) o_9@@158 f_5@@112)))
 :qid |stdinbpl.1449:31|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| ZeroMask) o_9@@158 f_5@@112))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@0) o_9@@158 f_5@@112))
))) (forall ((o_9@@159 T@Ref) (f_5@@113 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| ZeroMask) o_9@@159 f_5@@113) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@0) o_9@@159 f_5@@113)))
 :qid |stdinbpl.1449:31|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| ZeroMask) o_9@@159 f_5@@113))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@0) o_9@@159 f_5@@113))
))) (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (forall ((i_2 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1) (not (= i_2 j_1)))) (not (= (|Seq#Index_23761| xs2 i_2) (|Seq#Index_23761| xs2 j_1))))
 :qid |stdinbpl.1463:22|
 :skolemid |130|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (|Seq#Index_23761| xs2 j_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_2) (|Seq#Index_23761| xs2 j_1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1) (|Seq#Index_23761| xs2 i_2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) j_1) (|Seq#Index_23761| xs2 i_2))
 :pattern ( (|Seq#Index_23761| xs2 i_2) (|Seq#Index_23761| xs2 j_1))
))))) (and (=> (= (ControlFlow 0 141) (- 0 145)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs2 i_3_2) (|Seq#Index_23761| xs2 i_3_3))))
 :qid |stdinbpl.1469:17|
 :skolemid |131|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs2 i_3_2@@0) (|Seq#Index_23761| xs2 i_3_3@@0))))
 :qid |stdinbpl.1469:17|
 :skolemid |131|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange11 (|Seq#Index_23761| xs2 i_3_2@@1)) (= (invRecv11 (|Seq#Index_23761| xs2 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.1475:24|
 :skolemid |132|
 :pattern ( (|Seq#Index_23761| xs2 i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@1))
 :pattern ( (|Seq#Index_23761| xs2 i_3_2@@1))
)) (forall ((o_9@@160 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv11 o_9@@160)) (< NoPerm FullPerm)) (qpRange11 o_9@@160)) (= (|Seq#Index_23761| xs2 (invRecv11 o_9@@160)) o_9@@160))
 :qid |stdinbpl.1479:24|
 :skolemid |133|
 :pattern ( (invRecv11 o_9@@160))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@2) (not (= (|Seq#Index_23761| xs2 i_3_2@@2) null)))
 :qid |stdinbpl.1485:24|
 :skolemid |134|
 :pattern ( (|Seq#Index_23761| xs2 i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) i_3_2@@2))
 :pattern ( (|Seq#Index_23761| xs2 i_3_2@@2))
)) (forall ((o_9@@161 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv11 o_9@@161)) (< NoPerm FullPerm)) (qpRange11 o_9@@161)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_23761| xs2 (invRecv11 o_9@@161)) o_9@@161)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@161 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@161 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs2)) (invRecv11 o_9@@161)) (< NoPerm FullPerm)) (qpRange11 o_9@@161))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@161 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@161 f_7))))
 :qid |stdinbpl.1491:24|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@161 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@162 T@Ref) (f_5@@114 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@0) o_9@@162 f_5@@114) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@1) o_9@@162 f_5@@114)))
 :qid |stdinbpl.1495:31|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@0) o_9@@162 f_5@@114))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@1) o_9@@162 f_5@@114))
)) (forall ((o_9@@163 T@Ref) (f_5@@115 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@0) o_9@@163 f_5@@115) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@1) o_9@@163 f_5@@115)))
 :qid |stdinbpl.1495:31|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@0) o_9@@163 f_5@@115))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@1) o_9@@163 f_5@@115))
))) (forall ((o_9@@164 T@Ref) (f_5@@116 T@Field_40536_3826) ) (!  (=> (not (= f_5@@116 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@164 f_5@@116) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@164 f_5@@116)))
 :qid |stdinbpl.1495:31|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@0) o_9@@164 f_5@@116))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@164 f_5@@116))
))) (forall ((o_9@@165 T@Ref) (f_5@@117 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@0) o_9@@165 f_5@@117) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@1) o_9@@165 f_5@@117)))
 :qid |stdinbpl.1495:31|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@0) o_9@@165 f_5@@117))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@1) o_9@@165 f_5@@117))
))) (forall ((o_9@@166 T@Ref) (f_5@@118 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@0) o_9@@166 f_5@@118) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@1) o_9@@166 f_5@@118)))
 :qid |stdinbpl.1495:31|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@0) o_9@@166 f_5@@118))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@1) o_9@@166 f_5@@118))
))) (and (and (state Heap@@17 QPMask@1) (state Heap@@17 QPMask@1)) (and (state Heap@@17 QPMask@1) (forall ((i_4_1 Int) (j_2_2 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2) (not (= i_4_1 j_2_2)))) (not (= (|Seq#Index_23761| xs3 i_4_1) (|Seq#Index_23761| xs3 j_2_2))))
 :qid |stdinbpl.1509:22|
 :skolemid |137|
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (|Seq#Index_23761| xs3 j_2_2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_4_1) (|Seq#Index_23761| xs3 j_2_2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2) (|Seq#Index_23761| xs3 i_4_1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) j_2_2) (|Seq#Index_23761| xs3 i_4_1))
 :pattern ( (|Seq#Index_23761| xs3 i_4_1) (|Seq#Index_23761| xs3 j_2_2))
))))) (and (=> (= (ControlFlow 0 141) (- 0 144)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs3 i_5_1) (|Seq#Index_23761| xs3 i_5_2))))
 :qid |stdinbpl.1515:17|
 :skolemid |138|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@0)) (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_23761| xs3 i_5_1@@0) (|Seq#Index_23761| xs3 i_5_2@@0))))
 :qid |stdinbpl.1515:17|
 :skolemid |138|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@1) (< NoPerm FullPerm)) (and (qpRange12 (|Seq#Index_23761| xs3 i_5_1@@1)) (= (invRecv12 (|Seq#Index_23761| xs3 i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.1521:24|
 :skolemid |139|
 :pattern ( (|Seq#Index_23761| xs3 i_5_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@1))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@1))
 :pattern ( (|Seq#Index_23761| xs3 i_5_1@@1))
)) (forall ((o_9@@167 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv12 o_9@@167)) (< NoPerm FullPerm)) (qpRange12 o_9@@167)) (= (|Seq#Index_23761| xs3 (invRecv12 o_9@@167)) o_9@@167))
 :qid |stdinbpl.1525:24|
 :skolemid |140|
 :pattern ( (invRecv12 o_9@@167))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@2) (not (= (|Seq#Index_23761| xs3 i_5_1@@2) null)))
 :qid |stdinbpl.1531:24|
 :skolemid |141|
 :pattern ( (|Seq#Index_23761| xs3 i_5_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@2))
 :pattern ( (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) i_5_1@@2))
 :pattern ( (|Seq#Index_23761| xs3 i_5_1@@2))
)) (forall ((o_9@@168 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv12 o_9@@168)) (< NoPerm FullPerm)) (qpRange12 o_9@@168)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_23761| xs3 (invRecv12 o_9@@168)) o_9@@168)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@168 f_7) (+ (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@168 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_3704| (|Seq#Range| 0 (|Seq#Length_23761| xs3)) (invRecv12 o_9@@168)) (< NoPerm FullPerm)) (qpRange12 o_9@@168))) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@168 f_7) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@168 f_7))))
 :qid |stdinbpl.1537:24|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@168 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@169 T@Ref) (f_5@@119 T@Field_34449_53) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@1) o_9@@169 f_5@@119) (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@2) o_9@@169 f_5@@119)))
 :qid |stdinbpl.1541:31|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@1) o_9@@169 f_5@@119))
 :pattern ( (select (|PolymorphicMapType_34410_23757_53#PolymorphicMapType_34410| QPMask@2) o_9@@169 f_5@@119))
)) (forall ((o_9@@170 T@Ref) (f_5@@120 T@Field_34462_34463) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@1) o_9@@170 f_5@@120) (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@2) o_9@@170 f_5@@120)))
 :qid |stdinbpl.1541:31|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@1) o_9@@170 f_5@@120))
 :pattern ( (select (|PolymorphicMapType_34410_23757_34463#PolymorphicMapType_34410| QPMask@2) o_9@@170 f_5@@120))
))) (forall ((o_9@@171 T@Ref) (f_5@@121 T@Field_40536_3826) ) (!  (=> (not (= f_5@@121 f_7)) (= (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@171 f_5@@121) (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@171 f_5@@121)))
 :qid |stdinbpl.1541:31|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@1) o_9@@171 f_5@@121))
 :pattern ( (select (|PolymorphicMapType_34410_23757_3826#PolymorphicMapType_34410| QPMask@2) o_9@@171 f_5@@121))
))) (forall ((o_9@@172 T@Ref) (f_5@@122 T@Field_34449_100231) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@1) o_9@@172 f_5@@122) (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@2) o_9@@172 f_5@@122)))
 :qid |stdinbpl.1541:31|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@1) o_9@@172 f_5@@122))
 :pattern ( (select (|PolymorphicMapType_34410_23757_100231#PolymorphicMapType_34410| QPMask@2) o_9@@172 f_5@@122))
))) (forall ((o_9@@173 T@Ref) (f_5@@123 T@Field_34449_100364) ) (!  (=> true (= (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@1) o_9@@173 f_5@@123) (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@2) o_9@@173 f_5@@123)))
 :qid |stdinbpl.1541:31|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@1) o_9@@173 f_5@@123))
 :pattern ( (select (|PolymorphicMapType_34410_23757_104486#PolymorphicMapType_34410| QPMask@2) o_9@@173 f_5@@123))
))) (and (and (state Heap@@17 QPMask@2) (state Heap@@17 QPMask@2)) (and (state Heap@@17 QPMask@2) (= arg_q@0 (/ (to_real 1) (to_real 2)))))) (and (=> (= (ControlFlow 0 141) (- 0 143)) (= FullPerm (* (to_real 2) arg_q@0))) (=> (= FullPerm (* (to_real 2) arg_q@0)) (and (=> (= (ControlFlow 0 141) (- 0 142)) (<= NoPerm FullPerm)) (=> (<= NoPerm FullPerm) (and (and (=> (= (ControlFlow 0 141) 131) anon53_Else_correct) (=> (= (ControlFlow 0 141) 2) anon54_Then_correct)) (=> (= (ControlFlow 0 141) 4) anon54_Else_correct))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 147) 141) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
