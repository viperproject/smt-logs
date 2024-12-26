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
(declare-sort T@Field_15416_53 0)
(declare-sort T@Field_15429_15430 0)
(declare-sort T@Field_21494_21499 0)
(declare-sort T@Seq_21497 0)
(declare-sort T@Field_21447_3154 0)
(declare-sort T@Field_9423_47200 0)
(declare-sort T@Field_9423_47067 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_15377 0)) (((PolymorphicMapType_15377 (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| (Array T@Ref T@Field_21494_21499 Real)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| (Array T@Ref T@Field_21447_3154 Real)) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| (Array T@Ref T@Field_15416_53 Real)) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| (Array T@Ref T@Field_15429_15430 Real)) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| (Array T@Ref T@Field_9423_47067 Real)) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| (Array T@Ref T@Field_9423_47200 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15905 0)) (((PolymorphicMapType_15905 (|PolymorphicMapType_15905_15416_53#PolymorphicMapType_15905| (Array T@Ref T@Field_15416_53 Bool)) (|PolymorphicMapType_15905_15416_15430#PolymorphicMapType_15905| (Array T@Ref T@Field_15429_15430 Bool)) (|PolymorphicMapType_15905_15416_3154#PolymorphicMapType_15905| (Array T@Ref T@Field_21447_3154 Bool)) (|PolymorphicMapType_15905_15416_21499#PolymorphicMapType_15905| (Array T@Ref T@Field_21494_21499 Bool)) (|PolymorphicMapType_15905_15416_47067#PolymorphicMapType_15905| (Array T@Ref T@Field_9423_47067 Bool)) (|PolymorphicMapType_15905_15416_48582#PolymorphicMapType_15905| (Array T@Ref T@Field_9423_47200 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15356 0)) (((PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| (Array T@Ref T@Field_15416_53 Bool)) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| (Array T@Ref T@Field_15429_15430 T@Ref)) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| (Array T@Ref T@Field_21494_21499 T@Seq_21497)) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| (Array T@Ref T@Field_21447_3154 Int)) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| (Array T@Ref T@Field_9423_47200 T@PolymorphicMapType_15905)) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| (Array T@Ref T@Field_9423_47067 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_15416_53)
(declare-fun value () T@Field_21447_3154)
(declare-fun array () T@Field_21494_21499)
(declare-fun |Seq#Length_9424| (T@Seq_21497) Int)
(declare-fun |Seq#Drop_9424| (T@Seq_21497 Int) T@Seq_21497)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_15356 T@PolymorphicMapType_15356) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15356 T@PolymorphicMapType_15356) Bool)
(declare-fun state (T@PolymorphicMapType_15356 T@PolymorphicMapType_15377) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15377) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15905)
(declare-fun |Seq#Index_9424| (T@Seq_21497 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_9424| () T@Seq_21497)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun |Seq#Update_9424| (T@Seq_21497 Int T@Ref) T@Seq_21497)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Seq#Take_9424| (T@Seq_21497 Int) T@Seq_21497)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Seq#Contains_21497| (T@Seq_21497 T@Ref) Bool)
(declare-fun |Seq#Skolem_21497| (T@Seq_21497 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15356 T@PolymorphicMapType_15356 T@PolymorphicMapType_15377) Bool)
(declare-fun IsPredicateField_9423_47158 (T@Field_9423_47067) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9423 (T@Field_9423_47067) T@Field_9423_47200)
(declare-fun HasDirectPerm_9423_47131 (T@PolymorphicMapType_15377 T@Ref T@Field_9423_47067) Bool)
(declare-fun IsWandField_9423_49109 (T@Field_9423_47067) Bool)
(declare-fun WandMaskField_9423 (T@Field_9423_47067) T@Field_9423_47200)
(declare-fun |Seq#Singleton_9424| (T@Ref) T@Seq_21497)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |Seq#Append_21497| (T@Seq_21497 T@Seq_21497) T@Seq_21497)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_15356)
(declare-fun ZeroMask () T@PolymorphicMapType_15377)
(declare-fun InsidePredicate_15416_15416 (T@Field_9423_47067 T@FrameType T@Field_9423_47067 T@FrameType) Bool)
(declare-fun IsPredicateField_9421_3154 (T@Field_21447_3154) Bool)
(declare-fun IsWandField_9421_3154 (T@Field_21447_3154) Bool)
(declare-fun IsPredicateField_9423_21521 (T@Field_21494_21499) Bool)
(declare-fun IsWandField_9423_21547 (T@Field_21494_21499) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9423_53243 (T@Field_9423_47200) Bool)
(declare-fun IsWandField_9423_53259 (T@Field_9423_47200) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9423_15430 (T@Field_15429_15430) Bool)
(declare-fun IsWandField_9423_15430 (T@Field_15429_15430) Bool)
(declare-fun IsPredicateField_9423_53 (T@Field_15416_53) Bool)
(declare-fun IsWandField_9423_53 (T@Field_15416_53) Bool)
(declare-fun HasDirectPerm_9423_53780 (T@PolymorphicMapType_15377 T@Ref T@Field_9423_47200) Bool)
(declare-fun HasDirectPerm_9423_15430 (T@PolymorphicMapType_15377 T@Ref T@Field_15429_15430) Bool)
(declare-fun HasDirectPerm_9423_53 (T@PolymorphicMapType_15377 T@Ref T@Field_15416_53) Bool)
(declare-fun HasDirectPerm_9421_3154 (T@PolymorphicMapType_15377 T@Ref T@Field_21447_3154) Bool)
(declare-fun HasDirectPerm_9423_22047 (T@PolymorphicMapType_15377 T@Ref T@Field_21494_21499) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15377 T@PolymorphicMapType_15377 T@PolymorphicMapType_15377) Bool)
(declare-fun |Seq#Equal_21497| (T@Seq_21497 T@Seq_21497) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Seq#ContainsTrigger_9424| (T@Seq_21497 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#SkolemDiff_21497| (T@Seq_21497 T@Seq_21497) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(assert (forall ((s T@Seq_21497) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9424| s)) (= (|Seq#Length_9424| (|Seq#Drop_9424| s n)) (- (|Seq#Length_9424| s) n))) (=> (< (|Seq#Length_9424| s) n) (= (|Seq#Length_9424| (|Seq#Drop_9424| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9424| (|Seq#Drop_9424| s n)) (|Seq#Length_9424| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9424| (|Seq#Drop_9424| s n)))
 :pattern ( (|Seq#Length_9424| s) (|Seq#Drop_9424| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15356) (Heap1 T@PolymorphicMapType_15356) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15356) (Mask T@PolymorphicMapType_15377) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15356) (Heap1@@0 T@PolymorphicMapType_15356) (Heap2 T@PolymorphicMapType_15356) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9423_47200) ) (!  (not (select (|PolymorphicMapType_15905_15416_48582#PolymorphicMapType_15905| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15905_15416_48582#PolymorphicMapType_15905| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9423_47067) ) (!  (not (select (|PolymorphicMapType_15905_15416_47067#PolymorphicMapType_15905| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15905_15416_47067#PolymorphicMapType_15905| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21494_21499) ) (!  (not (select (|PolymorphicMapType_15905_15416_21499#PolymorphicMapType_15905| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15905_15416_21499#PolymorphicMapType_15905| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_21447_3154) ) (!  (not (select (|PolymorphicMapType_15905_15416_3154#PolymorphicMapType_15905| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15905_15416_3154#PolymorphicMapType_15905| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15429_15430) ) (!  (not (select (|PolymorphicMapType_15905_15416_15430#PolymorphicMapType_15905| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15905_15416_15430#PolymorphicMapType_15905| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15416_53) ) (!  (not (select (|PolymorphicMapType_15905_15416_53#PolymorphicMapType_15905| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15905_15416_53#PolymorphicMapType_15905| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_21497) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9424| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9424| (|Seq#Drop_9424| s@@1 n@@1) j) (|Seq#Index_9424| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9424| (|Seq#Drop_9424| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9424| |Seq#Empty_9424|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((s@@3 T@Seq_21497) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9424| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_9424| (|Seq#Update_9424| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_9424| (|Seq#Update_9424| s@@3 i v) n@@3) (|Seq#Index_9424| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9424| (|Seq#Update_9424| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_9424| s@@3 n@@3) (|Seq#Update_9424| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21497) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9424| s@@5)) (= (|Seq#Length_9424| (|Seq#Take_9424| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9424| s@@5) n@@5) (= (|Seq#Length_9424| (|Seq#Take_9424| s@@5 n@@5)) (|Seq#Length_9424| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9424| (|Seq#Take_9424| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9424| (|Seq#Take_9424| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9424| s@@5 n@@5) (|Seq#Length_9424| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3032) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3032| s@@6)) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3032| s@@6) n@@6) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) (|Seq#Length_3032| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3032| s@@6 n@@6) (|Seq#Length_3032| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21497) (x T@Ref) ) (!  (=> (|Seq#Contains_21497| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21497| s@@7 x)) (< (|Seq#Skolem_21497| s@@7 x) (|Seq#Length_9424| s@@7))) (= (|Seq#Index_9424| s@@7 (|Seq#Skolem_21497| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21497| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21497) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9424| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9424| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3032) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3032| s@@10 n@@8) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3032| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15356) (ExhaleHeap T@PolymorphicMapType_15356) (Mask@@0 T@PolymorphicMapType_15377) (pm_f_16 T@Field_9423_47067) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9423_47131 Mask@@0 null pm_f_16) (IsPredicateField_9423_47158 pm_f_16)) (= (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@0) null (PredicateMaskField_9423 pm_f_16)) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap) null (PredicateMaskField_9423 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9423_47158 pm_f_16) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap) null (PredicateMaskField_9423 pm_f_16)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15356) (ExhaleHeap@@0 T@PolymorphicMapType_15356) (Mask@@1 T@PolymorphicMapType_15377) (pm_f_16@@0 T@Field_9423_47067) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9423_47131 Mask@@1 null pm_f_16@@0) (IsWandField_9423_49109 pm_f_16@@0)) (= (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@1) null (WandMaskField_9423 pm_f_16@@0)) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@0) null (WandMaskField_9423 pm_f_16@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_9423_49109 pm_f_16@@0) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@0) null (WandMaskField_9423 pm_f_16@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21497| (|Seq#Singleton_9424| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21497| (|Seq#Singleton_9424| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21497) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9424| s@@11))) (= (|Seq#Index_9424| (|Seq#Take_9424| s@@11 n@@9) j@@3) (|Seq#Index_9424| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9424| (|Seq#Take_9424| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9424| s@@11 j@@3) (|Seq#Take_9424| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_21497) (t T@Seq_21497) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9424| s@@13))) (< n@@11 (|Seq#Length_9424| (|Seq#Append_21497| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9424| s@@13)) (|Seq#Length_9424| s@@13)) n@@11) (= (|Seq#Take_9424| (|Seq#Append_21497| s@@13 t) n@@11) (|Seq#Append_21497| s@@13 (|Seq#Take_9424| t (|Seq#Sub| n@@11 (|Seq#Length_9424| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9424| (|Seq#Append_21497| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15356) (ExhaleHeap@@1 T@PolymorphicMapType_15356) (Mask@@2 T@PolymorphicMapType_15377) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@2) o_34 $allocated) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@1) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@1) o_34 $allocated))
)))
(assert (forall ((p T@Field_9423_47067) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15416_15416 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15416_15416 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_21497) (s1 T@Seq_21497) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9424|)) (not (= s1 |Seq#Empty_9424|))) (<= (|Seq#Length_9424| s0) n@@13)) (< n@@13 (|Seq#Length_9424| (|Seq#Append_21497| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9424| s0)) (|Seq#Length_9424| s0)) n@@13) (= (|Seq#Index_9424| (|Seq#Append_21497| s0 s1) n@@13) (|Seq#Index_9424| s1 (|Seq#Sub| n@@13 (|Seq#Length_9424| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9424| (|Seq#Append_21497| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9421_3154 value)))
(assert  (not (IsWandField_9421_3154 value)))
(assert  (not (IsPredicateField_9423_21521 array)))
(assert  (not (IsWandField_9423_21547 array)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15356) (ExhaleHeap@@2 T@PolymorphicMapType_15356) (Mask@@3 T@PolymorphicMapType_15377) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_15377) (o_2@@5 T@Ref) (f_4@@5 T@Field_9423_47200) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_9423_53243 f_4@@5))) (not (IsWandField_9423_53259 f_4@@5))) (<= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_15377) (o_2@@6 T@Ref) (f_4@@6 T@Field_9423_47067) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_9423_47158 f_4@@6))) (not (IsWandField_9423_49109 f_4@@6))) (<= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_15377) (o_2@@7 T@Ref) (f_4@@7 T@Field_15429_15430) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9423_15430 f_4@@7))) (not (IsWandField_9423_15430 f_4@@7))) (<= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_15377) (o_2@@8 T@Ref) (f_4@@8 T@Field_15416_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9423_53 f_4@@8))) (not (IsWandField_9423_53 f_4@@8))) (<= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15377) (o_2@@9 T@Ref) (f_4@@9 T@Field_21447_3154) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9421_3154 f_4@@9))) (not (IsWandField_9421_3154 f_4@@9))) (<= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15377) (o_2@@10 T@Ref) (f_4@@10 T@Field_21494_21499) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9423_21521 f_4@@10))) (not (IsWandField_9423_21547 f_4@@10))) (<= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15377) (o_2@@11 T@Ref) (f_4@@11 T@Field_9423_47200) ) (! (= (HasDirectPerm_9423_53780 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9423_53780 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15377) (o_2@@12 T@Ref) (f_4@@12 T@Field_9423_47067) ) (! (= (HasDirectPerm_9423_47131 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9423_47131 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15377) (o_2@@13 T@Ref) (f_4@@13 T@Field_15429_15430) ) (! (= (HasDirectPerm_9423_15430 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9423_15430 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15377) (o_2@@14 T@Ref) (f_4@@14 T@Field_15416_53) ) (! (= (HasDirectPerm_9423_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9423_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15377) (o_2@@15 T@Ref) (f_4@@15 T@Field_21447_3154) ) (! (= (HasDirectPerm_9421_3154 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9421_3154 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15377) (o_2@@16 T@Ref) (f_4@@16 T@Field_21494_21499) ) (! (= (HasDirectPerm_9423_22047 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9423_22047 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15356) (ExhaleHeap@@3 T@PolymorphicMapType_15356) (Mask@@16 T@PolymorphicMapType_15377) (o_34@@0 T@Ref) (f_40 T@Field_9423_47200) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_9423_53780 Mask@@16 o_34@@0 f_40) (= (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@4) o_34@@0 f_40) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@3) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@3) o_34@@0 f_40))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15356) (ExhaleHeap@@4 T@PolymorphicMapType_15356) (Mask@@17 T@PolymorphicMapType_15377) (o_34@@1 T@Ref) (f_40@@0 T@Field_9423_47067) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_9423_47131 Mask@@17 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@5) o_34@@1 f_40@@0) (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| ExhaleHeap@@4) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| ExhaleHeap@@4) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15356) (ExhaleHeap@@5 T@PolymorphicMapType_15356) (Mask@@18 T@PolymorphicMapType_15377) (o_34@@2 T@Ref) (f_40@@1 T@Field_15429_15430) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_9423_15430 Mask@@18 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@6) o_34@@2 f_40@@1) (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| ExhaleHeap@@5) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| ExhaleHeap@@5) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15356) (ExhaleHeap@@6 T@PolymorphicMapType_15356) (Mask@@19 T@PolymorphicMapType_15377) (o_34@@3 T@Ref) (f_40@@2 T@Field_15416_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_9423_53 Mask@@19 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@7) o_34@@3 f_40@@2) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@6) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@6) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15356) (ExhaleHeap@@7 T@PolymorphicMapType_15356) (Mask@@20 T@PolymorphicMapType_15377) (o_34@@4 T@Ref) (f_40@@3 T@Field_21447_3154) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_9421_3154 Mask@@20 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@8) o_34@@4 f_40@@3) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@@7) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@@7) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15356) (ExhaleHeap@@8 T@PolymorphicMapType_15356) (Mask@@21 T@PolymorphicMapType_15377) (o_34@@5 T@Ref) (f_40@@4 T@Field_21494_21499) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_9423_22047 Mask@@21 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@9) o_34@@5 f_40@@4) (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@@8) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@@8) o_34@@5 f_40@@4))
)))
(assert (forall ((s0@@1 T@Seq_21497) (s1@@1 T@Seq_21497) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9424|)) (not (= s1@@1 |Seq#Empty_9424|))) (= (|Seq#Length_9424| (|Seq#Append_21497| s0@@1 s1@@1)) (+ (|Seq#Length_9424| s0@@1) (|Seq#Length_9424| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9424| (|Seq#Append_21497| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9423_47200) ) (! (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9423_47067) ) (! (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_15429_15430) ) (! (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_15416_53) ) (! (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_21447_3154) ) (! (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_21494_21499) ) (! (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_21497) (t@@1 T@Seq_21497) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9424| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9424| s@@15)) (|Seq#Length_9424| s@@15)) n@@15) (= (|Seq#Drop_9424| (|Seq#Append_21497| s@@15 t@@1) n@@15) (|Seq#Drop_9424| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9424| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9424| (|Seq#Append_21497| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15377) (SummandMask1 T@PolymorphicMapType_15377) (SummandMask2 T@PolymorphicMapType_15377) (o_2@@23 T@Ref) (f_4@@23 T@Field_9423_47200) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15377) (SummandMask1@@0 T@PolymorphicMapType_15377) (SummandMask2@@0 T@PolymorphicMapType_15377) (o_2@@24 T@Ref) (f_4@@24 T@Field_9423_47067) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15377) (SummandMask1@@1 T@PolymorphicMapType_15377) (SummandMask2@@1 T@PolymorphicMapType_15377) (o_2@@25 T@Ref) (f_4@@25 T@Field_15429_15430) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15377) (SummandMask1@@2 T@PolymorphicMapType_15377) (SummandMask2@@2 T@PolymorphicMapType_15377) (o_2@@26 T@Ref) (f_4@@26 T@Field_15416_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15377) (SummandMask1@@3 T@PolymorphicMapType_15377) (SummandMask2@@3 T@PolymorphicMapType_15377) (o_2@@27 T@Ref) (f_4@@27 T@Field_21447_3154) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15377) (SummandMask1@@4 T@PolymorphicMapType_15377) (SummandMask2@@4 T@PolymorphicMapType_15377) (o_2@@28 T@Ref) (f_4@@28 T@Field_21494_21499) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21497) (b T@Seq_21497) ) (!  (=> (|Seq#Equal_21497| a b) (= a b))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21497| a b))
)))
(assert (forall ((a@@0 T@Seq_3032) (b@@0 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_21497) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_9424| s@@17))) (|Seq#ContainsTrigger_9424| s@@17 (|Seq#Index_9424| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9424| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_21497) (s1@@3 T@Seq_21497) ) (!  (and (=> (= s0@@3 |Seq#Empty_9424|) (= (|Seq#Append_21497| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9424|) (= (|Seq#Append_21497| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21497| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9424| (|Seq#Singleton_9424| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9424| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21497) ) (! (<= 0 (|Seq#Length_9424| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9424| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15356) (ExhaleHeap@@9 T@PolymorphicMapType_15356) (Mask@@22 T@PolymorphicMapType_15377) (pm_f_16@@1 T@Field_9423_47067) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_9423_47131 Mask@@22 null pm_f_16@@1) (IsPredicateField_9423_47158 pm_f_16@@1)) (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@5 T@Field_15416_53) ) (!  (=> (select (|PolymorphicMapType_15905_15416_53#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) null (PredicateMaskField_9423 pm_f_16@@1))) o2_16 f_40@@5) (= (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@10) o2_16 f_40@@5) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16 f_40@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16 f_40@@5))
)) (forall ((o2_16@@0 T@Ref) (f_40@@6 T@Field_15429_15430) ) (!  (=> (select (|PolymorphicMapType_15905_15416_15430#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) null (PredicateMaskField_9423 pm_f_16@@1))) o2_16@@0 f_40@@6) (= (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@10) o2_16@@0 f_40@@6) (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@0 f_40@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@0 f_40@@6))
))) (forall ((o2_16@@1 T@Ref) (f_40@@7 T@Field_21447_3154) ) (!  (=> (select (|PolymorphicMapType_15905_15416_3154#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) null (PredicateMaskField_9423 pm_f_16@@1))) o2_16@@1 f_40@@7) (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@10) o2_16@@1 f_40@@7) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@1 f_40@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@1 f_40@@7))
))) (forall ((o2_16@@2 T@Ref) (f_40@@8 T@Field_21494_21499) ) (!  (=> (select (|PolymorphicMapType_15905_15416_21499#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) null (PredicateMaskField_9423 pm_f_16@@1))) o2_16@@2 f_40@@8) (= (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@10) o2_16@@2 f_40@@8) (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@2 f_40@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@2 f_40@@8))
))) (forall ((o2_16@@3 T@Ref) (f_40@@9 T@Field_9423_47067) ) (!  (=> (select (|PolymorphicMapType_15905_15416_47067#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) null (PredicateMaskField_9423 pm_f_16@@1))) o2_16@@3 f_40@@9) (= (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@10) o2_16@@3 f_40@@9) (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@3 f_40@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@3 f_40@@9))
))) (forall ((o2_16@@4 T@Ref) (f_40@@10 T@Field_9423_47200) ) (!  (=> (select (|PolymorphicMapType_15905_15416_48582#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) null (PredicateMaskField_9423 pm_f_16@@1))) o2_16@@4 f_40@@10) (= (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@10) o2_16@@4 f_40@@10) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@4 f_40@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@9) o2_16@@4 f_40@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_9423_47158 pm_f_16@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15356) (ExhaleHeap@@10 T@PolymorphicMapType_15356) (Mask@@23 T@PolymorphicMapType_15377) (pm_f_16@@2 T@Field_9423_47067) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_9423_47131 Mask@@23 null pm_f_16@@2) (IsWandField_9423_49109 pm_f_16@@2)) (and (and (and (and (and (forall ((o2_16@@5 T@Ref) (f_40@@11 T@Field_15416_53) ) (!  (=> (select (|PolymorphicMapType_15905_15416_53#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) null (WandMaskField_9423 pm_f_16@@2))) o2_16@@5 f_40@@11) (= (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@11) o2_16@@5 f_40@@11) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@5 f_40@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@5 f_40@@11))
)) (forall ((o2_16@@6 T@Ref) (f_40@@12 T@Field_15429_15430) ) (!  (=> (select (|PolymorphicMapType_15905_15416_15430#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) null (WandMaskField_9423 pm_f_16@@2))) o2_16@@6 f_40@@12) (= (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@11) o2_16@@6 f_40@@12) (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@6 f_40@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@6 f_40@@12))
))) (forall ((o2_16@@7 T@Ref) (f_40@@13 T@Field_21447_3154) ) (!  (=> (select (|PolymorphicMapType_15905_15416_3154#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) null (WandMaskField_9423 pm_f_16@@2))) o2_16@@7 f_40@@13) (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@11) o2_16@@7 f_40@@13) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@7 f_40@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@7 f_40@@13))
))) (forall ((o2_16@@8 T@Ref) (f_40@@14 T@Field_21494_21499) ) (!  (=> (select (|PolymorphicMapType_15905_15416_21499#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) null (WandMaskField_9423 pm_f_16@@2))) o2_16@@8 f_40@@14) (= (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@11) o2_16@@8 f_40@@14) (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@8 f_40@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@8 f_40@@14))
))) (forall ((o2_16@@9 T@Ref) (f_40@@15 T@Field_9423_47067) ) (!  (=> (select (|PolymorphicMapType_15905_15416_47067#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) null (WandMaskField_9423 pm_f_16@@2))) o2_16@@9 f_40@@15) (= (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@11) o2_16@@9 f_40@@15) (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@9 f_40@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@9 f_40@@15))
))) (forall ((o2_16@@10 T@Ref) (f_40@@16 T@Field_9423_47200) ) (!  (=> (select (|PolymorphicMapType_15905_15416_48582#PolymorphicMapType_15905| (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) null (WandMaskField_9423 pm_f_16@@2))) o2_16@@10 f_40@@16) (= (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@11) o2_16@@10 f_40@@16) (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@10 f_40@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| ExhaleHeap@@10) o2_16@@10 f_40@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_9423_49109 pm_f_16@@2))
)))
(assert (forall ((s0@@5 T@Seq_21497) (s1@@5 T@Seq_21497) ) (!  (=> (|Seq#Equal_21497| s0@@5 s1@@5) (and (= (|Seq#Length_9424| s0@@5) (|Seq#Length_9424| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9424| s0@@5))) (= (|Seq#Index_9424| s0@@5 j@@6) (|Seq#Index_9424| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9424| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9424| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21497| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3032) (s1@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| s0@@6 s1@@6) (and (= (|Seq#Length_3032| s0@@6) (|Seq#Length_3032| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3032| s0@@6))) (= (|Seq#Index_3032| s0@@6 j@@7) (|Seq#Index_3032| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3032| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3032| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3032| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9424| (|Seq#Singleton_9424| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9424| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((s@@21 T@Seq_21497) (t@@7 T@Seq_21497) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9424| s@@21))) (= (|Seq#Take_9424| (|Seq#Append_21497| s@@21 t@@7) n@@17) (|Seq#Take_9424| s@@21 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9424| (|Seq#Append_21497| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@22))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18) (|Seq#Take_3032| s@@22 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21497) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_9424| s@@23))) (= (|Seq#Length_9424| (|Seq#Update_9424| s@@23 i@@5 v@@2)) (|Seq#Length_9424| s@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9424| (|Seq#Update_9424| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_9424| s@@23) (|Seq#Update_9424| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@24))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)) (|Seq#Length_3032| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@24) (|Seq#Update_3032| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15356) (o_3 T@Ref) (f_35 T@Field_9423_47067) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@12) (store (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@12) o_3 f_35 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@12) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@12) (store (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@12) o_3 f_35 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15356) (o_3@@0 T@Ref) (f_35@@0 T@Field_9423_47200) (v@@5 T@PolymorphicMapType_15905) ) (! (succHeap Heap@@13 (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@13) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@13) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@13) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@13) (store (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@13) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@13) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@13) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@13) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@13) (store (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@13) o_3@@0 f_35@@0 v@@5) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15356) (o_3@@1 T@Ref) (f_35@@1 T@Field_21447_3154) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@14) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@14) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@14) (store (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@14) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@14) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@14) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@14) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@14) (store (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@14) o_3@@1 f_35@@1 v@@6) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@14) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15356) (o_3@@2 T@Ref) (f_35@@2 T@Field_21494_21499) (v@@7 T@Seq_21497) ) (! (succHeap Heap@@15 (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@15) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@15) (store (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@15) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@15) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@15) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@15) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@15) (store (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@15) o_3@@2 f_35@@2 v@@7) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@15) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@15) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15356) (o_3@@3 T@Ref) (f_35@@3 T@Field_15429_15430) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@16) (store (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@16) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@16) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@16) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@16) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15356 (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@16) (store (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@16) o_3@@3 f_35@@3 v@@8) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@16) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@16) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@16) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15356) (o_3@@4 T@Ref) (f_35@@4 T@Field_15416_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_15356 (store (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@17) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15356 (store (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@17) o_3@@4 f_35@@4 v@@9) (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_9423_47244#PolymorphicMapType_15356| Heap@@17) (|PolymorphicMapType_15356_15416_47067#PolymorphicMapType_15356| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_21497) (t@@9 T@Seq_21497) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9424| s@@25))) (= (|Seq#Drop_9424| (|Seq#Append_21497| s@@25 t@@9) n@@19) (|Seq#Append_21497| (|Seq#Drop_9424| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9424| (|Seq#Append_21497| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@26))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_21497) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_9424| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_9424| (|Seq#Drop_9424| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_9424| s@@27 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9424| s@@27 n@@21) (|Seq#Index_9424| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@28 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Index_3032| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_21497) (s1@@7 T@Seq_21497) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9424|)) (not (= s1@@7 |Seq#Empty_9424|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9424| s0@@7))) (= (|Seq#Index_9424| (|Seq#Append_21497| s0@@7 s1@@7) n@@23) (|Seq#Index_9424| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9424| (|Seq#Append_21497| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9424| s0@@7 n@@23) (|Seq#Append_21497| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21497) (s1@@9 T@Seq_21497) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9424|)) (not (= s1@@9 |Seq#Empty_9424|))) (<= 0 m)) (< m (|Seq#Length_9424| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9424| s0@@9)) (|Seq#Length_9424| s0@@9)) m) (= (|Seq#Index_9424| (|Seq#Append_21497| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9424| s0@@9))) (|Seq#Index_9424| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9424| s1@@9 m) (|Seq#Append_21497| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((o_3@@5 T@Ref) (f_8 T@Field_15429_15430) (Heap@@18 T@PolymorphicMapType_15356) ) (!  (=> (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@18) o_3@@5 $allocated) (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@18) (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@18) o_3@@5 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15356_9222_9223#PolymorphicMapType_15356| Heap@@18) o_3@@5 f_8))
)))
(assert (forall ((s@@29 T@Seq_21497) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_9424| s@@29))) (= (|Seq#Index_9424| s@@29 i@@9) x@@3)) (|Seq#Contains_21497| s@@29 x@@3))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21497| s@@29 x@@3) (|Seq#Index_9424| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3032) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@30))) (= (|Seq#Index_3032| s@@30 i@@10) x@@4)) (|Seq#Contains_3032| s@@30 x@@4))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@30 x@@4) (|Seq#Index_3032| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_21497) (s1@@11 T@Seq_21497) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21497| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21497| s0@@11 s1@@11))) (not (= (|Seq#Length_9424| s0@@11) (|Seq#Length_9424| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21497| s0@@11 s1@@11))) (= (|Seq#Length_9424| s0@@11) (|Seq#Length_9424| s1@@11))) (= (|Seq#SkolemDiff_21497| s0@@11 s1@@11) (|Seq#SkolemDiff_21497| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21497| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21497| s0@@11 s1@@11) (|Seq#Length_9424| s0@@11))) (not (= (|Seq#Index_9424| s0@@11 (|Seq#SkolemDiff_21497| s0@@11 s1@@11)) (|Seq#Index_9424| s1@@11 (|Seq#SkolemDiff_21497| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21497| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_9423_47067) (v_1@@0 T@FrameType) (q T@Field_9423_47067) (w@@0 T@FrameType) (r T@Field_9423_47067) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15416_15416 p@@1 v_1@@0 q w@@0) (InsidePredicate_15416_15416 q w@@0 r u)) (InsidePredicate_15416_15416 p@@1 v_1@@0 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15416_15416 p@@1 v_1@@0 q w@@0) (InsidePredicate_15416_15416 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_21497) ) (!  (=> (= (|Seq#Length_9424| s@@31) 0) (= s@@31 |Seq#Empty_9424|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9424| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@32) 0) (= s@@32 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21497) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9424| s@@33 n@@25) |Seq#Empty_9424|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9424| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3032) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3032| s@@34 n@@26) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun start () Int)
(declare-fun end () Int)
(declare-fun l_5 () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_15377)
(declare-fun a_2 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_15356)
(declare-fun kperm () Real)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_15377)
(declare-fun pos () Int)
(declare-fun mx () Int)
(declare-fun i_6 () Int)
(declare-fun i_4 () Int)
(declare-fun j_6 () Int)
(declare-fun wildcard@1 () Real)
(declare-fun middle@0 () Int)
(declare-fun l2 () Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_15377)
(declare-fun ExhaleHeap@3 () T@PolymorphicMapType_15356)
(declare-fun i5 () Int)
(declare-fun Mask@4 () T@PolymorphicMapType_15377)
(declare-fun l1 () Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_15377)
(declare-fun i3_11 () Int)
(declare-fun Mask@3 () T@PolymorphicMapType_15377)
(declare-fun i2_9 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_15377)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_15356)
(declare-fun i1_25 () Int)
(declare-fun Mask@1 () T@PolymorphicMapType_15377)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_15356)
(declare-fun l_2_1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_15356)
(declare-fun mx@2 () Int)
(declare-fun dummyFunction_3154 (Int) Bool)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_15377)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_15377)
(declare-fun pos@1 () Int)
(declare-fun i_8_2 () Int)
(declare-fun j_4_1 () Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_15356)
(declare-fun Mask@5 () T@PolymorphicMapType_15377)
(declare-fun wildcard@6 () Real)
(declare-fun i6_1 () Int)
(declare-fun i6 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_15377)
(declare-fun mx@1 () Int)
(declare-fun pos@0 () Int)
(declare-fun ml () Int)
(declare-fun posr () Int)
(declare-fun posl () Int)
(declare-fun mr () Int)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun wildcard@5 () Real)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_15377)
(declare-fun wildcard@4 () Real)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_15377)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_15356)
(declare-fun wildcard@3 () Real)
(declare-fun wildcard@2 () Real)
(declare-fun mx@0 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_15377)
(declare-fun i_2 () Int)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id parallel_max)
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
 (=> (= (ControlFlow 0 0) 184) (let ((anon20_correct true))
(let ((anon79_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start end) l_5)) (= (ControlFlow 0 166) 160)) anon20_correct)))
(let ((anon79_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start end) l_5) (and (=> (= (ControlFlow 0 161) (- 0 165)) (HasDirectPerm_9423_22047 QPMask@6 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@6 a_2 array) (and (=> (= (ControlFlow 0 161) (- 0 164)) (>= l_5 0)) (=> (>= l_5 0) (and (=> (= (ControlFlow 0 161) (- 0 163)) (< l_5 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array)))) (=> (< l_5 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 161) (- 0 162)) (HasDirectPerm_9421_3154 QPMask@6 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) l_5) value)) (=> (HasDirectPerm_9421_3154 QPMask@6 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) l_5) value) (=> (= (ControlFlow 0 161) 160) anon20_correct))))))))))))
(let ((anon78_Else_correct true))
(let ((anon76_Else_correct  (and (=> (= (ControlFlow 0 167) (- 0 173)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1)) (|Seq#Contains_3032| (|Seq#Range| start end) i_7_2)) (< NoPerm kperm)) (< NoPerm kperm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_2))))
 :qid |stdinbpl.801:15|
 :skolemid |67|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@0)) (|Seq#Contains_3032| (|Seq#Range| start end) i_7_2@@0)) (< NoPerm kperm)) (< NoPerm kperm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_2@@0))))
 :qid |stdinbpl.801:15|
 :skolemid |67|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@1) (< NoPerm kperm)) (and (qpRange2 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@1)) (= (invRecv2 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.807:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_7_1@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv2 o_4)) (< NoPerm kperm)) (qpRange2 o_4)) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) (invRecv2 o_4)) o_4))
 :qid |stdinbpl.811:22|
 :skolemid |69|
 :pattern ( (invRecv2 o_4))
))) (and (=> (= (ControlFlow 0 167) (- 0 172)) (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@2) (>= kperm NoPerm))
 :qid |stdinbpl.817:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_7_1@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@2))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@2))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@3) (>= kperm NoPerm))
 :qid |stdinbpl.817:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_7_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@3))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@4) (> kperm NoPerm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@4) null)))
 :qid |stdinbpl.823:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_7_1@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_7_1@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_7_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv2 o_4@@0)) (< NoPerm kperm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm kperm) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@6) o_4@@0 value) (+ (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| PostMask@0) o_4@@0 value) kperm)))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv2 o_4@@0)) (< NoPerm kperm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@6) o_4@@0 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| PostMask@0) o_4@@0 value))))
 :qid |stdinbpl.829:22|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@6) o_4@@0 value))
))) (=> (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| PostMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@6) o_4@@1 f_5)))
 :qid |stdinbpl.833:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| PostMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@6) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| PostMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@6) o_4@@2 f_5@@0)))
 :qid |stdinbpl.833:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| PostMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@6) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_21447_3154) ) (!  (=> (not (= f_5@@1 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| PostMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@6) o_4@@3 f_5@@1)))
 :qid |stdinbpl.833:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| PostMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@6) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| PostMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@6) o_4@@4 f_5@@2)))
 :qid |stdinbpl.833:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| PostMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@6) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| PostMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@6) o_4@@5 f_5@@3)))
 :qid |stdinbpl.833:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| PostMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@6) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| PostMask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@6) o_4@@6 f_5@@4)))
 :qid |stdinbpl.833:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| PostMask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@6) o_4@@6 f_5@@4))
))) (state PostHeap@0 QPMask@6)) (and (and (state PostHeap@0 QPMask@6) (<= start pos)) (and (< pos end) (state PostHeap@0 QPMask@6)))) (and (=> (= (ControlFlow 0 167) (- 0 171)) (HasDirectPerm_9423_22047 QPMask@6 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@6 a_2 array) (and (=> (= (ControlFlow 0 167) (- 0 170)) (>= pos 0)) (=> (>= pos 0) (and (=> (= (ControlFlow 0 167) (- 0 169)) (< pos (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array)))) (=> (< pos (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 167) (- 0 168)) (HasDirectPerm_9421_3154 QPMask@6 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) pos) value)) (=> (HasDirectPerm_9421_3154 QPMask@6 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) pos) value) (=> (and (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| PostHeap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) pos) value) mx) (state PostHeap@0 QPMask@6)) (and (and (=> (= (ControlFlow 0 167) 159) anon78_Else_correct) (=> (= (ControlFlow 0 167) 161) anon79_Then_correct)) (=> (= (ControlFlow 0 167) 166) anon79_Else_correct))))))))))))))))))))
(let ((anon16_correct true))
(let ((anon77_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start end) i_6)) (= (ControlFlow 0 158) 153)) anon16_correct)))
(let ((anon77_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_6) (and (=> (= (ControlFlow 0 154) (- 0 157)) (HasDirectPerm_9423_22047 PostMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 PostMask@0 a_2 array) (and (=> (= (ControlFlow 0 154) (- 0 156)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 154) (- 0 155)) (< i_6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array)))) (=> (< i_6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array))) (=> (= (ControlFlow 0 154) 153) anon16_correct))))))))))
(let ((anon74_Else_correct  (=> (and (forall ((i_5 Int) (j_3_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_5) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_3_1) (not (= i_5 j_3_1)))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_5) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) j_3_1))))
 :qid |stdinbpl.781:20|
 :skolemid |66|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_5) (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_5) (|Seq#Contains_3032| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_5) (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_5) (|Seq#Contains_3032| (|Seq#Range| start end) j_3_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_5) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) j_3_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_5) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) j_3_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_3_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_5))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) j_3_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_5))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) i_5) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array) j_3_1))
)) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 174) 167) anon76_Else_correct) (=> (= (ControlFlow 0 174) 154) anon77_Then_correct)) (=> (= (ControlFlow 0 174) 158) anon77_Else_correct)))))
(let ((anon12_correct true))
(let ((anon75_Else_correct  (=> (and (not (and (|Seq#Contains_3032| (|Seq#Range| start end) i_4) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_6) (not (= i_4 j_6))))) (= (ControlFlow 0 152) 144)) anon12_correct)))
(let ((anon75_Then_correct  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_4) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_6) (not (= i_4 j_6)))) (and (=> (= (ControlFlow 0 145) (- 0 151)) (HasDirectPerm_9423_22047 PostMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 PostMask@0 a_2 array) (and (=> (= (ControlFlow 0 145) (- 0 150)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 145) (- 0 149)) (< i_4 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array)))) (=> (< i_4 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array))) (and (=> (= (ControlFlow 0 145) (- 0 148)) (HasDirectPerm_9423_22047 PostMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 PostMask@0 a_2 array) (and (=> (= (ControlFlow 0 145) (- 0 147)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 145) (- 0 146)) (< j_6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array)))) (=> (< j_6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array))) (=> (= (ControlFlow 0 145) 144) anon12_correct))))))))))))))))
(let ((anon73_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (> wildcard@1 NoPerm)) (=> (and (and (not (= a_2 null)) (= PostMask@0 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ZeroMask) a_2 array (+ (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ZeroMask) a_2 array) wildcard@1)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 175) (- 0 176)) (HasDirectPerm_9423_22047 PostMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 PostMask@0 a_2 array) (=> (and (< end (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| PostHeap@0) a_2 array))) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 175) 174) anon74_Else_correct) (=> (= (ControlFlow 0 175) 145) anon75_Then_correct)) (=> (= (ControlFlow 0 175) 152) anon75_Else_correct)))))))))
(let ((anon46_correct true))
(let ((anon92_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| middle@0 end) l2)) (= (ControlFlow 0 93) 87)) anon46_correct)))
(let ((anon92_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) l2) (and (=> (= (ControlFlow 0 88) (- 0 92)) (HasDirectPerm_9423_22047 QPMask@4 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@4 a_2 array) (and (=> (= (ControlFlow 0 88) (- 0 91)) (>= l2 0)) (=> (>= l2 0) (and (=> (= (ControlFlow 0 88) (- 0 90)) (< l2 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)))) (=> (< l2 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (and (=> (= (ControlFlow 0 88) (- 0 89)) (HasDirectPerm_9421_3154 QPMask@4 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l2) value)) (=> (HasDirectPerm_9421_3154 QPMask@4 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l2) value) (=> (= (ControlFlow 0 88) 87) anon46_correct))))))))))))
(let ((anon42_correct true))
(let ((anon90_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5)) (= (ControlFlow 0 86) 81)) anon42_correct)))
(let ((anon90_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5) (and (=> (= (ControlFlow 0 82) (- 0 85)) (HasDirectPerm_9423_22047 Mask@4 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@4 a_2 array) (and (=> (= (ControlFlow 0 82) (- 0 84)) (>= i5 0)) (=> (>= i5 0) (and (=> (= (ControlFlow 0 82) (- 0 83)) (< i5 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)))) (=> (< i5 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (=> (= (ControlFlow 0 82) 81) anon42_correct))))))))))
(let ((anon38_correct true))
(let ((anon88_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start middle@0) l1)) (= (ControlFlow 0 80) 74)) anon38_correct)))
(let ((anon88_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) l1) (and (=> (= (ControlFlow 0 75) (- 0 79)) (HasDirectPerm_9423_22047 QPMask@3 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@3 a_2 array) (and (=> (= (ControlFlow 0 75) (- 0 78)) (>= l1 0)) (=> (>= l1 0) (and (=> (= (ControlFlow 0 75) (- 0 77)) (< l1 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)))) (=> (< l1 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (HasDirectPerm_9421_3154 QPMask@3 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l1) value)) (=> (HasDirectPerm_9421_3154 QPMask@3 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l1) value) (=> (= (ControlFlow 0 75) 74) anon38_correct))))))))))))
(let ((anon34_correct true))
(let ((anon86_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_11)) (= (ControlFlow 0 73) 68)) anon34_correct)))
(let ((anon86_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_11) (and (=> (= (ControlFlow 0 69) (- 0 72)) (HasDirectPerm_9423_22047 Mask@3 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@3 a_2 array) (and (=> (= (ControlFlow 0 69) (- 0 71)) (>= i3_11 0)) (=> (>= i3_11 0) (and (=> (= (ControlFlow 0 69) (- 0 70)) (< i3_11 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)))) (=> (< i3_11 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (=> (= (ControlFlow 0 69) 68) anon34_correct))))))))))
(let ((anon30_correct true))
(let ((anon84_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_9)) (= (ControlFlow 0 67) 62)) anon30_correct)))
(let ((anon84_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_9) (and (=> (= (ControlFlow 0 63) (- 0 66)) (HasDirectPerm_9423_22047 Mask@2 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@2 a_2 array) (and (=> (= (ControlFlow 0 63) (- 0 65)) (>= i2_9 0)) (=> (>= i2_9 0) (and (=> (= (ControlFlow 0 63) (- 0 64)) (< i2_9 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array)))) (=> (< i2_9 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array))) (=> (= (ControlFlow 0 63) 62) anon30_correct))))))))))
(let ((anon26_correct true))
(let ((anon82_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_25)) (= (ControlFlow 0 61) 56)) anon26_correct)))
(let ((anon82_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_25) (and (=> (= (ControlFlow 0 57) (- 0 60)) (HasDirectPerm_9423_22047 Mask@1 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@1 a_2 array) (and (=> (= (ControlFlow 0 57) (- 0 59)) (>= i1_25 0)) (=> (>= i1_25 0) (and (=> (= (ControlFlow 0 57) (- 0 58)) (< i1_25 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array)))) (=> (< i1_25 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array))) (=> (= (ControlFlow 0 57) 56) anon26_correct))))))))))
(let ((anon67_correct true))
(let ((anon101_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start end) l_2_1)) (= (ControlFlow 0 39) 36)) anon67_correct)))
(let ((anon101_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start end) l_2_1) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) l_2_1) value) mx@2)) (=> (<= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) l_2_1) value) mx@2) (=> (= (ControlFlow 0 37) 36) anon67_correct))))))
(let ((anon100_Else_correct true))
(let ((anon98_Else_correct  (=> (forall ((i_9_1_1 Int) (j_5_1_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_9_1_1) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_5_1_1) (not (= i_9_1_1 j_5_1_1)))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_9_1_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) j_5_1_1))))
 :qid |stdinbpl.1486:20|
 :skolemid |106|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_9_1_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_9_1_1) (|Seq#Contains_3032| (|Seq#Range| start end) j_5_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_9_1_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_5_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_9_1_1) (|Seq#Contains_3032| (|Seq#Range| start end) j_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_9_1_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) j_5_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_9_1_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) j_5_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_5_1_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_9_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) j_5_1_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_9_1_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_9_1_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) j_5_1_1))
)) (and (=> (= (ControlFlow 0 40) (- 0 46)) (forall ((i_10_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1) (dummyFunction_3154 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1) value))) (>= kperm NoPerm))
 :qid |stdinbpl.1494:17|
 :skolemid |107|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_10_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1))
))) (=> (forall ((i_10_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@0) (dummyFunction_3154 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@0) value))) (>= kperm NoPerm))
 :qid |stdinbpl.1494:17|
 :skolemid |107|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_10_1@@0))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@0))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@0))
)) (and (=> (= (ControlFlow 0 40) (- 0 45)) (forall ((i_10_1@@1 Int) (i_10_2 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@1 i_10_2)) (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@1)) (|Seq#Contains_3032| (|Seq#Range| start end) i_10_2)) (< NoPerm kperm)) (< NoPerm kperm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_2))))
 :qid |stdinbpl.1501:17|
 :skolemid |108|
 :pattern ( (neverTriggered3 i_10_1@@1) (neverTriggered3 i_10_2))
))) (=> (forall ((i_10_1@@2 Int) (i_10_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_10_1@@2 i_10_2@@0)) (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@2)) (|Seq#Contains_3032| (|Seq#Range| start end) i_10_2@@0)) (< NoPerm kperm)) (< NoPerm kperm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_2@@0))))
 :qid |stdinbpl.1501:17|
 :skolemid |108|
 :pattern ( (neverTriggered3 i_10_1@@2) (neverTriggered3 i_10_2@@0))
)) (and (=> (= (ControlFlow 0 40) (- 0 44)) (forall ((i_10_1@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@3) (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@6) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@3) value) kperm))
 :qid |stdinbpl.1508:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_10_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@3))
))) (=> (forall ((i_10_1@@4 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@4) (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@6) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@4) value) kperm))
 :qid |stdinbpl.1508:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_10_1@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@4))
)) (=> (forall ((i_10_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@5) (< NoPerm kperm)) (and (qpRange3 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@5)) (= (invRecv3 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@5)) i_10_1@@5)))
 :qid |stdinbpl.1514:22|
 :skolemid |110|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_10_1@@5))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_10_1@@5))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_10_1@@5))
)) (=> (and (forall ((o_4@@7 T@Ref) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv3 o_4@@7)) (and (< NoPerm kperm) (qpRange3 o_4@@7))) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) (invRecv3 o_4@@7)) o_4@@7))
 :qid |stdinbpl.1518:22|
 :skolemid |111|
 :pattern ( (invRecv3 o_4@@7))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv3 o_4@@8)) (and (< NoPerm kperm) (qpRange3 o_4@@8))) (and (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) (invRecv3 o_4@@8)) o_4@@8) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@5) o_4@@8 value) (- (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@6) o_4@@8 value) kperm)))) (=> (not (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv3 o_4@@8)) (and (< NoPerm kperm) (qpRange3 o_4@@8)))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@5) o_4@@8 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@6) o_4@@8 value))))
 :qid |stdinbpl.1524:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@5) o_4@@8 value))
))) (=> (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@6) o_4@@9 f_5@@5) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@5) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1530:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@5) o_4@@9 f_5@@5))
)) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@6) o_4@@10 f_5@@6) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@5) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1530:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@5) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_21447_3154) ) (!  (=> (not (= f_5@@7 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@6) o_4@@11 f_5@@7) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@5) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1530:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@5) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@6) o_4@@12 f_5@@8) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@5) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1530:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@5) o_4@@12 f_5@@8))
))) (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@6) o_4@@13 f_5@@9) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@5) o_4@@13 f_5@@9)))
 :qid |stdinbpl.1530:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@5) o_4@@13 f_5@@9))
))) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@6) o_4@@14 f_5@@10) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@5) o_4@@14 f_5@@10)))
 :qid |stdinbpl.1530:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@5) o_4@@14 f_5@@10))
))) (and (=> (= (ControlFlow 0 40) (- 0 43)) (<= start pos@1)) (=> (<= start pos@1) (and (=> (= (ControlFlow 0 40) (- 0 42)) (< pos@1 end)) (=> (< pos@1 end) (and (=> (= (ControlFlow 0 40) (- 0 41)) (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) pos@1) value) mx@2)) (=> (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) pos@1) value) mx@2) (and (and (=> (= (ControlFlow 0 40) 35) anon100_Else_correct) (=> (= (ControlFlow 0 40) 37) anon101_Then_correct)) (=> (= (ControlFlow 0 40) 39) anon101_Else_correct))))))))))))))))))))
(let ((anon63_correct true))
(let ((anon99_Else_correct  (=> (and (not (and (|Seq#Contains_3032| (|Seq#Range| start end) i_8_2) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_4_1) (not (= i_8_2 j_4_1))))) (= (ControlFlow 0 34) 31)) anon63_correct)))
(let ((anon99_Then_correct  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_8_2) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_4_1) (not (= i_8_2 j_4_1)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_8_2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) j_4_1)))) (=> (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i_8_2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) j_4_1))) (=> (= (ControlFlow 0 32) 31) anon63_correct))))))
(let ((anon96_Else_correct  (=> (and (forall ((i6_2_1 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i6_2_1) (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i6_2_1) value) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@19) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i6_2_1) value)))
 :qid |stdinbpl.1463:20|
 :skolemid |105|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i6_2_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i6_2_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i6_2_1))
)) (state Heap@0 Mask@5)) (and (=> (= (ControlFlow 0 47) (- 0 49)) (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@5) a_2 array) NoPerm)) (=> (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@5) a_2 array) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@5) a_2 array)) (= Mask@6 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@5) a_2 array (- (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@5) a_2 array) wildcard@6)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@5) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@5) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@5) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@5) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@5)))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (< end (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array)))) (=> (< end (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array))) (and (and (=> (= (ControlFlow 0 47) 40) anon98_Else_correct) (=> (= (ControlFlow 0 47) 32) anon99_Then_correct)) (=> (= (ControlFlow 0 47) 34) anon99_Else_correct)))))))))))
(let ((anon59_correct true))
(let ((anon97_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start end) i6_1)) (= (ControlFlow 0 30) 27)) anon59_correct)))
(let ((anon97_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i6_1) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i6_1) value) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@19) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i6_1) value))) (=> (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i6_1) value) (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@19) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i6_1) value)) (=> (= (ControlFlow 0 28) 27) anon59_correct))))))
(let ((anon55_correct true))
(let ((anon95_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start end) i6)) (= (ControlFlow 0 26) 16)) anon55_correct)))
(let ((anon95_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i6) (and (=> (= (ControlFlow 0 17) (- 0 25)) (HasDirectPerm_9423_22047 Mask@5 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@5 a_2 array) (and (=> (= (ControlFlow 0 17) (- 0 24)) (>= i6 0)) (=> (>= i6 0) (and (=> (= (ControlFlow 0 17) (- 0 23)) (< i6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array)))) (=> (< i6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array))) (and (=> (= (ControlFlow 0 17) (- 0 22)) (HasDirectPerm_9421_3154 Mask@5 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i6) value)) (=> (HasDirectPerm_9421_3154 Mask@5 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@0) a_2 array) i6) value) (and (=> (= (ControlFlow 0 17) (- 0 21)) (HasDirectPerm_9423_22047 QPMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@0 a_2 array) (and (=> (= (ControlFlow 0 17) (- 0 20)) (>= i6 0)) (=> (>= i6 0) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< i6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array)))) (=> (< i6 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (HasDirectPerm_9421_3154 QPMask@0 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i6) value)) (=> (HasDirectPerm_9421_3154 QPMask@0 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i6) value) (=> (= (ControlFlow 0 17) 16) anon55_correct))))))))))))))))))))
(let ((anon52_correct  (=> (state Heap@0 Mask@5) (and (and (and (and (=> (= (ControlFlow 0 50) 47) anon96_Else_correct) (=> (= (ControlFlow 0 50) 28) anon97_Then_correct)) (=> (= (ControlFlow 0 50) 30) anon97_Else_correct)) (=> (= (ControlFlow 0 50) 17) anon95_Then_correct)) (=> (= (ControlFlow 0 50) 26) anon95_Else_correct)))))
(let ((anon50_correct  (=> (and (state ExhaleHeap@3 QPMask@4) (= Mask@5 QPMask@4)) (=> (and (and (= Heap@0 ExhaleHeap@3) (= mx@2 mx@1)) (and (= pos@1 pos@0) (= (ControlFlow 0 94) 50))) anon52_correct))))
(let ((anon93_Else_correct  (=> (and (and (not (= mx@1 ml)) (state ExhaleHeap@3 QPMask@4)) (and (= pos@0 posr) (= (ControlFlow 0 96) 94))) anon50_correct)))
(let ((anon93_Then_correct  (=> (and (and (= mx@1 ml) (state ExhaleHeap@3 QPMask@4)) (and (= pos@0 posl) (= (ControlFlow 0 95) 94))) anon50_correct)))
(let ((anon91_Else_correct  (=> (forall ((l2_1 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) l2_1) (<= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@3) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l2_1) value) mr))
 :qid |stdinbpl.1381:24|
 :skolemid |104|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) l2_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) l2_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l2_1))
)) (=> (and (and (state ExhaleHeap@3 QPMask@4) (state ExhaleHeap@3 QPMask@4)) (and (= mx@1 (ite (> ml mr) ml mr)) (state ExhaleHeap@3 QPMask@4))) (and (=> (= (ControlFlow 0 97) 95) anon93_Then_correct) (=> (= (ControlFlow 0 97) 96) anon93_Else_correct))))))
(let ((anon89_Else_correct  (and (=> (= (ControlFlow 0 98) (- 0 104)) (forall ((i5_1 Int) (i5_1_1 Int) ) (!  (=> (and (and (and (and (not (= i5_1 i5_1_1)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1_1)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1_1))))
 :qid |stdinbpl.1300:19|
 :skolemid |97|
))) (=> (forall ((i5_1@@0 Int) (i5_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i5_1@@0 i5_1_1@@0)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@0)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1_1@@0)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1_1@@0))))
 :qid |stdinbpl.1300:19|
 :skolemid |97|
)) (=> (and (forall ((i5_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@1) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (and (qpRange7 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@1)) (= (invRecv7 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@1)) i5_1@@1)))
 :qid |stdinbpl.1306:26|
 :skolemid |98|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i5_1@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@1))
)) (forall ((o_4@@15 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) (invRecv7 o_4@@15)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (qpRange7 o_4@@15)) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) (invRecv7 o_4@@15)) o_4@@15))
 :qid |stdinbpl.1310:26|
 :skolemid |99|
 :pattern ( (invRecv7 o_4@@15))
))) (and (=> (= (ControlFlow 0 98) (- 0 103)) (forall ((i5_1@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@2) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.1316:19|
 :skolemid |100|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i5_1@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@2))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@2))
))) (=> (forall ((i5_1@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@3) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.1316:19|
 :skolemid |100|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i5_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@3))
)) (=> (and (forall ((i5_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@4) (> (* (/ (to_real 1) (to_real 2)) kperm) NoPerm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@4) null)))
 :qid |stdinbpl.1322:26|
 :skolemid |101|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i5_1@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i5_1@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i5_1@@4))
)) (forall ((o_4@@16 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) (invRecv7 o_4@@16)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (qpRange7 o_4@@16)) (and (=> (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) (invRecv7 o_4@@16)) o_4@@16)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@4) o_4@@16 value) (+ (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@4) o_4@@16 value) (* (/ (to_real 1) (to_real 2)) kperm))))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) (invRecv7 o_4@@16)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (qpRange7 o_4@@16))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@4) o_4@@16 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@4) o_4@@16 value))))
 :qid |stdinbpl.1328:26|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@4) o_4@@16 value))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@4) o_4@@17 f_5@@11) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@4) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1332:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@4) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@4) o_4@@17 f_5@@11))
)) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@4) o_4@@18 f_5@@12) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@4) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1332:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@4) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@4) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_21447_3154) ) (!  (=> (not (= f_5@@13 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@4) o_4@@19 f_5@@13) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@4) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1332:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@4) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@4) o_4@@19 f_5@@13))
))) (forall ((o_4@@20 T@Ref) (f_5@@14 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@4) o_4@@20 f_5@@14) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@4) o_4@@20 f_5@@14)))
 :qid |stdinbpl.1332:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@4) o_4@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@4) o_4@@20 f_5@@14))
))) (forall ((o_4@@21 T@Ref) (f_5@@15 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@4) o_4@@21 f_5@@15) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@4) o_4@@21 f_5@@15)))
 :qid |stdinbpl.1332:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@4) o_4@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@4) o_4@@21 f_5@@15))
))) (forall ((o_4@@22 T@Ref) (f_5@@16 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@4) o_4@@22 f_5@@16) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@4) o_4@@22 f_5@@16)))
 :qid |stdinbpl.1332:33|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@4) o_4@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@4) o_4@@22 f_5@@16))
))) (state ExhaleHeap@3 QPMask@4)) (and (state ExhaleHeap@3 QPMask@4) (state ExhaleHeap@3 QPMask@4))) (and (and (<= middle@0 posr) (< posr end)) (and (state ExhaleHeap@3 QPMask@4) (state ExhaleHeap@3 QPMask@4)))) (and (=> (= (ControlFlow 0 98) (- 0 102)) (HasDirectPerm_9423_22047 QPMask@4 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@4 a_2 array) (and (=> (= (ControlFlow 0 98) (- 0 101)) (>= posr 0)) (=> (>= posr 0) (and (=> (= (ControlFlow 0 98) (- 0 100)) (< posr (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)))) (=> (< posr (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (HasDirectPerm_9421_3154 QPMask@4 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) posr) value)) (=> (HasDirectPerm_9421_3154 QPMask@4 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) posr) value) (=> (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@3) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) posr) value) mr) (=> (and (state ExhaleHeap@3 QPMask@4) (state ExhaleHeap@3 QPMask@4)) (and (and (=> (= (ControlFlow 0 98) 97) anon91_Else_correct) (=> (= (ControlFlow 0 98) 88) anon92_Then_correct)) (=> (= (ControlFlow 0 98) 93) anon92_Else_correct)))))))))))))))))))))
(let ((anon87_Else_correct  (=> (forall ((l1_1 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) l1_1) (<= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@3) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l1_1) value) ml))
 :qid |stdinbpl.1256:24|
 :skolemid |96|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) l1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) l1_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) l1_1))
)) (=> (and (and (and (state ExhaleHeap@3 QPMask@3) (state ExhaleHeap@3 QPMask@3)) (and (> wildcard@5 NoPerm) (not (= a_2 null)))) (and (and (= Mask@4 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@3) a_2 array (+ (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@3) a_2 array) wildcard@5)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@3) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@3) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@3) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@3) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@3))) (state ExhaleHeap@3 Mask@4)) (and (state ExhaleHeap@3 Mask@4) (state ExhaleHeap@3 Mask@4)))) (and (=> (= (ControlFlow 0 105) (- 0 106)) (HasDirectPerm_9423_22047 Mask@4 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@4 a_2 array) (=> (< middle@0 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (=> (and (state ExhaleHeap@3 Mask@4) (state ExhaleHeap@3 Mask@4)) (and (and (=> (= (ControlFlow 0 105) 98) anon89_Else_correct) (=> (= (ControlFlow 0 105) 82) anon90_Then_correct)) (=> (= (ControlFlow 0 105) 86) anon90_Else_correct))))))))))
(let ((anon85_Else_correct  (and (=> (= (ControlFlow 0 107) (- 0 113)) (forall ((i3_1 Int) (i3_1_1 Int) ) (!  (=> (and (and (and (and (not (= i3_1 i3_1_1)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1_1)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1_1))))
 :qid |stdinbpl.1175:19|
 :skolemid |89|
))) (=> (forall ((i3_1@@0 Int) (i3_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i3_1@@0 i3_1_1@@0)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@0)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1_1@@0)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1_1@@0))))
 :qid |stdinbpl.1175:19|
 :skolemid |89|
)) (=> (and (forall ((i3_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@1) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (and (qpRange6 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@1)) (= (invRecv6 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@1)) i3_1@@1)))
 :qid |stdinbpl.1181:26|
 :skolemid |90|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i3_1@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@1))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) (invRecv6 o_4@@23)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (qpRange6 o_4@@23)) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) (invRecv6 o_4@@23)) o_4@@23))
 :qid |stdinbpl.1185:26|
 :skolemid |91|
 :pattern ( (invRecv6 o_4@@23))
))) (and (=> (= (ControlFlow 0 107) (- 0 112)) (forall ((i3_1@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@2) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.1191:19|
 :skolemid |92|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i3_1@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@2))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@2))
))) (=> (forall ((i3_1@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@3) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.1191:19|
 :skolemid |92|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i3_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@3))
)) (=> (and (forall ((i3_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@4) (> (* (/ (to_real 1) (to_real 2)) kperm) NoPerm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@4) null)))
 :qid |stdinbpl.1197:26|
 :skolemid |93|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i3_1@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i3_1@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) i3_1@@4))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) (invRecv6 o_4@@24)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (qpRange6 o_4@@24)) (and (=> (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) (invRecv6 o_4@@24)) o_4@@24)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@3) o_4@@24 value) (+ (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@3) o_4@@24 value) (* (/ (to_real 1) (to_real 2)) kperm))))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) (invRecv6 o_4@@24)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (qpRange6 o_4@@24))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@3) o_4@@24 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@3) o_4@@24 value))))
 :qid |stdinbpl.1203:26|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@3) o_4@@24 value))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@3) o_4@@25 f_5@@17) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1207:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@3) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@3) o_4@@25 f_5@@17))
)) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@3) o_4@@26 f_5@@18) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1207:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@3) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@3) o_4@@26 f_5@@18))
))) (forall ((o_4@@27 T@Ref) (f_5@@19 T@Field_21447_3154) ) (!  (=> (not (= f_5@@19 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@3) o_4@@27 f_5@@19) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@3) o_4@@27 f_5@@19)))
 :qid |stdinbpl.1207:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@3) o_4@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@3) o_4@@27 f_5@@19))
))) (forall ((o_4@@28 T@Ref) (f_5@@20 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@3) o_4@@28 f_5@@20) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@3) o_4@@28 f_5@@20)))
 :qid |stdinbpl.1207:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@3) o_4@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@3) o_4@@28 f_5@@20))
))) (forall ((o_4@@29 T@Ref) (f_5@@21 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@3) o_4@@29 f_5@@21) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@3) o_4@@29 f_5@@21)))
 :qid |stdinbpl.1207:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@3) o_4@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@3) o_4@@29 f_5@@21))
))) (forall ((o_4@@30 T@Ref) (f_5@@22 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@3) o_4@@30 f_5@@22) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@3) o_4@@30 f_5@@22)))
 :qid |stdinbpl.1207:33|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@3) o_4@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@3) o_4@@30 f_5@@22))
))) (state ExhaleHeap@3 QPMask@3)) (and (state ExhaleHeap@3 QPMask@3) (state ExhaleHeap@3 QPMask@3))) (and (and (<= start posl) (< posl middle@0)) (and (state ExhaleHeap@3 QPMask@3) (state ExhaleHeap@3 QPMask@3)))) (and (=> (= (ControlFlow 0 107) (- 0 111)) (HasDirectPerm_9423_22047 QPMask@3 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@3 a_2 array) (and (=> (= (ControlFlow 0 107) (- 0 110)) (>= posl 0)) (=> (>= posl 0) (and (=> (= (ControlFlow 0 107) (- 0 109)) (< posl (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)))) (=> (< posl (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (and (=> (= (ControlFlow 0 107) (- 0 108)) (HasDirectPerm_9421_3154 QPMask@3 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) posl) value)) (=> (HasDirectPerm_9421_3154 QPMask@3 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) posl) value) (=> (= (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@3) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array) posl) value) ml) (=> (and (state ExhaleHeap@3 QPMask@3) (state ExhaleHeap@3 QPMask@3)) (and (and (=> (= (ControlFlow 0 107) 105) anon87_Else_correct) (=> (= (ControlFlow 0 107) 75) anon88_Then_correct)) (=> (= (ControlFlow 0 107) 80) anon88_Else_correct)))))))))))))))))))))
(let ((anon83_Else_correct  (and (=> (= (ControlFlow 0 114) (- 0 122)) (forall ((i2_1_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1) (dummyFunction_3154 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1) value))) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.1071:21|
 :skolemid |82|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i2_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1))
))) (=> (forall ((i2_1_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@0) (dummyFunction_3154 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@0) value))) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.1071:21|
 :skolemid |82|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i2_1_1@@0))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@0))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@0))
)) (and (=> (= (ControlFlow 0 114) (- 0 121)) (forall ((i2_1_1@@1 Int) (i2_1_2 Int) ) (!  (=> (and (and (and (and (not (= i2_1_1@@1 i2_1_2)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@1)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_2)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_2))))
 :qid |stdinbpl.1078:21|
 :skolemid |83|
 :pattern ( (neverTriggered5 i2_1_1@@1) (neverTriggered5 i2_1_2))
))) (=> (forall ((i2_1_1@@2 Int) (i2_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i2_1_1@@2 i2_1_2@@0)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@2)) (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_2@@0)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_2@@0))))
 :qid |stdinbpl.1078:21|
 :skolemid |83|
 :pattern ( (neverTriggered5 i2_1_1@@2) (neverTriggered5 i2_1_2@@0))
)) (and (=> (= (ControlFlow 0 114) (- 0 120)) (forall ((i2_1_1@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@3) (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@3) value) (* (/ (to_real 1) (to_real 2)) kperm)))
 :qid |stdinbpl.1085:21|
 :skolemid |84|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i2_1_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@3))
))) (=> (forall ((i2_1_1@@4 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@4) (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@4) value) (* (/ (to_real 1) (to_real 2)) kperm)))
 :qid |stdinbpl.1085:21|
 :skolemid |84|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i2_1_1@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@4))
)) (=> (forall ((i2_1_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@5) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (and (qpRange5 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@5)) (= (invRecv5 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@5)) i2_1_1@@5)))
 :qid |stdinbpl.1091:26|
 :skolemid |85|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| middle@0 end) i2_1_1@@5))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| middle@0 end) i2_1_1@@5))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) i2_1_1@@5))
)) (=> (and (forall ((o_4@@31 T@Ref) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) (invRecv5 o_4@@31)) (and (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (qpRange5 o_4@@31))) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) (invRecv5 o_4@@31)) o_4@@31))
 :qid |stdinbpl.1095:26|
 :skolemid |86|
 :pattern ( (invRecv5 o_4@@31))
)) (forall ((o_4@@32 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) (invRecv5 o_4@@32)) (and (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (qpRange5 o_4@@32))) (and (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array) (invRecv5 o_4@@32)) o_4@@32) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@2) o_4@@32 value) (- (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@2) o_4@@32 value) (* (/ (to_real 1) (to_real 2)) kperm))))) (=> (not (and (|Seq#Contains_3032| (|Seq#Range| middle@0 end) (invRecv5 o_4@@32)) (and (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (qpRange5 o_4@@32)))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@2) o_4@@32 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@2) o_4@@32 value))))
 :qid |stdinbpl.1101:26|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@2) o_4@@32 value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@2) o_4@@33 f_5@@23) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@2) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1107:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@2) o_4@@33 f_5@@23))
)) (forall ((o_4@@34 T@Ref) (f_5@@24 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@2) o_4@@34 f_5@@24) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@2) o_4@@34 f_5@@24)))
 :qid |stdinbpl.1107:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@2) o_4@@34 f_5@@24))
))) (forall ((o_4@@35 T@Ref) (f_5@@25 T@Field_21447_3154) ) (!  (=> (not (= f_5@@25 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@2) o_4@@35 f_5@@25) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@2) o_4@@35 f_5@@25)))
 :qid |stdinbpl.1107:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@2) o_4@@35 f_5@@25))
))) (forall ((o_4@@36 T@Ref) (f_5@@26 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@2) o_4@@36 f_5@@26) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@2) o_4@@36 f_5@@26)))
 :qid |stdinbpl.1107:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@2) o_4@@36 f_5@@26))
))) (forall ((o_4@@37 T@Ref) (f_5@@27 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@2) o_4@@37 f_5@@27) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@2) o_4@@37 f_5@@27)))
 :qid |stdinbpl.1107:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@2) o_4@@37 f_5@@27))
))) (forall ((o_4@@38 T@Ref) (f_5@@28 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@2) o_4@@38 f_5@@28) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@2) o_4@@38 f_5@@28)))
 :qid |stdinbpl.1107:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@2) o_4@@38 f_5@@28))
))) (and (IdenticalOnKnownLocations ExhaleHeap@2 ExhaleHeap@3 QPMask@2) (state ExhaleHeap@3 QPMask@2))) (and (=> (= (ControlFlow 0 114) (- 0 119)) (HasDirectPerm_9423_22047 QPMask@2 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@2 a_2 array) (and (=> (= (ControlFlow 0 114) (- 0 118)) (>= (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)) 1)) (=> (>= (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array)) 1) (=> (state ExhaleHeap@3 QPMask@2) (and (=> (= (ControlFlow 0 114) (- 0 117)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (=> (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (and (=> (= (ControlFlow 0 114) (- 0 116)) (< (* (/ (to_real 1) (to_real 2)) kperm) FullPerm)) (=> (< (* (/ (to_real 1) (to_real 2)) kperm) FullPerm) (=> (state ExhaleHeap@3 QPMask@2) (=> (and (> wildcard@4 NoPerm) (not (= a_2 null))) (=> (and (and (= Mask@3 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@2) a_2 array (+ (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@2) a_2 array) wildcard@4)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@2) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@2) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@2) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@2) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@2))) (state ExhaleHeap@3 Mask@3)) (and (state ExhaleHeap@3 Mask@3) (state ExhaleHeap@3 Mask@3))) (and (=> (= (ControlFlow 0 114) (- 0 115)) (HasDirectPerm_9423_22047 Mask@3 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@3 a_2 array) (=> (< middle@0 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@3) a_2 array))) (=> (and (state ExhaleHeap@3 Mask@3) (state ExhaleHeap@3 Mask@3)) (and (and (=> (= (ControlFlow 0 114) 107) anon85_Else_correct) (=> (= (ControlFlow 0 114) 69) anon86_Then_correct)) (=> (= (ControlFlow 0 114) 73) anon86_Else_correct)))))))))))))))))))))))))))))
(let ((anon81_Else_correct  (and (=> (= (ControlFlow 0 123) (- 0 136)) (forall ((i1_1_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1) (dummyFunction_3154 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1) value))) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.945:21|
 :skolemid |75|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i1_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1))
))) (=> (forall ((i1_1_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@0) (dummyFunction_3154 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| ExhaleHeap@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@0) value))) (>= (* (/ (to_real 1) (to_real 2)) kperm) NoPerm))
 :qid |stdinbpl.945:21|
 :skolemid |75|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i1_1_1@@0))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@0))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@0))
)) (and (=> (= (ControlFlow 0 123) (- 0 135)) (forall ((i1_1_1@@1 Int) (i1_1_2 Int) ) (!  (=> (and (and (and (and (not (= i1_1_1@@1 i1_1_2)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@1)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_2)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_2))))
 :qid |stdinbpl.952:21|
 :skolemid |76|
 :pattern ( (neverTriggered4 i1_1_1@@1) (neverTriggered4 i1_1_2))
))) (=> (forall ((i1_1_1@@2 Int) (i1_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i1_1_1@@2 i1_1_2@@0)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@2)) (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_2@@0)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@2) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_2@@0))))
 :qid |stdinbpl.952:21|
 :skolemid |76|
 :pattern ( (neverTriggered4 i1_1_1@@2) (neverTriggered4 i1_1_2@@0))
)) (and (=> (= (ControlFlow 0 123) (- 0 134)) (forall ((i1_1_1@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@3) (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@3) value) (* (/ (to_real 1) (to_real 2)) kperm)))
 :qid |stdinbpl.959:21|
 :skolemid |77|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i1_1_1@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@3))
))) (=> (forall ((i1_1_1@@4 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@4) (>= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@4) value) (* (/ (to_real 1) (to_real 2)) kperm)))
 :qid |stdinbpl.959:21|
 :skolemid |77|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i1_1_1@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@4))
)) (=> (forall ((i1_1_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@5) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (and (qpRange4 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@5)) (= (invRecv4 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@5)) i1_1_1@@5)))
 :qid |stdinbpl.965:26|
 :skolemid |78|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start middle@0) i1_1_1@@5))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start middle@0) i1_1_1@@5))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) i1_1_1@@5))
)) (=> (and (forall ((o_4@@39 T@Ref) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) (invRecv4 o_4@@39)) (and (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (qpRange4 o_4@@39))) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) (invRecv4 o_4@@39)) o_4@@39))
 :qid |stdinbpl.969:26|
 :skolemid |79|
 :pattern ( (invRecv4 o_4@@39))
)) (forall ((o_4@@40 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) (invRecv4 o_4@@40)) (and (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (qpRange4 o_4@@40))) (and (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array) (invRecv4 o_4@@40)) o_4@@40) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@1) o_4@@40 value) (- (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@1) o_4@@40 value) (* (/ (to_real 1) (to_real 2)) kperm))))) (=> (not (and (|Seq#Contains_3032| (|Seq#Range| start middle@0) (invRecv4 o_4@@40)) (and (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (qpRange4 o_4@@40)))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@1) o_4@@40 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@1) o_4@@40 value))))
 :qid |stdinbpl.975:26|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@1) o_4@@40 value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@41 T@Ref) (f_5@@29 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@1) o_4@@41 f_5@@29) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@1) o_4@@41 f_5@@29)))
 :qid |stdinbpl.981:33|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@1) o_4@@41 f_5@@29))
)) (forall ((o_4@@42 T@Ref) (f_5@@30 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@1) o_4@@42 f_5@@30) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@1) o_4@@42 f_5@@30)))
 :qid |stdinbpl.981:33|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@1) o_4@@42 f_5@@30))
))) (forall ((o_4@@43 T@Ref) (f_5@@31 T@Field_21447_3154) ) (!  (=> (not (= f_5@@31 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@1) o_4@@43 f_5@@31) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@1) o_4@@43 f_5@@31)))
 :qid |stdinbpl.981:33|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@1) o_4@@43 f_5@@31))
))) (forall ((o_4@@44 T@Ref) (f_5@@32 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@1) o_4@@44 f_5@@32) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) o_4@@44 f_5@@32)))
 :qid |stdinbpl.981:33|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) o_4@@44 f_5@@32))
))) (forall ((o_4@@45 T@Ref) (f_5@@33 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@1) o_4@@45 f_5@@33) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@1) o_4@@45 f_5@@33)))
 :qid |stdinbpl.981:33|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@1) o_4@@45 f_5@@33))
))) (forall ((o_4@@46 T@Ref) (f_5@@34 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@1) o_4@@46 f_5@@34) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@1) o_4@@46 f_5@@34)))
 :qid |stdinbpl.981:33|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@1) o_4@@46 f_5@@34))
))) (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@1) (state ExhaleHeap@1 QPMask@1))) (and (=> (= (ControlFlow 0 123) (- 0 133)) (HasDirectPerm_9423_22047 QPMask@1 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@1 a_2 array) (and (=> (= (ControlFlow 0 123) (- 0 132)) (>= (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@1) a_2 array)) 1)) (=> (>= (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@1) a_2 array)) 1) (=> (state ExhaleHeap@1 QPMask@1) (and (=> (= (ControlFlow 0 123) (- 0 131)) (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm))) (=> (< NoPerm (* (/ (to_real 1) (to_real 2)) kperm)) (and (=> (= (ControlFlow 0 123) (- 0 130)) (< (* (/ (to_real 1) (to_real 2)) kperm) FullPerm)) (=> (< (* (/ (to_real 1) (to_real 2)) kperm) FullPerm) (=> (state ExhaleHeap@1 QPMask@1) (and (=> (= (ControlFlow 0 123) (- 0 129)) (not (= a_2 null))) (=> (not (= a_2 null)) (=> (state ExhaleHeap@1 QPMask@1) (and (=> (= (ControlFlow 0 123) (- 0 128)) (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) a_2 array) NoPerm)) (=> (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) a_2 array) NoPerm) (=> (> wildcard@3 NoPerm) (=> (and (and (< wildcard@3 (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) a_2 array)) (= Mask@2 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) a_2 array (- (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@1) a_2 array) wildcard@3)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@1) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@1) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@1) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@1) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@1)))) (and (IdenticalOnKnownLocations ExhaleHeap@1 ExhaleHeap@2 Mask@2) (state ExhaleHeap@2 Mask@2))) (and (=> (= (ControlFlow 0 123) (- 0 127)) (<= 0 middle@0)) (=> (<= 0 middle@0) (and (=> (= (ControlFlow 0 123) (- 0 126)) (< middle@0 end)) (=> (< middle@0 end) (and (=> (= (ControlFlow 0 123) (- 0 125)) (HasDirectPerm_9423_22047 Mask@2 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@2 a_2 array) (and (=> (= (ControlFlow 0 123) (- 0 124)) (< end (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array)))) (=> (< end (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@2) a_2 array))) (=> (state ExhaleHeap@2 Mask@2) (and (and (=> (= (ControlFlow 0 123) 114) anon83_Else_correct) (=> (= (ControlFlow 0 123) 63) anon84_Then_correct)) (=> (= (ControlFlow 0 123) 67) anon84_Else_correct)))))))))))))))))))))))))))))))))))))))
(let ((anon80_Then_correct  (=> (> (- end start) 1) (=> (and (= middle@0 (+ start (div (- end start) 2))) (state Heap@@19 QPMask@0)) (and (=> (= (ControlFlow 0 137) (- 0 143)) (not (= a_2 null))) (=> (not (= a_2 null)) (=> (state Heap@@19 QPMask@0) (and (=> (= (ControlFlow 0 137) (- 0 142)) (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) a_2 array) NoPerm)) (=> (> (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) a_2 array) NoPerm) (=> (> wildcard@2 NoPerm) (=> (and (and (< wildcard@2 (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) a_2 array)) (= Mask@1 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) a_2 array (- (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) a_2 array) wildcard@2)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@0) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@0) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@0) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@0) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@0)))) (and (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@0 Mask@1) (state ExhaleHeap@0 Mask@1))) (and (=> (= (ControlFlow 0 137) (- 0 141)) (<= 0 start)) (=> (<= 0 start) (and (=> (= (ControlFlow 0 137) (- 0 140)) (< start middle@0)) (=> (< start middle@0) (and (=> (= (ControlFlow 0 137) (- 0 139)) (HasDirectPerm_9423_22047 Mask@1 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@1 a_2 array) (and (=> (= (ControlFlow 0 137) (- 0 138)) (< middle@0 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array)))) (=> (< middle@0 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| ExhaleHeap@0) a_2 array))) (=> (state ExhaleHeap@0 Mask@1) (and (and (=> (= (ControlFlow 0 137) 123) anon81_Else_correct) (=> (= (ControlFlow 0 137) 57) anon82_Then_correct)) (=> (= (ControlFlow 0 137) 61) anon82_Else_correct))))))))))))))))))))))
(let ((anon80_Else_correct  (=> (>= 1 (- end start)) (and (=> (= (ControlFlow 0 51) (- 0 55)) (HasDirectPerm_9423_22047 QPMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@0 a_2 array) (and (=> (= (ControlFlow 0 51) (- 0 54)) (>= start 0)) (=> (>= start 0) (and (=> (= (ControlFlow 0 51) (- 0 53)) (< start (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array)))) (=> (< start (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (HasDirectPerm_9421_3154 QPMask@0 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) start) value)) (=> (HasDirectPerm_9421_3154 QPMask@0 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) start) value) (=> (and (and (and (= mx@0 (select (|PolymorphicMapType_15356_9421_3154#PolymorphicMapType_15356| Heap@@19) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) start) value)) (state Heap@@19 QPMask@0)) (and (state Heap@@19 QPMask@0) (= Mask@5 QPMask@0))) (and (and (= Heap@0 Heap@@19) (= mx@2 mx@0)) (and (= pos@1 start) (= (ControlFlow 0 51) 50)))) anon52_correct))))))))))))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 177) (- 0 180)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3032| (|Seq#Range| start end) i_3)) (|Seq#Contains_3032| (|Seq#Range| start end) i_3_1)) (< NoPerm kperm)) (< NoPerm kperm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3_1))))
 :qid |stdinbpl.691:15|
 :skolemid |59|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@0)) (|Seq#Contains_3032| (|Seq#Range| start end) i_3_1@@0)) (< NoPerm kperm)) (< NoPerm kperm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@0) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3_1@@0))))
 :qid |stdinbpl.691:15|
 :skolemid |59|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@1) (< NoPerm kperm)) (and (qpRange1 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@1)) (= (invRecv1 (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@1)) i_3@@1)))
 :qid |stdinbpl.697:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_3@@1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@1))
)) (forall ((o_4@@47 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv1 o_4@@47)) (< NoPerm kperm)) (qpRange1 o_4@@47)) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) (invRecv1 o_4@@47)) o_4@@47))
 :qid |stdinbpl.701:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@47))
))) (and (=> (= (ControlFlow 0 177) (- 0 179)) (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@2) (>= kperm NoPerm))
 :qid |stdinbpl.707:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_3@@2))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@2))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@2))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@3) (>= kperm NoPerm))
 :qid |stdinbpl.707:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@3))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_3@@3))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@3))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@3))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@4) (> kperm NoPerm)) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@4) null)))
 :qid |stdinbpl.713:22|
 :skolemid |63|
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@4))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_3@@4))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_3@@4))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_3@@4))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv1 o_4@@48)) (< NoPerm kperm)) (qpRange1 o_4@@48)) (and (=> (< NoPerm kperm) (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) (invRecv1 o_4@@48)) o_4@@48)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@0) o_4@@48 value) (+ (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@0) o_4@@48 value) kperm)))) (=> (not (and (and (|Seq#Contains_3032| (|Seq#Range| start end) (invRecv1 o_4@@48)) (< NoPerm kperm)) (qpRange1 o_4@@48))) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@0) o_4@@48 value) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@0) o_4@@48 value))))
 :qid |stdinbpl.719:22|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@0) o_4@@48 value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@35 T@Field_15416_53) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@0) o_4@@49 f_5@@35) (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@0) o_4@@49 f_5@@35)))
 :qid |stdinbpl.723:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| Mask@0) o_4@@49 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| QPMask@0) o_4@@49 f_5@@35))
)) (forall ((o_4@@50 T@Ref) (f_5@@36 T@Field_15429_15430) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@0) o_4@@50 f_5@@36) (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@0) o_4@@50 f_5@@36)))
 :qid |stdinbpl.723:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| Mask@0) o_4@@50 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| QPMask@0) o_4@@50 f_5@@36))
))) (forall ((o_4@@51 T@Ref) (f_5@@37 T@Field_21447_3154) ) (!  (=> (not (= f_5@@37 value)) (= (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@0) o_4@@51 f_5@@37) (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@0) o_4@@51 f_5@@37)))
 :qid |stdinbpl.723:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| Mask@0) o_4@@51 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| QPMask@0) o_4@@51 f_5@@37))
))) (forall ((o_4@@52 T@Ref) (f_5@@38 T@Field_21494_21499) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@0) o_4@@52 f_5@@38) (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) o_4@@52 f_5@@38)))
 :qid |stdinbpl.723:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| Mask@0) o_4@@52 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| QPMask@0) o_4@@52 f_5@@38))
))) (forall ((o_4@@53 T@Ref) (f_5@@39 T@Field_9423_47067) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@0) o_4@@53 f_5@@39) (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@0) o_4@@53 f_5@@39)))
 :qid |stdinbpl.723:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| Mask@0) o_4@@53 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| QPMask@0) o_4@@53 f_5@@39))
))) (forall ((o_4@@54 T@Ref) (f_5@@40 T@Field_9423_47200) ) (!  (=> true (= (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@0) o_4@@54 f_5@@40) (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@0) o_4@@54 f_5@@40)))
 :qid |stdinbpl.723:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| Mask@0) o_4@@54 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| QPMask@0) o_4@@54 f_5@@40))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 177) (- 0 178)) (HasDirectPerm_9423_22047 QPMask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 QPMask@0 a_2 array) (=> (>= (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array)) 1) (=> (and (and (state Heap@@19 QPMask@0) (< NoPerm kperm)) (and (< kperm FullPerm) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 177) 175) anon73_Then_correct) (=> (= (ControlFlow 0 177) 137) anon80_Then_correct)) (=> (= (ControlFlow 0 177) 51) anon80_Else_correct)))))))))))))))
