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
(declare-sort T@Field_18565_53 0)
(declare-sort T@Field_18578_18579 0)
(declare-sort T@Field_12452_51770 0)
(declare-sort T@Field_12452_51637 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_18526 0)) (((PolymorphicMapType_18526 (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| (Array T@Ref T@Field_18578_18579 Real)) (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| (Array T@Ref T@Field_18565_53 Real)) (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| (Array T@Ref T@Field_12452_51637 Real)) (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| (Array T@Ref T@Field_12452_51770 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19054 0)) (((PolymorphicMapType_19054 (|PolymorphicMapType_19054_18565_53#PolymorphicMapType_19054| (Array T@Ref T@Field_18565_53 Bool)) (|PolymorphicMapType_19054_18565_18579#PolymorphicMapType_19054| (Array T@Ref T@Field_18578_18579 Bool)) (|PolymorphicMapType_19054_18565_51637#PolymorphicMapType_19054| (Array T@Ref T@Field_12452_51637 Bool)) (|PolymorphicMapType_19054_18565_52750#PolymorphicMapType_19054| (Array T@Ref T@Field_12452_51770 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18505 0)) (((PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| (Array T@Ref T@Field_18565_53 Bool)) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| (Array T@Ref T@Field_18578_18579 T@Ref)) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| (Array T@Ref T@Field_12452_51770 T@PolymorphicMapType_19054)) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| (Array T@Ref T@Field_12452_51637 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_18565_53)
(declare-fun bool_prop () T@Field_18565_53)
(declare-fun item () T@Field_18578_18579)
(declare-sort T@Seq_45972 0)
(declare-fun |Seq#Length_12796| (T@Seq_45972) Int)
(declare-fun |Seq#Drop_12796| (T@Seq_45972 Int) T@Seq_45972)
(declare-sort T@Seq_3224 0)
(declare-fun |Seq#Length_3224| (T@Seq_3224) Int)
(declare-fun |Seq#Drop_3224| (T@Seq_3224 Int) T@Seq_3224)
(declare-fun succHeap (T@PolymorphicMapType_18505 T@PolymorphicMapType_18505) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18505 T@PolymorphicMapType_18505) Bool)
(declare-fun state (T@PolymorphicMapType_18505 T@PolymorphicMapType_18526) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18526) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19054)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_12796| (T@Seq_45972 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3224| (T@Seq_3224 Int) Int)
(declare-fun |Seq#Empty_12796| () T@Seq_45972)
(declare-fun |Seq#Empty_3224| () T@Seq_3224)
(declare-fun |Seq#Update_12796| (T@Seq_45972 Int T@Ref) T@Seq_45972)
(declare-fun |Seq#Update_3224| (T@Seq_3224 Int Int) T@Seq_3224)
(declare-fun |Seq#Take_12796| (T@Seq_45972 Int) T@Seq_45972)
(declare-fun |Seq#Take_3224| (T@Seq_3224 Int) T@Seq_3224)
(declare-fun |Seq#Contains_3224| (T@Seq_3224 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3224)
(declare-fun |Seq#Contains_45972| (T@Seq_45972 T@Ref) Bool)
(declare-fun |Seq#Skolem_45972| (T@Seq_45972 T@Ref) Int)
(declare-fun |Seq#Skolem_3224| (T@Seq_3224 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18505 T@PolymorphicMapType_18505 T@PolymorphicMapType_18526) Bool)
(declare-fun IsPredicateField_12452_51728 (T@Field_12452_51637) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12452 (T@Field_12452_51637) T@Field_12452_51770)
(declare-fun HasDirectPerm_12452_51701 (T@PolymorphicMapType_18526 T@Ref T@Field_12452_51637) Bool)
(declare-fun IsWandField_12452_53277 (T@Field_12452_51637) Bool)
(declare-fun WandMaskField_12452 (T@Field_12452_51637) T@Field_12452_51770)
(declare-fun |Seq#Singleton_12796| (T@Ref) T@Seq_45972)
(declare-fun |Seq#Singleton_3224| (Int) T@Seq_3224)
(declare-fun |Seq#Append_45972| (T@Seq_45972 T@Seq_45972) T@Seq_45972)
(declare-fun |Seq#Append_3224| (T@Seq_3224 T@Seq_3224) T@Seq_3224)
(declare-fun dummyHeap () T@PolymorphicMapType_18505)
(declare-fun ZeroMask () T@PolymorphicMapType_18526)
(declare-fun InsidePredicate_18565_18565 (T@Field_12452_51637 T@FrameType T@Field_12452_51637 T@FrameType) Bool)
(declare-fun IsPredicateField_12450_5376 (T@Field_18565_53) Bool)
(declare-fun IsWandField_12450_5376 (T@Field_18565_53) Bool)
(declare-fun IsPredicateField_12452_12453 (T@Field_18578_18579) Bool)
(declare-fun IsWandField_12452_12453 (T@Field_18578_18579) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12452_56185 (T@Field_12452_51770) Bool)
(declare-fun IsWandField_12452_56201 (T@Field_12452_51770) Bool)
(declare-fun FullPerm () Real)
(declare-fun HasDirectPerm_12452_56556 (T@PolymorphicMapType_18526 T@Ref T@Field_12452_51770) Bool)
(declare-fun HasDirectPerm_12452_53 (T@PolymorphicMapType_18526 T@Ref T@Field_18565_53) Bool)
(declare-fun HasDirectPerm_12452_12453 (T@PolymorphicMapType_18526 T@Ref T@Field_18578_18579) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18526 T@PolymorphicMapType_18526 T@PolymorphicMapType_18526) Bool)
(declare-fun |Seq#Equal_45972| (T@Seq_45972 T@Seq_45972) Bool)
(declare-fun |Seq#Equal_3224| (T@Seq_3224 T@Seq_3224) Bool)
(declare-fun id_3_12518 (T@Ref) T@Ref)
(declare-fun |Seq#ContainsTrigger_12796| (T@Seq_45972 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3224| (T@Seq_3224 Int) Bool)
(declare-fun |Seq#SkolemDiff_45972| (T@Seq_45972 T@Seq_45972) Int)
(declare-fun |Seq#SkolemDiff_3224| (T@Seq_3224 T@Seq_3224) Int)
(assert (distinct $allocated bool_prop)
)
(assert (forall ((s T@Seq_45972) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12796| s)) (= (|Seq#Length_12796| (|Seq#Drop_12796| s n)) (- (|Seq#Length_12796| s) n))) (=> (< (|Seq#Length_12796| s) n) (= (|Seq#Length_12796| (|Seq#Drop_12796| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12796| (|Seq#Drop_12796| s n)) (|Seq#Length_12796| s))))
 :qid |stdinbpl.330:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12796| (|Seq#Drop_12796| s n)))
 :pattern ( (|Seq#Length_12796| s) (|Seq#Drop_12796| s n))
)))
(assert (forall ((s@@0 T@Seq_3224) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3224| s@@0)) (= (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)) (- (|Seq#Length_3224| s@@0) n@@0))) (=> (< (|Seq#Length_3224| s@@0) n@@0) (= (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)) (|Seq#Length_3224| s@@0))))
 :qid |stdinbpl.330:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3224| (|Seq#Drop_3224| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3224| s@@0) (|Seq#Drop_3224| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_18505) (Heap1 T@PolymorphicMapType_18505) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18505) (Mask T@PolymorphicMapType_18526) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18505) (Heap1@@0 T@PolymorphicMapType_18505) (Heap2 T@PolymorphicMapType_18505) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12452_51770) ) (!  (not (select (|PolymorphicMapType_19054_18565_52750#PolymorphicMapType_19054| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19054_18565_52750#PolymorphicMapType_19054| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12452_51637) ) (!  (not (select (|PolymorphicMapType_19054_18565_51637#PolymorphicMapType_19054| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19054_18565_51637#PolymorphicMapType_19054| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18578_18579) ) (!  (not (select (|PolymorphicMapType_19054_18565_18579#PolymorphicMapType_19054| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19054_18565_18579#PolymorphicMapType_19054| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_18565_53) ) (!  (not (select (|PolymorphicMapType_19054_18565_53#PolymorphicMapType_19054| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19054_18565_53#PolymorphicMapType_19054| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.694:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_45972) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12796| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12796| (|Seq#Drop_12796| s@@1 n@@1) j) (|Seq#Index_12796| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.351:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12796| (|Seq#Drop_12796| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3224) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3224| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3224| (|Seq#Drop_3224| s@@2 n@@2) j@@0) (|Seq#Index_3224| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.351:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3224| (|Seq#Drop_3224| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_12796| |Seq#Empty_12796|) 0))
(assert (= (|Seq#Length_3224| |Seq#Empty_3224|) 0))
(assert (forall ((s@@3 T@Seq_45972) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12796| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_12796| (|Seq#Update_12796| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_12796| (|Seq#Update_12796| s@@3 i v) n@@3) (|Seq#Index_12796| s@@3 n@@3)))))
 :qid |stdinbpl.306:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12796| (|Seq#Update_12796| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_12796| s@@3 n@@3) (|Seq#Update_12796| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3224) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3224| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3224| (|Seq#Update_3224| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3224| (|Seq#Update_3224| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3224| s@@4 n@@4)))))
 :qid |stdinbpl.306:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3224| (|Seq#Update_3224| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3224| s@@4 n@@4) (|Seq#Update_3224| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_45972) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12796| s@@5)) (= (|Seq#Length_12796| (|Seq#Take_12796| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12796| s@@5) n@@5) (= (|Seq#Length_12796| (|Seq#Take_12796| s@@5 n@@5)) (|Seq#Length_12796| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12796| (|Seq#Take_12796| s@@5 n@@5)) 0)))
 :qid |stdinbpl.317:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12796| (|Seq#Take_12796| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12796| s@@5 n@@5) (|Seq#Length_12796| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3224) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3224| s@@6)) (= (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3224| s@@6) n@@6) (= (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)) (|Seq#Length_3224| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)) 0)))
 :qid |stdinbpl.317:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3224| (|Seq#Take_3224| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3224| s@@6 n@@6) (|Seq#Length_3224| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3224| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.591:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3224| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_45972) (x T@Ref) ) (!  (=> (|Seq#Contains_45972| s@@7 x) (and (and (<= 0 (|Seq#Skolem_45972| s@@7 x)) (< (|Seq#Skolem_45972| s@@7 x) (|Seq#Length_12796| s@@7))) (= (|Seq#Index_12796| s@@7 (|Seq#Skolem_45972| s@@7 x)) x)))
 :qid |stdinbpl.449:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_45972| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3224) (x@@0 Int) ) (!  (=> (|Seq#Contains_3224| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3224| s@@8 x@@0)) (< (|Seq#Skolem_3224| s@@8 x@@0) (|Seq#Length_3224| s@@8))) (= (|Seq#Index_3224| s@@8 (|Seq#Skolem_3224| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.449:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3224| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_45972) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12796| s@@9 n@@7) s@@9))
 :qid |stdinbpl.433:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12796| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3224) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3224| s@@10 n@@8) s@@10))
 :qid |stdinbpl.433:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3224| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.286:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.284:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.697:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18505) (ExhaleHeap T@PolymorphicMapType_18505) (Mask@@0 T@PolymorphicMapType_18526) (pm_f_38 T@Field_12452_51637) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12452_51701 Mask@@0 null pm_f_38) (IsPredicateField_12452_51728 pm_f_38)) (= (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@0) null (PredicateMaskField_12452 pm_f_38)) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap) null (PredicateMaskField_12452 pm_f_38)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12452_51728 pm_f_38) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap) null (PredicateMaskField_12452 pm_f_38)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18505) (ExhaleHeap@@0 T@PolymorphicMapType_18505) (Mask@@1 T@PolymorphicMapType_18526) (pm_f_38@@0 T@Field_12452_51637) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12452_51701 Mask@@1 null pm_f_38@@0) (IsWandField_12452_53277 pm_f_38@@0)) (= (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@1) null (WandMaskField_12452 pm_f_38@@0)) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@0) null (WandMaskField_12452 pm_f_38@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12452_53277 pm_f_38@@0) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@0) null (WandMaskField_12452 pm_f_38@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_45972| (|Seq#Singleton_12796| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.574:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_45972| (|Seq#Singleton_12796| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3224| (|Seq#Singleton_3224| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.574:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3224| (|Seq#Singleton_3224| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_45972) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12796| s@@11))) (= (|Seq#Index_12796| (|Seq#Take_12796| s@@11 n@@9) j@@3) (|Seq#Index_12796| s@@11 j@@3)))
 :qid |stdinbpl.325:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12796| (|Seq#Take_12796| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12796| s@@11 j@@3) (|Seq#Take_12796| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3224) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3224| s@@12))) (= (|Seq#Index_3224| (|Seq#Take_3224| s@@12 n@@10) j@@4) (|Seq#Index_3224| s@@12 j@@4)))
 :qid |stdinbpl.325:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3224| (|Seq#Take_3224| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3224| s@@12 j@@4) (|Seq#Take_3224| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_45972) (t T@Seq_45972) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12796| s@@13))) (< n@@11 (|Seq#Length_12796| (|Seq#Append_45972| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12796| s@@13)) (|Seq#Length_12796| s@@13)) n@@11) (= (|Seq#Take_12796| (|Seq#Append_45972| s@@13 t) n@@11) (|Seq#Append_45972| s@@13 (|Seq#Take_12796| t (|Seq#Sub| n@@11 (|Seq#Length_12796| s@@13)))))))
 :qid |stdinbpl.410:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12796| (|Seq#Append_45972| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3224) (t@@0 T@Seq_3224) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3224| s@@14))) (< n@@12 (|Seq#Length_3224| (|Seq#Append_3224| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3224| s@@14)) (|Seq#Length_3224| s@@14)) n@@12) (= (|Seq#Take_3224| (|Seq#Append_3224| s@@14 t@@0) n@@12) (|Seq#Append_3224| s@@14 (|Seq#Take_3224| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3224| s@@14)))))))
 :qid |stdinbpl.410:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3224| (|Seq#Append_3224| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18505) (ExhaleHeap@@1 T@PolymorphicMapType_18505) (Mask@@2 T@PolymorphicMapType_18526) (pm_f_38@@1 T@Field_12452_51637) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12452_51701 Mask@@2 null pm_f_38@@1) (IsPredicateField_12452_51728 pm_f_38@@1)) (and (and (and (forall ((o2_38 T@Ref) (f_70 T@Field_18565_53) ) (!  (=> (select (|PolymorphicMapType_19054_18565_53#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@2) null (PredicateMaskField_12452 pm_f_38@@1))) o2_38 f_70) (= (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@2) o2_38 f_70) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38 f_70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38 f_70))
)) (forall ((o2_38@@0 T@Ref) (f_70@@0 T@Field_18578_18579) ) (!  (=> (select (|PolymorphicMapType_19054_18565_18579#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@2) null (PredicateMaskField_12452 pm_f_38@@1))) o2_38@@0 f_70@@0) (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@2) o2_38@@0 f_70@@0) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38@@0 f_70@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38@@0 f_70@@0))
))) (forall ((o2_38@@1 T@Ref) (f_70@@1 T@Field_12452_51637) ) (!  (=> (select (|PolymorphicMapType_19054_18565_51637#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@2) null (PredicateMaskField_12452 pm_f_38@@1))) o2_38@@1 f_70@@1) (= (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@2) o2_38@@1 f_70@@1) (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38@@1 f_70@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38@@1 f_70@@1))
))) (forall ((o2_38@@2 T@Ref) (f_70@@2 T@Field_12452_51770) ) (!  (=> (select (|PolymorphicMapType_19054_18565_52750#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@2) null (PredicateMaskField_12452 pm_f_38@@1))) o2_38@@2 f_70@@2) (= (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@2) o2_38@@2 f_70@@2) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38@@2 f_70@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@1) o2_38@@2 f_70@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12452_51728 pm_f_38@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18505) (ExhaleHeap@@2 T@PolymorphicMapType_18505) (Mask@@3 T@PolymorphicMapType_18526) (pm_f_38@@2 T@Field_12452_51637) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12452_51701 Mask@@3 null pm_f_38@@2) (IsWandField_12452_53277 pm_f_38@@2)) (and (and (and (forall ((o2_38@@3 T@Ref) (f_70@@3 T@Field_18565_53) ) (!  (=> (select (|PolymorphicMapType_19054_18565_53#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@3) null (WandMaskField_12452 pm_f_38@@2))) o2_38@@3 f_70@@3) (= (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@3) o2_38@@3 f_70@@3) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@3 f_70@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@3 f_70@@3))
)) (forall ((o2_38@@4 T@Ref) (f_70@@4 T@Field_18578_18579) ) (!  (=> (select (|PolymorphicMapType_19054_18565_18579#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@3) null (WandMaskField_12452 pm_f_38@@2))) o2_38@@4 f_70@@4) (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@3) o2_38@@4 f_70@@4) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@4 f_70@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@4 f_70@@4))
))) (forall ((o2_38@@5 T@Ref) (f_70@@5 T@Field_12452_51637) ) (!  (=> (select (|PolymorphicMapType_19054_18565_51637#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@3) null (WandMaskField_12452 pm_f_38@@2))) o2_38@@5 f_70@@5) (= (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@3) o2_38@@5 f_70@@5) (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@5 f_70@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@5 f_70@@5))
))) (forall ((o2_38@@6 T@Ref) (f_70@@6 T@Field_12452_51770) ) (!  (=> (select (|PolymorphicMapType_19054_18565_52750#PolymorphicMapType_19054| (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@3) null (WandMaskField_12452 pm_f_38@@2))) o2_38@@6 f_70@@6) (= (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@3) o2_38@@6 f_70@@6) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@6 f_70@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@2) o2_38@@6 f_70@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_12452_53277 pm_f_38@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18505) (ExhaleHeap@@3 T@PolymorphicMapType_18505) (Mask@@4 T@PolymorphicMapType_18526) (o_58 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@4) o_58 $allocated) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@3) o_58 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@3) o_58 $allocated))
)))
(assert (forall ((p T@Field_12452_51637) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18565_18565 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18565_18565 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_45972) (s1 T@Seq_45972) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12796|)) (not (= s1 |Seq#Empty_12796|))) (<= (|Seq#Length_12796| s0) n@@13)) (< n@@13 (|Seq#Length_12796| (|Seq#Append_45972| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12796| s0)) (|Seq#Length_12796| s0)) n@@13) (= (|Seq#Index_12796| (|Seq#Append_45972| s0 s1) n@@13) (|Seq#Index_12796| s1 (|Seq#Sub| n@@13 (|Seq#Length_12796| s0))))))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12796| (|Seq#Append_45972| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3224) (s1@@0 T@Seq_3224) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3224|)) (not (= s1@@0 |Seq#Empty_3224|))) (<= (|Seq#Length_3224| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3224| (|Seq#Append_3224| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3224| s0@@0)) (|Seq#Length_3224| s0@@0)) n@@14) (= (|Seq#Index_3224| (|Seq#Append_3224| s0@@0 s1@@0) n@@14) (|Seq#Index_3224| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3224| s0@@0))))))
 :qid |stdinbpl.297:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3224| (|Seq#Append_3224| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_12450_5376 bool_prop)))
(assert  (not (IsWandField_12450_5376 bool_prop)))
(assert  (not (IsPredicateField_12452_12453 item)))
(assert  (not (IsWandField_12452_12453 item)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18505) (ExhaleHeap@@4 T@PolymorphicMapType_18505) (Mask@@5 T@PolymorphicMapType_18526) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_18526) (o_2@@3 T@Ref) (f_4@@3 T@Field_12452_51770) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12452_56185 f_4@@3))) (not (IsWandField_12452_56201 f_4@@3))) (<= (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_18526) (o_2@@4 T@Ref) (f_4@@4 T@Field_12452_51637) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_12452_51728 f_4@@4))) (not (IsWandField_12452_53277 f_4@@4))) (<= (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_18526) (o_2@@5 T@Ref) (f_4@@5 T@Field_18565_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12450_5376 f_4@@5))) (not (IsWandField_12450_5376 f_4@@5))) (<= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_18526) (o_2@@6 T@Ref) (f_4@@6 T@Field_18578_18579) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12452_12453 f_4@@6))) (not (IsWandField_12452_12453 f_4@@6))) (<= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18526) (o_2@@7 T@Ref) (f_4@@7 T@Field_12452_51770) ) (! (= (HasDirectPerm_12452_56556 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12452_56556 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18526) (o_2@@8 T@Ref) (f_4@@8 T@Field_12452_51637) ) (! (= (HasDirectPerm_12452_51701 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12452_51701 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18526) (o_2@@9 T@Ref) (f_4@@9 T@Field_18565_53) ) (! (= (HasDirectPerm_12452_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12452_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18526) (o_2@@10 T@Ref) (f_4@@10 T@Field_18578_18579) ) (! (= (HasDirectPerm_12452_12453 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12452_12453 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3224| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.589:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3224| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18505) (ExhaleHeap@@5 T@PolymorphicMapType_18505) (Mask@@14 T@PolymorphicMapType_18526) (o_58@@0 T@Ref) (f_70@@7 T@Field_12452_51770) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_12452_56556 Mask@@14 o_58@@0 f_70@@7) (= (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@6) o_58@@0 f_70@@7) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@5) o_58@@0 f_70@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| ExhaleHeap@@5) o_58@@0 f_70@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18505) (ExhaleHeap@@6 T@PolymorphicMapType_18505) (Mask@@15 T@PolymorphicMapType_18526) (o_58@@1 T@Ref) (f_70@@8 T@Field_12452_51637) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_12452_51701 Mask@@15 o_58@@1 f_70@@8) (= (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@7) o_58@@1 f_70@@8) (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| ExhaleHeap@@6) o_58@@1 f_70@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| ExhaleHeap@@6) o_58@@1 f_70@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18505) (ExhaleHeap@@7 T@PolymorphicMapType_18505) (Mask@@16 T@PolymorphicMapType_18526) (o_58@@2 T@Ref) (f_70@@9 T@Field_18565_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_12452_53 Mask@@16 o_58@@2 f_70@@9) (= (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@8) o_58@@2 f_70@@9) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@7) o_58@@2 f_70@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| ExhaleHeap@@7) o_58@@2 f_70@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18505) (ExhaleHeap@@8 T@PolymorphicMapType_18505) (Mask@@17 T@PolymorphicMapType_18526) (o_58@@3 T@Ref) (f_70@@10 T@Field_18578_18579) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_12452_12453 Mask@@17 o_58@@3 f_70@@10) (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@9) o_58@@3 f_70@@10) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| ExhaleHeap@@8) o_58@@3 f_70@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| ExhaleHeap@@8) o_58@@3 f_70@@10))
)))
(assert (forall ((s0@@1 T@Seq_45972) (s1@@1 T@Seq_45972) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12796|)) (not (= s1@@1 |Seq#Empty_12796|))) (= (|Seq#Length_12796| (|Seq#Append_45972| s0@@1 s1@@1)) (+ (|Seq#Length_12796| s0@@1) (|Seq#Length_12796| s1@@1))))
 :qid |stdinbpl.266:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12796| (|Seq#Append_45972| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3224) (s1@@2 T@Seq_3224) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3224|)) (not (= s1@@2 |Seq#Empty_3224|))) (= (|Seq#Length_3224| (|Seq#Append_3224| s0@@2 s1@@2)) (+ (|Seq#Length_3224| s0@@2) (|Seq#Length_3224| s1@@2))))
 :qid |stdinbpl.266:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3224| (|Seq#Append_3224| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_12452_51770) ) (! (= (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12452_51637) ) (! (= (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18565_53) ) (! (= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_18578_18579) ) (! (= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_45972) (t@@1 T@Seq_45972) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12796| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12796| s@@15)) (|Seq#Length_12796| s@@15)) n@@15) (= (|Seq#Drop_12796| (|Seq#Append_45972| s@@15 t@@1) n@@15) (|Seq#Drop_12796| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12796| s@@15))))))
 :qid |stdinbpl.423:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12796| (|Seq#Append_45972| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3224) (t@@2 T@Seq_3224) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3224| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3224| s@@16)) (|Seq#Length_3224| s@@16)) n@@16) (= (|Seq#Drop_3224| (|Seq#Append_3224| s@@16 t@@2) n@@16) (|Seq#Drop_3224| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3224| s@@16))))))
 :qid |stdinbpl.423:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3224| (|Seq#Append_3224| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18526) (SummandMask1 T@PolymorphicMapType_18526) (SummandMask2 T@PolymorphicMapType_18526) (o_2@@15 T@Ref) (f_4@@15 T@Field_12452_51770) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18526) (SummandMask1@@0 T@PolymorphicMapType_18526) (SummandMask2@@0 T@PolymorphicMapType_18526) (o_2@@16 T@Ref) (f_4@@16 T@Field_12452_51637) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18526) (SummandMask1@@1 T@PolymorphicMapType_18526) (SummandMask2@@1 T@PolymorphicMapType_18526) (o_2@@17 T@Ref) (f_4@@17 T@Field_18565_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18526) (SummandMask1@@2 T@PolymorphicMapType_18526) (SummandMask2@@2 T@PolymorphicMapType_18526) (o_2@@18 T@Ref) (f_4@@18 T@Field_18578_18579) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3224| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3224| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.588:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3224| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@1 T@Seq_45972) (b@@0 T@Seq_45972) ) (!  (=> (|Seq#Equal_45972| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.561:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_45972| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_3224) (b@@1 T@Seq_3224) ) (!  (=> (|Seq#Equal_3224| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.561:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3224| a@@2 b@@1))
)))
(assert (forall ((v_2 T@Ref) ) (! (= (id_3_12518 v_2) v_2)
 :qid |stdinbpl.799:19|
 :skolemid |118|
 :pattern ( (id_3_12518 v_2))
)))
(assert (forall ((s@@17 T@Seq_45972) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_12796| s@@17))) (|Seq#ContainsTrigger_12796| s@@17 (|Seq#Index_12796| s@@17 i@@3)))
 :qid |stdinbpl.454:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12796| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3224) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3224| s@@18))) (|Seq#ContainsTrigger_3224| s@@18 (|Seq#Index_3224| s@@18 i@@4)))
 :qid |stdinbpl.454:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3224| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_45972) (s1@@3 T@Seq_45972) ) (!  (and (=> (= s0@@3 |Seq#Empty_12796|) (= (|Seq#Append_45972| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12796|) (= (|Seq#Append_45972| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.272:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_45972| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3224) (s1@@4 T@Seq_3224) ) (!  (and (=> (= s0@@4 |Seq#Empty_3224|) (= (|Seq#Append_3224| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3224|) (= (|Seq#Append_3224| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.272:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3224| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12796| (|Seq#Singleton_12796| t@@3) 0) t@@3)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12796| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3224| (|Seq#Singleton_3224| t@@4) 0) t@@4)
 :qid |stdinbpl.276:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3224| t@@4))
)))
(assert (forall ((s@@19 T@Seq_45972) ) (! (<= 0 (|Seq#Length_12796| s@@19))
 :qid |stdinbpl.255:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12796| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3224) ) (! (<= 0 (|Seq#Length_3224| s@@20))
 :qid |stdinbpl.255:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3224| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_45972) (s1@@5 T@Seq_45972) ) (!  (=> (|Seq#Equal_45972| s0@@5 s1@@5) (and (= (|Seq#Length_12796| s0@@5) (|Seq#Length_12796| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12796| s0@@5))) (= (|Seq#Index_12796| s0@@5 j@@6) (|Seq#Index_12796| s1@@5 j@@6)))
 :qid |stdinbpl.551:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12796| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12796| s1@@5 j@@6))
))))
 :qid |stdinbpl.548:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_45972| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3224) (s1@@6 T@Seq_3224) ) (!  (=> (|Seq#Equal_3224| s0@@6 s1@@6) (and (= (|Seq#Length_3224| s0@@6) (|Seq#Length_3224| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3224| s0@@6))) (= (|Seq#Index_3224| s0@@6 j@@7) (|Seq#Index_3224| s1@@6 j@@7)))
 :qid |stdinbpl.551:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3224| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3224| s1@@6 j@@7))
))))
 :qid |stdinbpl.548:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3224| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12796| (|Seq#Singleton_12796| t@@5)) 1)
 :qid |stdinbpl.263:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12796| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3224| (|Seq#Singleton_3224| t@@6)) 1)
 :qid |stdinbpl.263:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3224| t@@6))
)))
(assert (forall ((s@@21 T@Seq_45972) (t@@7 T@Seq_45972) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12796| s@@21))) (= (|Seq#Take_12796| (|Seq#Append_45972| s@@21 t@@7) n@@17) (|Seq#Take_12796| s@@21 n@@17)))
 :qid |stdinbpl.405:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12796| (|Seq#Append_45972| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3224) (t@@8 T@Seq_3224) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3224| s@@22))) (= (|Seq#Take_3224| (|Seq#Append_3224| s@@22 t@@8) n@@18) (|Seq#Take_3224| s@@22 n@@18)))
 :qid |stdinbpl.405:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3224| (|Seq#Append_3224| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_45972) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_12796| s@@23))) (= (|Seq#Length_12796| (|Seq#Update_12796| s@@23 i@@5 v@@2)) (|Seq#Length_12796| s@@23)))
 :qid |stdinbpl.304:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12796| (|Seq#Update_12796| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_12796| s@@23) (|Seq#Update_12796| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3224) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3224| s@@24))) (= (|Seq#Length_3224| (|Seq#Update_3224| s@@24 i@@6 v@@3)) (|Seq#Length_3224| s@@24)))
 :qid |stdinbpl.304:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3224| (|Seq#Update_3224| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3224| s@@24) (|Seq#Update_3224| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18505) (o_51 T@Ref) (f_14 T@Field_12452_51637) (v@@4 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@10) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@10) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@10) (store (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@10) o_51 f_14 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@10) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@10) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@10) (store (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@10) o_51 f_14 v@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18505) (o_51@@0 T@Ref) (f_14@@0 T@Field_12452_51770) (v@@5 T@PolymorphicMapType_19054) ) (! (succHeap Heap@@11 (PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@11) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@11) (store (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@11) o_51@@0 f_14@@0 v@@5) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@11) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@11) (store (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@11) o_51@@0 f_14@@0 v@@5) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18505) (o_51@@1 T@Ref) (f_14@@1 T@Field_18578_18579) (v@@6 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@12) (store (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@12) o_51@@1 f_14@@1 v@@6) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@12) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18505 (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@12) (store (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@12) o_51@@1 f_14@@1 v@@6) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@12) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18505) (o_51@@2 T@Ref) (f_14@@2 T@Field_18565_53) (v@@7 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_18505 (store (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@13) o_51@@2 f_14@@2 v@@7) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@13) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@13) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18505 (store (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@13) o_51@@2 f_14@@2 v@@7) (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@13) (|PolymorphicMapType_18505_12452_51814#PolymorphicMapType_18505| Heap@@13) (|PolymorphicMapType_18505_18565_51637#PolymorphicMapType_18505| Heap@@13)))
)))
(assert (forall ((s@@25 T@Seq_45972) (t@@9 T@Seq_45972) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12796| s@@25))) (= (|Seq#Drop_12796| (|Seq#Append_45972| s@@25 t@@9) n@@19) (|Seq#Append_45972| (|Seq#Drop_12796| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.419:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12796| (|Seq#Append_45972| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3224) (t@@10 T@Seq_3224) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3224| s@@26))) (= (|Seq#Drop_3224| (|Seq#Append_3224| s@@26 t@@10) n@@20) (|Seq#Append_3224| (|Seq#Drop_3224| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.419:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3224| (|Seq#Append_3224| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.692:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.693:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_45972) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_12796| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_12796| (|Seq#Drop_12796| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_12796| s@@27 i@@7))))
 :qid |stdinbpl.355:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12796| s@@27 n@@21) (|Seq#Index_12796| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3224) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3224| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3224| (|Seq#Drop_3224| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3224| s@@28 i@@8))))
 :qid |stdinbpl.355:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3224| s@@28 n@@22) (|Seq#Index_3224| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_45972) (s1@@7 T@Seq_45972) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12796|)) (not (= s1@@7 |Seq#Empty_12796|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12796| s0@@7))) (= (|Seq#Index_12796| (|Seq#Append_45972| s0@@7 s1@@7) n@@23) (|Seq#Index_12796| s0@@7 n@@23)))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12796| (|Seq#Append_45972| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12796| s0@@7 n@@23) (|Seq#Append_45972| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3224) (s1@@8 T@Seq_3224) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3224|)) (not (= s1@@8 |Seq#Empty_3224|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3224| s0@@8))) (= (|Seq#Index_3224| (|Seq#Append_3224| s0@@8 s1@@8) n@@24) (|Seq#Index_3224| s0@@8 n@@24)))
 :qid |stdinbpl.295:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3224| (|Seq#Append_3224| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3224| s0@@8 n@@24) (|Seq#Append_3224| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_45972) (s1@@9 T@Seq_45972) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12796|)) (not (= s1@@9 |Seq#Empty_12796|))) (<= 0 m)) (< m (|Seq#Length_12796| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12796| s0@@9)) (|Seq#Length_12796| s0@@9)) m) (= (|Seq#Index_12796| (|Seq#Append_45972| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12796| s0@@9))) (|Seq#Index_12796| s1@@9 m))))
 :qid |stdinbpl.300:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12796| s1@@9 m) (|Seq#Append_45972| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3224) (s1@@10 T@Seq_3224) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3224|)) (not (= s1@@10 |Seq#Empty_3224|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3224| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3224| s0@@10)) (|Seq#Length_3224| s0@@10)) m@@0) (= (|Seq#Index_3224| (|Seq#Append_3224| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3224| s0@@10))) (|Seq#Index_3224| s1@@10 m@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3224| s1@@10 m@@0) (|Seq#Append_3224| s0@@10 s1@@10))
)))
(assert (forall ((o_51@@3 T@Ref) (f_62 T@Field_18578_18579) (Heap@@14 T@PolymorphicMapType_18505) ) (!  (=> (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@14) o_51@@3 $allocated) (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@14) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@14) o_51@@3 f_62) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@14) o_51@@3 f_62))
)))
(assert (forall ((s@@29 T@Seq_45972) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_12796| s@@29))) (= (|Seq#Index_12796| s@@29 i@@9) x@@3)) (|Seq#Contains_45972| s@@29 x@@3))
 :qid |stdinbpl.452:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_45972| s@@29 x@@3) (|Seq#Index_12796| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3224) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3224| s@@30))) (= (|Seq#Index_3224| s@@30 i@@10) x@@4)) (|Seq#Contains_3224| s@@30 x@@4))
 :qid |stdinbpl.452:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3224| s@@30 x@@4) (|Seq#Index_3224| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_45972) (s1@@11 T@Seq_45972) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_45972| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_45972| s0@@11 s1@@11))) (not (= (|Seq#Length_12796| s0@@11) (|Seq#Length_12796| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_45972| s0@@11 s1@@11))) (= (|Seq#Length_12796| s0@@11) (|Seq#Length_12796| s1@@11))) (= (|Seq#SkolemDiff_45972| s0@@11 s1@@11) (|Seq#SkolemDiff_45972| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_45972| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_45972| s0@@11 s1@@11) (|Seq#Length_12796| s0@@11))) (not (= (|Seq#Index_12796| s0@@11 (|Seq#SkolemDiff_45972| s0@@11 s1@@11)) (|Seq#Index_12796| s1@@11 (|Seq#SkolemDiff_45972| s0@@11 s1@@11))))))
 :qid |stdinbpl.556:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_45972| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3224) (s1@@12 T@Seq_3224) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3224| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3224| s0@@12 s1@@12))) (not (= (|Seq#Length_3224| s0@@12) (|Seq#Length_3224| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3224| s0@@12 s1@@12))) (= (|Seq#Length_3224| s0@@12) (|Seq#Length_3224| s1@@12))) (= (|Seq#SkolemDiff_3224| s0@@12 s1@@12) (|Seq#SkolemDiff_3224| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3224| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3224| s0@@12 s1@@12) (|Seq#Length_3224| s0@@12))) (not (= (|Seq#Index_3224| s0@@12 (|Seq#SkolemDiff_3224| s0@@12 s1@@12)) (|Seq#Index_3224| s1@@12 (|Seq#SkolemDiff_3224| s0@@12 s1@@12))))))
 :qid |stdinbpl.556:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3224| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12452_51637) (v_1@@0 T@FrameType) (q T@Field_12452_51637) (w@@0 T@FrameType) (r T@Field_12452_51637) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18565_18565 p@@1 v_1@@0 q w@@0) (InsidePredicate_18565_18565 q w@@0 r u)) (InsidePredicate_18565_18565 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18565_18565 p@@1 v_1@@0 q w@@0) (InsidePredicate_18565_18565 q w@@0 r u))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.698:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((s@@31 T@Seq_45972) ) (!  (=> (= (|Seq#Length_12796| s@@31) 0) (= s@@31 |Seq#Empty_12796|))
 :qid |stdinbpl.259:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12796| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3224) ) (!  (=> (= (|Seq#Length_3224| s@@32) 0) (= s@@32 |Seq#Empty_3224|))
 :qid |stdinbpl.259:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3224| s@@32))
)))
(assert (forall ((s@@33 T@Seq_45972) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12796| s@@33 n@@25) |Seq#Empty_12796|))
 :qid |stdinbpl.435:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12796| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3224) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3224| s@@34 n@@26) |Seq#Empty_3224|))
 :qid |stdinbpl.435:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3224| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun trees () (Array T@Ref Bool))
(declare-fun s_10 () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_18526)
(declare-fun wildcard@0 () Real)
(declare-fun Heap@@15 () T@PolymorphicMapType_18505)
(declare-fun dummyFunction_5376 (Bool) Bool)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_18526)
(declare-fun r_30 () T@Ref)
(declare-fun s1_4 () T@Ref)
(declare-fun s2_4 () T@Ref)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id test03c)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (select trees s_10)) (= (ControlFlow 0 19) 16)) anon13_correct)))
(let ((anon21_Then_correct  (=> (select trees s_10) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_12452_12453 QPMask@1 (id_3_12518 s_10) item)) (=> (HasDirectPerm_12452_12453 QPMask@1 (id_3_12518 s_10) item) (=> (= (ControlFlow 0 17) 16) anon13_correct))))))
(let ((anon20_Else_correct  (=> (> wildcard@0 0.0) (and (=> (= (ControlFlow 0 12) (- 0 15)) (forall ((s_1_1 T@Ref) ) (!  (=> (select trees s_1_1) (> (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1) item) bool_prop) NoPerm))
 :qid |stdinbpl.1399:15|
 :skolemid |180|
))) (=> (forall ((s_1_1@@0 T@Ref) ) (!  (=> (select trees s_1_1@@0) (> (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@0) item) bool_prop) NoPerm))
 :qid |stdinbpl.1399:15|
 :skolemid |180|
)) (=> (forall ((s_1_1@@1 T@Ref) ) (!  (=> (select trees s_1_1@@1) (< wildcard@0 (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@1) item) bool_prop)))
 :qid |stdinbpl.1403:20|
 :skolemid |181|
)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (forall ((s_1_1@@2 T@Ref) ) (!  (=> (and (select trees s_1_1@@2) (dummyFunction_5376 (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@15) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@2) item) bool_prop))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1410:17|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@2) item))
 :pattern ( (id_3_12518 s_1_1@@2))
))) (=> (forall ((s_1_1@@3 T@Ref) ) (!  (=> (and (select trees s_1_1@@3) (dummyFunction_5376 (select (|PolymorphicMapType_18505_12047_53#PolymorphicMapType_18505| Heap@@15) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@3) item) bool_prop))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.1410:17|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@3) item))
 :pattern ( (id_3_12518 s_1_1@@3))
)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((s_1_1@@4 T@Ref) (s_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1@@4 s_1_2)) (select trees s_1_1@@4)) (select trees s_1_2)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@4) item) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_2) item))))
 :qid |stdinbpl.1417:17|
 :skolemid |183|
 :pattern ( (neverTriggered9 s_1_1@@4) (neverTriggered9 s_1_2))
))) (=> (forall ((s_1_1@@5 T@Ref) (s_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1_1@@5 s_1_2@@0)) (select trees s_1_1@@5)) (select trees s_1_2@@0)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@5) item) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_2@@0) item))))
 :qid |stdinbpl.1417:17|
 :skolemid |183|
 :pattern ( (neverTriggered9 s_1_1@@5) (neverTriggered9 s_1_2@@0))
)) (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((s_1_1@@6 T@Ref) ) (!  (=> (select trees s_1_1@@6) (> (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@6) item) bool_prop) NoPerm))
 :qid |stdinbpl.1424:17|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s_1_1@@6) item))
 :pattern ( (id_3_12518 s_1_1@@6))
)))))))))))))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((r_3 T@Ref) (r_3_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_3 r_3_2)) (select trees r_3)) (select trees r_3_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3) item) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3_2) item))))
 :qid |stdinbpl.1333:15|
 :skolemid |173|
))) (=> (forall ((r_3@@0 T@Ref) (r_3_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_3@@0 r_3_2@@0)) (select trees r_3@@0)) (select trees r_3_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@0) item) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3_2@@0) item))))
 :qid |stdinbpl.1333:15|
 :skolemid |173|
)) (=> (and (forall ((r_3@@1 T@Ref) ) (!  (=> (and (select trees r_3@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange8 (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@1) item)) (= (invRecv8 (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@1) item)) r_3@@1)))
 :qid |stdinbpl.1339:22|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@1) item))
 :pattern ( (id_3_12518 r_3@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select trees (invRecv8 o_9)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange8 o_9)) (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 (invRecv8 o_9)) item) o_9))
 :qid |stdinbpl.1343:22|
 :skolemid |175|
 :pattern ( (invRecv8 o_9))
))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((r_3@@2 T@Ref) ) (!  (=> (select trees r_3@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1349:15|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@2) item))
 :pattern ( (id_3_12518 r_3@@2))
))) (=> (forall ((r_3@@3 T@Ref) ) (!  (=> (select trees r_3@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1349:15|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@3) item))
 :pattern ( (id_3_12518 r_3@@3))
)) (=> (and (forall ((r_3@@4 T@Ref) ) (!  (=> (and (select trees r_3@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@4) item) null)))
 :qid |stdinbpl.1355:22|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 r_3@@4) item))
 :pattern ( (id_3_12518 r_3@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select trees (invRecv8 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange8 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 (invRecv8 o_9@@0)) item) o_9@@0)) (= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) o_9@@0 bool_prop) (+ (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@0) o_9@@0 bool_prop) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select trees (invRecv8 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange8 o_9@@0))) (= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) o_9@@0 bool_prop) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@0) o_9@@0 bool_prop))))
 :qid |stdinbpl.1361:22|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) o_9@@0 bool_prop))
))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_18565_53) ) (!  (=> (not (= f_5 bool_prop)) (= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.1365:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_18578_18579) ) (!  (=> true (= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1365:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_12452_51637) ) (!  (=> true (= (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1365:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| QPMask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_12452_51770) ) (!  (=> true (= (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1365:29|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| QPMask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| QPMask@1) o_9@@4 f_5@@2))
))) (and (state Heap@@15 QPMask@1) (state Heap@@15 QPMask@1))) (and (and (=> (= (ControlFlow 0 20) 12) anon20_Else_correct) (=> (= (ControlFlow 0 20) 17) anon21_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon21_Else_correct)))))))))))
(let ((anon9_correct true))
(let ((anon19_Else_correct  (=> (and (not (select trees r_30)) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon19_Then_correct  (=> (select trees r_30) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_12452_12453 QPMask@0 (id_3_12518 r_30) item)) (=> (HasDirectPerm_12452_12453 QPMask@0 (id_3_12518 r_30) item) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon16_Else_correct  (=> (and (forall ((s1_1_1 T@Ref) (s2_1_1 T@Ref) ) (!  (=> (and (select trees s1_1_1) (and (select trees s2_1_1) (not (= (id_3_12518 s1_1_1) (id_3_12518 s2_1_1))))) (not (= (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s1_1_1) item) (select (|PolymorphicMapType_18505_12050_12051#PolymorphicMapType_18505| Heap@@15) (id_3_12518 s2_1_1) item))))
 :qid |stdinbpl.1317:20|
 :skolemid |172|
 :pattern ( (select trees s1_1_1) (select trees s2_1_1))
 :pattern ( (select trees s1_1_1) (id_3_12518 s2_1_1))
 :pattern ( (select trees s2_1_1) (id_3_12518 s1_1_1))
 :pattern ( (id_3_12518 s1_1_1) (id_3_12518 s2_1_1))
 :pattern ( (id_3_12518 s2_1_1) (id_3_12518 s1_1_1))
)) (state Heap@@15 QPMask@0)) (and (and (=> (= (ControlFlow 0 23) 20) anon18_Else_correct) (=> (= (ControlFlow 0 23) 8) anon19_Then_correct)) (=> (= (ControlFlow 0 23) 10) anon19_Else_correct)))))
(let ((anon5_correct true))
(let ((anon17_Else_correct  (=> (and (not (and (select trees s1_4) (and (select trees s2_4) (not (= (id_3_12518 s1_4) (id_3_12518 s2_4)))))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon17_Then_correct  (=> (and (select trees s1_4) (and (select trees s2_4) (not (= (id_3_12518 s1_4) (id_3_12518 s2_4))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_12452_12453 QPMask@0 (id_3_12518 s1_4) item)) (=> (HasDirectPerm_12452_12453 QPMask@0 (id_3_12518 s1_4) item) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_12452_12453 QPMask@0 (id_3_12518 s2_4) item)) (=> (HasDirectPerm_12452_12453 QPMask@0 (id_3_12518 s2_4) item) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (select trees r_1_1)) (select trees r_1_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (id_3_12518 r_1_1) (id_3_12518 r_1_2))))
 :qid |stdinbpl.1267:15|
 :skolemid |165|
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (select trees r_1_1@@0)) (select trees r_1_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (id_3_12518 r_1_1@@0) (id_3_12518 r_1_2@@0))))
 :qid |stdinbpl.1267:15|
 :skolemid |165|
)) (=> (and (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (select trees r_1_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange7 (id_3_12518 r_1_1@@1)) (= (invRecv7 (id_3_12518 r_1_1@@1)) r_1_1@@1)))
 :qid |stdinbpl.1273:22|
 :skolemid |166|
 :pattern ( (id_3_12518 r_1_1@@1))
 :pattern ( (id_3_12518 r_1_1@@1))
)) (forall ((o_9@@5 T@Ref) ) (!  (=> (and (and (select trees (invRecv7 o_9@@5)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_9@@5)) (= (id_3_12518 (invRecv7 o_9@@5)) o_9@@5))
 :qid |stdinbpl.1277:22|
 :skolemid |167|
 :pattern ( (invRecv7 o_9@@5))
))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((r_1_1@@2 T@Ref) ) (!  (=> (select trees r_1_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1283:15|
 :skolemid |168|
 :pattern ( (id_3_12518 r_1_1@@2))
 :pattern ( (id_3_12518 r_1_1@@2))
))) (=> (forall ((r_1_1@@3 T@Ref) ) (!  (=> (select trees r_1_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1283:15|
 :skolemid |168|
 :pattern ( (id_3_12518 r_1_1@@3))
 :pattern ( (id_3_12518 r_1_1@@3))
)) (=> (and (forall ((r_1_1@@4 T@Ref) ) (!  (=> (and (select trees r_1_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (id_3_12518 r_1_1@@4) null)))
 :qid |stdinbpl.1289:22|
 :skolemid |169|
 :pattern ( (id_3_12518 r_1_1@@4))
 :pattern ( (id_3_12518 r_1_1@@4))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (and (select trees (invRecv7 o_9@@6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_9@@6)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (id_3_12518 (invRecv7 o_9@@6)) o_9@@6)) (= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@6 item) (+ (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ZeroMask) o_9@@6 item) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (select trees (invRecv7 o_9@@6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange7 o_9@@6))) (= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@6 item) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ZeroMask) o_9@@6 item))))
 :qid |stdinbpl.1295:22|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@6 item))
))) (=> (and (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_18565_53) ) (!  (=> true (= (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| ZeroMask) o_9@@7 f_5@@3) (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@0) o_9@@7 f_5@@3)))
 :qid |stdinbpl.1299:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| ZeroMask) o_9@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_18526_12450_5376#PolymorphicMapType_18526| QPMask@0) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_18578_18579) ) (!  (=> (not (= f_5@@4 item)) (= (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1299:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_18526_12452_12453#PolymorphicMapType_18526| QPMask@0) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_12452_51637) ) (!  (=> true (= (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1299:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_18526_12452_51637#PolymorphicMapType_18526| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_12452_51770) ) (!  (=> true (= (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1299:29|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_18526_12452_55304#PolymorphicMapType_18526| QPMask@0) o_9@@10 f_5@@6))
))) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (and (=> (= (ControlFlow 0 24) 23) anon16_Else_correct) (=> (= (ControlFlow 0 24) 3) anon17_Then_correct)) (=> (= (ControlFlow 0 24) 6) anon17_Else_correct)))))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 27) 1) anon15_Then_correct) (=> (= (ControlFlow 0 27) 24) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 28) 27)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
