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
(declare-sort T@Field_29757_53 0)
(declare-sort T@Field_29770_29771 0)
(declare-sort T@Field_35800_35805 0)
(declare-sort T@Seq_35803 0)
(declare-sort T@Field_35964_3322 0)
(declare-sort T@Field_16683_99244 0)
(declare-sort T@Field_16683_99111 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_29718 0)) (((PolymorphicMapType_29718 (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| (Array T@Ref T@Field_35800_35805 Real)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| (Array T@Ref T@Field_35964_3322 Real)) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| (Array T@Ref T@Field_29757_53 Real)) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| (Array T@Ref T@Field_29770_29771 Real)) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| (Array T@Ref T@Field_16683_99111 Real)) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| (Array T@Ref T@Field_16683_99244 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_30246 0)) (((PolymorphicMapType_30246 (|PolymorphicMapType_30246_29757_53#PolymorphicMapType_30246| (Array T@Ref T@Field_29757_53 Bool)) (|PolymorphicMapType_30246_29757_29771#PolymorphicMapType_30246| (Array T@Ref T@Field_29770_29771 Bool)) (|PolymorphicMapType_30246_29757_35805#PolymorphicMapType_30246| (Array T@Ref T@Field_35800_35805 Bool)) (|PolymorphicMapType_30246_29757_3322#PolymorphicMapType_30246| (Array T@Ref T@Field_35964_3322 Bool)) (|PolymorphicMapType_30246_29757_99111#PolymorphicMapType_30246| (Array T@Ref T@Field_16683_99111 Bool)) (|PolymorphicMapType_30246_29757_100626#PolymorphicMapType_30246| (Array T@Ref T@Field_16683_99244 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_29697 0)) (((PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| (Array T@Ref T@Field_29757_53 Bool)) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| (Array T@Ref T@Field_29770_29771 T@Ref)) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| (Array T@Ref T@Field_35800_35805 T@Seq_35803)) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| (Array T@Ref T@Field_35964_3322 Int)) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| (Array T@Ref T@Field_16683_99244 T@PolymorphicMapType_30246)) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| (Array T@Ref T@Field_16683_99111 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_29757_53)
(declare-fun Ref__a () T@Field_35800_35805)
(declare-fun Ref__b () T@Field_35800_35805)
(declare-fun Ref__c () T@Field_35800_35805)
(declare-fun Ref__Integer_value () T@Field_35964_3322)
(declare-fun |Seq#Length_16684| (T@Seq_35803) Int)
(declare-fun |Seq#Drop_16684| (T@Seq_35803 Int) T@Seq_35803)
(declare-sort T@Seq_3152 0)
(declare-fun |Seq#Length_3152| (T@Seq_3152) Int)
(declare-fun |Seq#Drop_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun succHeap (T@PolymorphicMapType_29697 T@PolymorphicMapType_29697) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_29697 T@PolymorphicMapType_29697) Bool)
(declare-fun state (T@PolymorphicMapType_29697 T@PolymorphicMapType_29718) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_29718) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_30246)
(declare-fun |Seq#Index_16684| (T@Seq_35803 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3152| (T@Seq_3152 Int) Int)
(declare-fun |Seq#Empty_16684| () T@Seq_35803)
(declare-fun |Seq#Empty_3152| () T@Seq_3152)
(declare-fun |Seq#Update_16684| (T@Seq_35803 Int T@Ref) T@Seq_35803)
(declare-fun |Seq#Update_3152| (T@Seq_3152 Int Int) T@Seq_3152)
(declare-fun |Seq#Take_16684| (T@Seq_35803 Int) T@Seq_35803)
(declare-fun |Seq#Take_3152| (T@Seq_3152 Int) T@Seq_3152)
(declare-fun |Seq#Contains_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3152)
(declare-fun |Seq#Contains_35803| (T@Seq_35803 T@Ref) Bool)
(declare-fun |Seq#Skolem_35803| (T@Seq_35803 T@Ref) Int)
(declare-fun |Seq#Skolem_3152| (T@Seq_3152 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_29697 T@PolymorphicMapType_29697 T@PolymorphicMapType_29718) Bool)
(declare-fun IsPredicateField_16683_99202 (T@Field_16683_99111) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16683 (T@Field_16683_99111) T@Field_16683_99244)
(declare-fun HasDirectPerm_16683_99175 (T@PolymorphicMapType_29718 T@Ref T@Field_16683_99111) Bool)
(declare-fun IsWandField_16683_101153 (T@Field_16683_99111) Bool)
(declare-fun WandMaskField_16683 (T@Field_16683_99111) T@Field_16683_99244)
(declare-fun |Seq#Singleton_16684| (T@Ref) T@Seq_35803)
(declare-fun |Seq#Singleton_3152| (Int) T@Seq_3152)
(declare-fun |Seq#Append_35803| (T@Seq_35803 T@Seq_35803) T@Seq_35803)
(declare-fun |Seq#Append_3152| (T@Seq_3152 T@Seq_3152) T@Seq_3152)
(declare-fun dummyHeap () T@PolymorphicMapType_29697)
(declare-fun ZeroMask () T@PolymorphicMapType_29718)
(declare-fun InsidePredicate_29757_29757 (T@Field_16683_99111 T@FrameType T@Field_16683_99111 T@FrameType) Bool)
(declare-fun IsPredicateField_16683_35827 (T@Field_35800_35805) Bool)
(declare-fun IsWandField_16683_35853 (T@Field_35800_35805) Bool)
(declare-fun IsPredicateField_16695_3322 (T@Field_35964_3322) Bool)
(declare-fun IsWandField_16695_3322 (T@Field_35964_3322) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16683_105287 (T@Field_16683_99244) Bool)
(declare-fun IsWandField_16683_105303 (T@Field_16683_99244) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16683_29771 (T@Field_29770_29771) Bool)
(declare-fun IsWandField_16683_29771 (T@Field_29770_29771) Bool)
(declare-fun IsPredicateField_16683_53 (T@Field_29757_53) Bool)
(declare-fun IsWandField_16683_53 (T@Field_29757_53) Bool)
(declare-fun HasDirectPerm_16683_105824 (T@PolymorphicMapType_29718 T@Ref T@Field_16683_99244) Bool)
(declare-fun HasDirectPerm_16683_29771 (T@PolymorphicMapType_29718 T@Ref T@Field_29770_29771) Bool)
(declare-fun HasDirectPerm_16683_53 (T@PolymorphicMapType_29718 T@Ref T@Field_29757_53) Bool)
(declare-fun HasDirectPerm_16695_3322 (T@PolymorphicMapType_29718 T@Ref T@Field_35964_3322) Bool)
(declare-fun HasDirectPerm_16683_36765 (T@PolymorphicMapType_29718 T@Ref T@Field_35800_35805) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_29718 T@PolymorphicMapType_29718 T@PolymorphicMapType_29718) Bool)
(declare-fun |Seq#Equal_3152| (T@Seq_3152 T@Seq_3152) Bool)
(declare-fun |Seq#Equal_16684| (T@Seq_35803 T@Seq_35803) Bool)
(declare-fun |Seq#ContainsTrigger_16684| (T@Seq_35803 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3152| (T@Seq_3152 Int) Bool)
(declare-fun |Seq#SkolemDiff_35803| (T@Seq_35803 T@Seq_35803) Int)
(declare-fun |Seq#SkolemDiff_3152| (T@Seq_3152 T@Seq_3152) Int)
(assert (distinct Ref__a Ref__b Ref__c)
)
(assert (forall ((s T@Seq_35803) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_16684| s)) (= (|Seq#Length_16684| (|Seq#Drop_16684| s n)) (- (|Seq#Length_16684| s) n))) (=> (< (|Seq#Length_16684| s) n) (= (|Seq#Length_16684| (|Seq#Drop_16684| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_16684| (|Seq#Drop_16684| s n)) (|Seq#Length_16684| s))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_16684| (|Seq#Drop_16684| s n)))
 :pattern ( (|Seq#Length_16684| s) (|Seq#Drop_16684| s n))
)))
(assert (forall ((s@@0 T@Seq_3152) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3152| s@@0)) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (- (|Seq#Length_3152| s@@0) n@@0))) (=> (< (|Seq#Length_3152| s@@0) n@@0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)) (|Seq#Length_3152| s@@0))))
 :qid |stdinbpl.321:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3152| (|Seq#Drop_3152| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3152| s@@0) (|Seq#Drop_3152| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_29697) (Heap1 T@PolymorphicMapType_29697) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_29697) (Mask T@PolymorphicMapType_29718) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_29697) (Heap1@@0 T@PolymorphicMapType_29697) (Heap2 T@PolymorphicMapType_29697) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16683_99244) ) (!  (not (select (|PolymorphicMapType_30246_29757_100626#PolymorphicMapType_30246| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30246_29757_100626#PolymorphicMapType_30246| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16683_99111) ) (!  (not (select (|PolymorphicMapType_30246_29757_99111#PolymorphicMapType_30246| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30246_29757_99111#PolymorphicMapType_30246| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_35964_3322) ) (!  (not (select (|PolymorphicMapType_30246_29757_3322#PolymorphicMapType_30246| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30246_29757_3322#PolymorphicMapType_30246| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_35800_35805) ) (!  (not (select (|PolymorphicMapType_30246_29757_35805#PolymorphicMapType_30246| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30246_29757_35805#PolymorphicMapType_30246| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_29770_29771) ) (!  (not (select (|PolymorphicMapType_30246_29757_29771#PolymorphicMapType_30246| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30246_29757_29771#PolymorphicMapType_30246| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_29757_53) ) (!  (not (select (|PolymorphicMapType_30246_29757_53#PolymorphicMapType_30246| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_30246_29757_53#PolymorphicMapType_30246| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_35803) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_16684| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_16684| (|Seq#Drop_16684| s@@1 n@@1) j) (|Seq#Index_16684| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_16684| (|Seq#Drop_16684| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3152) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3152| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0) (|Seq#Index_3152| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.342:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3152| (|Seq#Drop_3152| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_16684| |Seq#Empty_16684|) 0))
(assert (= (|Seq#Length_3152| |Seq#Empty_3152|) 0))
(assert (forall ((s@@3 T@Seq_35803) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_16684| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_16684| (|Seq#Update_16684| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_16684| (|Seq#Update_16684| s@@3 i v) n@@3) (|Seq#Index_16684| s@@3 n@@3)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_16684| (|Seq#Update_16684| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_16684| s@@3 n@@3) (|Seq#Update_16684| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3152) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3152| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3152| s@@4 n@@4)))))
 :qid |stdinbpl.297:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3152| (|Seq#Update_3152| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3152| s@@4 n@@4) (|Seq#Update_3152| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_35803) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_16684| s@@5)) (= (|Seq#Length_16684| (|Seq#Take_16684| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_16684| s@@5) n@@5) (= (|Seq#Length_16684| (|Seq#Take_16684| s@@5 n@@5)) (|Seq#Length_16684| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_16684| (|Seq#Take_16684| s@@5 n@@5)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_16684| (|Seq#Take_16684| s@@5 n@@5)))
 :pattern ( (|Seq#Take_16684| s@@5 n@@5) (|Seq#Length_16684| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3152) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3152| s@@6)) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3152| s@@6) n@@6) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) (|Seq#Length_3152| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)) 0)))
 :qid |stdinbpl.308:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3152| (|Seq#Take_3152| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3152| s@@6 n@@6) (|Seq#Length_3152| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.582:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3152| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_35803) (x T@Ref) ) (!  (=> (|Seq#Contains_35803| s@@7 x) (and (and (<= 0 (|Seq#Skolem_35803| s@@7 x)) (< (|Seq#Skolem_35803| s@@7 x) (|Seq#Length_16684| s@@7))) (= (|Seq#Index_16684| s@@7 (|Seq#Skolem_35803| s@@7 x)) x)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_35803| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3152) (x@@0 Int) ) (!  (=> (|Seq#Contains_3152| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3152| s@@8 x@@0)) (< (|Seq#Skolem_3152| s@@8 x@@0) (|Seq#Length_3152| s@@8))) (= (|Seq#Index_3152| s@@8 (|Seq#Skolem_3152| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.440:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3152| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_35803) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_16684| s@@9 n@@7) s@@9))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_16684| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3152) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3152| s@@10 n@@8) s@@10))
 :qid |stdinbpl.424:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3152| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.275:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_29697) (ExhaleHeap T@PolymorphicMapType_29697) (Mask@@0 T@PolymorphicMapType_29718) (pm_f_7 T@Field_16683_99111) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16683_99175 Mask@@0 null pm_f_7) (IsPredicateField_16683_99202 pm_f_7)) (= (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@0) null (PredicateMaskField_16683 pm_f_7)) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap) null (PredicateMaskField_16683 pm_f_7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_16683_99202 pm_f_7) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap) null (PredicateMaskField_16683 pm_f_7)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_29697) (ExhaleHeap@@0 T@PolymorphicMapType_29697) (Mask@@1 T@PolymorphicMapType_29718) (pm_f_7@@0 T@Field_16683_99111) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16683_99175 Mask@@1 null pm_f_7@@0) (IsWandField_16683_101153 pm_f_7@@0)) (= (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@1) null (WandMaskField_16683 pm_f_7@@0)) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@0) null (WandMaskField_16683 pm_f_7@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_16683_101153 pm_f_7@@0) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@0) null (WandMaskField_16683 pm_f_7@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_35803| (|Seq#Singleton_16684| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_35803| (|Seq#Singleton_16684| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.565:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3152| (|Seq#Singleton_3152| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_35803) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_16684| s@@11))) (= (|Seq#Index_16684| (|Seq#Take_16684| s@@11 n@@9) j@@3) (|Seq#Index_16684| s@@11 j@@3)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_16684| (|Seq#Take_16684| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_16684| s@@11 j@@3) (|Seq#Take_16684| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3152) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3152| s@@12))) (= (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4) (|Seq#Index_3152| s@@12 j@@4)))
 :qid |stdinbpl.316:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3152| (|Seq#Take_3152| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3152| s@@12 j@@4) (|Seq#Take_3152| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_35803) (t T@Seq_35803) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_16684| s@@13))) (< n@@11 (|Seq#Length_16684| (|Seq#Append_35803| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_16684| s@@13)) (|Seq#Length_16684| s@@13)) n@@11) (= (|Seq#Take_16684| (|Seq#Append_35803| s@@13 t) n@@11) (|Seq#Append_35803| s@@13 (|Seq#Take_16684| t (|Seq#Sub| n@@11 (|Seq#Length_16684| s@@13)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_16684| (|Seq#Append_35803| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3152) (t@@0 T@Seq_3152) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3152| s@@14))) (< n@@12 (|Seq#Length_3152| (|Seq#Append_3152| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)) (|Seq#Length_3152| s@@14)) n@@12) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12) (|Seq#Append_3152| s@@14 (|Seq#Take_3152| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3152| s@@14)))))))
 :qid |stdinbpl.401:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_29697) (ExhaleHeap@@1 T@PolymorphicMapType_29697) (Mask@@2 T@PolymorphicMapType_29718) (o_24 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@2) o_24 $allocated) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@1) o_24 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@1) o_24 $allocated))
)))
(assert (forall ((p T@Field_16683_99111) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29757_29757 p v_1 p w))
 :qid |stdinbpl.219:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29757_29757 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_35803) (s1 T@Seq_35803) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_16684|)) (not (= s1 |Seq#Empty_16684|))) (<= (|Seq#Length_16684| s0) n@@13)) (< n@@13 (|Seq#Length_16684| (|Seq#Append_35803| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_16684| s0)) (|Seq#Length_16684| s0)) n@@13) (= (|Seq#Index_16684| (|Seq#Append_35803| s0 s1) n@@13) (|Seq#Index_16684| s1 (|Seq#Sub| n@@13 (|Seq#Length_16684| s0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_16684| (|Seq#Append_35803| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3152) (s1@@0 T@Seq_3152) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3152|)) (not (= s1@@0 |Seq#Empty_3152|))) (<= (|Seq#Length_3152| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3152| (|Seq#Append_3152| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0)) (|Seq#Length_3152| s0@@0)) n@@14) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14) (|Seq#Index_3152| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3152| s0@@0))))))
 :qid |stdinbpl.288:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_16683_35827 Ref__a)))
(assert  (not (IsWandField_16683_35853 Ref__a)))
(assert  (not (IsPredicateField_16683_35827 Ref__b)))
(assert  (not (IsWandField_16683_35853 Ref__b)))
(assert  (not (IsPredicateField_16683_35827 Ref__c)))
(assert  (not (IsWandField_16683_35853 Ref__c)))
(assert  (not (IsPredicateField_16695_3322 Ref__Integer_value)))
(assert  (not (IsWandField_16695_3322 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_29697) (ExhaleHeap@@2 T@PolymorphicMapType_29697) (Mask@@3 T@PolymorphicMapType_29718) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_29718) (o_2@@5 T@Ref) (f_4@@5 T@Field_16683_99244) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_16683_105287 f_4@@5))) (not (IsWandField_16683_105303 f_4@@5))) (<= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_29718) (o_2@@6 T@Ref) (f_4@@6 T@Field_16683_99111) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_16683_99202 f_4@@6))) (not (IsWandField_16683_101153 f_4@@6))) (<= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_29718) (o_2@@7 T@Ref) (f_4@@7 T@Field_29770_29771) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_16683_29771 f_4@@7))) (not (IsWandField_16683_29771 f_4@@7))) (<= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_29718) (o_2@@8 T@Ref) (f_4@@8 T@Field_29757_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_16683_53 f_4@@8))) (not (IsWandField_16683_53 f_4@@8))) (<= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_29718) (o_2@@9 T@Ref) (f_4@@9 T@Field_35964_3322) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_16695_3322 f_4@@9))) (not (IsWandField_16695_3322 f_4@@9))) (<= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_29718) (o_2@@10 T@Ref) (f_4@@10 T@Field_35800_35805) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_16683_35827 f_4@@10))) (not (IsWandField_16683_35853 f_4@@10))) (<= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_29718) (o_2@@11 T@Ref) (f_4@@11 T@Field_16683_99244) ) (! (= (HasDirectPerm_16683_105824 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16683_105824 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_29718) (o_2@@12 T@Ref) (f_4@@12 T@Field_16683_99111) ) (! (= (HasDirectPerm_16683_99175 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16683_99175 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_29718) (o_2@@13 T@Ref) (f_4@@13 T@Field_29770_29771) ) (! (= (HasDirectPerm_16683_29771 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16683_29771 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_29718) (o_2@@14 T@Ref) (f_4@@14 T@Field_29757_53) ) (! (= (HasDirectPerm_16683_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16683_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_29718) (o_2@@15 T@Ref) (f_4@@15 T@Field_35964_3322) ) (! (= (HasDirectPerm_16695_3322 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16695_3322 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_29718) (o_2@@16 T@Ref) (f_4@@16 T@Field_35800_35805) ) (! (= (HasDirectPerm_16683_36765 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16683_36765 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.207:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3152| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.580:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3152| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_29697) (ExhaleHeap@@3 T@PolymorphicMapType_29697) (Mask@@16 T@PolymorphicMapType_29718) (o_24@@0 T@Ref) (f_26 T@Field_16683_99244) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_16683_105824 Mask@@16 o_24@@0 f_26) (= (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@4) o_24@@0 f_26) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@3) o_24@@0 f_26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@3) o_24@@0 f_26))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_29697) (ExhaleHeap@@4 T@PolymorphicMapType_29697) (Mask@@17 T@PolymorphicMapType_29718) (o_24@@1 T@Ref) (f_26@@0 T@Field_16683_99111) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_16683_99175 Mask@@17 o_24@@1 f_26@@0) (= (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@5) o_24@@1 f_26@@0) (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| ExhaleHeap@@4) o_24@@1 f_26@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| ExhaleHeap@@4) o_24@@1 f_26@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_29697) (ExhaleHeap@@5 T@PolymorphicMapType_29697) (Mask@@18 T@PolymorphicMapType_29718) (o_24@@2 T@Ref) (f_26@@1 T@Field_29770_29771) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_16683_29771 Mask@@18 o_24@@2 f_26@@1) (= (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@6) o_24@@2 f_26@@1) (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| ExhaleHeap@@5) o_24@@2 f_26@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| ExhaleHeap@@5) o_24@@2 f_26@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_29697) (ExhaleHeap@@6 T@PolymorphicMapType_29697) (Mask@@19 T@PolymorphicMapType_29718) (o_24@@3 T@Ref) (f_26@@2 T@Field_29757_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_16683_53 Mask@@19 o_24@@3 f_26@@2) (= (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@7) o_24@@3 f_26@@2) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@6) o_24@@3 f_26@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@6) o_24@@3 f_26@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_29697) (ExhaleHeap@@7 T@PolymorphicMapType_29697) (Mask@@20 T@PolymorphicMapType_29718) (o_24@@4 T@Ref) (f_26@@3 T@Field_35964_3322) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_16695_3322 Mask@@20 o_24@@4 f_26@@3) (= (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@8) o_24@@4 f_26@@3) (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| ExhaleHeap@@7) o_24@@4 f_26@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| ExhaleHeap@@7) o_24@@4 f_26@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_29697) (ExhaleHeap@@8 T@PolymorphicMapType_29697) (Mask@@21 T@PolymorphicMapType_29718) (o_24@@5 T@Ref) (f_26@@4 T@Field_35800_35805) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_16683_36765 Mask@@21 o_24@@5 f_26@@4) (= (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@9) o_24@@5 f_26@@4) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| ExhaleHeap@@8) o_24@@5 f_26@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| ExhaleHeap@@8) o_24@@5 f_26@@4))
)))
(assert (forall ((s0@@1 T@Seq_35803) (s1@@1 T@Seq_35803) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_16684|)) (not (= s1@@1 |Seq#Empty_16684|))) (= (|Seq#Length_16684| (|Seq#Append_35803| s0@@1 s1@@1)) (+ (|Seq#Length_16684| s0@@1) (|Seq#Length_16684| s1@@1))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_16684| (|Seq#Append_35803| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3152) (s1@@2 T@Seq_3152) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3152|)) (not (= s1@@2 |Seq#Empty_3152|))) (= (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)) (+ (|Seq#Length_3152| s0@@2) (|Seq#Length_3152| s1@@2))))
 :qid |stdinbpl.257:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3152| (|Seq#Append_3152| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_16683_99244) ) (! (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16683_99111) ) (! (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_29770_29771) ) (! (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_29757_53) ) (! (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_35964_3322) ) (! (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_35800_35805) ) (! (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_35803) (t@@1 T@Seq_35803) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_16684| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_16684| s@@15)) (|Seq#Length_16684| s@@15)) n@@15) (= (|Seq#Drop_16684| (|Seq#Append_35803| s@@15 t@@1) n@@15) (|Seq#Drop_16684| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_16684| s@@15))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_16684| (|Seq#Append_35803| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3152) (t@@2 T@Seq_3152) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3152| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16)) (|Seq#Length_3152| s@@16)) n@@16) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16) (|Seq#Drop_3152| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3152| s@@16))))))
 :qid |stdinbpl.414:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_29718) (SummandMask1 T@PolymorphicMapType_29718) (SummandMask2 T@PolymorphicMapType_29718) (o_2@@23 T@Ref) (f_4@@23 T@Field_16683_99244) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_29718) (SummandMask1@@0 T@PolymorphicMapType_29718) (SummandMask2@@0 T@PolymorphicMapType_29718) (o_2@@24 T@Ref) (f_4@@24 T@Field_16683_99111) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_29718) (SummandMask1@@1 T@PolymorphicMapType_29718) (SummandMask2@@1 T@PolymorphicMapType_29718) (o_2@@25 T@Ref) (f_4@@25 T@Field_29770_29771) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_29718) (SummandMask1@@2 T@PolymorphicMapType_29718) (SummandMask2@@2 T@PolymorphicMapType_29718) (o_2@@26 T@Ref) (f_4@@26 T@Field_29757_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_29718) (SummandMask1@@3 T@PolymorphicMapType_29718) (SummandMask2@@3 T@PolymorphicMapType_29718) (o_2@@27 T@Ref) (f_4@@27 T@Field_35964_3322) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_29718) (SummandMask1@@4 T@PolymorphicMapType_29718) (SummandMask2@@4 T@PolymorphicMapType_29718) (o_2@@28 T@Ref) (f_4@@28 T@Field_35800_35805) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.579:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3152| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3152) (b T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| a b) (= a b))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3152| a b))
)))
(assert (forall ((a@@0 T@Seq_35803) (b@@0 T@Seq_35803) ) (!  (=> (|Seq#Equal_16684| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.552:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16684| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_35803) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_16684| s@@17))) (|Seq#ContainsTrigger_16684| s@@17 (|Seq#Index_16684| s@@17 i@@3)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_16684| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3152) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3152| s@@18))) (|Seq#ContainsTrigger_3152| s@@18 (|Seq#Index_3152| s@@18 i@@4)))
 :qid |stdinbpl.445:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3152| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_35803) (s1@@3 T@Seq_35803) ) (!  (and (=> (= s0@@3 |Seq#Empty_16684|) (= (|Seq#Append_35803| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_16684|) (= (|Seq#Append_35803| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_35803| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3152) (s1@@4 T@Seq_3152) ) (!  (and (=> (= s0@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3152|) (= (|Seq#Append_3152| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.263:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3152| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_16684| (|Seq#Singleton_16684| t@@3) 0) t@@3)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_16684| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3152| (|Seq#Singleton_3152| t@@4) 0) t@@4)
 :qid |stdinbpl.267:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3152| t@@4))
)))
(assert (forall ((s@@19 T@Seq_35803) ) (! (<= 0 (|Seq#Length_16684| s@@19))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_16684| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3152) ) (! (<= 0 (|Seq#Length_3152| s@@20))
 :qid |stdinbpl.246:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3152| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_29697) (ExhaleHeap@@9 T@PolymorphicMapType_29697) (Mask@@22 T@PolymorphicMapType_29718) (pm_f_7@@1 T@Field_16683_99111) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_16683_99175 Mask@@22 null pm_f_7@@1) (IsPredicateField_16683_99202 pm_f_7@@1)) (and (and (and (and (and (forall ((o2_7 T@Ref) (f_26@@5 T@Field_29757_53) ) (!  (=> (select (|PolymorphicMapType_30246_29757_53#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) null (PredicateMaskField_16683 pm_f_7@@1))) o2_7 f_26@@5) (= (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@10) o2_7 f_26@@5) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7 f_26@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7 f_26@@5))
)) (forall ((o2_7@@0 T@Ref) (f_26@@6 T@Field_29770_29771) ) (!  (=> (select (|PolymorphicMapType_30246_29757_29771#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) null (PredicateMaskField_16683 pm_f_7@@1))) o2_7@@0 f_26@@6) (= (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@10) o2_7@@0 f_26@@6) (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@0 f_26@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@0 f_26@@6))
))) (forall ((o2_7@@1 T@Ref) (f_26@@7 T@Field_35800_35805) ) (!  (=> (select (|PolymorphicMapType_30246_29757_35805#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) null (PredicateMaskField_16683 pm_f_7@@1))) o2_7@@1 f_26@@7) (= (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@10) o2_7@@1 f_26@@7) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@1 f_26@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@1 f_26@@7))
))) (forall ((o2_7@@2 T@Ref) (f_26@@8 T@Field_35964_3322) ) (!  (=> (select (|PolymorphicMapType_30246_29757_3322#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) null (PredicateMaskField_16683 pm_f_7@@1))) o2_7@@2 f_26@@8) (= (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@10) o2_7@@2 f_26@@8) (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@2 f_26@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@2 f_26@@8))
))) (forall ((o2_7@@3 T@Ref) (f_26@@9 T@Field_16683_99111) ) (!  (=> (select (|PolymorphicMapType_30246_29757_99111#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) null (PredicateMaskField_16683 pm_f_7@@1))) o2_7@@3 f_26@@9) (= (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@10) o2_7@@3 f_26@@9) (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@3 f_26@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@3 f_26@@9))
))) (forall ((o2_7@@4 T@Ref) (f_26@@10 T@Field_16683_99244) ) (!  (=> (select (|PolymorphicMapType_30246_29757_100626#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) null (PredicateMaskField_16683 pm_f_7@@1))) o2_7@@4 f_26@@10) (= (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@10) o2_7@@4 f_26@@10) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@4 f_26@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@9) o2_7@@4 f_26@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_16683_99202 pm_f_7@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_29697) (ExhaleHeap@@10 T@PolymorphicMapType_29697) (Mask@@23 T@PolymorphicMapType_29718) (pm_f_7@@2 T@Field_16683_99111) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_16683_99175 Mask@@23 null pm_f_7@@2) (IsWandField_16683_101153 pm_f_7@@2)) (and (and (and (and (and (forall ((o2_7@@5 T@Ref) (f_26@@11 T@Field_29757_53) ) (!  (=> (select (|PolymorphicMapType_30246_29757_53#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) null (WandMaskField_16683 pm_f_7@@2))) o2_7@@5 f_26@@11) (= (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@11) o2_7@@5 f_26@@11) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@5 f_26@@11)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@5 f_26@@11))
)) (forall ((o2_7@@6 T@Ref) (f_26@@12 T@Field_29770_29771) ) (!  (=> (select (|PolymorphicMapType_30246_29757_29771#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) null (WandMaskField_16683 pm_f_7@@2))) o2_7@@6 f_26@@12) (= (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@11) o2_7@@6 f_26@@12) (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@6 f_26@@12)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@6 f_26@@12))
))) (forall ((o2_7@@7 T@Ref) (f_26@@13 T@Field_35800_35805) ) (!  (=> (select (|PolymorphicMapType_30246_29757_35805#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) null (WandMaskField_16683 pm_f_7@@2))) o2_7@@7 f_26@@13) (= (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@11) o2_7@@7 f_26@@13) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@7 f_26@@13)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@7 f_26@@13))
))) (forall ((o2_7@@8 T@Ref) (f_26@@14 T@Field_35964_3322) ) (!  (=> (select (|PolymorphicMapType_30246_29757_3322#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) null (WandMaskField_16683 pm_f_7@@2))) o2_7@@8 f_26@@14) (= (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@11) o2_7@@8 f_26@@14) (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@8 f_26@@14)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@8 f_26@@14))
))) (forall ((o2_7@@9 T@Ref) (f_26@@15 T@Field_16683_99111) ) (!  (=> (select (|PolymorphicMapType_30246_29757_99111#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) null (WandMaskField_16683 pm_f_7@@2))) o2_7@@9 f_26@@15) (= (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@11) o2_7@@9 f_26@@15) (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@9 f_26@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@9 f_26@@15))
))) (forall ((o2_7@@10 T@Ref) (f_26@@16 T@Field_16683_99244) ) (!  (=> (select (|PolymorphicMapType_30246_29757_100626#PolymorphicMapType_30246| (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) null (WandMaskField_16683 pm_f_7@@2))) o2_7@@10 f_26@@16) (= (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@11) o2_7@@10 f_26@@16) (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@10 f_26@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| ExhaleHeap@@10) o2_7@@10 f_26@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_16683_101153 pm_f_7@@2))
)))
(assert (forall ((s0@@5 T@Seq_3152) (s1@@5 T@Seq_3152) ) (!  (=> (|Seq#Equal_3152| s0@@5 s1@@5) (and (= (|Seq#Length_3152| s0@@5) (|Seq#Length_3152| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3152| s0@@5))) (= (|Seq#Index_3152| s0@@5 j@@6) (|Seq#Index_3152| s1@@5 j@@6)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3152| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3152| s1@@5 j@@6))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3152| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_35803) (s1@@6 T@Seq_35803) ) (!  (=> (|Seq#Equal_16684| s0@@6 s1@@6) (and (= (|Seq#Length_16684| s0@@6) (|Seq#Length_16684| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_16684| s0@@6))) (= (|Seq#Index_16684| s0@@6 j@@7) (|Seq#Index_16684| s1@@6 j@@7)))
 :qid |stdinbpl.542:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16684| s0@@6 j@@7))
 :pattern ( (|Seq#Index_16684| s1@@6 j@@7))
))))
 :qid |stdinbpl.539:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16684| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_16684| (|Seq#Singleton_16684| t@@5)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_16684| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3152| (|Seq#Singleton_3152| t@@6)) 1)
 :qid |stdinbpl.254:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3152| t@@6))
)))
(assert (forall ((s@@21 T@Seq_35803) (t@@7 T@Seq_35803) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_16684| s@@21))) (= (|Seq#Take_16684| (|Seq#Append_35803| s@@21 t@@7) n@@17) (|Seq#Take_16684| s@@21 n@@17)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_16684| (|Seq#Append_35803| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3152) (t@@8 T@Seq_3152) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3152| s@@22))) (= (|Seq#Take_3152| (|Seq#Append_3152| s@@22 t@@8) n@@18) (|Seq#Take_3152| s@@22 n@@18)))
 :qid |stdinbpl.396:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3152| (|Seq#Append_3152| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_35803) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_16684| s@@23))) (= (|Seq#Length_16684| (|Seq#Update_16684| s@@23 i@@5 v@@2)) (|Seq#Length_16684| s@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_16684| (|Seq#Update_16684| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_16684| s@@23) (|Seq#Update_16684| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3152) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3152| s@@24))) (= (|Seq#Length_3152| (|Seq#Update_3152| s@@24 i@@6 v@@3)) (|Seq#Length_3152| s@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3152| (|Seq#Update_3152| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3152| s@@24) (|Seq#Update_3152| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_29697) (o_23 T@Ref) (f_27 T@Field_16683_99111) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@12) (store (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@12) o_23 f_27 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@12) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@12) (store (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@12) o_23 f_27 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_29697) (o_23@@0 T@Ref) (f_27@@0 T@Field_16683_99244) (v@@5 T@PolymorphicMapType_30246) ) (! (succHeap Heap@@13 (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@13) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@13) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@13) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@13) (store (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@13) o_23@@0 f_27@@0 v@@5) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@13) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@13) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@13) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@13) (store (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@13) o_23@@0 f_27@@0 v@@5) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_29697) (o_23@@1 T@Ref) (f_27@@1 T@Field_35964_3322) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@14) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@14) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@14) (store (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@14) o_23@@1 f_27@@1 v@@6) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@14) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@14) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@14) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@14) (store (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@14) o_23@@1 f_27@@1 v@@6) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@14) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_29697) (o_23@@2 T@Ref) (f_27@@2 T@Field_35800_35805) (v@@7 T@Seq_35803) ) (! (succHeap Heap@@15 (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@15) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@15) (store (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@15) o_23@@2 f_27@@2 v@@7) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@15) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@15) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@15) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@15) (store (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@15) o_23@@2 f_27@@2 v@@7) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@15) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@15) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_29697) (o_23@@3 T@Ref) (f_27@@3 T@Field_29770_29771) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@16) (store (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@16) o_23@@3 f_27@@3 v@@8) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@16) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@16) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@16) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29697 (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@16) (store (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@16) o_23@@3 f_27@@3 v@@8) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@16) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@16) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@16) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_29697) (o_23@@4 T@Ref) (f_27@@4 T@Field_29757_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_29697 (store (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@17) o_23@@4 f_27@@4 v@@9) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_29697 (store (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@17) o_23@@4 f_27@@4 v@@9) (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_16683_99288#PolymorphicMapType_29697| Heap@@17) (|PolymorphicMapType_29697_29757_99111#PolymorphicMapType_29697| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_35803) (t@@9 T@Seq_35803) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_16684| s@@25))) (= (|Seq#Drop_16684| (|Seq#Append_35803| s@@25 t@@9) n@@19) (|Seq#Append_35803| (|Seq#Drop_16684| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_16684| (|Seq#Append_35803| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3152) (t@@10 T@Seq_3152) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3152| s@@26))) (= (|Seq#Drop_3152| (|Seq#Append_3152| s@@26 t@@10) n@@20) (|Seq#Append_3152| (|Seq#Drop_3152| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.410:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3152| (|Seq#Append_3152| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_35803) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_16684| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_16684| (|Seq#Drop_16684| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_16684| s@@27 i@@7))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_16684| s@@27 n@@21) (|Seq#Index_16684| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3152) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3152| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3152| (|Seq#Drop_3152| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3152| s@@28 i@@8))))
 :qid |stdinbpl.346:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3152| s@@28 n@@22) (|Seq#Index_3152| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_35803) (s1@@7 T@Seq_35803) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_16684|)) (not (= s1@@7 |Seq#Empty_16684|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_16684| s0@@7))) (= (|Seq#Index_16684| (|Seq#Append_35803| s0@@7 s1@@7) n@@23) (|Seq#Index_16684| s0@@7 n@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_16684| (|Seq#Append_35803| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_16684| s0@@7 n@@23) (|Seq#Append_35803| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3152) (s1@@8 T@Seq_3152) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3152|)) (not (= s1@@8 |Seq#Empty_3152|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3152| s0@@8))) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24) (|Seq#Index_3152| s0@@8 n@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3152| (|Seq#Append_3152| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3152| s0@@8 n@@24) (|Seq#Append_3152| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_35803) (s1@@9 T@Seq_35803) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_16684|)) (not (= s1@@9 |Seq#Empty_16684|))) (<= 0 m)) (< m (|Seq#Length_16684| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_16684| s0@@9)) (|Seq#Length_16684| s0@@9)) m) (= (|Seq#Index_16684| (|Seq#Append_35803| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_16684| s0@@9))) (|Seq#Index_16684| s1@@9 m))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_16684| s1@@9 m) (|Seq#Append_35803| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3152) (s1@@10 T@Seq_3152) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3152|)) (not (= s1@@10 |Seq#Empty_3152|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3152| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10)) (|Seq#Length_3152| s0@@10)) m@@0) (= (|Seq#Index_3152| (|Seq#Append_3152| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3152| s0@@10))) (|Seq#Index_3152| s1@@10 m@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3152| s1@@10 m@@0) (|Seq#Append_3152| s0@@10 s1@@10))
)))
(assert (forall ((o_23@@5 T@Ref) (f_25 T@Field_29770_29771) (Heap@@18 T@PolymorphicMapType_29697) ) (!  (=> (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@18) o_23@@5 $allocated) (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@18) (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@18) o_23@@5 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_29697_16474_16475#PolymorphicMapType_29697| Heap@@18) o_23@@5 f_25))
)))
(assert (forall ((s@@29 T@Seq_35803) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_16684| s@@29))) (= (|Seq#Index_16684| s@@29 i@@9) x@@3)) (|Seq#Contains_35803| s@@29 x@@3))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_35803| s@@29 x@@3) (|Seq#Index_16684| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3152) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3152| s@@30))) (= (|Seq#Index_3152| s@@30 i@@10) x@@4)) (|Seq#Contains_3152| s@@30 x@@4))
 :qid |stdinbpl.443:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3152| s@@30 x@@4) (|Seq#Index_3152| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_35803) (s1@@11 T@Seq_35803) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16684| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16684| s0@@11 s1@@11))) (not (= (|Seq#Length_16684| s0@@11) (|Seq#Length_16684| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16684| s0@@11 s1@@11))) (= (|Seq#Length_16684| s0@@11) (|Seq#Length_16684| s1@@11))) (= (|Seq#SkolemDiff_35803| s0@@11 s1@@11) (|Seq#SkolemDiff_35803| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_35803| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_35803| s0@@11 s1@@11) (|Seq#Length_16684| s0@@11))) (not (= (|Seq#Index_16684| s0@@11 (|Seq#SkolemDiff_35803| s0@@11 s1@@11)) (|Seq#Index_16684| s1@@11 (|Seq#SkolemDiff_35803| s0@@11 s1@@11))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16684| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3152) (s1@@12 T@Seq_3152) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3152| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (not (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3152| s0@@12 s1@@12))) (= (|Seq#Length_3152| s0@@12) (|Seq#Length_3152| s1@@12))) (= (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#SkolemDiff_3152| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3152| s0@@12 s1@@12) (|Seq#Length_3152| s0@@12))) (not (= (|Seq#Index_3152| s0@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12)) (|Seq#Index_3152| s1@@12 (|Seq#SkolemDiff_3152| s0@@12 s1@@12))))))
 :qid |stdinbpl.547:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3152| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_16683_99111) (v_1@@0 T@FrameType) (q T@Field_16683_99111) (w@@0 T@FrameType) (r T@Field_16683_99111) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29757_29757 p@@1 v_1@@0 q w@@0) (InsidePredicate_29757_29757 q w@@0 r u)) (InsidePredicate_29757_29757 p@@1 v_1@@0 r u))
 :qid |stdinbpl.214:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29757_29757 p@@1 v_1@@0 q w@@0) (InsidePredicate_29757_29757 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_35803) ) (!  (=> (= (|Seq#Length_16684| s@@31) 0) (= s@@31 |Seq#Empty_16684|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_16684| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3152) ) (!  (=> (= (|Seq#Length_3152| s@@32) 0) (= s@@32 |Seq#Empty_3152|))
 :qid |stdinbpl.250:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3152| s@@32))
)))
(assert (forall ((s@@33 T@Seq_35803) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_16684| s@@33 n@@25) |Seq#Empty_16684|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_16684| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3152) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3152| s@@34 n@@26) |Seq#Empty_3152|))
 :qid |stdinbpl.426:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3152| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid_12 () Int)
(declare-fun gsize () Int)
(declare-fun QPMask@7 () T@PolymorphicMapType_29718)
(declare-fun diz () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_29697)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_29718)
(declare-fun tid_10 () Int)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun PostMask@2 () T@PolymorphicMapType_29718)
(declare-fun tid_8 () Int)
(declare-fun tcount () Int)
(declare-fun gid () Int)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_29718)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_29718)
(declare-fun wildcard@5 () Real)
(declare-fun QPMask@2 () T@PolymorphicMapType_29718)
(declare-fun Heap@@19 () T@PolymorphicMapType_29697)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_29718)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_29718)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_29718)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_29718)
(declare-fun dummyFunction_3322 (Int) Bool)
(declare-fun neverTriggered8 (Int) Bool)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_29718)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_29718)
(declare-fun tid_6 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_29718)
(declare-fun tid_4 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_29718)
(declare-fun tid_2 () Int)
(declare-fun i_4 () Int)
(declare-fun j_6 () Int)
(declare-fun i_2 () Int)
(declare-fun j@@8 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_29718)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_29718)
(declare-fun wildcard@2 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__main_resources_of_1)
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
 (=> (= (ControlFlow 0 0) 140) (let ((anon48_correct true))
(let ((anon78_Else_correct  (=> (and (not (and (<= 0 tid_12) (< tid_12 (- gsize 1)))) (= (ControlFlow 0 110) 105)) anon48_correct)))
(let ((anon78_Then_correct  (=> (and (<= 0 tid_12) (< tid_12 (- gsize 1))) (and (=> (= (ControlFlow 0 106) (- 0 109)) (HasDirectPerm_16683_36765 QPMask@7 diz Ref__b)) (=> (HasDirectPerm_16683_36765 QPMask@7 diz Ref__b) (and (=> (= (ControlFlow 0 106) (- 0 108)) (>= tid_12 0)) (=> (>= tid_12 0) (and (=> (= (ControlFlow 0 106) (- 0 107)) (< tid_12 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b)))) (=> (< tid_12 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b))) (=> (= (ControlFlow 0 106) 105) anon48_correct))))))))))
(let ((anon77_Else_correct  (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((tid_11 Int) (tid_11_1 Int) ) (!  (=> (and (and (and (and (not (= tid_11 tid_11_1)) (and (<= 0 tid_11) (< tid_11 (- gsize 1)))) (and (<= 0 tid_11_1) (< tid_11_1 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11_1))))
 :qid |stdinbpl.2154:15|
 :skolemid |93|
))) (=> (forall ((tid_11@@0 Int) (tid_11_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_11@@0 tid_11_1@@0)) (and (<= 0 tid_11@@0) (< tid_11@@0 (- gsize 1)))) (and (<= 0 tid_11_1@@0) (< tid_11_1@@0 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11_1@@0))))
 :qid |stdinbpl.2154:15|
 :skolemid |93|
)) (=> (forall ((tid_11@@1 Int) ) (!  (=> (and (and (<= 0 tid_11@@1) (< tid_11@@1 (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange6 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@1)) (= (invRecv6 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@1)) tid_11@@1)))
 :qid |stdinbpl.2160:22|
 :skolemid |94|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@1))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4)) (< (invRecv6 o_4) (- gsize 1))) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange6 o_4)) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) (invRecv6 o_4)) o_4))
 :qid |stdinbpl.2164:22|
 :skolemid |95|
 :pattern ( (invRecv6 o_4))
)) (= (ControlFlow 0 103) (- 0 102))) (forall ((tid_11@@2 Int) ) (!  (=> (and (<= 0 tid_11@@2) (< tid_11@@2 (- gsize 1))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2170:15|
 :skolemid |96|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_11@@2))
))))))))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 111) (- 0 113)) (forall ((tid_9 Int) (tid_9_1 Int) ) (!  (=> (and (and (and (and (not (= tid_9 tid_9_1)) (and (<= 0 tid_9) (< tid_9 gsize))) (and (<= 0 tid_9_1) (< tid_9_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9_1))))
 :qid |stdinbpl.2100:15|
 :skolemid |86|
))) (=> (forall ((tid_9@@0 Int) (tid_9_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_9@@0 tid_9_1@@0)) (and (<= 0 tid_9@@0) (< tid_9@@0 gsize))) (and (<= 0 tid_9_1@@0) (< tid_9_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9_1@@0))))
 :qid |stdinbpl.2100:15|
 :skolemid |86|
)) (=> (and (forall ((tid_9@@1 Int) ) (!  (=> (and (and (<= 0 tid_9@@1) (< tid_9@@1 gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange5 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@1)) (= (invRecv5 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@1)) tid_9@@1)))
 :qid |stdinbpl.2106:22|
 :skolemid |87|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@0)) (< (invRecv5 o_4@@0) gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange5 o_4@@0)) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) (invRecv5 o_4@@0)) o_4@@0))
 :qid |stdinbpl.2110:22|
 :skolemid |88|
 :pattern ( (invRecv5 o_4@@0))
))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (forall ((tid_9@@2 Int) ) (!  (=> (and (<= 0 tid_9@@2) (< tid_9@@2 gsize)) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2116:15|
 :skolemid |89|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@2))
))) (=> (forall ((tid_9@@3 Int) ) (!  (=> (and (<= 0 tid_9@@3) (< tid_9@@3 gsize)) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2116:15|
 :skolemid |89|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@3))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@3))
)) (=> (and (forall ((tid_9@@4 Int) ) (!  (=> (and (and (<= 0 tid_9@@4) (< tid_9@@4 gsize)) (> (/ (to_real 1) (to_real 4)) NoPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@4) null)))
 :qid |stdinbpl.2122:22|
 :skolemid |90|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@4))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) tid_9@@4))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@1)) (< (invRecv5 o_4@@1) gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange5 o_4@@1)) (and (=> (< NoPerm (/ (to_real 1) (to_real 4))) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) (invRecv5 o_4@@1)) o_4@@1)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@7) o_4@@1 Ref__Integer_value) (+ (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@1 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@1)) (< (invRecv5 o_4@@1) gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange5 o_4@@1))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@7) o_4@@1 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@1 Ref__Integer_value))))
 :qid |stdinbpl.2128:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@7) o_4@@1 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@6) o_4@@2 f_5) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@7) o_4@@2 f_5)))
 :qid |stdinbpl.2132:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@6) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@7) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@6) o_4@@3 f_5@@0) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@7) o_4@@3 f_5@@0)))
 :qid |stdinbpl.2132:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@6) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@7) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@6) o_4@@4 f_5@@1) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@7) o_4@@4 f_5@@1)))
 :qid |stdinbpl.2132:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@6) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@7) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_35964_3322) ) (!  (=> (not (= f_5@@2 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@5 f_5@@2) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@7) o_4@@5 f_5@@2)))
 :qid |stdinbpl.2132:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@7) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@6) o_4@@6 f_5@@3) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@7) o_4@@6 f_5@@3)))
 :qid |stdinbpl.2132:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@6) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@7) o_4@@6 f_5@@3))
))) (forall ((o_4@@7 T@Ref) (f_5@@4 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@6) o_4@@7 f_5@@4) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@7) o_4@@7 f_5@@4)))
 :qid |stdinbpl.2132:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@6) o_4@@7 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@7) o_4@@7 f_5@@4))
))) (and (state PostHeap@0 QPMask@7) (state PostHeap@0 QPMask@7))) (and (and (=> (= (ControlFlow 0 111) 103) anon77_Else_correct) (=> (= (ControlFlow 0 111) 106) anon78_Then_correct)) (=> (= (ControlFlow 0 111) 110) anon78_Else_correct)))))))))))
(let ((anon44_correct true))
(let ((anon76_Else_correct  (=> (and (not (and (<= 0 tid_10) (< tid_10 gsize))) (= (ControlFlow 0 101) 96)) anon44_correct)))
(let ((anon76_Then_correct  (=> (and (<= 0 tid_10) (< tid_10 gsize)) (and (=> (= (ControlFlow 0 97) (- 0 100)) (HasDirectPerm_16683_36765 QPMask@6 diz Ref__b)) (=> (HasDirectPerm_16683_36765 QPMask@6 diz Ref__b) (and (=> (= (ControlFlow 0 97) (- 0 99)) (>= tid_10 0)) (=> (>= tid_10 0) (and (=> (= (ControlFlow 0 97) (- 0 98)) (< tid_10 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b)))) (=> (< tid_10 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b))) (=> (= (ControlFlow 0 97) 96) anon44_correct))))))))))
(let ((anon73_Else_correct  (and (=> (= (ControlFlow 0 114) (- 0 115)) (forall ((tid_7 Int) (tid_7_1 Int) ) (!  (=> (and (and (and (and (not (= tid_7 tid_7_1)) (and (<= 0 tid_7) (< tid_7 gsize))) (and (<= 0 tid_7_1) (< tid_7_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7_1))))
 :qid |stdinbpl.2052:15|
 :skolemid |80|
))) (=> (forall ((tid_7@@0 Int) (tid_7_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_7@@0 tid_7_1@@0)) (and (<= 0 tid_7@@0) (< tid_7@@0 gsize))) (and (<= 0 tid_7_1@@0) (< tid_7_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7_1@@0))))
 :qid |stdinbpl.2052:15|
 :skolemid |80|
)) (=> (and (and (forall ((tid_7@@1 Int) ) (!  (=> (and (and (<= 0 tid_7@@1) (< tid_7@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@1)) (= (invRecv4 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@1)) tid_7@@1)))
 :qid |stdinbpl.2058:22|
 :skolemid |81|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@1))
)) (forall ((o_4@@8 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv4 o_4@@8)) (< (invRecv4 o_4@@8) gsize)) (< NoPerm FullPerm)) (qpRange4 o_4@@8)) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) (invRecv4 o_4@@8)) o_4@@8))
 :qid |stdinbpl.2062:22|
 :skolemid |82|
 :pattern ( (invRecv4 o_4@@8))
))) (and (forall ((tid_7@@2 Int) ) (!  (=> (and (<= 0 tid_7@@2) (< tid_7@@2 gsize)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@2) null)))
 :qid |stdinbpl.2068:22|
 :skolemid |83|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) tid_7@@2))
)) (forall ((o_4@@9 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv4 o_4@@9)) (< (invRecv4 o_4@@9) gsize)) (< NoPerm FullPerm)) (qpRange4 o_4@@9)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) (invRecv4 o_4@@9)) o_4@@9)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@9 Ref__Integer_value) (+ (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| PostMask@2) o_4@@9 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv4 o_4@@9)) (< (invRecv4 o_4@@9) gsize)) (< NoPerm FullPerm)) (qpRange4 o_4@@9))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@9 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| PostMask@2) o_4@@9 Ref__Integer_value))))
 :qid |stdinbpl.2074:22|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@9 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@10 T@Ref) (f_5@@5 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| PostMask@2) o_4@@10 f_5@@5) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@6) o_4@@10 f_5@@5)))
 :qid |stdinbpl.2078:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| PostMask@2) o_4@@10 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@6) o_4@@10 f_5@@5))
)) (forall ((o_4@@11 T@Ref) (f_5@@6 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| PostMask@2) o_4@@11 f_5@@6) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@6) o_4@@11 f_5@@6)))
 :qid |stdinbpl.2078:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| PostMask@2) o_4@@11 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@6) o_4@@11 f_5@@6))
))) (forall ((o_4@@12 T@Ref) (f_5@@7 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| PostMask@2) o_4@@12 f_5@@7) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@6) o_4@@12 f_5@@7)))
 :qid |stdinbpl.2078:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| PostMask@2) o_4@@12 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@6) o_4@@12 f_5@@7))
))) (forall ((o_4@@13 T@Ref) (f_5@@8 T@Field_35964_3322) ) (!  (=> (not (= f_5@@8 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| PostMask@2) o_4@@13 f_5@@8) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@13 f_5@@8)))
 :qid |stdinbpl.2078:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| PostMask@2) o_4@@13 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@6) o_4@@13 f_5@@8))
))) (forall ((o_4@@14 T@Ref) (f_5@@9 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| PostMask@2) o_4@@14 f_5@@9) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@6) o_4@@14 f_5@@9)))
 :qid |stdinbpl.2078:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| PostMask@2) o_4@@14 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@6) o_4@@14 f_5@@9))
))) (forall ((o_4@@15 T@Ref) (f_5@@10 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| PostMask@2) o_4@@15 f_5@@10) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@6) o_4@@15 f_5@@10)))
 :qid |stdinbpl.2078:29|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| PostMask@2) o_4@@15 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@6) o_4@@15 f_5@@10))
))) (and (state PostHeap@0 QPMask@6) (state PostHeap@0 QPMask@6))) (and (and (=> (= (ControlFlow 0 114) 111) anon75_Else_correct) (=> (= (ControlFlow 0 114) 97) anon76_Then_correct)) (=> (= (ControlFlow 0 114) 101) anon76_Else_correct))))))))
(let ((anon40_correct true))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 tid_8) (< tid_8 gsize))) (= (ControlFlow 0 95) 90)) anon40_correct)))
(let ((anon74_Then_correct  (=> (and (<= 0 tid_8) (< tid_8 gsize)) (and (=> (= (ControlFlow 0 91) (- 0 94)) (HasDirectPerm_16683_36765 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 91) (- 0 93)) (>= tid_8 0)) (=> (>= tid_8 0) (and (=> (= (ControlFlow 0 91) (- 0 92)) (< tid_8 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a)))) (=> (< tid_8 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a))) (=> (= (ControlFlow 0 91) 90) anon40_correct))))))))))
(let ((anon72_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= tcount gsize)) (=> (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)))) (and (=> (= (ControlFlow 0 116) (- 0 125)) (HasDirectPerm_16683_36765 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_16683_36765 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| PostMask@0) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| PostMask@0) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| PostMask@0) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| PostMask@0) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 116) (- 0 124)) (HasDirectPerm_16683_36765 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_16683_36765 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| PostMask@1) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| PostMask@1) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| PostMask@1) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| PostMask@1) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 116) (- 0 123)) (HasDirectPerm_16683_36765 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 116) (- 0 122)) (HasDirectPerm_16683_36765 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 116) (- 0 121)) (HasDirectPerm_16683_36765 QPMask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 QPMask@2 diz Ref__a) (=> (and (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 116) (- 0 120)) (HasDirectPerm_16683_36765 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_16683_36765 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 116) (- 0 119)) (HasDirectPerm_16683_36765 QPMask@2 diz Ref__b)) (=> (HasDirectPerm_16683_36765 QPMask@2 diz Ref__b) (=> (and (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 116) (- 0 118)) (HasDirectPerm_16683_36765 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 116) (- 0 117)) (HasDirectPerm_16683_36765 QPMask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 QPMask@2 diz Ref__c) (=> (and (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (and (=> (= (ControlFlow 0 116) 114) anon73_Else_correct) (=> (= (ControlFlow 0 116) 91) anon74_Then_correct)) (=> (= (ControlFlow 0 116) 95) anon74_Else_correct))))))))))))))))))))))))))))))))))
(let ((anon72_Else_correct  (and (=> (= (ControlFlow 0 71) (- 0 89)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 71) (- 0 88)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 71) (- 0 87)) (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) diz Ref__a) NoPerm)) (=> (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) diz Ref__a) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) diz Ref__a)) (= Mask@3 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) diz Ref__a (- (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) diz Ref__a) wildcard@6)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@2) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@2) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@2) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@2) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@2)))) (and (=> (= (ControlFlow 0 71) (- 0 86)) (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)) tcount)) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)) tcount) (and (=> (= (ControlFlow 0 71) (- 0 85)) (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@3) diz Ref__b) NoPerm)) (=> (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@3) diz Ref__b) NoPerm) (=> (> wildcard@7 NoPerm) (=> (and (< wildcard@7 (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@3) diz Ref__b)) (= Mask@4 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@3) diz Ref__b (- (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@3) diz Ref__b) wildcard@7)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@3) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@3) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@3) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@3) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@3)))) (and (=> (= (ControlFlow 0 71) (- 0 84)) (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)) tcount)) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)) tcount) (and (=> (= (ControlFlow 0 71) (- 0 83)) (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@4) diz Ref__c) NoPerm)) (=> (> (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@4) diz Ref__c) NoPerm) (=> (> wildcard@8 NoPerm) (=> (and (< wildcard@8 (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@4) diz Ref__c)) (= Mask@5 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@4) diz Ref__c (- (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@4) diz Ref__c) wildcard@8)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@4) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@4) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@4) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@4) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@4)))) (and (=> (= (ControlFlow 0 71) (- 0 82)) (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)) tcount)) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)) tcount) (and (=> (= (ControlFlow 0 71) (- 0 81)) (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (=> (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)) (and (=> (= (ControlFlow 0 71) (- 0 80)) (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (=> (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)) (and (=> (= (ControlFlow 0 71) (- 0 79)) (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (=> (|Seq#Equal_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)) (and (=> (= (ControlFlow 0 71) (- 0 78)) (forall ((tid_12_1 Int) (tid_12_2 Int) ) (!  (=> (and (and (and (and (not (= tid_12_1 tid_12_2)) (and (<= 0 tid_12_1) (< tid_12_1 gsize))) (and (<= 0 tid_12_2) (< tid_12_2 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_2))))
 :qid |stdinbpl.2238:17|
 :skolemid |100|
 :pattern ( (neverTriggered7 tid_12_1) (neverTriggered7 tid_12_2))
))) (=> (forall ((tid_12_1@@0 Int) (tid_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_12_1@@0 tid_12_2@@0)) (and (<= 0 tid_12_1@@0) (< tid_12_1@@0 gsize))) (and (<= 0 tid_12_2@@0) (< tid_12_2@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_2@@0))))
 :qid |stdinbpl.2238:17|
 :skolemid |100|
 :pattern ( (neverTriggered7 tid_12_1@@0) (neverTriggered7 tid_12_2@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 77)) (forall ((tid_12_1@@1 Int) ) (!  (=> (and (<= 0 tid_12_1@@1) (< tid_12_1@@1 gsize)) (>= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@5) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2245:17|
 :skolemid |101|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@1))
))) (=> (forall ((tid_12_1@@2 Int) ) (!  (=> (and (<= 0 tid_12_1@@2) (< tid_12_1@@2 gsize)) (>= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@5) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.2245:17|
 :skolemid |101|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@2))
)) (=> (forall ((tid_12_1@@3 Int) ) (!  (=> (and (and (<= 0 tid_12_1@@3) (< tid_12_1@@3 gsize)) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@3)) (= (invRecv7 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@3)) tid_12_1@@3)))
 :qid |stdinbpl.2251:22|
 :skolemid |102|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@3))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_12_1@@3))
)) (=> (and (forall ((o_4@@16 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv7 o_4@@16)) (< (invRecv7 o_4@@16) gsize)) (and (< NoPerm FullPerm) (qpRange7 o_4@@16))) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) (invRecv7 o_4@@16)) o_4@@16))
 :qid |stdinbpl.2255:22|
 :skolemid |103|
 :pattern ( (invRecv7 o_4@@16))
)) (forall ((o_4@@17 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv7 o_4@@17)) (< (invRecv7 o_4@@17) gsize)) (and (< NoPerm FullPerm) (qpRange7 o_4@@17))) (and (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) (invRecv7 o_4@@17)) o_4@@17) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@17 Ref__Integer_value) (- (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@5) o_4@@17 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv7 o_4@@17)) (< (invRecv7 o_4@@17) gsize)) (and (< NoPerm FullPerm) (qpRange7 o_4@@17)))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@17 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@5) o_4@@17 Ref__Integer_value))))
 :qid |stdinbpl.2261:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@17 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@18 T@Ref) (f_5@@11 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@5) o_4@@18 f_5@@11) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@3) o_4@@18 f_5@@11)))
 :qid |stdinbpl.2267:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@3) o_4@@18 f_5@@11))
)) (forall ((o_4@@19 T@Ref) (f_5@@12 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@5) o_4@@19 f_5@@12) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@3) o_4@@19 f_5@@12)))
 :qid |stdinbpl.2267:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@3) o_4@@19 f_5@@12))
))) (forall ((o_4@@20 T@Ref) (f_5@@13 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@5) o_4@@20 f_5@@13) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@3) o_4@@20 f_5@@13)))
 :qid |stdinbpl.2267:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@3) o_4@@20 f_5@@13))
))) (forall ((o_4@@21 T@Ref) (f_5@@14 T@Field_35964_3322) ) (!  (=> (not (= f_5@@14 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@5) o_4@@21 f_5@@14) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@21 f_5@@14)))
 :qid |stdinbpl.2267:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@21 f_5@@14))
))) (forall ((o_4@@22 T@Ref) (f_5@@15 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@5) o_4@@22 f_5@@15) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@3) o_4@@22 f_5@@15)))
 :qid |stdinbpl.2267:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@3) o_4@@22 f_5@@15))
))) (forall ((o_4@@23 T@Ref) (f_5@@16 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@5) o_4@@23 f_5@@16) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@3) o_4@@23 f_5@@16)))
 :qid |stdinbpl.2267:29|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@3) o_4@@23 f_5@@16))
))) (and (=> (= (ControlFlow 0 71) (- 0 76)) (forall ((tid_13 Int) ) (!  (=> (and (and (<= 0 tid_13) (< tid_13 gsize)) (dummyFunction_3322 (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@19) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2276:17|
 :skolemid |106|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13))
))) (=> (forall ((tid_13@@0 Int) ) (!  (=> (and (and (<= 0 tid_13@@0) (< tid_13@@0 gsize)) (dummyFunction_3322 (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@19) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2276:17|
 :skolemid |106|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@0))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 75)) (forall ((tid_13@@1 Int) (tid_13_1 Int) ) (!  (=> (and (and (and (and (not (= tid_13@@1 tid_13_1)) (and (<= 0 tid_13@@1) (< tid_13@@1 gsize))) (and (<= 0 tid_13_1) (< tid_13_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@1) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13_1))))
 :qid |stdinbpl.2283:17|
 :skolemid |107|
 :pattern ( (neverTriggered8 tid_13@@1) (neverTriggered8 tid_13_1))
))) (=> (forall ((tid_13@@2 Int) (tid_13_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_13@@2 tid_13_1@@0)) (and (<= 0 tid_13@@2) (< tid_13@@2 gsize))) (and (<= 0 tid_13_1@@0) (< tid_13_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@2) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13_1@@0))))
 :qid |stdinbpl.2283:17|
 :skolemid |107|
 :pattern ( (neverTriggered8 tid_13@@2) (neverTriggered8 tid_13_1@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 74)) (forall ((tid_13@@3 Int) ) (!  (=> (and (<= 0 tid_13@@3) (< tid_13@@3 gsize)) (>= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@3) Ref__Integer_value) (/ (to_real 1) (to_real 4))))
 :qid |stdinbpl.2290:17|
 :skolemid |108|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@3))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@3))
))) (=> (forall ((tid_13@@4 Int) ) (!  (=> (and (<= 0 tid_13@@4) (< tid_13@@4 gsize)) (>= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@4) Ref__Integer_value) (/ (to_real 1) (to_real 4))))
 :qid |stdinbpl.2290:17|
 :skolemid |108|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@4))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@4))
)) (=> (forall ((tid_13@@5 Int) ) (!  (=> (and (and (<= 0 tid_13@@5) (< tid_13@@5 gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange8 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@5)) (= (invRecv8 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@5)) tid_13@@5)))
 :qid |stdinbpl.2296:22|
 :skolemid |109|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@5))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_13@@5))
)) (=> (and (forall ((o_4@@24 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv8 o_4@@24)) (< (invRecv8 o_4@@24) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 4))) (qpRange8 o_4@@24))) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) (invRecv8 o_4@@24)) o_4@@24))
 :qid |stdinbpl.2300:22|
 :skolemid |110|
 :pattern ( (invRecv8 o_4@@24))
)) (forall ((o_4@@25 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv8 o_4@@25)) (< (invRecv8 o_4@@25) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 4))) (qpRange8 o_4@@25))) (and (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) (invRecv8 o_4@@25)) o_4@@25) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@4) o_4@@25 Ref__Integer_value) (- (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@25 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (<= 0 (invRecv8 o_4@@25)) (< (invRecv8 o_4@@25) gsize)) (and (< NoPerm (/ (to_real 1) (to_real 4))) (qpRange8 o_4@@25)))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@4) o_4@@25 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@25 Ref__Integer_value))))
 :qid |stdinbpl.2306:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@4) o_4@@25 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@26 T@Ref) (f_5@@17 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@3) o_4@@26 f_5@@17) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@4) o_4@@26 f_5@@17)))
 :qid |stdinbpl.2312:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@4) o_4@@26 f_5@@17))
)) (forall ((o_4@@27 T@Ref) (f_5@@18 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@3) o_4@@27 f_5@@18) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@4) o_4@@27 f_5@@18)))
 :qid |stdinbpl.2312:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@4) o_4@@27 f_5@@18))
))) (forall ((o_4@@28 T@Ref) (f_5@@19 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@3) o_4@@28 f_5@@19) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@4) o_4@@28 f_5@@19)))
 :qid |stdinbpl.2312:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@4) o_4@@28 f_5@@19))
))) (forall ((o_4@@29 T@Ref) (f_5@@20 T@Field_35964_3322) ) (!  (=> (not (= f_5@@20 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@3) o_4@@29 f_5@@20) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@4) o_4@@29 f_5@@20)))
 :qid |stdinbpl.2312:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@4) o_4@@29 f_5@@20))
))) (forall ((o_4@@30 T@Ref) (f_5@@21 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@3) o_4@@30 f_5@@21) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@4) o_4@@30 f_5@@21)))
 :qid |stdinbpl.2312:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@4) o_4@@30 f_5@@21))
))) (forall ((o_4@@31 T@Ref) (f_5@@22 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@3) o_4@@31 f_5@@22) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@4) o_4@@31 f_5@@22)))
 :qid |stdinbpl.2312:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@4) o_4@@31 f_5@@22))
))) (and (=> (= (ControlFlow 0 71) (- 0 73)) (forall ((tid_14 Int) ) (!  (=> (and (and (<= 0 tid_14) (< tid_14 (- gsize 1))) (dummyFunction_3322 (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@19) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2321:17|
 :skolemid |113|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14))
))) (=> (forall ((tid_14@@0 Int) ) (!  (=> (and (and (<= 0 tid_14@@0) (< tid_14@@0 (- gsize 1))) (dummyFunction_3322 (select (|PolymorphicMapType_29697_16695_3322#PolymorphicMapType_29697| Heap@@19) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@0) Ref__Integer_value))) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.2321:17|
 :skolemid |113|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@0))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@0))
)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (forall ((tid_14@@1 Int) (tid_14_1 Int) ) (!  (=> (and (and (and (and (not (= tid_14@@1 tid_14_1)) (and (<= 0 tid_14@@1) (< tid_14@@1 (- gsize 1)))) (and (<= 0 tid_14_1) (< tid_14_1 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@1) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14_1))))
 :qid |stdinbpl.2328:17|
 :skolemid |114|
 :pattern ( (neverTriggered9 tid_14@@1) (neverTriggered9 tid_14_1))
))) (=> (forall ((tid_14@@2 Int) (tid_14_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_14@@2 tid_14_1@@0)) (and (<= 0 tid_14@@2) (< tid_14@@2 (- gsize 1)))) (and (<= 0 tid_14_1@@0) (< tid_14_1@@0 (- gsize 1)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@2) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14_1@@0))))
 :qid |stdinbpl.2328:17|
 :skolemid |114|
 :pattern ( (neverTriggered9 tid_14@@2) (neverTriggered9 tid_14_1@@0))
)) (=> (= (ControlFlow 0 71) (- 0 70)) (forall ((tid_14@@3 Int) ) (!  (=> (and (<= 0 tid_14@@3) (< tid_14@@3 (- gsize 1))) (>= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@4) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@3) Ref__Integer_value) (/ (to_real 1) (to_real 4))))
 :qid |stdinbpl.2335:17|
 :skolemid |115|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@3))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_14@@3))
)))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 126) (- 0 128)) (forall ((tid_5 Int) (tid_5_1 Int) ) (!  (=> (and (and (and (and (not (= tid_5 tid_5_1)) (and (<= 0 tid_5) (< tid_5 gsize))) (and (<= 0 tid_5_1) (< tid_5_1 gsize))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5_1))))
 :qid |stdinbpl.1923:15|
 :skolemid |73|
))) (=> (forall ((tid_5@@0 Int) (tid_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_5@@0 tid_5_1@@0)) (and (<= 0 tid_5@@0) (< tid_5@@0 gsize))) (and (<= 0 tid_5_1@@0) (< tid_5_1@@0 gsize))) (< NoPerm (/ (to_real 1) (to_real 4)))) (< NoPerm (/ (to_real 1) (to_real 4)))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5_1@@0))))
 :qid |stdinbpl.1923:15|
 :skolemid |73|
)) (=> (and (forall ((tid_5@@1 Int) ) (!  (=> (and (and (<= 0 tid_5@@1) (< tid_5@@1 gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (and (qpRange3 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@1)) (= (invRecv3 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@1)) tid_5@@1)))
 :qid |stdinbpl.1929:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@1))
)) (forall ((o_4@@32 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_4@@32)) (< (invRecv3 o_4@@32) gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange3 o_4@@32)) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) (invRecv3 o_4@@32)) o_4@@32))
 :qid |stdinbpl.1933:22|
 :skolemid |75|
 :pattern ( (invRecv3 o_4@@32))
))) (and (=> (= (ControlFlow 0 126) (- 0 127)) (forall ((tid_5@@2 Int) ) (!  (=> (and (<= 0 tid_5@@2) (< tid_5@@2 gsize)) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.1939:15|
 :skolemid |76|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@2))
))) (=> (forall ((tid_5@@3 Int) ) (!  (=> (and (<= 0 tid_5@@3) (< tid_5@@3 gsize)) (>= (/ (to_real 1) (to_real 4)) NoPerm))
 :qid |stdinbpl.1939:15|
 :skolemid |76|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@3))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@3))
)) (=> (and (forall ((tid_5@@4 Int) ) (!  (=> (and (and (<= 0 tid_5@@4) (< tid_5@@4 gsize)) (> (/ (to_real 1) (to_real 4)) NoPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@4) null)))
 :qid |stdinbpl.1945:22|
 :skolemid |77|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@4))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) tid_5@@4))
)) (forall ((o_4@@33 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_4@@33)) (< (invRecv3 o_4@@33) gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange3 o_4@@33)) (and (=> (< NoPerm (/ (to_real 1) (to_real 4))) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) (invRecv3 o_4@@33)) o_4@@33)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@2) o_4@@33 Ref__Integer_value) (+ (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@33 Ref__Integer_value) (/ (to_real 1) (to_real 4)))))) (=> (not (and (and (and (<= 0 (invRecv3 o_4@@33)) (< (invRecv3 o_4@@33) gsize)) (< NoPerm (/ (to_real 1) (to_real 4)))) (qpRange3 o_4@@33))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@2) o_4@@33 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@33 Ref__Integer_value))))
 :qid |stdinbpl.1951:22|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@2) o_4@@33 Ref__Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@34 T@Ref) (f_5@@23 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@1) o_4@@34 f_5@@23) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@2) o_4@@34 f_5@@23)))
 :qid |stdinbpl.1955:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@1) o_4@@34 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@2) o_4@@34 f_5@@23))
)) (forall ((o_4@@35 T@Ref) (f_5@@24 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@1) o_4@@35 f_5@@24) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@2) o_4@@35 f_5@@24)))
 :qid |stdinbpl.1955:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@1) o_4@@35 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@2) o_4@@35 f_5@@24))
))) (forall ((o_4@@36 T@Ref) (f_5@@25 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@1) o_4@@36 f_5@@25) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) o_4@@36 f_5@@25)))
 :qid |stdinbpl.1955:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@1) o_4@@36 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@2) o_4@@36 f_5@@25))
))) (forall ((o_4@@37 T@Ref) (f_5@@26 T@Field_35964_3322) ) (!  (=> (not (= f_5@@26 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@37 f_5@@26) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@2) o_4@@37 f_5@@26)))
 :qid |stdinbpl.1955:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@37 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@2) o_4@@37 f_5@@26))
))) (forall ((o_4@@38 T@Ref) (f_5@@27 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@1) o_4@@38 f_5@@27) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@2) o_4@@38 f_5@@27)))
 :qid |stdinbpl.1955:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@1) o_4@@38 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@2) o_4@@38 f_5@@27))
))) (forall ((o_4@@39 T@Ref) (f_5@@28 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@1) o_4@@39 f_5@@28) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@2) o_4@@39 f_5@@28)))
 :qid |stdinbpl.1955:29|
 :skolemid |79|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@1) o_4@@39 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@2) o_4@@39 f_5@@28))
))) (and (state Heap@@19 QPMask@2) (state Heap@@19 QPMask@2))) (and (=> (= (ControlFlow 0 126) 116) anon72_Then_correct) (=> (= (ControlFlow 0 126) 71) anon72_Else_correct)))))))))))
(let ((anon35_correct true))
(let ((anon71_Else_correct  (=> (and (not (and (<= 0 tid_6) (< tid_6 gsize))) (= (ControlFlow 0 69) 64)) anon35_correct)))
(let ((anon71_Then_correct  (=> (and (<= 0 tid_6) (< tid_6 gsize)) (and (=> (= (ControlFlow 0 65) (- 0 68)) (HasDirectPerm_16683_36765 QPMask@1 diz Ref__c)) (=> (HasDirectPerm_16683_36765 QPMask@1 diz Ref__c) (and (=> (= (ControlFlow 0 65) (- 0 67)) (>= tid_6 0)) (=> (>= tid_6 0) (and (=> (= (ControlFlow 0 65) (- 0 66)) (< tid_6 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)))) (=> (< tid_6 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (=> (= (ControlFlow 0 65) 64) anon35_correct))))))))))
(let ((anon68_Else_correct  (and (=> (= (ControlFlow 0 129) (- 0 130)) (forall ((tid_3 Int) (tid_3_1 Int) ) (!  (=> (and (and (and (and (not (= tid_3 tid_3_1)) (and (<= 0 tid_3) (< tid_3 gsize))) (and (<= 0 tid_3_1) (< tid_3_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3_1))))
 :qid |stdinbpl.1875:15|
 :skolemid |67|
))) (=> (forall ((tid_3@@0 Int) (tid_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_3@@0 tid_3_1@@0)) (and (<= 0 tid_3@@0) (< tid_3@@0 gsize))) (and (<= 0 tid_3_1@@0) (< tid_3_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3_1@@0))))
 :qid |stdinbpl.1875:15|
 :skolemid |67|
)) (=> (and (and (forall ((tid_3@@1 Int) ) (!  (=> (and (and (<= 0 tid_3@@1) (< tid_3@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@1)) (= (invRecv2 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@1)) tid_3@@1)))
 :qid |stdinbpl.1881:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@1))
)) (forall ((o_4@@40 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4@@40)) (< (invRecv2 o_4@@40) gsize)) (< NoPerm FullPerm)) (qpRange2 o_4@@40)) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) (invRecv2 o_4@@40)) o_4@@40))
 :qid |stdinbpl.1885:22|
 :skolemid |69|
 :pattern ( (invRecv2 o_4@@40))
))) (and (forall ((tid_3@@2 Int) ) (!  (=> (and (<= 0 tid_3@@2) (< tid_3@@2 gsize)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@2) null)))
 :qid |stdinbpl.1891:22|
 :skolemid |70|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) tid_3@@2))
)) (forall ((o_4@@41 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@41)) (< (invRecv2 o_4@@41) gsize)) (< NoPerm FullPerm)) (qpRange2 o_4@@41)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) (invRecv2 o_4@@41)) o_4@@41)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@41 Ref__Integer_value) (+ (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@41 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@41)) (< (invRecv2 o_4@@41) gsize)) (< NoPerm FullPerm)) (qpRange2 o_4@@41))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@41 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@41 Ref__Integer_value))))
 :qid |stdinbpl.1897:22|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@41 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@42 T@Ref) (f_5@@29 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@0) o_4@@42 f_5@@29) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@1) o_4@@42 f_5@@29)))
 :qid |stdinbpl.1901:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@0) o_4@@42 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@1) o_4@@42 f_5@@29))
)) (forall ((o_4@@43 T@Ref) (f_5@@30 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@0) o_4@@43 f_5@@30) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@1) o_4@@43 f_5@@30)))
 :qid |stdinbpl.1901:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@0) o_4@@43 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@1) o_4@@43 f_5@@30))
))) (forall ((o_4@@44 T@Ref) (f_5@@31 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@0) o_4@@44 f_5@@31) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@1) o_4@@44 f_5@@31)))
 :qid |stdinbpl.1901:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@0) o_4@@44 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@1) o_4@@44 f_5@@31))
))) (forall ((o_4@@45 T@Ref) (f_5@@32 T@Field_35964_3322) ) (!  (=> (not (= f_5@@32 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@45 f_5@@32) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@45 f_5@@32)))
 :qid |stdinbpl.1901:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@45 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@1) o_4@@45 f_5@@32))
))) (forall ((o_4@@46 T@Ref) (f_5@@33 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@0) o_4@@46 f_5@@33) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@1) o_4@@46 f_5@@33)))
 :qid |stdinbpl.1901:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@0) o_4@@46 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@1) o_4@@46 f_5@@33))
))) (forall ((o_4@@47 T@Ref) (f_5@@34 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@0) o_4@@47 f_5@@34) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@1) o_4@@47 f_5@@34)))
 :qid |stdinbpl.1901:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@0) o_4@@47 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@1) o_4@@47 f_5@@34))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (and (=> (= (ControlFlow 0 129) 126) anon70_Else_correct) (=> (= (ControlFlow 0 129) 65) anon71_Then_correct)) (=> (= (ControlFlow 0 129) 69) anon71_Else_correct))))))))
