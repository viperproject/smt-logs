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
(declare-sort T@Field_8182_53 0)
(declare-sort T@Field_8195_8196 0)
(declare-sort T@Field_14203_3034 0)
(declare-sort T@Field_5512_21379 0)
(declare-sort T@Field_5512_21246 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8143 0)) (((PolymorphicMapType_8143 (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| (Array T@Ref T@Field_14203_3034 Real)) (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| (Array T@Ref T@Field_8182_53 Real)) (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| (Array T@Ref T@Field_8195_8196 Real)) (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| (Array T@Ref T@Field_5512_21246 Real)) (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| (Array T@Ref T@Field_5512_21379 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8671 0)) (((PolymorphicMapType_8671 (|PolymorphicMapType_8671_8182_53#PolymorphicMapType_8671| (Array T@Ref T@Field_8182_53 Bool)) (|PolymorphicMapType_8671_8182_8196#PolymorphicMapType_8671| (Array T@Ref T@Field_8195_8196 Bool)) (|PolymorphicMapType_8671_8182_3034#PolymorphicMapType_8671| (Array T@Ref T@Field_14203_3034 Bool)) (|PolymorphicMapType_8671_8182_21246#PolymorphicMapType_8671| (Array T@Ref T@Field_5512_21246 Bool)) (|PolymorphicMapType_8671_8182_22557#PolymorphicMapType_8671| (Array T@Ref T@Field_5512_21379 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8122 0)) (((PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| (Array T@Ref T@Field_8182_53 Bool)) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| (Array T@Ref T@Field_8195_8196 T@Ref)) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| (Array T@Ref T@Field_14203_3034 Int)) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| (Array T@Ref T@Field_5512_21379 T@PolymorphicMapType_8671)) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| (Array T@Ref T@Field_5512_21246 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8182_53)
(declare-fun Integer_value () T@Field_14203_3034)
(declare-sort T@Seq_14248 0)
(declare-fun |Seq#Length_5516| (T@Seq_14248) Int)
(declare-fun |Seq#Drop_5516| (T@Seq_14248 Int) T@Seq_14248)
(declare-sort T@Seq_2912 0)
(declare-fun |Seq#Length_2912| (T@Seq_2912) Int)
(declare-fun |Seq#Drop_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun succHeap (T@PolymorphicMapType_8122 T@PolymorphicMapType_8122) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8122 T@PolymorphicMapType_8122) Bool)
(declare-fun state (T@PolymorphicMapType_8122 T@PolymorphicMapType_8143) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8143) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8671)
(declare-fun |Seq#Index_5516| (T@Seq_14248 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2912| (T@Seq_2912 Int) Int)
(declare-fun |Seq#Empty_5516| () T@Seq_14248)
(declare-fun |Seq#Empty_2912| () T@Seq_2912)
(declare-fun |Seq#Update_5516| (T@Seq_14248 Int T@Ref) T@Seq_14248)
(declare-fun |Seq#Update_2912| (T@Seq_2912 Int Int) T@Seq_2912)
(declare-fun |Seq#Take_5516| (T@Seq_14248 Int) T@Seq_14248)
(declare-fun |Seq#Take_2912| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun |Seq#Contains_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2912)
(declare-fun |Seq#Contains_14248| (T@Seq_14248 T@Ref) Bool)
(declare-fun |Seq#Skolem_14248| (T@Seq_14248 T@Ref) Int)
(declare-fun |Seq#Skolem_2912| (T@Seq_2912 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8122 T@PolymorphicMapType_8122 T@PolymorphicMapType_8143) Bool)
(declare-fun IsPredicateField_5512_21337 (T@Field_5512_21246) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5512 (T@Field_5512_21246) T@Field_5512_21379)
(declare-fun HasDirectPerm_5512_21310 (T@PolymorphicMapType_8143 T@Ref T@Field_5512_21246) Bool)
(declare-fun IsWandField_5512_23084 (T@Field_5512_21246) Bool)
(declare-fun WandMaskField_5512 (T@Field_5512_21246) T@Field_5512_21379)
(declare-fun |Seq#Singleton_5516| (T@Ref) T@Seq_14248)
(declare-fun |Seq#Singleton_2912| (Int) T@Seq_2912)
(declare-fun |Seq#Append_14248| (T@Seq_14248 T@Seq_14248) T@Seq_14248)
(declare-fun |Seq#Append_2912| (T@Seq_2912 T@Seq_2912) T@Seq_2912)
(declare-fun dummyHeap () T@PolymorphicMapType_8122)
(declare-fun ZeroMask () T@PolymorphicMapType_8143)
(declare-fun InsidePredicate_8182_8182 (T@Field_5512_21246 T@FrameType T@Field_5512_21246 T@FrameType) Bool)
(declare-fun IsPredicateField_5512_3034 (T@Field_14203_3034) Bool)
(declare-fun IsWandField_5512_3034 (T@Field_14203_3034) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5512_26630 (T@Field_5512_21379) Bool)
(declare-fun IsWandField_5512_26646 (T@Field_5512_21379) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5512_8196 (T@Field_8195_8196) Bool)
(declare-fun IsWandField_5512_8196 (T@Field_8195_8196) Bool)
(declare-fun IsPredicateField_5512_53 (T@Field_8182_53) Bool)
(declare-fun IsWandField_5512_53 (T@Field_8182_53) Bool)
(declare-fun HasDirectPerm_5512_27084 (T@PolymorphicMapType_8143 T@Ref T@Field_5512_21379) Bool)
(declare-fun HasDirectPerm_5512_8196 (T@PolymorphicMapType_8143 T@Ref T@Field_8195_8196) Bool)
(declare-fun HasDirectPerm_5512_53 (T@PolymorphicMapType_8143 T@Ref T@Field_8182_53) Bool)
(declare-fun HasDirectPerm_5512_3034 (T@PolymorphicMapType_8143 T@Ref T@Field_14203_3034) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8143 T@PolymorphicMapType_8143 T@PolymorphicMapType_8143) Bool)
(declare-fun |Seq#Equal_14248| (T@Seq_14248 T@Seq_14248) Bool)
(declare-fun |Seq#Equal_2912| (T@Seq_2912 T@Seq_2912) Bool)
(declare-fun |Seq#ContainsTrigger_5516| (T@Seq_14248 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#SkolemDiff_14248| (T@Seq_14248 T@Seq_14248) Int)
(declare-fun |Seq#SkolemDiff_2912| (T@Seq_2912 T@Seq_2912) Int)
(assert (forall ((s T@Seq_14248) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5516| s)) (= (|Seq#Length_5516| (|Seq#Drop_5516| s n)) (- (|Seq#Length_5516| s) n))) (=> (< (|Seq#Length_5516| s) n) (= (|Seq#Length_5516| (|Seq#Drop_5516| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5516| (|Seq#Drop_5516| s n)) (|Seq#Length_5516| s))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5516| (|Seq#Drop_5516| s n)))
 :pattern ( (|Seq#Length_5516| s) (|Seq#Drop_5516| s n))
)))
(assert (forall ((s@@0 T@Seq_2912) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2912| s@@0)) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (- (|Seq#Length_2912| s@@0) n@@0))) (=> (< (|Seq#Length_2912| s@@0) n@@0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)) (|Seq#Length_2912| s@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2912| (|Seq#Drop_2912| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2912| s@@0) (|Seq#Drop_2912| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8122) (Heap1 T@PolymorphicMapType_8122) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8122) (Mask T@PolymorphicMapType_8143) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8122) (Heap1@@0 T@PolymorphicMapType_8122) (Heap2 T@PolymorphicMapType_8122) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5512_21379) ) (!  (not (select (|PolymorphicMapType_8671_8182_22557#PolymorphicMapType_8671| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8671_8182_22557#PolymorphicMapType_8671| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5512_21246) ) (!  (not (select (|PolymorphicMapType_8671_8182_21246#PolymorphicMapType_8671| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8671_8182_21246#PolymorphicMapType_8671| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14203_3034) ) (!  (not (select (|PolymorphicMapType_8671_8182_3034#PolymorphicMapType_8671| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8671_8182_3034#PolymorphicMapType_8671| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8195_8196) ) (!  (not (select (|PolymorphicMapType_8671_8182_8196#PolymorphicMapType_8671| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8671_8182_8196#PolymorphicMapType_8671| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8182_53) ) (!  (not (select (|PolymorphicMapType_8671_8182_53#PolymorphicMapType_8671| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8671_8182_53#PolymorphicMapType_8671| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_14248) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5516| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5516| (|Seq#Drop_5516| s@@1 n@@1) j) (|Seq#Index_5516| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5516| (|Seq#Drop_5516| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2912) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2912| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0) (|Seq#Index_2912| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2912| (|Seq#Drop_2912| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5516| |Seq#Empty_5516|) 0))
(assert (= (|Seq#Length_2912| |Seq#Empty_2912|) 0))
(assert (forall ((s@@3 T@Seq_14248) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5516| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_5516| (|Seq#Update_5516| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_5516| (|Seq#Update_5516| s@@3 i v) n@@3) (|Seq#Index_5516| s@@3 n@@3)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5516| (|Seq#Update_5516| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_5516| s@@3 n@@3) (|Seq#Update_5516| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2912) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2912| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2912| s@@4 n@@4)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2912| s@@4 n@@4) (|Seq#Update_2912| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_14248) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5516| s@@5)) (= (|Seq#Length_5516| (|Seq#Take_5516| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5516| s@@5) n@@5) (= (|Seq#Length_5516| (|Seq#Take_5516| s@@5 n@@5)) (|Seq#Length_5516| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5516| (|Seq#Take_5516| s@@5 n@@5)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5516| (|Seq#Take_5516| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5516| s@@5 n@@5) (|Seq#Length_5516| s@@5))
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
(assert (forall ((s@@7 T@Seq_14248) (x T@Ref) ) (!  (=> (|Seq#Contains_14248| s@@7 x) (and (and (<= 0 (|Seq#Skolem_14248| s@@7 x)) (< (|Seq#Skolem_14248| s@@7 x) (|Seq#Length_5516| s@@7))) (= (|Seq#Index_5516| s@@7 (|Seq#Skolem_14248| s@@7 x)) x)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_14248| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2912) (x@@0 Int) ) (!  (=> (|Seq#Contains_2912| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2912| s@@8 x@@0)) (< (|Seq#Skolem_2912| s@@8 x@@0) (|Seq#Length_2912| s@@8))) (= (|Seq#Index_2912| s@@8 (|Seq#Skolem_2912| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2912| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_14248) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5516| s@@9 n@@7) s@@9))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5516| s@@9 n@@7))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_8122) (ExhaleHeap T@PolymorphicMapType_8122) (Mask@@0 T@PolymorphicMapType_8143) (pm_f_16 T@Field_5512_21246) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5512_21310 Mask@@0 null pm_f_16) (IsPredicateField_5512_21337 pm_f_16)) (= (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@0) null (PredicateMaskField_5512 pm_f_16)) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap) null (PredicateMaskField_5512 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5512_21337 pm_f_16) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap) null (PredicateMaskField_5512 pm_f_16)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8122) (ExhaleHeap@@0 T@PolymorphicMapType_8122) (Mask@@1 T@PolymorphicMapType_8143) (pm_f_16@@0 T@Field_5512_21246) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5512_21310 Mask@@1 null pm_f_16@@0) (IsWandField_5512_23084 pm_f_16@@0)) (= (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@1) null (WandMaskField_5512 pm_f_16@@0)) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@0) null (WandMaskField_5512 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5512_23084 pm_f_16@@0) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@0) null (WandMaskField_5512 pm_f_16@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_14248| (|Seq#Singleton_5516| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_14248| (|Seq#Singleton_5516| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_14248) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5516| s@@11))) (= (|Seq#Index_5516| (|Seq#Take_5516| s@@11 n@@9) j@@3) (|Seq#Index_5516| s@@11 j@@3)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5516| (|Seq#Take_5516| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5516| s@@11 j@@3) (|Seq#Take_5516| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2912) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2912| s@@12))) (= (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4) (|Seq#Index_2912| s@@12 j@@4)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2912| (|Seq#Take_2912| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2912| s@@12 j@@4) (|Seq#Take_2912| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_14248) (t T@Seq_14248) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5516| s@@13))) (< n@@11 (|Seq#Length_5516| (|Seq#Append_14248| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5516| s@@13)) (|Seq#Length_5516| s@@13)) n@@11) (= (|Seq#Take_5516| (|Seq#Append_14248| s@@13 t) n@@11) (|Seq#Append_14248| s@@13 (|Seq#Take_5516| t (|Seq#Sub| n@@11 (|Seq#Length_5516| s@@13)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5516| (|Seq#Append_14248| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2912) (t@@0 T@Seq_2912) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2912| s@@14))) (< n@@12 (|Seq#Length_2912| (|Seq#Append_2912| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)) (|Seq#Length_2912| s@@14)) n@@12) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12) (|Seq#Append_2912| s@@14 (|Seq#Take_2912| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8122) (ExhaleHeap@@1 T@PolymorphicMapType_8122) (Mask@@2 T@PolymorphicMapType_8143) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@2) o_34 $allocated) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_5512_21246) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8182_8182 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8182_8182 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_14248) (s1 T@Seq_14248) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5516|)) (not (= s1 |Seq#Empty_5516|))) (<= (|Seq#Length_5516| s0) n@@13)) (< n@@13 (|Seq#Length_5516| (|Seq#Append_14248| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5516| s0)) (|Seq#Length_5516| s0)) n@@13) (= (|Seq#Index_5516| (|Seq#Append_14248| s0 s1) n@@13) (|Seq#Index_5516| s1 (|Seq#Sub| n@@13 (|Seq#Length_5516| s0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5516| (|Seq#Append_14248| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2912) (s1@@0 T@Seq_2912) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2912|)) (not (= s1@@0 |Seq#Empty_2912|))) (<= (|Seq#Length_2912| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2912| (|Seq#Append_2912| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0)) (|Seq#Length_2912| s0@@0)) n@@14) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14) (|Seq#Index_2912| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5512_3034 Integer_value)))
(assert  (not (IsWandField_5512_3034 Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8122) (ExhaleHeap@@2 T@PolymorphicMapType_8122) (Mask@@3 T@PolymorphicMapType_8143) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8143) (o_2@@4 T@Ref) (f_4@@4 T@Field_5512_21379) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5512_26630 f_4@@4))) (not (IsWandField_5512_26646 f_4@@4))) (<= (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8143) (o_2@@5 T@Ref) (f_4@@5 T@Field_5512_21246) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5512_21337 f_4@@5))) (not (IsWandField_5512_23084 f_4@@5))) (<= (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8143) (o_2@@6 T@Ref) (f_4@@6 T@Field_8195_8196) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5512_8196 f_4@@6))) (not (IsWandField_5512_8196 f_4@@6))) (<= (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8143) (o_2@@7 T@Ref) (f_4@@7 T@Field_8182_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5512_53 f_4@@7))) (not (IsWandField_5512_53 f_4@@7))) (<= (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8143) (o_2@@8 T@Ref) (f_4@@8 T@Field_14203_3034) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5512_3034 f_4@@8))) (not (IsWandField_5512_3034 f_4@@8))) (<= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8143) (o_2@@9 T@Ref) (f_4@@9 T@Field_5512_21379) ) (! (= (HasDirectPerm_5512_27084 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5512_27084 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8143) (o_2@@10 T@Ref) (f_4@@10 T@Field_5512_21246) ) (! (= (HasDirectPerm_5512_21310 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5512_21310 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8143) (o_2@@11 T@Ref) (f_4@@11 T@Field_8195_8196) ) (! (= (HasDirectPerm_5512_8196 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5512_8196 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8143) (o_2@@12 T@Ref) (f_4@@12 T@Field_8182_53) ) (! (= (HasDirectPerm_5512_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5512_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8143) (o_2@@13 T@Ref) (f_4@@13 T@Field_14203_3034) ) (! (= (HasDirectPerm_5512_3034 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5512_3034 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8122) (ExhaleHeap@@3 T@PolymorphicMapType_8122) (Mask@@14 T@PolymorphicMapType_8143) (pm_f_16@@1 T@Field_5512_21246) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5512_21310 Mask@@14 null pm_f_16@@1) (IsPredicateField_5512_21337 pm_f_16@@1)) (and (and (and (and (forall ((o2_16 T@Ref) (f_40 T@Field_8182_53) ) (!  (=> (select (|PolymorphicMapType_8671_8182_53#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@4) null (PredicateMaskField_5512 pm_f_16@@1))) o2_16 f_40) (= (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@4) o2_16 f_40) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16 f_40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16 f_40))
)) (forall ((o2_16@@0 T@Ref) (f_40@@0 T@Field_8195_8196) ) (!  (=> (select (|PolymorphicMapType_8671_8182_8196#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@4) null (PredicateMaskField_5512 pm_f_16@@1))) o2_16@@0 f_40@@0) (= (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@4) o2_16@@0 f_40@@0) (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@0 f_40@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@0 f_40@@0))
))) (forall ((o2_16@@1 T@Ref) (f_40@@1 T@Field_14203_3034) ) (!  (=> (select (|PolymorphicMapType_8671_8182_3034#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@4) null (PredicateMaskField_5512 pm_f_16@@1))) o2_16@@1 f_40@@1) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@4) o2_16@@1 f_40@@1) (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@1 f_40@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@1 f_40@@1))
))) (forall ((o2_16@@2 T@Ref) (f_40@@2 T@Field_5512_21246) ) (!  (=> (select (|PolymorphicMapType_8671_8182_21246#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@4) null (PredicateMaskField_5512 pm_f_16@@1))) o2_16@@2 f_40@@2) (= (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@4) o2_16@@2 f_40@@2) (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@2 f_40@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@2 f_40@@2))
))) (forall ((o2_16@@3 T@Ref) (f_40@@3 T@Field_5512_21379) ) (!  (=> (select (|PolymorphicMapType_8671_8182_22557#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@4) null (PredicateMaskField_5512 pm_f_16@@1))) o2_16@@3 f_40@@3) (= (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@4) o2_16@@3 f_40@@3) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@3 f_40@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@3) o2_16@@3 f_40@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5512_21337 pm_f_16@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8122) (ExhaleHeap@@4 T@PolymorphicMapType_8122) (Mask@@15 T@PolymorphicMapType_8143) (pm_f_16@@2 T@Field_5512_21246) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5512_21310 Mask@@15 null pm_f_16@@2) (IsWandField_5512_23084 pm_f_16@@2)) (and (and (and (and (forall ((o2_16@@4 T@Ref) (f_40@@4 T@Field_8182_53) ) (!  (=> (select (|PolymorphicMapType_8671_8182_53#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@5) null (WandMaskField_5512 pm_f_16@@2))) o2_16@@4 f_40@@4) (= (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@5) o2_16@@4 f_40@@4) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@4 f_40@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@4 f_40@@4))
)) (forall ((o2_16@@5 T@Ref) (f_40@@5 T@Field_8195_8196) ) (!  (=> (select (|PolymorphicMapType_8671_8182_8196#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@5) null (WandMaskField_5512 pm_f_16@@2))) o2_16@@5 f_40@@5) (= (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@5) o2_16@@5 f_40@@5) (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@5 f_40@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@5 f_40@@5))
))) (forall ((o2_16@@6 T@Ref) (f_40@@6 T@Field_14203_3034) ) (!  (=> (select (|PolymorphicMapType_8671_8182_3034#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@5) null (WandMaskField_5512 pm_f_16@@2))) o2_16@@6 f_40@@6) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@5) o2_16@@6 f_40@@6) (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@6 f_40@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@6 f_40@@6))
))) (forall ((o2_16@@7 T@Ref) (f_40@@7 T@Field_5512_21246) ) (!  (=> (select (|PolymorphicMapType_8671_8182_21246#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@5) null (WandMaskField_5512 pm_f_16@@2))) o2_16@@7 f_40@@7) (= (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@5) o2_16@@7 f_40@@7) (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@7 f_40@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@7 f_40@@7))
))) (forall ((o2_16@@8 T@Ref) (f_40@@8 T@Field_5512_21379) ) (!  (=> (select (|PolymorphicMapType_8671_8182_22557#PolymorphicMapType_8671| (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@5) null (WandMaskField_5512 pm_f_16@@2))) o2_16@@8 f_40@@8) (= (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@5) o2_16@@8 f_40@@8) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@8 f_40@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@4) o2_16@@8 f_40@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5512_23084 pm_f_16@@2))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_8122) (ExhaleHeap@@5 T@PolymorphicMapType_8122) (Mask@@16 T@PolymorphicMapType_8143) (o_34@@0 T@Ref) (f_40@@9 T@Field_5512_21379) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5512_27084 Mask@@16 o_34@@0 f_40@@9) (= (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@6) o_34@@0 f_40@@9) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@5) o_34@@0 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| ExhaleHeap@@5) o_34@@0 f_40@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8122) (ExhaleHeap@@6 T@PolymorphicMapType_8122) (Mask@@17 T@PolymorphicMapType_8143) (o_34@@1 T@Ref) (f_40@@10 T@Field_5512_21246) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5512_21310 Mask@@17 o_34@@1 f_40@@10) (= (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@7) o_34@@1 f_40@@10) (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| ExhaleHeap@@6) o_34@@1 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| ExhaleHeap@@6) o_34@@1 f_40@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8122) (ExhaleHeap@@7 T@PolymorphicMapType_8122) (Mask@@18 T@PolymorphicMapType_8143) (o_34@@2 T@Ref) (f_40@@11 T@Field_8195_8196) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5512_8196 Mask@@18 o_34@@2 f_40@@11) (= (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@8) o_34@@2 f_40@@11) (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| ExhaleHeap@@7) o_34@@2 f_40@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| ExhaleHeap@@7) o_34@@2 f_40@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8122) (ExhaleHeap@@8 T@PolymorphicMapType_8122) (Mask@@19 T@PolymorphicMapType_8143) (o_34@@3 T@Ref) (f_40@@12 T@Field_8182_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5512_53 Mask@@19 o_34@@3 f_40@@12) (= (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@9) o_34@@3 f_40@@12) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@8) o_34@@3 f_40@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| ExhaleHeap@@8) o_34@@3 f_40@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8122) (ExhaleHeap@@9 T@PolymorphicMapType_8122) (Mask@@20 T@PolymorphicMapType_8143) (o_34@@4 T@Ref) (f_40@@13 T@Field_14203_3034) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5512_3034 Mask@@20 o_34@@4 f_40@@13) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@10) o_34@@4 f_40@@13) (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| ExhaleHeap@@9) o_34@@4 f_40@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| ExhaleHeap@@9) o_34@@4 f_40@@13))
)))
(assert (forall ((s0@@1 T@Seq_14248) (s1@@1 T@Seq_14248) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5516|)) (not (= s1@@1 |Seq#Empty_5516|))) (= (|Seq#Length_5516| (|Seq#Append_14248| s0@@1 s1@@1)) (+ (|Seq#Length_5516| s0@@1) (|Seq#Length_5516| s1@@1))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5516| (|Seq#Append_14248| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2912) (s1@@2 T@Seq_2912) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2912|)) (not (= s1@@2 |Seq#Empty_2912|))) (= (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)) (+ (|Seq#Length_2912| s0@@2) (|Seq#Length_2912| s1@@2))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5512_21379) ) (! (= (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5512_21246) ) (! (= (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8195_8196) ) (! (= (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8182_53) ) (! (= (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14203_3034) ) (! (= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_14248) (t@@1 T@Seq_14248) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5516| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5516| s@@15)) (|Seq#Length_5516| s@@15)) n@@15) (= (|Seq#Drop_5516| (|Seq#Append_14248| s@@15 t@@1) n@@15) (|Seq#Drop_5516| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5516| s@@15))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5516| (|Seq#Append_14248| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2912) (t@@2 T@Seq_2912) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2912| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16)) (|Seq#Length_2912| s@@16)) n@@16) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16) (|Seq#Drop_2912| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8143) (SummandMask1 T@PolymorphicMapType_8143) (SummandMask2 T@PolymorphicMapType_8143) (o_2@@19 T@Ref) (f_4@@19 T@Field_5512_21379) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8143) (SummandMask1@@0 T@PolymorphicMapType_8143) (SummandMask2@@0 T@PolymorphicMapType_8143) (o_2@@20 T@Ref) (f_4@@20 T@Field_5512_21246) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8143) (SummandMask1@@1 T@PolymorphicMapType_8143) (SummandMask2@@1 T@PolymorphicMapType_8143) (o_2@@21 T@Ref) (f_4@@21 T@Field_8195_8196) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8143) (SummandMask1@@2 T@PolymorphicMapType_8143) (SummandMask2@@2 T@PolymorphicMapType_8143) (o_2@@22 T@Ref) (f_4@@22 T@Field_8182_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8143) (SummandMask1@@3 T@PolymorphicMapType_8143) (SummandMask2@@3 T@PolymorphicMapType_8143) (o_2@@23 T@Ref) (f_4@@23 T@Field_14203_3034) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.549:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_14248) (b T@Seq_14248) ) (!  (=> (|Seq#Equal_14248| a b) (= a b))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_14248| a b))
)))
(assert (forall ((a@@0 T@Seq_2912) (b@@0 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2912| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_14248) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_5516| s@@17))) (|Seq#ContainsTrigger_5516| s@@17 (|Seq#Index_5516| s@@17 i@@3)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5516| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2912) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2912| s@@18))) (|Seq#ContainsTrigger_2912| s@@18 (|Seq#Index_2912| s@@18 i@@4)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2912| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_14248) (s1@@3 T@Seq_14248) ) (!  (and (=> (= s0@@3 |Seq#Empty_5516|) (= (|Seq#Append_14248| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5516|) (= (|Seq#Append_14248| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_14248| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2912) (s1@@4 T@Seq_2912) ) (!  (and (=> (= s0@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2912| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5516| (|Seq#Singleton_5516| t@@3) 0) t@@3)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5516| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2912| (|Seq#Singleton_2912| t@@4) 0) t@@4)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2912| t@@4))
)))
(assert (forall ((s@@19 T@Seq_14248) ) (! (<= 0 (|Seq#Length_5516| s@@19))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5516| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2912) ) (! (<= 0 (|Seq#Length_2912| s@@20))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2912| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_14248) (s1@@5 T@Seq_14248) ) (!  (=> (|Seq#Equal_14248| s0@@5 s1@@5) (and (= (|Seq#Length_5516| s0@@5) (|Seq#Length_5516| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5516| s0@@5))) (= (|Seq#Index_5516| s0@@5 j@@6) (|Seq#Index_5516| s1@@5 j@@6)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5516| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5516| s1@@5 j@@6))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_14248| s0@@5 s1@@5))
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
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5516| (|Seq#Singleton_5516| t@@5)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5516| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2912| (|Seq#Singleton_2912| t@@6)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2912| t@@6))
)))
(assert (forall ((s@@21 T@Seq_14248) (t@@7 T@Seq_14248) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5516| s@@21))) (= (|Seq#Take_5516| (|Seq#Append_14248| s@@21 t@@7) n@@17) (|Seq#Take_5516| s@@21 n@@17)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5516| (|Seq#Append_14248| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2912) (t@@8 T@Seq_2912) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2912| s@@22))) (= (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18) (|Seq#Take_2912| s@@22 n@@18)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2912| (|Seq#Append_2912| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_14248) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_5516| s@@23))) (= (|Seq#Length_5516| (|Seq#Update_5516| s@@23 i@@5 v@@2)) (|Seq#Length_5516| s@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5516| (|Seq#Update_5516| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_5516| s@@23) (|Seq#Update_5516| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2912) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2912| s@@24))) (= (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)) (|Seq#Length_2912| s@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2912| s@@24) (|Seq#Update_2912| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8122) (o_3 T@Ref) (f_35 T@Field_5512_21246) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@11) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@11) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@11) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@11) (store (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@11) o_3 f_35 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@11) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@11) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@11) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@11) (store (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@11) o_3 f_35 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8122) (o_3@@0 T@Ref) (f_35@@0 T@Field_5512_21379) (v@@5 T@PolymorphicMapType_8671) ) (! (succHeap Heap@@12 (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@12) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@12) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@12) (store (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@12) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@12) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@12) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@12) (store (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@12) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8122) (o_3@@1 T@Ref) (f_35@@1 T@Field_14203_3034) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@13) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@13) (store (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@13) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@13) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@13) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@13) (store (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@13) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@13) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8122) (o_3@@2 T@Ref) (f_35@@2 T@Field_8195_8196) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@14) (store (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@14) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@14) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@14) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8122 (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@14) (store (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@14) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@14) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@14) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8122) (o_3@@3 T@Ref) (f_35@@3 T@Field_8182_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8122 (store (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@15) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@15) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@15) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@15) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8122 (store (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@15) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@15) (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@15) (|PolymorphicMapType_8122_5512_21423#PolymorphicMapType_8122| Heap@@15) (|PolymorphicMapType_8122_8182_21246#PolymorphicMapType_8122| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_14248) (t@@9 T@Seq_14248) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5516| s@@25))) (= (|Seq#Drop_5516| (|Seq#Append_14248| s@@25 t@@9) n@@19) (|Seq#Append_14248| (|Seq#Drop_5516| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5516| (|Seq#Append_14248| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2912) (t@@10 T@Seq_2912) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2912| s@@26))) (= (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20) (|Seq#Append_2912| (|Seq#Drop_2912| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2912| (|Seq#Append_2912| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_14248) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_5516| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_5516| (|Seq#Drop_5516| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_5516| s@@27 i@@7))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5516| s@@27 n@@21) (|Seq#Index_5516| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2912) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2912| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2912| (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2912| s@@28 i@@8))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2912| s@@28 n@@22) (|Seq#Index_2912| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_14248) (s1@@7 T@Seq_14248) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5516|)) (not (= s1@@7 |Seq#Empty_5516|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5516| s0@@7))) (= (|Seq#Index_5516| (|Seq#Append_14248| s0@@7 s1@@7) n@@23) (|Seq#Index_5516| s0@@7 n@@23)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5516| (|Seq#Append_14248| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5516| s0@@7 n@@23) (|Seq#Append_14248| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2912) (s1@@8 T@Seq_2912) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2912|)) (not (= s1@@8 |Seq#Empty_2912|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2912| s0@@8))) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24) (|Seq#Index_2912| s0@@8 n@@24)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2912| s0@@8 n@@24) (|Seq#Append_2912| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_14248) (s1@@9 T@Seq_14248) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5516|)) (not (= s1@@9 |Seq#Empty_5516|))) (<= 0 m)) (< m (|Seq#Length_5516| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5516| s0@@9)) (|Seq#Length_5516| s0@@9)) m) (= (|Seq#Index_5516| (|Seq#Append_14248| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5516| s0@@9))) (|Seq#Index_5516| s1@@9 m))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5516| s1@@9 m) (|Seq#Append_14248| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2912) (s1@@10 T@Seq_2912) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2912|)) (not (= s1@@10 |Seq#Empty_2912|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2912| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10)) (|Seq#Length_2912| s0@@10)) m@@0) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10))) (|Seq#Index_2912| s1@@10 m@@0))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2912| s1@@10 m@@0) (|Seq#Append_2912| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_8195_8196) (Heap@@16 T@PolymorphicMapType_8122) ) (!  (=> (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@16) o_3@@4 $allocated) (select (|PolymorphicMapType_8122_5320_53#PolymorphicMapType_8122| Heap@@16) (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@16) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8122_5323_5324#PolymorphicMapType_8122| Heap@@16) o_3@@4 f_8))
)))
(assert (forall ((s@@29 T@Seq_14248) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5516| s@@29))) (= (|Seq#Index_5516| s@@29 i@@9) x@@3)) (|Seq#Contains_14248| s@@29 x@@3))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_14248| s@@29 x@@3) (|Seq#Index_5516| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2912) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2912| s@@30))) (= (|Seq#Index_2912| s@@30 i@@10) x@@4)) (|Seq#Contains_2912| s@@30 x@@4))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2912| s@@30 x@@4) (|Seq#Index_2912| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_14248) (s1@@11 T@Seq_14248) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_14248| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_14248| s0@@11 s1@@11))) (not (= (|Seq#Length_5516| s0@@11) (|Seq#Length_5516| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_14248| s0@@11 s1@@11))) (= (|Seq#Length_5516| s0@@11) (|Seq#Length_5516| s1@@11))) (= (|Seq#SkolemDiff_14248| s0@@11 s1@@11) (|Seq#SkolemDiff_14248| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_14248| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_14248| s0@@11 s1@@11) (|Seq#Length_5516| s0@@11))) (not (= (|Seq#Index_5516| s0@@11 (|Seq#SkolemDiff_14248| s0@@11 s1@@11)) (|Seq#Index_5516| s1@@11 (|Seq#SkolemDiff_14248| s0@@11 s1@@11))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_14248| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2912) (s1@@12 T@Seq_2912) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2912| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (not (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))) (= (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#SkolemDiff_2912| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#Length_2912| s0@@12))) (not (= (|Seq#Index_2912| s0@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12)) (|Seq#Index_2912| s1@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2912| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_5512_21246) (v_1@@0 T@FrameType) (q T@Field_5512_21246) (w@@0 T@FrameType) (r T@Field_5512_21246) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8182_8182 p@@1 v_1@@0 q w@@0) (InsidePredicate_8182_8182 q w@@0 r u)) (InsidePredicate_8182_8182 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8182_8182 p@@1 v_1@@0 q w@@0) (InsidePredicate_8182_8182 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_14248) ) (!  (=> (= (|Seq#Length_5516| s@@31) 0) (= s@@31 |Seq#Empty_5516|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5516| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2912) ) (!  (=> (= (|Seq#Length_2912| s@@32) 0) (= s@@32 |Seq#Empty_2912|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2912| s@@32))
)))
(assert (forall ((s@@33 T@Seq_14248) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5516| s@@33 n@@25) |Seq#Empty_5516|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5516| s@@33 n@@25))
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
(declare-fun i_13_1 () Int)
(declare-fun len () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_8122)
(declare-fun ar () T@Seq_14248)
(declare-fun i_18 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_8143)
(declare-fun i_10_1 () Int)
(declare-fun i_16 () Int)
(declare-fun i_7_1 () Int)
(declare-fun i_12 () Int)
(declare-fun i_11 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i_10 () Int)
(declare-fun i_9 () Int)
(declare-fun j_10 () Int)
(set-info :boogie-vc-id test2)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon35_correct true))
(let ((anon54_Else_correct  (=> (and (not (and (<= 1 i_13_1) (< i_13_1 len))) (= (ControlFlow 0 49) 46)) anon35_correct)))
(let ((anon54_Then_correct  (=> (and (<= 1 i_13_1) (< i_13_1 len)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar (- i_13_1 1)) Integer_value) 0)) (=> (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar (- i_13_1 1)) Integer_value) 0) (=> (= (ControlFlow 0 47) 46) anon35_correct))))))
(let ((anon31_correct true))
(let ((anon52_Else_correct  (=> (and (not (and (<= 1 i_18) (< i_18 len))) (= (ControlFlow 0 45) 40)) anon31_correct)))
(let ((anon52_Then_correct  (=> (and (<= 1 i_18) (< i_18 len)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (>= (- i_18 1) 0)) (=> (>= (- i_18 1) 0) (and (=> (= (ControlFlow 0 41) (- 0 43)) (< (- i_18 1) (|Seq#Length_5516| ar))) (=> (< (- i_18 1) (|Seq#Length_5516| ar)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar (- i_18 1)) Integer_value)) (=> (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar (- i_18 1)) Integer_value) (=> (= (ControlFlow 0 41) 40) anon31_correct))))))))))
(let ((anon53_Else_correct true))
(let ((anon49_Else_correct  (=> (and (forall ((i_11_1_1 Int) ) (!  (=> (|Seq#Contains_2912| (|Seq#Range| 1 len) i_11_1_1) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar (- i_11_1_1 1)) Integer_value) 0))
 :qid |stdinbpl.971:20|
 :skolemid |80|
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 1 len) i_11_1_1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 1 len) i_11_1_1))
)) (state Heap@@17 QPMask@0)) (and (and (and (and (=> (= (ControlFlow 0 50) 39) anon53_Else_correct) (=> (= (ControlFlow 0 50) 47) anon54_Then_correct)) (=> (= (ControlFlow 0 50) 49) anon54_Else_correct)) (=> (= (ControlFlow 0 50) 41) anon52_Then_correct)) (=> (= (ControlFlow 0 50) 45) anon52_Else_correct)))))
(let ((anon27_correct true))
(let ((anon50_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 1 len) i_10_1)) (= (ControlFlow 0 38) 35)) anon27_correct)))
(let ((anon50_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 1 len) i_10_1) (and (=> (= (ControlFlow 0 36) (- 0 37)) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar (- i_10_1 1)) Integer_value) 0)) (=> (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar (- i_10_1 1)) Integer_value) 0) (=> (= (ControlFlow 0 36) 35) anon27_correct))))))
(let ((anon23_correct true))
(let ((anon48_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 1 len) i_16)) (= (ControlFlow 0 34) 29)) anon23_correct)))
(let ((anon48_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 1 len) i_16) (and (=> (= (ControlFlow 0 30) (- 0 33)) (>= (- i_16 1) 0)) (=> (>= (- i_16 1) 0) (and (=> (= (ControlFlow 0 30) (- 0 32)) (< (- i_16 1) (|Seq#Length_5516| ar))) (=> (< (- i_16 1) (|Seq#Length_5516| ar)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar (- i_16 1)) Integer_value)) (=> (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar (- i_16 1)) Integer_value) (=> (= (ControlFlow 0 30) 29) anon23_correct))))))))))
(let ((anon45_Else_correct  (=> (and (forall ((i_8_1 Int) ) (!  (=> (and (<= 0 i_8_1) (< i_8_1 (- len 1))) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar i_8_1) Integer_value) 0))
 :qid |stdinbpl.940:20|
 :skolemid |79|
 :pattern ( (|Seq#Index_5516| ar i_8_1))
)) (state Heap@@17 QPMask@0)) (and (and (and (and (=> (= (ControlFlow 0 51) 50) anon49_Else_correct) (=> (= (ControlFlow 0 51) 36) anon50_Then_correct)) (=> (= (ControlFlow 0 51) 38) anon50_Else_correct)) (=> (= (ControlFlow 0 51) 30) anon48_Then_correct)) (=> (= (ControlFlow 0 51) 34) anon48_Else_correct)))))
(let ((anon19_correct true))
(let ((anon46_Else_correct  (=> (and (not (and (<= 0 i_7_1) (< i_7_1 (- len 1)))) (= (ControlFlow 0 28) 25)) anon19_correct)))
(let ((anon46_Then_correct  (=> (and (<= 0 i_7_1) (< i_7_1 (- len 1))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar i_7_1) Integer_value) 0)) (=> (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar i_7_1) Integer_value) 0) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))
(let ((anon15_correct true))
(let ((anon44_Else_correct  (=> (and (not (and (<= 0 i_12) (< i_12 (- len 1)))) (= (ControlFlow 0 24) 19)) anon15_correct)))
(let ((anon44_Then_correct  (=> (and (<= 0 i_12) (< i_12 (- len 1))) (and (=> (= (ControlFlow 0 20) (- 0 23)) (>= i_12 0)) (=> (>= i_12 0) (and (=> (= (ControlFlow 0 20) (- 0 22)) (< i_12 (|Seq#Length_5516| ar))) (=> (< i_12 (|Seq#Length_5516| ar)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar i_12) Integer_value)) (=> (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar i_12) Integer_value) (=> (= (ControlFlow 0 20) 19) anon15_correct))))))))))
(let ((anon41_Else_correct  (=> (and (forall ((i_5 Int) ) (!  (=> (and (<= 0 i_5) (< i_5 len)) (= (select (|PolymorphicMapType_8122_5512_3034#PolymorphicMapType_8122| Heap@@17) (|Seq#Index_5516| ar i_5) Integer_value) 0))
 :qid |stdinbpl.903:20|
 :skolemid |78|
 :pattern ( (|Seq#Index_5516| ar i_5))
)) (state Heap@@17 QPMask@0)) (and (and (and (and (=> (= (ControlFlow 0 52) 51) anon45_Else_correct) (=> (= (ControlFlow 0 52) 26) anon46_Then_correct)) (=> (= (ControlFlow 0 52) 28) anon46_Else_correct)) (=> (= (ControlFlow 0 52) 20) anon44_Then_correct)) (=> (= (ControlFlow 0 52) 24) anon44_Else_correct)))))
(let ((anon11_correct true))
(let ((anon42_Else_correct  (=> (and (not (and (<= 0 i_11) (< i_11 len))) (= (ControlFlow 0 18) 13)) anon11_correct)))
(let ((anon42_Then_correct  (=> (and (<= 0 i_11) (< i_11 len)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< i_11 (|Seq#Length_5516| ar))) (=> (< i_11 (|Seq#Length_5516| ar)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar i_11) Integer_value)) (=> (HasDirectPerm_5512_3034 QPMask@0 (|Seq#Index_5516| ar i_11) Integer_value) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))
(let ((anon39_Else_correct  (and (=> (= (ControlFlow 0 53) (- 0 55)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3)) (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3_1)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_5516| ar i_3) (|Seq#Index_5516| ar i_3_1))))
 :qid |stdinbpl.851:15|
 :skolemid |71|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@0)) (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_5516| ar i_3@@0) (|Seq#Index_5516| ar i_3_1@@0))))
 :qid |stdinbpl.851:15|
 :skolemid |71|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange2 (|Seq#Index_5516| ar i_3@@1)) (= (invRecv2 (|Seq#Index_5516| ar i_3@@1)) i_3@@1)))
 :qid |stdinbpl.857:22|
 :skolemid |72|
 :pattern ( (|Seq#Index_5516| ar i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 len) i_3@@1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@1))
 :pattern ( (|Seq#Index_5516| ar i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2912| (|Seq#Range| 0 len) (invRecv2 o_4)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4)) (= (|Seq#Index_5516| ar (invRecv2 o_4)) o_4))
 :qid |stdinbpl.861:22|
 :skolemid |73|
 :pattern ( (invRecv2 o_4))
))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.867:15|
 :skolemid |74|
 :pattern ( (|Seq#Index_5516| ar i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 len) i_3@@2))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@2))
 :pattern ( (|Seq#Index_5516| ar i_3@@2))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.867:15|
 :skolemid |74|
 :pattern ( (|Seq#Index_5516| ar i_3@@3))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 len) i_3@@3))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@3))
 :pattern ( (|Seq#Index_5516| ar i_3@@3))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_5516| ar i_3@@4) null)))
 :qid |stdinbpl.873:22|
 :skolemid |75|
 :pattern ( (|Seq#Index_5516| ar i_3@@4))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 len) i_3@@4))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 len) i_3@@4))
 :pattern ( (|Seq#Index_5516| ar i_3@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2912| (|Seq#Range| 0 len) (invRecv2 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_5516| ar (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| QPMask@0) o_4@@0 Integer_value) (+ (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ZeroMask) o_4@@0 Integer_value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_2912| (|Seq#Range| 0 len) (invRecv2 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| QPMask@0) o_4@@0 Integer_value) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ZeroMask) o_4@@0 Integer_value))))
 :qid |stdinbpl.879:22|
 :skolemid |76|
 :pattern ( (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| QPMask@0) o_4@@0 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8182_53) ) (!  (=> true (= (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.883:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8143_5512_53#PolymorphicMapType_8143| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8195_8196) ) (!  (=> true (= (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.883:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8143_5512_8196#PolymorphicMapType_8143| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14203_3034) ) (!  (=> (not (= f_5@@1 Integer_value)) (= (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.883:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8143_5512_3034#PolymorphicMapType_8143| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5512_21246) ) (!  (=> true (= (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.883:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8143_5512_21246#PolymorphicMapType_8143| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5512_21379) ) (!  (=> true (= (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.883:29|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8143_5512_25501#PolymorphicMapType_8143| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 53) 52) anon41_Else_correct) (=> (= (ControlFlow 0 53) 14) anon42_Then_correct)) (=> (= (ControlFlow 0 53) 18) anon42_Else_correct)))))))))))
(let ((anon7_correct true))
(let ((anon40_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 0 len) i_10)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon40_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 0 len) i_10) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_10 0)) (=> (>= i_10 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_10 (|Seq#Length_5516| ar))) (=> (< i_10 (|Seq#Length_5516| ar)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon37_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 (|Seq#Length_5516| ar)) (and (<= 0 j_1) (and (< j_1 (|Seq#Length_5516| ar)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_5516| ar i_1) (|Seq#Index_5516| ar j_1))))
 :qid |stdinbpl.833:20|
 :skolemid |70|
 :pattern ( (|Seq#Index_5516| ar i_1) (|Seq#Index_5516| ar j_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 56) 53) anon39_Else_correct) (=> (= (ControlFlow 0 56) 9) anon40_Then_correct)) (=> (= (ControlFlow 0 56) 12) anon40_Else_correct)))))
(let ((anon3_correct true))
(let ((anon38_Else_correct  (=> (and (not (and (<= 0 i_9) (and (< i_9 (|Seq#Length_5516| ar)) (and (<= 0 j_10) (and (< j_10 (|Seq#Length_5516| ar)) (not (= i_9 j_10))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon38_Then_correct  (=> (and (<= 0 i_9) (and (< i_9 (|Seq#Length_5516| ar)) (and (<= 0 j_10) (and (< j_10 (|Seq#Length_5516| ar)) (not (= i_9 j_10)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_9 (|Seq#Length_5516| ar))) (=> (< i_9 (|Seq#Length_5516| ar)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_10 0)) (=> (>= j_10 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_10 (|Seq#Length_5516| ar))) (=> (< j_10 (|Seq#Length_5516| ar)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (= (|Seq#Length_5516| ar) len) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 57) 56) anon37_Else_correct) (=> (= (ControlFlow 0 57) 2) anon38_Then_correct)) (=> (= (ControlFlow 0 57) 7) anon38_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 58) 57) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
