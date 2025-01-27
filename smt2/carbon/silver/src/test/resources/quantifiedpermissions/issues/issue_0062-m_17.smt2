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
(declare-sort T@Field_9888_53 0)
(declare-sort T@Field_9901_9902 0)
(declare-sort T@Field_18753_5035 0)
(declare-sort T@Field_9888_23824 0)
(declare-sort T@Field_9888_23691 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9849 0)) (((PolymorphicMapType_9849 (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| (Array T@Ref T@Field_18753_5035 Real)) (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| (Array T@Ref T@Field_9888_53 Real)) (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| (Array T@Ref T@Field_9901_9902 Real)) (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| (Array T@Ref T@Field_9888_23691 Real)) (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| (Array T@Ref T@Field_9888_23824 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10377 0)) (((PolymorphicMapType_10377 (|PolymorphicMapType_10377_9888_53#PolymorphicMapType_10377| (Array T@Ref T@Field_9888_53 Bool)) (|PolymorphicMapType_10377_9888_9902#PolymorphicMapType_10377| (Array T@Ref T@Field_9901_9902 Bool)) (|PolymorphicMapType_10377_9888_5035#PolymorphicMapType_10377| (Array T@Ref T@Field_18753_5035 Bool)) (|PolymorphicMapType_10377_9888_23691#PolymorphicMapType_10377| (Array T@Ref T@Field_9888_23691 Bool)) (|PolymorphicMapType_10377_9888_25002#PolymorphicMapType_10377| (Array T@Ref T@Field_9888_23824 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9828 0)) (((PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| (Array T@Ref T@Field_9888_53 Bool)) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| (Array T@Ref T@Field_9901_9902 T@Ref)) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| (Array T@Ref T@Field_18753_5035 Int)) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| (Array T@Ref T@Field_9888_23824 T@PolymorphicMapType_10377)) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| (Array T@Ref T@Field_9888_23691 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9888_53)
(declare-fun f_7 () T@Field_18753_5035)
(declare-sort T@Seq_21167 0)
(declare-fun |Seq#Length_6621| (T@Seq_21167) Int)
(declare-fun |Seq#Drop_6621| (T@Seq_21167 Int) T@Seq_21167)
(declare-sort T@Seq_2912 0)
(declare-fun |Seq#Length_2912| (T@Seq_2912) Int)
(declare-fun |Seq#Drop_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun succHeap (T@PolymorphicMapType_9828 T@PolymorphicMapType_9828) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9828 T@PolymorphicMapType_9828) Bool)
(declare-fun state (T@PolymorphicMapType_9828 T@PolymorphicMapType_9849) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9849) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10377)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_6621| (T@Seq_21167 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2912| (T@Seq_2912 Int) Int)
(declare-fun |Seq#Empty_6621| () T@Seq_21167)
(declare-fun |Seq#Empty_2912| () T@Seq_2912)
(declare-fun |Seq#Update_6621| (T@Seq_21167 Int T@Ref) T@Seq_21167)
(declare-fun |Seq#Update_2912| (T@Seq_2912 Int Int) T@Seq_2912)
(declare-fun |Seq#Take_6621| (T@Seq_21167 Int) T@Seq_21167)
(declare-fun |Seq#Take_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun |Seq#Contains_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2912)
(declare-fun |Seq#Contains_21167| (T@Seq_21167 T@Ref) Bool)
(declare-fun |Seq#Skolem_21167| (T@Seq_21167 T@Ref) Int)
(declare-fun |Seq#Skolem_2912| (T@Seq_2912 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9828 T@PolymorphicMapType_9828 T@PolymorphicMapType_9849) Bool)
(declare-fun IsPredicateField_9888_23782 (T@Field_9888_23691) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9888 (T@Field_9888_23691) T@Field_9888_23824)
(declare-fun HasDirectPerm_9888_23755 (T@PolymorphicMapType_9849 T@Ref T@Field_9888_23691) Bool)
(declare-fun IsWandField_9888_25529 (T@Field_9888_23691) Bool)
(declare-fun WandMaskField_9888 (T@Field_9888_23691) T@Field_9888_23824)
(declare-fun |Seq#Singleton_6621| (T@Ref) T@Seq_21167)
(declare-fun |Seq#Singleton_2912| (Int) T@Seq_2912)
(declare-fun |Seq#Append_21167| (T@Seq_21167 T@Seq_21167) T@Seq_21167)
(declare-fun |Seq#Append_2912| (T@Seq_2912 T@Seq_2912) T@Seq_2912)
(declare-fun dummyHeap () T@PolymorphicMapType_9828)
(declare-fun ZeroMask () T@PolymorphicMapType_9849)
(declare-fun InsidePredicate_9888_9888 (T@Field_9888_23691 T@FrameType T@Field_9888_23691 T@FrameType) Bool)
(declare-fun IsPredicateField_6575_5035 (T@Field_18753_5035) Bool)
(declare-fun IsWandField_6575_5035 (T@Field_18753_5035) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6575_29075 (T@Field_9888_23824) Bool)
(declare-fun IsWandField_6575_29091 (T@Field_9888_23824) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6575_9902 (T@Field_9901_9902) Bool)
(declare-fun IsWandField_6575_9902 (T@Field_9901_9902) Bool)
(declare-fun IsPredicateField_6575_53 (T@Field_9888_53) Bool)
(declare-fun IsWandField_6575_53 (T@Field_9888_53) Bool)
(declare-fun HasDirectPerm_9888_29529 (T@PolymorphicMapType_9849 T@Ref T@Field_9888_23824) Bool)
(declare-fun HasDirectPerm_9888_5035 (T@PolymorphicMapType_9849 T@Ref T@Field_18753_5035) Bool)
(declare-fun HasDirectPerm_9888_9902 (T@PolymorphicMapType_9849 T@Ref T@Field_9901_9902) Bool)
(declare-fun HasDirectPerm_9888_53 (T@PolymorphicMapType_9849 T@Ref T@Field_9888_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9849 T@PolymorphicMapType_9849 T@PolymorphicMapType_9849) Bool)
(declare-fun |Seq#Equal_21167| (T@Seq_21167 T@Seq_21167) Bool)
(declare-fun |Seq#Equal_2912| (T@Seq_2912 T@Seq_2912) Bool)
(declare-fun |Seq#ContainsTrigger_6621| (T@Seq_21167 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#SkolemDiff_21167| (T@Seq_21167 T@Seq_21167) Int)
(declare-fun |Seq#SkolemDiff_2912| (T@Seq_2912 T@Seq_2912) Int)
(assert (forall ((s T@Seq_21167) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6621| s)) (= (|Seq#Length_6621| (|Seq#Drop_6621| s n)) (- (|Seq#Length_6621| s) n))) (=> (< (|Seq#Length_6621| s) n) (= (|Seq#Length_6621| (|Seq#Drop_6621| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6621| (|Seq#Drop_6621| s n)) (|Seq#Length_6621| s))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6621| (|Seq#Drop_6621| s n)))
 :pattern ( (|Seq#Length_6621| s) (|Seq#Drop_6621| s n))
)))
(assert (forall ((s@@0 T@Seq_2912) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2912| s@@0)) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (- (|Seq#Length_2912| s@@0) n@@0))) (=> (< (|Seq#Length_2912| s@@0) n@@0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (|Seq#Length_2912| s@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2912| s@@0) (|Seq#Drop_2912| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_9828) (Heap1 T@PolymorphicMapType_9828) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9828) (Mask T@PolymorphicMapType_9849) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9828) (Heap1@@0 T@PolymorphicMapType_9828) (Heap2 T@PolymorphicMapType_9828) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9888_23824) ) (!  (not (select (|PolymorphicMapType_10377_9888_25002#PolymorphicMapType_10377| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10377_9888_25002#PolymorphicMapType_10377| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9888_23691) ) (!  (not (select (|PolymorphicMapType_10377_9888_23691#PolymorphicMapType_10377| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10377_9888_23691#PolymorphicMapType_10377| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18753_5035) ) (!  (not (select (|PolymorphicMapType_10377_9888_5035#PolymorphicMapType_10377| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10377_9888_5035#PolymorphicMapType_10377| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9901_9902) ) (!  (not (select (|PolymorphicMapType_10377_9888_9902#PolymorphicMapType_10377| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10377_9888_9902#PolymorphicMapType_10377| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9888_53) ) (!  (not (select (|PolymorphicMapType_10377_9888_53#PolymorphicMapType_10377| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10377_9888_53#PolymorphicMapType_10377| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.655:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_21167) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6621| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6621| (|Seq#Drop_6621| s@@1 n@@1) j) (|Seq#Index_6621| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6621| (|Seq#Drop_6621| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2912) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2912| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0) (|Seq#Index_2912| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6621| |Seq#Empty_6621|) 0))
(assert (= (|Seq#Length_2912| |Seq#Empty_2912|) 0))
(assert (forall ((s@@3 T@Seq_21167) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6621| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6621| (|Seq#Update_6621| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6621| (|Seq#Update_6621| s@@3 i v) n@@3) (|Seq#Index_6621| s@@3 n@@3)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6621| (|Seq#Update_6621| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6621| s@@3 n@@3) (|Seq#Update_6621| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2912) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2912| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2912| s@@4 n@@4)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2912| s@@4 n@@4) (|Seq#Update_2912| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21167) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6621| s@@5)) (= (|Seq#Length_6621| (|Seq#Take_6621| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6621| s@@5) n@@5) (= (|Seq#Length_6621| (|Seq#Take_6621| s@@5 n@@5)) (|Seq#Length_6621| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6621| (|Seq#Take_6621| s@@5 n@@5)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6621| (|Seq#Take_6621| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6621| s@@5 n@@5) (|Seq#Length_6621| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2912) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2912| s@@6)) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2912| s@@6) n@@6) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) (|Seq#Length_2912| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2912| (|Seq#Take_2912| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2912| s@@6 n@@6) (|Seq#Length_2912| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.552:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21167) (x T@Ref) ) (!  (=> (|Seq#Contains_21167| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21167| s@@7 x)) (< (|Seq#Skolem_21167| s@@7 x) (|Seq#Length_6621| s@@7))) (= (|Seq#Index_6621| s@@7 (|Seq#Skolem_21167| s@@7 x)) x)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21167| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2912) (x@@0 Int) ) (!  (=> (|Seq#Contains_2912| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2912| s@@8 x@@0)) (< (|Seq#Skolem_2912| s@@8 x@@0) (|Seq#Length_2912| s@@8))) (= (|Seq#Index_2912| s@@8 (|Seq#Skolem_2912| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2912| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21167) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_6621| s@@9 n@@7) s@@9))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6621| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2912) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2912| s@@10 n@@8) s@@10))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2912| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.247:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.245:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.658:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9828) (ExhaleHeap T@PolymorphicMapType_9828) (Mask@@0 T@PolymorphicMapType_9849) (pm_f_32 T@Field_9888_23691) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9888_23755 Mask@@0 null pm_f_32) (IsPredicateField_9888_23782 pm_f_32)) (= (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@0) null (PredicateMaskField_9888 pm_f_32)) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap) null (PredicateMaskField_9888 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9888_23782 pm_f_32) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap) null (PredicateMaskField_9888 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9828) (ExhaleHeap@@0 T@PolymorphicMapType_9828) (Mask@@1 T@PolymorphicMapType_9849) (pm_f_32@@0 T@Field_9888_23691) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9888_23755 Mask@@1 null pm_f_32@@0) (IsWandField_9888_25529 pm_f_32@@0)) (= (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@1) null (WandMaskField_9888 pm_f_32@@0)) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@0) null (WandMaskField_9888 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9888_25529 pm_f_32@@0) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@0) null (WandMaskField_9888 pm_f_32@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21167| (|Seq#Singleton_6621| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21167| (|Seq#Singleton_6621| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21167) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6621| s@@11))) (= (|Seq#Index_6621| (|Seq#Take_6621| s@@11 n@@9) j@@3) (|Seq#Index_6621| s@@11 j@@3)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6621| (|Seq#Take_6621| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6621| s@@11 j@@3) (|Seq#Take_6621| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2912) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2912| s@@12))) (= (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4) (|Seq#Index_2912| s@@12 j@@4)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2912| s@@12 j@@4) (|Seq#Take_2912| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_21167) (t T@Seq_21167) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6621| s@@13))) (< n@@11 (|Seq#Length_6621| (|Seq#Append_21167| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6621| s@@13)) (|Seq#Length_6621| s@@13)) n@@11) (= (|Seq#Take_6621| (|Seq#Append_21167| s@@13 t) n@@11) (|Seq#Append_21167| s@@13 (|Seq#Take_6621| t (|Seq#Sub| n@@11 (|Seq#Length_6621| s@@13)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6621| (|Seq#Append_21167| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2912) (t@@0 T@Seq_2912) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2912| s@@14))) (< n@@12 (|Seq#Length_2912| (|Seq#Append_2912| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)) (|Seq#Length_2912| s@@14)) n@@12) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12) (|Seq#Append_2912| s@@14 (|Seq#Take_2912| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9828) (ExhaleHeap@@1 T@PolymorphicMapType_9828) (Mask@@2 T@PolymorphicMapType_9849) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@2) o_55 $allocated) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_9888_23691) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9888_9888 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9888_9888 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_21167) (s1 T@Seq_21167) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6621|)) (not (= s1 |Seq#Empty_6621|))) (<= (|Seq#Length_6621| s0) n@@13)) (< n@@13 (|Seq#Length_6621| (|Seq#Append_21167| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6621| s0)) (|Seq#Length_6621| s0)) n@@13) (= (|Seq#Index_6621| (|Seq#Append_21167| s0 s1) n@@13) (|Seq#Index_6621| s1 (|Seq#Sub| n@@13 (|Seq#Length_6621| s0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6621| (|Seq#Append_21167| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2912) (s1@@0 T@Seq_2912) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2912|)) (not (= s1@@0 |Seq#Empty_2912|))) (<= (|Seq#Length_2912| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2912| (|Seq#Append_2912| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0)) (|Seq#Length_2912| s0@@0)) n@@14) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14) (|Seq#Index_2912| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6575_5035 f_7)))
(assert  (not (IsWandField_6575_5035 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9828) (ExhaleHeap@@2 T@PolymorphicMapType_9828) (Mask@@3 T@PolymorphicMapType_9849) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9849) (o_2@@4 T@Ref) (f_4@@4 T@Field_9888_23824) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6575_29075 f_4@@4))) (not (IsWandField_6575_29091 f_4@@4))) (<= (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9849) (o_2@@5 T@Ref) (f_4@@5 T@Field_9888_23691) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9888_23782 f_4@@5))) (not (IsWandField_9888_25529 f_4@@5))) (<= (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9849) (o_2@@6 T@Ref) (f_4@@6 T@Field_9901_9902) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6575_9902 f_4@@6))) (not (IsWandField_6575_9902 f_4@@6))) (<= (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9849) (o_2@@7 T@Ref) (f_4@@7 T@Field_9888_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6575_53 f_4@@7))) (not (IsWandField_6575_53 f_4@@7))) (<= (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9849) (o_2@@8 T@Ref) (f_4@@8 T@Field_18753_5035) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6575_5035 f_4@@8))) (not (IsWandField_6575_5035 f_4@@8))) (<= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9849) (o_2@@9 T@Ref) (f_4@@9 T@Field_9888_23824) ) (! (= (HasDirectPerm_9888_29529 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_29529 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9849) (o_2@@10 T@Ref) (f_4@@10 T@Field_9888_23691) ) (! (= (HasDirectPerm_9888_23755 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_23755 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9849) (o_2@@11 T@Ref) (f_4@@11 T@Field_18753_5035) ) (! (= (HasDirectPerm_9888_5035 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_5035 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9849) (o_2@@12 T@Ref) (f_4@@12 T@Field_9901_9902) ) (! (= (HasDirectPerm_9888_9902 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_9902 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9849) (o_2@@13 T@Ref) (f_4@@13 T@Field_9888_53) ) (! (= (HasDirectPerm_9888_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9828) (ExhaleHeap@@3 T@PolymorphicMapType_9828) (Mask@@14 T@PolymorphicMapType_9849) (pm_f_32@@1 T@Field_9888_23691) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_9888_23755 Mask@@14 null pm_f_32@@1) (IsPredicateField_9888_23782 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_10377_9888_53#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@4) null (PredicateMaskField_9888 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@4) o2_32 f_54) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_9901_9902) ) (!  (=> (select (|PolymorphicMapType_10377_9888_9902#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@4) null (PredicateMaskField_9888 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@4) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_18753_5035) ) (!  (=> (select (|PolymorphicMapType_10377_9888_5035#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@4) null (PredicateMaskField_9888 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@4) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_9888_23691) ) (!  (=> (select (|PolymorphicMapType_10377_9888_23691#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@4) null (PredicateMaskField_9888 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@4) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_9888_23824) ) (!  (=> (select (|PolymorphicMapType_10377_9888_25002#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@4) null (PredicateMaskField_9888 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@4) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_9888_23782 pm_f_32@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9828) (ExhaleHeap@@4 T@PolymorphicMapType_9828) (Mask@@15 T@PolymorphicMapType_9849) (pm_f_32@@2 T@Field_9888_23691) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_9888_23755 Mask@@15 null pm_f_32@@2) (IsWandField_9888_25529 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_10377_9888_53#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@5) null (WandMaskField_9888 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@5) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_9901_9902) ) (!  (=> (select (|PolymorphicMapType_10377_9888_9902#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@5) null (WandMaskField_9888 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@5) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_18753_5035) ) (!  (=> (select (|PolymorphicMapType_10377_9888_5035#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@5) null (WandMaskField_9888 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@5) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_9888_23691) ) (!  (=> (select (|PolymorphicMapType_10377_9888_23691#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@5) null (WandMaskField_9888 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@5) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_9888_23824) ) (!  (=> (select (|PolymorphicMapType_10377_9888_25002#PolymorphicMapType_10377| (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@5) null (WandMaskField_9888 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@5) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_9888_25529 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.550:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9828) (ExhaleHeap@@5 T@PolymorphicMapType_9828) (Mask@@16 T@PolymorphicMapType_9849) (o_55@@0 T@Ref) (f_54@@9 T@Field_9888_23824) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_9888_29529 Mask@@16 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@6) o_55@@0 f_54@@9) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9828) (ExhaleHeap@@6 T@PolymorphicMapType_9828) (Mask@@17 T@PolymorphicMapType_9849) (o_55@@1 T@Ref) (f_54@@10 T@Field_9888_23691) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_9888_23755 Mask@@17 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@7) o_55@@1 f_54@@10) (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9828) (ExhaleHeap@@7 T@PolymorphicMapType_9828) (Mask@@18 T@PolymorphicMapType_9849) (o_55@@2 T@Ref) (f_54@@11 T@Field_18753_5035) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_9888_5035 Mask@@18 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@8) o_55@@2 f_54@@11) (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9828) (ExhaleHeap@@8 T@PolymorphicMapType_9828) (Mask@@19 T@PolymorphicMapType_9849) (o_55@@3 T@Ref) (f_54@@12 T@Field_9901_9902) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_9888_9902 Mask@@19 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@9) o_55@@3 f_54@@12) (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9828) (ExhaleHeap@@9 T@PolymorphicMapType_9828) (Mask@@20 T@PolymorphicMapType_9849) (o_55@@4 T@Ref) (f_54@@13 T@Field_9888_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_9888_53 Mask@@20 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@10) o_55@@4 f_54@@13) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| ExhaleHeap@@9) o_55@@4 f_54@@13))
)))
(assert (forall ((s0@@1 T@Seq_21167) (s1@@1 T@Seq_21167) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6621|)) (not (= s1@@1 |Seq#Empty_6621|))) (= (|Seq#Length_6621| (|Seq#Append_21167| s0@@1 s1@@1)) (+ (|Seq#Length_6621| s0@@1) (|Seq#Length_6621| s1@@1))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6621| (|Seq#Append_21167| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2912) (s1@@2 T@Seq_2912) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2912|)) (not (= s1@@2 |Seq#Empty_2912|))) (= (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)) (+ (|Seq#Length_2912| s0@@2) (|Seq#Length_2912| s1@@2))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9888_23824) ) (! (= (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_9888_23691) ) (! (= (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9901_9902) ) (! (= (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9888_53) ) (! (= (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18753_5035) ) (! (= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_21167) (t@@1 T@Seq_21167) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6621| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6621| s@@15)) (|Seq#Length_6621| s@@15)) n@@15) (= (|Seq#Drop_6621| (|Seq#Append_21167| s@@15 t@@1) n@@15) (|Seq#Drop_6621| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6621| s@@15))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6621| (|Seq#Append_21167| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2912) (t@@2 T@Seq_2912) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2912| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16)) (|Seq#Length_2912| s@@16)) n@@16) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16) (|Seq#Drop_2912| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9849) (SummandMask1 T@PolymorphicMapType_9849) (SummandMask2 T@PolymorphicMapType_9849) (o_2@@19 T@Ref) (f_4@@19 T@Field_9888_23824) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9849) (SummandMask1@@0 T@PolymorphicMapType_9849) (SummandMask2@@0 T@PolymorphicMapType_9849) (o_2@@20 T@Ref) (f_4@@20 T@Field_9888_23691) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9849) (SummandMask1@@1 T@PolymorphicMapType_9849) (SummandMask2@@1 T@PolymorphicMapType_9849) (o_2@@21 T@Ref) (f_4@@21 T@Field_9901_9902) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9849) (SummandMask1@@2 T@PolymorphicMapType_9849) (SummandMask2@@2 T@PolymorphicMapType_9849) (o_2@@22 T@Ref) (f_4@@22 T@Field_9888_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9849) (SummandMask1@@3 T@PolymorphicMapType_9849) (SummandMask2@@3 T@PolymorphicMapType_9849) (o_2@@23 T@Ref) (f_4@@23 T@Field_18753_5035) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.549:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@1 T@Seq_21167) (b@@0 T@Seq_21167) ) (!  (=> (|Seq#Equal_21167| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21167| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_2912) (b@@1 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2912| a@@2 b@@1))
)))
(assert (forall ((s@@17 T@Seq_21167) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6621| s@@17))) (|Seq#ContainsTrigger_6621| s@@17 (|Seq#Index_6621| s@@17 i@@3)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6621| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2912) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2912| s@@18))) (|Seq#ContainsTrigger_2912| s@@18 (|Seq#Index_2912| s@@18 i@@4)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2912| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_21167) (s1@@3 T@Seq_21167) ) (!  (and (=> (= s0@@3 |Seq#Empty_6621|) (= (|Seq#Append_21167| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6621|) (= (|Seq#Append_21167| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21167| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2912) (s1@@4 T@Seq_2912) ) (!  (and (=> (= s0@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2912| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_6621| (|Seq#Singleton_6621| t@@3) 0) t@@3)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6621| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2912| (|Seq#Singleton_2912| t@@4) 0) t@@4)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2912| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21167) ) (! (<= 0 (|Seq#Length_6621| s@@19))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6621| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2912) ) (! (<= 0 (|Seq#Length_2912| s@@20))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2912| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_21167) (s1@@5 T@Seq_21167) ) (!  (=> (|Seq#Equal_21167| s0@@5 s1@@5) (and (= (|Seq#Length_6621| s0@@5) (|Seq#Length_6621| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_6621| s0@@5))) (= (|Seq#Index_6621| s0@@5 j@@6) (|Seq#Index_6621| s1@@5 j@@6)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6621| s0@@5 j@@6))
 :pattern ( (|Seq#Index_6621| s1@@5 j@@6))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21167| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2912) (s1@@6 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| s0@@6 s1@@6) (and (= (|Seq#Length_2912| s0@@6) (|Seq#Length_2912| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2912| s0@@6))) (= (|Seq#Index_2912| s0@@6 j@@7) (|Seq#Index_2912| s1@@6 j@@7)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2912| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2912| s1@@6 j@@7))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2912| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_6621| (|Seq#Singleton_6621| t@@5)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6621| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2912| (|Seq#Singleton_2912| t@@6)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2912| t@@6))
)))
(assert (forall ((s@@21 T@Seq_21167) (t@@7 T@Seq_21167) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6621| s@@21))) (= (|Seq#Take_6621| (|Seq#Append_21167| s@@21 t@@7) n@@17) (|Seq#Take_6621| s@@21 n@@17)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6621| (|Seq#Append_21167| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2912) (t@@8 T@Seq_2912) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2912| s@@22))) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18) (|Seq#Take_2912| s@@22 n@@18)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21167) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6621| s@@23))) (= (|Seq#Length_6621| (|Seq#Update_6621| s@@23 i@@5 v@@2)) (|Seq#Length_6621| s@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6621| (|Seq#Update_6621| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6621| s@@23) (|Seq#Update_6621| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2912) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2912| s@@24))) (= (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)) (|Seq#Length_2912| s@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2912| s@@24) (|Seq#Update_2912| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9828) (o_54 T@Ref) (f_8 T@Field_9888_23691) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@11) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@11) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@11) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@11) (store (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@11) o_54 f_8 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@11) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@11) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@11) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@11) (store (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@11) o_54 f_8 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9828) (o_54@@0 T@Ref) (f_8@@0 T@Field_9888_23824) (v@@5 T@PolymorphicMapType_10377) ) (! (succHeap Heap@@12 (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@12) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@12) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@12) (store (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@12) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@12) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@12) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@12) (store (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@12) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9828) (o_54@@1 T@Ref) (f_8@@1 T@Field_18753_5035) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@13) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@13) (store (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@13) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@13) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@13) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@13) (store (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@13) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@13) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9828) (o_54@@2 T@Ref) (f_8@@2 T@Field_9901_9902) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@14) (store (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@14) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@14) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@14) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9828 (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@14) (store (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@14) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@14) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@14) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9828) (o_54@@3 T@Ref) (f_8@@3 T@Field_9888_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_9828 (store (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@15) o_54@@3 f_8@@3 v@@8) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@15) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@15) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@15) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9828 (store (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@15) o_54@@3 f_8@@3 v@@8) (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@15) (|PolymorphicMapType_9828_6575_5035#PolymorphicMapType_9828| Heap@@15) (|PolymorphicMapType_9828_9888_23868#PolymorphicMapType_9828| Heap@@15) (|PolymorphicMapType_9828_9888_23691#PolymorphicMapType_9828| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_21167) (t@@9 T@Seq_21167) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6621| s@@25))) (= (|Seq#Drop_6621| (|Seq#Append_21167| s@@25 t@@9) n@@19) (|Seq#Append_21167| (|Seq#Drop_6621| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6621| (|Seq#Append_21167| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2912) (t@@10 T@Seq_2912) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2912| s@@26))) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20) (|Seq#Append_2912| (|Seq#Drop_2912| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.653:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.654:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_21167) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6621| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6621| (|Seq#Drop_6621| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6621| s@@27 i@@7))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6621| s@@27 n@@21) (|Seq#Index_6621| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2912) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2912| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2912| s@@28 i@@8))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Index_2912| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_21167) (s1@@7 T@Seq_21167) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6621|)) (not (= s1@@7 |Seq#Empty_6621|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6621| s0@@7))) (= (|Seq#Index_6621| (|Seq#Append_21167| s0@@7 s1@@7) n@@23) (|Seq#Index_6621| s0@@7 n@@23)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6621| (|Seq#Append_21167| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6621| s0@@7 n@@23) (|Seq#Append_21167| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2912) (s1@@8 T@Seq_2912) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2912|)) (not (= s1@@8 |Seq#Empty_2912|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2912| s0@@8))) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24) (|Seq#Index_2912| s0@@8 n@@24)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2912| s0@@8 n@@24) (|Seq#Append_2912| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21167) (s1@@9 T@Seq_21167) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6621|)) (not (= s1@@9 |Seq#Empty_6621|))) (<= 0 m)) (< m (|Seq#Length_6621| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6621| s0@@9)) (|Seq#Length_6621| s0@@9)) m) (= (|Seq#Index_6621| (|Seq#Append_21167| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6621| s0@@9))) (|Seq#Index_6621| s1@@9 m))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6621| s1@@9 m) (|Seq#Append_21167| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2912) (s1@@10 T@Seq_2912) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2912|)) (not (= s1@@10 |Seq#Empty_2912|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2912| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10)) (|Seq#Length_2912| s0@@10)) m@@0) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10))) (|Seq#Index_2912| s1@@10 m@@0))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2912| s1@@10 m@@0) (|Seq#Append_2912| s0@@10 s1@@10))
)))
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_9901_9902) (Heap@@16 T@PolymorphicMapType_9828) ) (!  (=> (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@16) o_54@@4 $allocated) (select (|PolymorphicMapType_9828_6220_53#PolymorphicMapType_9828| Heap@@16) (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@16) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9828_6223_6224#PolymorphicMapType_9828| Heap@@16) o_54@@4 f_24))
)))
(assert (forall ((s@@29 T@Seq_21167) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6621| s@@29))) (= (|Seq#Index_6621| s@@29 i@@9) x@@3)) (|Seq#Contains_21167| s@@29 x@@3))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21167| s@@29 x@@3) (|Seq#Index_6621| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2912) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2912| s@@30))) (= (|Seq#Index_2912| s@@30 i@@10) x@@4)) (|Seq#Contains_2912| s@@30 x@@4))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2912| s@@30 x@@4) (|Seq#Index_2912| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_21167) (s1@@11 T@Seq_21167) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21167| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21167| s0@@11 s1@@11))) (not (= (|Seq#Length_6621| s0@@11) (|Seq#Length_6621| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21167| s0@@11 s1@@11))) (= (|Seq#Length_6621| s0@@11) (|Seq#Length_6621| s1@@11))) (= (|Seq#SkolemDiff_21167| s0@@11 s1@@11) (|Seq#SkolemDiff_21167| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21167| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21167| s0@@11 s1@@11) (|Seq#Length_6621| s0@@11))) (not (= (|Seq#Index_6621| s0@@11 (|Seq#SkolemDiff_21167| s0@@11 s1@@11)) (|Seq#Index_6621| s1@@11 (|Seq#SkolemDiff_21167| s0@@11 s1@@11))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21167| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2912) (s1@@12 T@Seq_2912) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2912| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (not (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))) (= (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#SkolemDiff_2912| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#Length_2912| s0@@12))) (not (= (|Seq#Index_2912| s0@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12)) (|Seq#Index_2912| s1@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2912| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9888_23691) (v_1@@0 T@FrameType) (q T@Field_9888_23691) (w@@0 T@FrameType) (r T@Field_9888_23691) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9888_9888 p@@1 v_1@@0 q w@@0) (InsidePredicate_9888_9888 q w@@0 r u)) (InsidePredicate_9888_9888 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9888_9888 p@@1 v_1@@0 q w@@0) (InsidePredicate_9888_9888 q w@@0 r u))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.659:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((s@@31 T@Seq_21167) ) (!  (=> (= (|Seq#Length_6621| s@@31) 0) (= s@@31 |Seq#Empty_6621|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6621| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2912) ) (!  (=> (= (|Seq#Length_2912| s@@32) 0) (= s@@32 |Seq#Empty_2912|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2912| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21167) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6621| s@@33 n@@25) |Seq#Empty_6621|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6621| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2912) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2912| s@@34 n@@26) |Seq#Empty_2912|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2912| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S () T@Seq_21167)
(declare-fun i_4 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_9849)
(declare-fun Heap@@17 () T@PolymorphicMapType_9828)
(declare-fun a_2 () Int)
(declare-fun b_24 () Int)
(declare-fun i_3 () Int)
(declare-fun j_15 () Int)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_4)) (= (ControlFlow 0 19) 15)) anon7_correct)))
(let ((anon12_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_4) (and (=> (= (ControlFlow 0 16) (- 0 18)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (< i_4 (|Seq#Length_6621| S))) (=> (< i_4 (|Seq#Length_6621| S)) (=> (= (ControlFlow 0 16) 15) anon7_correct))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 14)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6621| S i_3_2) (|Seq#Index_6621| S i_3_3))))
 :qid |stdinbpl.947:15|
 :skolemid |125|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@0)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_6621| S i_3_2@@0) (|Seq#Index_6621| S i_3_3@@0))))
 :qid |stdinbpl.947:15|
 :skolemid |125|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_6621| S i_3_2@@1)) (= (invRecv2 (|Seq#Index_6621| S i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.953:22|
 :skolemid |126|
 :pattern ( (|Seq#Index_6621| S i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@1))
 :pattern ( (|Seq#Index_6621| S i_3_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) (invRecv2 o_9)) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (|Seq#Index_6621| S (invRecv2 o_9)) o_9))
 :qid |stdinbpl.957:22|
 :skolemid |127|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@2) (not (= (|Seq#Index_6621| S i_3_2@@2) null)))
 :qid |stdinbpl.963:22|
 :skolemid |128|
 :pattern ( (|Seq#Index_6621| S i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@2))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) i_3_2@@2))
 :pattern ( (|Seq#Index_6621| S i_3_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_6621| S (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_6621| S)) (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.969:22|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_9888_53) ) (!  (=> true (= (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.973:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9849_6575_53#PolymorphicMapType_9849| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_9901_9902) ) (!  (=> true (= (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.973:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9849_6575_9902#PolymorphicMapType_9849| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_18753_5035) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.973:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9849_6575_5035#PolymorphicMapType_9849| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_9888_23691) ) (!  (=> true (= (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.973:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9849_6575_23691#PolymorphicMapType_9849| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_9888_23824) ) (!  (=> true (= (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.973:29|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9849_6575_27946#PolymorphicMapType_9849| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (>= a_2 0) (< a_2 b_24)) (and (< b_24 (|Seq#Length_6621| S)) (state Heap@@17 QPMask@0)))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (>= a_2 0)) (=> (>= a_2 0) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< a_2 (|Seq#Length_6621| S))) (=> (< a_2 (|Seq#Length_6621| S)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= b_24 0)) (=> (>= b_24 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< b_24 (|Seq#Length_6621| S))) (=> (< b_24 (|Seq#Length_6621| S)) (=> (= (ControlFlow 0 9) (- 0 8)) (not (= (|Seq#Index_6621| S a_2) (|Seq#Index_6621| S b_24))))))))))))))))))
(let ((anon9_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 j_1) (< j_1 (|Seq#Length_6621| S)))) (not (= (|Seq#Index_6621| S i_1) (|Seq#Index_6621| S j_1))))
 :qid |stdinbpl.929:20|
 :skolemid |124|
 :pattern ( (|Seq#Index_6621| S i_1) (|Seq#Index_6621| S j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 20) 9) anon11_Else_correct) (=> (= (ControlFlow 0 20) 16) anon12_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct)))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and (<= 0 i_3) (and (< i_3 j_15) (< j_15 (|Seq#Length_6621| S))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (<= 0 i_3) (and (< i_3 j_15) (< j_15 (|Seq#Length_6621| S)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_3 (|Seq#Length_6621| S))) (=> (< i_3 (|Seq#Length_6621| S)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_15 0)) (=> (>= j_15 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_15 (|Seq#Length_6621| S))) (=> (< j_15 (|Seq#Length_6621| S)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 21) 20) anon9_Else_correct) (=> (= (ControlFlow 0 21) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 21) 7) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