(let ((anon31_correct true))
(let ((anon69_Else_correct  (=> (and (not (and (<= 0 tid_4) (< tid_4 gsize))) (= (ControlFlow 0 63) 58)) anon31_correct)))
(let ((anon69_Then_correct  (=> (and (<= 0 tid_4) (< tid_4 gsize)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (HasDirectPerm_16683_36765 QPMask@0 diz Ref__b)) (=> (HasDirectPerm_16683_36765 QPMask@0 diz Ref__b) (and (=> (= (ControlFlow 0 59) (- 0 61)) (>= tid_4 0)) (=> (>= tid_4 0) (and (=> (= (ControlFlow 0 59) (- 0 60)) (< tid_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)))) (=> (< tid_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (=> (= (ControlFlow 0 59) 58) anon31_correct))))))))))
(let ((anon66_Else_correct  (and (=> (= (ControlFlow 0 131) (- 0 132)) (forall ((tid_1 Int) (tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= tid_1 tid_1_1)) (and (<= 0 tid_1) (< tid_1 gsize))) (and (<= 0 tid_1_1) (< tid_1_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1_1))))
 :qid |stdinbpl.1827:15|
 :skolemid |61|
))) (=> (forall ((tid_1@@0 Int) (tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_1@@0 tid_1_1@@0)) (and (<= 0 tid_1@@0) (< tid_1@@0 gsize))) (and (<= 0 tid_1_1@@0) (< tid_1_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@0) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1_1@@0))))
 :qid |stdinbpl.1827:15|
 :skolemid |61|
)) (=> (and (and (forall ((tid_1@@1 Int) ) (!  (=> (and (and (<= 0 tid_1@@1) (< tid_1@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@1)) (= (invRecv1 (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@1)) tid_1@@1)))
 :qid |stdinbpl.1833:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@1))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@1))
)) (forall ((o_4@@48 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@48)) (< (invRecv1 o_4@@48) gsize)) (< NoPerm FullPerm)) (qpRange1 o_4@@48)) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) (invRecv1 o_4@@48)) o_4@@48))
 :qid |stdinbpl.1837:22|
 :skolemid |63|
 :pattern ( (invRecv1 o_4@@48))
))) (and (forall ((tid_1@@2 Int) ) (!  (=> (and (<= 0 tid_1@@2) (< tid_1@@2 gsize)) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@2) null)))
 :qid |stdinbpl.1843:22|
 :skolemid |64|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@2))
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) tid_1@@2))
)) (forall ((o_4@@49 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) gsize)) (< NoPerm FullPerm)) (qpRange1 o_4@@49)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) (invRecv1 o_4@@49)) o_4@@49)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@49 Ref__Integer_value) (+ (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@2) o_4@@49 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@49)) (< (invRecv1 o_4@@49) gsize)) (< NoPerm FullPerm)) (qpRange1 o_4@@49))) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@49 Ref__Integer_value) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@2) o_4@@49 Ref__Integer_value))))
 :qid |stdinbpl.1849:22|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@49 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@50 T@Ref) (f_5@@35 T@Field_29757_53) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@2) o_4@@50 f_5@@35) (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@0) o_4@@50 f_5@@35)))
 :qid |stdinbpl.1853:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@2) o_4@@50 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| QPMask@0) o_4@@50 f_5@@35))
)) (forall ((o_4@@51 T@Ref) (f_5@@36 T@Field_29770_29771) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@2) o_4@@51 f_5@@36) (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@0) o_4@@51 f_5@@36)))
 :qid |stdinbpl.1853:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@2) o_4@@51 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| QPMask@0) o_4@@51 f_5@@36))
))) (forall ((o_4@@52 T@Ref) (f_5@@37 T@Field_35800_35805) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@2) o_4@@52 f_5@@37) (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@0) o_4@@52 f_5@@37)))
 :qid |stdinbpl.1853:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@2) o_4@@52 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| QPMask@0) o_4@@52 f_5@@37))
))) (forall ((o_4@@53 T@Ref) (f_5@@38 T@Field_35964_3322) ) (!  (=> (not (= f_5@@38 Ref__Integer_value)) (= (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@2) o_4@@53 f_5@@38) (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@53 f_5@@38)))
 :qid |stdinbpl.1853:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@2) o_4@@53 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| QPMask@0) o_4@@53 f_5@@38))
))) (forall ((o_4@@54 T@Ref) (f_5@@39 T@Field_16683_99111) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@2) o_4@@54 f_5@@39) (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@0) o_4@@54 f_5@@39)))
 :qid |stdinbpl.1853:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@2) o_4@@54 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| QPMask@0) o_4@@54 f_5@@39))
))) (forall ((o_4@@55 T@Ref) (f_5@@40 T@Field_16683_99244) ) (!  (=> true (= (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@2) o_4@@55 f_5@@40) (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@0) o_4@@55 f_5@@40)))
 :qid |stdinbpl.1853:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@2) o_4@@55 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| QPMask@0) o_4@@55 f_5@@40))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 131) 129) anon68_Else_correct) (=> (= (ControlFlow 0 131) 59) anon69_Then_correct)) (=> (= (ControlFlow 0 131) 63) anon69_Else_correct))))))))