(let ((anon7_correct true))
(let ((anon72_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| start end) i_2)) (= (ControlFlow 0 15) 10)) anon7_correct)))
(let ((anon72_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| start end) i_2) (and (=> (= (ControlFlow 0 11) (- 0 14)) (HasDirectPerm_9423_22047 Mask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@0 a_2 array) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< i_2 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array)))) (=> (< i_2 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array))) (=> (= (ControlFlow 0 11) 10) anon7_correct))))))))))
(let ((anon69_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_1) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) j_1))))
 :qid |stdinbpl.671:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_1) (|Seq#Contains_3032| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_1) (|Seq#Contains_3032| (|Seq#Range| start end) j_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) i_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) j_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) i_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) j_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| start end) j_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| start end) j_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_1))
 :pattern ( (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) i_1) (|Seq#Index_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array) j_1))
)) (state Heap@@19 Mask@0)) (and (and (=> (= (ControlFlow 0 181) 177) anon71_Else_correct) (=> (= (ControlFlow 0 181) 11) anon72_Then_correct)) (=> (= (ControlFlow 0 181) 15) anon72_Else_correct)))))
(let ((anon3_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (|Seq#Contains_3032| (|Seq#Range| start end) i_14) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_5) (not (= i_14 j_5))))) (= (ControlFlow 0 9) 1)) anon3_correct)))
(let ((anon70_Then_correct  (=> (and (|Seq#Contains_3032| (|Seq#Range| start end) i_14) (and (|Seq#Contains_3032| (|Seq#Range| start end) j_5) (not (= i_14 j_5)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_9423_22047 Mask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@0 a_2 array) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_14 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array)))) (=> (< i_14 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_9423_22047 Mask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@0 a_2 array) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array)))) (=> (< j_5 (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_15356_9219_53#PolymorphicMapType_15356| Heap@@19) a_2 $allocated) (not (= a_2 null)))) (=> (and (and (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm)) (and (not (= a_2 null)) (= Mask@0 (PolymorphicMapType_15377 (store (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ZeroMask) a_2 array (+ (select (|PolymorphicMapType_15377_9423_21883#PolymorphicMapType_15377| ZeroMask) a_2 array) wildcard@0)) (|PolymorphicMapType_15377_9421_3154#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_53#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_15430#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_47067#PolymorphicMapType_15377| ZeroMask) (|PolymorphicMapType_15377_9423_51894#PolymorphicMapType_15377| ZeroMask))))) (and (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)) (and (<= 0 start) (< start end)))) (and (=> (= (ControlFlow 0 182) (- 0 183)) (HasDirectPerm_9423_22047 Mask@0 a_2 array)) (=> (HasDirectPerm_9423_22047 Mask@0 a_2 array) (=> (and (and (< end (|Seq#Length_9424| (select (|PolymorphicMapType_15356_9423_22116#PolymorphicMapType_15356| Heap@@19) a_2 array))) (state Heap@@19 Mask@0)) (and (<= NoPerm kperm) (state Heap@@19 Mask@0))) (and (and (=> (= (ControlFlow 0 182) 181) anon69_Else_correct) (=> (= (ControlFlow 0 182) 2) anon70_Then_correct)) (=> (= (ControlFlow 0 182) 9) anon70_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 184) 182)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