(let ((anon27_correct true))
(let ((anon67_Else_correct  (=> (and (not (and (<= 0 tid_2) (< tid_2 gsize))) (= (ControlFlow 0 57) 52)) anon27_correct)))
(let ((anon67_Then_correct  (=> (and (<= 0 tid_2) (< tid_2 gsize)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 53) (- 0 55)) (>= tid_2 0)) (=> (>= tid_2 0) (and (=> (= (ControlFlow 0 53) (- 0 54)) (< tid_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)))) (=> (< tid_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (=> (= (ControlFlow 0 53) 52) anon27_correct))))))))))
(let ((anon61_Else_correct  (=> (and (forall ((i_5 Int) (j_5_1 Int) ) (!  (=> (and (>= i_5 0) (and (< i_5 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (and (>= j_5_1 0) (and (< j_5_1 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (not (= i_5 j_5_1)))))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) i_5) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) j_5_1))))
 :qid |stdinbpl.1807:20|
 :skolemid |60|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) i_5) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c) j_5_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 133) 131) anon66_Else_correct) (=> (= (ControlFlow 0 133) 53) anon67_Then_correct)) (=> (= (ControlFlow 0 133) 57) anon67_Else_correct)))))
(let ((anon23_correct true))
(let ((anon65_Else_correct  (=> (and (not (and (>= i_4 0) (and (< i_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (and (>= j_6 0) (and (< j_6 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (not (= i_4 j_6))))))) (= (ControlFlow 0 43) 35)) anon23_correct)))
(let ((anon65_Then_correct  (=> (and (>= i_4 0) (and (< i_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (and (>= j_6 0) (and (< j_6 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (not (= i_4 j_6)))))) (and (=> (= (ControlFlow 0 36) (- 0 42)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 36) (- 0 41)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 36) (- 0 40)) (< i_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)))) (=> (< i_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 36) (- 0 39)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 36) (- 0 38)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 36) (- 0 37)) (< j_6 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)))) (=> (< j_6 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (=> (= (ControlFlow 0 36) 35) anon23_correct))))))))))))))))
(let ((anon64_Else_correct  (=> (> 0 j_6) (and (=> (= (ControlFlow 0 48) 36) anon65_Then_correct) (=> (= (ControlFlow 0 48) 43) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (>= j_6 0) (and (=> (= (ControlFlow 0 46) (- 0 47)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 46) 36) anon65_Then_correct) (=> (= (ControlFlow 0 46) 43) anon65_Else_correct)))))))
(let ((anon63_Then_correct  (=> (< i_4 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 49) 46) anon64_Then_correct) (=> (= (ControlFlow 0 49) 48) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (<= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)) i_4) (and (=> (= (ControlFlow 0 45) 36) anon65_Then_correct) (=> (= (ControlFlow 0 45) 43) anon65_Else_correct)))))
(let ((anon62_Then_correct  (=> (>= i_4 0) (and (=> (= (ControlFlow 0 50) (- 0 51)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__c) (and (=> (= (ControlFlow 0 50) 49) anon63_Then_correct) (=> (= (ControlFlow 0 50) 45) anon63_Else_correct)))))))
(let ((anon62_Else_correct  (=> (> 0 i_4) (and (=> (= (ControlFlow 0 44) 36) anon65_Then_correct) (=> (= (ControlFlow 0 44) 43) anon65_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (forall ((i_3 Int) (j_3_1 Int) ) (!  (=> (and (>= i_3 0) (and (< i_3 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (and (>= j_3_1 0) (and (< j_3_1 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (not (= i_3 j_3_1)))))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) i_3) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) j_3_1))))
 :qid |stdinbpl.1773:20|
 :skolemid |59|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) i_3) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b) j_3_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 134) 133) anon61_Else_correct) (=> (= (ControlFlow 0 134) 50) anon62_Then_correct)) (=> (= (ControlFlow 0 134) 44) anon62_Else_correct)))))
(let ((anon15_correct true))
(let ((anon60_Else_correct  (=> (and (not (and (>= i_2 0) (and (< i_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (not (= i_2 j@@8))))))) (= (ControlFlow 0 26) 18)) anon15_correct)))
(let ((anon60_Then_correct  (=> (and (>= i_2 0) (and (< i_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (and (>= j@@8 0) (and (< j@@8 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (not (= i_2 j@@8)))))) (and (=> (= (ControlFlow 0 19) (- 0 25)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__b)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 19) (- 0 24)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 19) (- 0 23)) (< i_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)))) (=> (< i_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__b)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= j@@8 0)) (=> (>= j@@8 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< j@@8 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)))) (=> (< j@@8 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))))))))))))
(let ((anon59_Else_correct  (=> (> 0 j@@8) (and (=> (= (ControlFlow 0 31) 19) anon60_Then_correct) (=> (= (ControlFlow 0 31) 26) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (>= j@@8 0) (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__b)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 29) 19) anon60_Then_correct) (=> (= (ControlFlow 0 29) 26) anon60_Else_correct)))))))
(let ((anon58_Then_correct  (=> (< i_2 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 32) 29) anon59_Then_correct) (=> (= (ControlFlow 0 32) 31) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (<= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)) i_2) (and (=> (= (ControlFlow 0 28) 19) anon60_Then_correct) (=> (= (ControlFlow 0 28) 26) anon60_Else_correct)))))
(let ((anon57_Then_correct  (=> (>= i_2 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__b)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__b) (and (=> (= (ControlFlow 0 33) 32) anon58_Then_correct) (=> (= (ControlFlow 0 33) 28) anon58_Else_correct)))))))
(let ((anon57_Else_correct  (=> (> 0 i_2) (and (=> (= (ControlFlow 0 27) 19) anon60_Then_correct) (=> (= (ControlFlow 0 27) 26) anon60_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (not (= i_1 j_1)))))) (not (= (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) i_1) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) j_1))))
 :qid |stdinbpl.1739:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) i_1) (|Seq#Index_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a) j_1))
)) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 135) 134) anon56_Else_correct) (=> (= (ControlFlow 0 135) 33) anon57_Then_correct)) (=> (= (ControlFlow 0 135) 27) anon57_Else_correct)))))
(let ((anon7_correct true))
(let ((anon55_Else_correct  (=> (and (not (and (>= i_14 0) (and (< i_14 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (not (= i_14 j_5))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon55_Then_correct  (=> (and (>= i_14 0) (and (< i_14 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_14 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)))) (=> (< i_14 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)))) (=> (< j_5 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon54_Else_correct  (=> (> 0 j_5) (and (=> (= (ControlFlow 0 14) 2) anon55_Then_correct) (=> (= (ControlFlow 0 14) 9) anon55_Else_correct)))))
(let ((anon54_Then_correct  (=> (>= j_5 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 12) 2) anon55_Then_correct) (=> (= (ControlFlow 0 12) 9) anon55_Else_correct)))))))
(let ((anon53_Then_correct  (=> (< i_14 (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a))) (and (=> (= (ControlFlow 0 15) 12) anon54_Then_correct) (=> (= (ControlFlow 0 15) 14) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (<= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)) i_14) (and (=> (= (ControlFlow 0 11) 2) anon55_Then_correct) (=> (= (ControlFlow 0 11) 9) anon55_Else_correct)))))
(let ((anon52_Then_correct  (=> (>= i_14 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__a)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 16) 15) anon53_Then_correct) (=> (= (ControlFlow 0 16) 11) anon53_Else_correct)))))))
(let ((anon52_Else_correct  (=> (> 0 i_14) (and (=> (= (ControlFlow 0 10) 2) anon55_Then_correct) (=> (= (ControlFlow 0 10) 9) anon55_Else_correct)))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_29697_16471_53#PolymorphicMapType_29697| Heap@@19) diz $allocated) (not (= diz null)))) (and (and (state Heap@@19 ZeroMask) (>= current_thread_id 0)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| ZeroMask) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 136) (- 0 139)) (HasDirectPerm_16683_36765 Mask@0 diz Ref__a)) (=> (HasDirectPerm_16683_36765 Mask@0 diz Ref__a) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@0) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@0) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@0) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@0) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 136) (- 0 138)) (HasDirectPerm_16683_36765 Mask@1 diz Ref__b)) (=> (HasDirectPerm_16683_36765 Mask@1 diz Ref__b) (=> (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_29718 (store (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_29718_16683_36613#PolymorphicMapType_29718| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_29718_16695_3322#PolymorphicMapType_29718| Mask@1) (|PolymorphicMapType_29718_16683_53#PolymorphicMapType_29718| Mask@1) (|PolymorphicMapType_29718_16683_29771#PolymorphicMapType_29718| Mask@1) (|PolymorphicMapType_29718_16683_99111#PolymorphicMapType_29718| Mask@1) (|PolymorphicMapType_29718_16683_103938#PolymorphicMapType_29718| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 136) (- 0 137)) (HasDirectPerm_16683_36765 Mask@2 diz Ref__c)) (=> (HasDirectPerm_16683_36765 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_16684| (select (|PolymorphicMapType_29697_16683_36832#PolymorphicMapType_29697| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (and (=> (= (ControlFlow 0 136) 135) anon51_Else_correct) (=> (= (ControlFlow 0 136) 16) anon52_Then_correct)) (=> (= (ControlFlow 0 136) 10) anon52_Else_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 140) 136)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
