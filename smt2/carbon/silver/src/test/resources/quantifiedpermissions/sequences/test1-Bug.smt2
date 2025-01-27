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
(declare-sort T@Field_6229_53 0)
(declare-sort T@Field_6242_6243 0)
(declare-sort T@Field_4099_15581 0)
(declare-sort T@Field_4099_15448 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6190 0)) (((PolymorphicMapType_6190 (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| (Array T@Ref T@Field_6242_6243 Real)) (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| (Array T@Ref T@Field_6229_53 Real)) (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| (Array T@Ref T@Field_4099_15448 Real)) (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| (Array T@Ref T@Field_4099_15581 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6718 0)) (((PolymorphicMapType_6718 (|PolymorphicMapType_6718_6229_53#PolymorphicMapType_6718| (Array T@Ref T@Field_6229_53 Bool)) (|PolymorphicMapType_6718_6229_6243#PolymorphicMapType_6718| (Array T@Ref T@Field_6242_6243 Bool)) (|PolymorphicMapType_6718_6229_15448#PolymorphicMapType_6718| (Array T@Ref T@Field_4099_15448 Bool)) (|PolymorphicMapType_6718_6229_16561#PolymorphicMapType_6718| (Array T@Ref T@Field_4099_15581 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6169 0)) (((PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| (Array T@Ref T@Field_6229_53 Bool)) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| (Array T@Ref T@Field_6242_6243 T@Ref)) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| (Array T@Ref T@Field_4099_15581 T@PolymorphicMapType_6718)) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| (Array T@Ref T@Field_4099_15448 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6229_53)
(declare-fun next () T@Field_6242_6243)
(declare-sort T@Seq_12298 0)
(declare-fun |Seq#Length_4104| (T@Seq_12298) Int)
(declare-fun |Seq#Drop_4104| (T@Seq_12298 Int) T@Seq_12298)
(declare-sort T@Seq_2888 0)
(declare-fun |Seq#Length_2888| (T@Seq_2888) Int)
(declare-fun |Seq#Drop_2888| (T@Seq_2888 Int) T@Seq_2888)
(declare-fun succHeap (T@PolymorphicMapType_6169 T@PolymorphicMapType_6169) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6169 T@PolymorphicMapType_6169) Bool)
(declare-fun state (T@PolymorphicMapType_6169 T@PolymorphicMapType_6190) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6190) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6718)
(declare-fun |Seq#Index_4104| (T@Seq_12298 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2888| (T@Seq_2888 Int) Int)
(declare-fun |Seq#Empty_4104| () T@Seq_12298)
(declare-fun |Seq#Empty_2888| () T@Seq_2888)
(declare-fun |Seq#Update_4104| (T@Seq_12298 Int T@Ref) T@Seq_12298)
(declare-fun |Seq#Update_2888| (T@Seq_2888 Int Int) T@Seq_2888)
(declare-fun |Seq#Take_4104| (T@Seq_12298 Int) T@Seq_12298)
(declare-fun |Seq#Take_2888| (T@Seq_2888 Int) T@Seq_2888)
(declare-fun |Seq#Contains_2888| (T@Seq_2888 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2888)
(declare-fun |Seq#Contains_4104| (T@Seq_12298 T@Ref) Bool)
(declare-fun |Seq#Skolem_4104| (T@Seq_12298 T@Ref) Int)
(declare-fun |Seq#Skolem_2888| (T@Seq_2888 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6169 T@PolymorphicMapType_6169 T@PolymorphicMapType_6190) Bool)
(declare-fun IsPredicateField_4099_15539 (T@Field_4099_15448) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4099 (T@Field_4099_15448) T@Field_4099_15581)
(declare-fun HasDirectPerm_4099_15512 (T@PolymorphicMapType_6190 T@Ref T@Field_4099_15448) Bool)
(declare-fun IsWandField_4099_17088 (T@Field_4099_15448) Bool)
(declare-fun WandMaskField_4099 (T@Field_4099_15448) T@Field_4099_15581)
(declare-fun |Seq#Singleton_4104| (T@Ref) T@Seq_12298)
(declare-fun |Seq#Singleton_2888| (Int) T@Seq_2888)
(declare-fun |Seq#Append_12298| (T@Seq_12298 T@Seq_12298) T@Seq_12298)
(declare-fun |Seq#Append_2888| (T@Seq_2888 T@Seq_2888) T@Seq_2888)
(declare-fun dummyHeap () T@PolymorphicMapType_6169)
(declare-fun ZeroMask () T@PolymorphicMapType_6190)
(declare-fun InsidePredicate_6229_6229 (T@Field_4099_15448 T@FrameType T@Field_4099_15448 T@FrameType) Bool)
(declare-fun IsPredicateField_4099_4100 (T@Field_6242_6243) Bool)
(declare-fun IsWandField_4099_4100 (T@Field_6242_6243) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4099_20022 (T@Field_4099_15581) Bool)
(declare-fun IsWandField_4099_20038 (T@Field_4099_15581) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4099_53 (T@Field_6229_53) Bool)
(declare-fun IsWandField_4099_53 (T@Field_6229_53) Bool)
(declare-fun HasDirectPerm_4099_20393 (T@PolymorphicMapType_6190 T@Ref T@Field_4099_15581) Bool)
(declare-fun HasDirectPerm_4099_53 (T@PolymorphicMapType_6190 T@Ref T@Field_6229_53) Bool)
(declare-fun HasDirectPerm_4099_4100 (T@PolymorphicMapType_6190 T@Ref T@Field_6242_6243) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6190 T@PolymorphicMapType_6190 T@PolymorphicMapType_6190) Bool)
(declare-fun |Seq#Equal_12298| (T@Seq_12298 T@Seq_12298) Bool)
(declare-fun |Seq#Equal_2888| (T@Seq_2888 T@Seq_2888) Bool)
(declare-fun |Seq#ContainsTrigger_4104| (T@Seq_12298 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2888| (T@Seq_2888 Int) Bool)
(declare-fun |Seq#SkolemDiff_12298| (T@Seq_12298 T@Seq_12298) Int)
(declare-fun |Seq#SkolemDiff_2888| (T@Seq_2888 T@Seq_2888) Int)
(assert (forall ((s T@Seq_12298) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_4104| s)) (= (|Seq#Length_4104| (|Seq#Drop_4104| s n)) (- (|Seq#Length_4104| s) n))) (=> (< (|Seq#Length_4104| s) n) (= (|Seq#Length_4104| (|Seq#Drop_4104| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_4104| (|Seq#Drop_4104| s n)) (|Seq#Length_4104| s))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4104| (|Seq#Drop_4104| s n)))
 :pattern ( (|Seq#Length_4104| s) (|Seq#Drop_4104| s n))
)))
(assert (forall ((s@@0 T@Seq_2888) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2888| s@@0)) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) (- (|Seq#Length_2888| s@@0) n@@0))) (=> (< (|Seq#Length_2888| s@@0) n@@0) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)) (|Seq#Length_2888| s@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2888| (|Seq#Drop_2888| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2888| s@@0) (|Seq#Drop_2888| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_6169) (Heap1 T@PolymorphicMapType_6169) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6169) (Mask T@PolymorphicMapType_6190) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6169) (Heap1@@0 T@PolymorphicMapType_6169) (Heap2 T@PolymorphicMapType_6169) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4099_15581) ) (!  (not (select (|PolymorphicMapType_6718_6229_16561#PolymorphicMapType_6718| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6718_6229_16561#PolymorphicMapType_6718| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4099_15448) ) (!  (not (select (|PolymorphicMapType_6718_6229_15448#PolymorphicMapType_6718| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6718_6229_15448#PolymorphicMapType_6718| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6242_6243) ) (!  (not (select (|PolymorphicMapType_6718_6229_6243#PolymorphicMapType_6718| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6718_6229_6243#PolymorphicMapType_6718| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6229_53) ) (!  (not (select (|PolymorphicMapType_6718_6229_53#PolymorphicMapType_6718| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6718_6229_53#PolymorphicMapType_6718| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((s@@1 T@Seq_12298) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_4104| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_4104| (|Seq#Drop_4104| s@@1 n@@1) j) (|Seq#Index_4104| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4104| (|Seq#Drop_4104| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2888) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2888| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2888| (|Seq#Drop_2888| s@@2 n@@2) j@@0) (|Seq#Index_2888| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.309:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2888| (|Seq#Drop_2888| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_4104| |Seq#Empty_4104|) 0))
(assert (= (|Seq#Length_2888| |Seq#Empty_2888|) 0))
(assert (forall ((s@@3 T@Seq_12298) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_4104| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_4104| (|Seq#Update_4104| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_4104| (|Seq#Update_4104| s@@3 i v) n@@3) (|Seq#Index_4104| s@@3 n@@3)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4104| (|Seq#Update_4104| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_4104| s@@3 n@@3) (|Seq#Update_4104| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2888) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2888| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2888| s@@4 n@@4)))))
 :qid |stdinbpl.264:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2888| (|Seq#Update_2888| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2888| s@@4 n@@4) (|Seq#Update_2888| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_12298) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_4104| s@@5)) (= (|Seq#Length_4104| (|Seq#Take_4104| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_4104| s@@5) n@@5) (= (|Seq#Length_4104| (|Seq#Take_4104| s@@5 n@@5)) (|Seq#Length_4104| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_4104| (|Seq#Take_4104| s@@5 n@@5)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4104| (|Seq#Take_4104| s@@5 n@@5)))
 :pattern ( (|Seq#Take_4104| s@@5 n@@5) (|Seq#Length_4104| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2888) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2888| s@@6)) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2888| s@@6) n@@6) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) (|Seq#Length_2888| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)) 0)))
 :qid |stdinbpl.275:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2888| (|Seq#Take_2888| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2888| s@@6 n@@6) (|Seq#Length_2888| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2888| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.549:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_12298) (x T@Ref) ) (!  (=> (|Seq#Contains_4104| s@@7 x) (and (and (<= 0 (|Seq#Skolem_4104| s@@7 x)) (< (|Seq#Skolem_4104| s@@7 x) (|Seq#Length_4104| s@@7))) (= (|Seq#Index_4104| s@@7 (|Seq#Skolem_4104| s@@7 x)) x)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_4104| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2888) (x@@0 Int) ) (!  (=> (|Seq#Contains_2888| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2888| s@@8 x@@0)) (< (|Seq#Skolem_2888| s@@8 x@@0) (|Seq#Length_2888| s@@8))) (= (|Seq#Index_2888| s@@8 (|Seq#Skolem_2888| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.407:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2888| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_12298) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_4104| s@@9 n@@7) s@@9))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4104| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2888) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2888| s@@10 n@@8) s@@10))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2888| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.244:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.242:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6169) (ExhaleHeap T@PolymorphicMapType_6169) (Mask@@0 T@PolymorphicMapType_6190) (pm_f_32 T@Field_4099_15448) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4099_15512 Mask@@0 null pm_f_32) (IsPredicateField_4099_15539 pm_f_32)) (= (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@0) null (PredicateMaskField_4099 pm_f_32)) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap) null (PredicateMaskField_4099 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4099_15539 pm_f_32) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap) null (PredicateMaskField_4099 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6169) (ExhaleHeap@@0 T@PolymorphicMapType_6169) (Mask@@1 T@PolymorphicMapType_6190) (pm_f_32@@0 T@Field_4099_15448) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4099_15512 Mask@@1 null pm_f_32@@0) (IsWandField_4099_17088 pm_f_32@@0)) (= (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@1) null (WandMaskField_4099 pm_f_32@@0)) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@0) null (WandMaskField_4099 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4099_17088 pm_f_32@@0) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@0) null (WandMaskField_4099 pm_f_32@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_4104| (|Seq#Singleton_4104| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_4104| (|Seq#Singleton_4104| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2888| (|Seq#Singleton_2888| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.532:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2888| (|Seq#Singleton_2888| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_12298) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_4104| s@@11))) (= (|Seq#Index_4104| (|Seq#Take_4104| s@@11 n@@9) j@@3) (|Seq#Index_4104| s@@11 j@@3)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4104| (|Seq#Take_4104| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_4104| s@@11 j@@3) (|Seq#Take_4104| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2888) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2888| s@@12))) (= (|Seq#Index_2888| (|Seq#Take_2888| s@@12 n@@10) j@@4) (|Seq#Index_2888| s@@12 j@@4)))
 :qid |stdinbpl.283:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2888| (|Seq#Take_2888| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2888| s@@12 j@@4) (|Seq#Take_2888| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_12298) (t T@Seq_12298) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_4104| s@@13))) (< n@@11 (|Seq#Length_4104| (|Seq#Append_12298| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_4104| s@@13)) (|Seq#Length_4104| s@@13)) n@@11) (= (|Seq#Take_4104| (|Seq#Append_12298| s@@13 t) n@@11) (|Seq#Append_12298| s@@13 (|Seq#Take_4104| t (|Seq#Sub| n@@11 (|Seq#Length_4104| s@@13)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4104| (|Seq#Append_12298| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2888) (t@@0 T@Seq_2888) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2888| s@@14))) (< n@@12 (|Seq#Length_2888| (|Seq#Append_2888| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2888| s@@14)) (|Seq#Length_2888| s@@14)) n@@12) (= (|Seq#Take_2888| (|Seq#Append_2888| s@@14 t@@0) n@@12) (|Seq#Append_2888| s@@14 (|Seq#Take_2888| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2888| s@@14)))))))
 :qid |stdinbpl.368:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2888| (|Seq#Append_2888| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6169) (ExhaleHeap@@1 T@PolymorphicMapType_6169) (Mask@@2 T@PolymorphicMapType_6190) (pm_f_32@@1 T@Field_4099_15448) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4099_15512 Mask@@2 null pm_f_32@@1) (IsPredicateField_4099_15539 pm_f_32@@1)) (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_6229_53) ) (!  (=> (select (|PolymorphicMapType_6718_6229_53#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@2) null (PredicateMaskField_4099 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@2) o2_32 f_54) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_6242_6243) ) (!  (=> (select (|PolymorphicMapType_6718_6229_6243#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@2) null (PredicateMaskField_4099 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@2) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_4099_15448) ) (!  (=> (select (|PolymorphicMapType_6718_6229_15448#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@2) null (PredicateMaskField_4099 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@2) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_4099_15581) ) (!  (=> (select (|PolymorphicMapType_6718_6229_16561#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@2) null (PredicateMaskField_4099 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@2) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@1) o2_32@@2 f_54@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4099_15539 pm_f_32@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6169) (ExhaleHeap@@2 T@PolymorphicMapType_6169) (Mask@@3 T@PolymorphicMapType_6190) (pm_f_32@@2 T@Field_4099_15448) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4099_15512 Mask@@3 null pm_f_32@@2) (IsWandField_4099_17088 pm_f_32@@2)) (and (and (and (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_6229_53) ) (!  (=> (select (|PolymorphicMapType_6718_6229_53#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@3) null (WandMaskField_4099 pm_f_32@@2))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@3) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@3 f_54@@3))
)) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_6242_6243) ) (!  (=> (select (|PolymorphicMapType_6718_6229_6243#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@3) null (WandMaskField_4099 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@3) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_4099_15448) ) (!  (=> (select (|PolymorphicMapType_6718_6229_15448#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@3) null (WandMaskField_4099 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@3) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_4099_15581) ) (!  (=> (select (|PolymorphicMapType_6718_6229_16561#PolymorphicMapType_6718| (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@3) null (WandMaskField_4099 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@3) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@2) o2_32@@6 f_54@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4099_17088 pm_f_32@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6169) (ExhaleHeap@@3 T@PolymorphicMapType_6169) (Mask@@4 T@PolymorphicMapType_6190) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@4) o_55 $allocated) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@3) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@3) o_55 $allocated))
)))
(assert (forall ((p T@Field_4099_15448) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6229_6229 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6229_6229 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_12298) (s1 T@Seq_12298) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4104|)) (not (= s1 |Seq#Empty_4104|))) (<= (|Seq#Length_4104| s0) n@@13)) (< n@@13 (|Seq#Length_4104| (|Seq#Append_12298| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_4104| s0)) (|Seq#Length_4104| s0)) n@@13) (= (|Seq#Index_4104| (|Seq#Append_12298| s0 s1) n@@13) (|Seq#Index_4104| s1 (|Seq#Sub| n@@13 (|Seq#Length_4104| s0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4104| (|Seq#Append_12298| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2888) (s1@@0 T@Seq_2888) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2888|)) (not (= s1@@0 |Seq#Empty_2888|))) (<= (|Seq#Length_2888| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2888| (|Seq#Append_2888| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2888| s0@@0)) (|Seq#Length_2888| s0@@0)) n@@14) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@0 s1@@0) n@@14) (|Seq#Index_2888| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2888| s0@@0))))))
 :qid |stdinbpl.255:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2888| (|Seq#Append_2888| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_4099_4100 next)))
(assert  (not (IsWandField_4099_4100 next)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6169) (ExhaleHeap@@4 T@PolymorphicMapType_6169) (Mask@@5 T@PolymorphicMapType_6190) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6190) (o_2@@3 T@Ref) (f_4@@3 T@Field_4099_15581) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4099_20022 f_4@@3))) (not (IsWandField_4099_20038 f_4@@3))) (<= (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6190) (o_2@@4 T@Ref) (f_4@@4 T@Field_4099_15448) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4099_15539 f_4@@4))) (not (IsWandField_4099_17088 f_4@@4))) (<= (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6190) (o_2@@5 T@Ref) (f_4@@5 T@Field_6229_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4099_53 f_4@@5))) (not (IsWandField_4099_53 f_4@@5))) (<= (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6190) (o_2@@6 T@Ref) (f_4@@6 T@Field_6242_6243) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4099_4100 f_4@@6))) (not (IsWandField_4099_4100 f_4@@6))) (<= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6190) (o_2@@7 T@Ref) (f_4@@7 T@Field_4099_15581) ) (! (= (HasDirectPerm_4099_20393 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4099_20393 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6190) (o_2@@8 T@Ref) (f_4@@8 T@Field_4099_15448) ) (! (= (HasDirectPerm_4099_15512 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4099_15512 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6190) (o_2@@9 T@Ref) (f_4@@9 T@Field_6229_53) ) (! (= (HasDirectPerm_4099_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4099_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6190) (o_2@@10 T@Ref) (f_4@@10 T@Field_6242_6243) ) (! (= (HasDirectPerm_4099_4100 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4099_4100 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2888| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.547:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2888| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6169) (ExhaleHeap@@5 T@PolymorphicMapType_6169) (Mask@@14 T@PolymorphicMapType_6190) (o_55@@0 T@Ref) (f_54@@7 T@Field_4099_15581) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4099_20393 Mask@@14 o_55@@0 f_54@@7) (= (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@6) o_55@@0 f_54@@7) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@5) o_55@@0 f_54@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| ExhaleHeap@@5) o_55@@0 f_54@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6169) (ExhaleHeap@@6 T@PolymorphicMapType_6169) (Mask@@15 T@PolymorphicMapType_6190) (o_55@@1 T@Ref) (f_54@@8 T@Field_4099_15448) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4099_15512 Mask@@15 o_55@@1 f_54@@8) (= (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@7) o_55@@1 f_54@@8) (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| ExhaleHeap@@6) o_55@@1 f_54@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| ExhaleHeap@@6) o_55@@1 f_54@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6169) (ExhaleHeap@@7 T@PolymorphicMapType_6169) (Mask@@16 T@PolymorphicMapType_6190) (o_55@@2 T@Ref) (f_54@@9 T@Field_6229_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4099_53 Mask@@16 o_55@@2 f_54@@9) (= (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@8) o_55@@2 f_54@@9) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@7) o_55@@2 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| ExhaleHeap@@7) o_55@@2 f_54@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6169) (ExhaleHeap@@8 T@PolymorphicMapType_6169) (Mask@@17 T@PolymorphicMapType_6190) (o_55@@3 T@Ref) (f_54@@10 T@Field_6242_6243) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4099_4100 Mask@@17 o_55@@3 f_54@@10) (= (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@9) o_55@@3 f_54@@10) (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| ExhaleHeap@@8) o_55@@3 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| ExhaleHeap@@8) o_55@@3 f_54@@10))
)))
(assert (forall ((s0@@1 T@Seq_12298) (s1@@1 T@Seq_12298) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_4104|)) (not (= s1@@1 |Seq#Empty_4104|))) (= (|Seq#Length_4104| (|Seq#Append_12298| s0@@1 s1@@1)) (+ (|Seq#Length_4104| s0@@1) (|Seq#Length_4104| s1@@1))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4104| (|Seq#Append_12298| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2888) (s1@@2 T@Seq_2888) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2888|)) (not (= s1@@2 |Seq#Empty_2888|))) (= (|Seq#Length_2888| (|Seq#Append_2888| s0@@2 s1@@2)) (+ (|Seq#Length_2888| s0@@2) (|Seq#Length_2888| s1@@2))))
 :qid |stdinbpl.224:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2888| (|Seq#Append_2888| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4099_15581) ) (! (= (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4099_15448) ) (! (= (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6229_53) ) (! (= (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6242_6243) ) (! (= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@15 T@Seq_12298) (t@@1 T@Seq_12298) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_4104| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_4104| s@@15)) (|Seq#Length_4104| s@@15)) n@@15) (= (|Seq#Drop_4104| (|Seq#Append_12298| s@@15 t@@1) n@@15) (|Seq#Drop_4104| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_4104| s@@15))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4104| (|Seq#Append_12298| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2888) (t@@2 T@Seq_2888) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2888| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2888| s@@16)) (|Seq#Length_2888| s@@16)) n@@16) (= (|Seq#Drop_2888| (|Seq#Append_2888| s@@16 t@@2) n@@16) (|Seq#Drop_2888| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2888| s@@16))))))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2888| (|Seq#Append_2888| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6190) (SummandMask1 T@PolymorphicMapType_6190) (SummandMask2 T@PolymorphicMapType_6190) (o_2@@15 T@Ref) (f_4@@15 T@Field_4099_15581) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6190) (SummandMask1@@0 T@PolymorphicMapType_6190) (SummandMask2@@0 T@PolymorphicMapType_6190) (o_2@@16 T@Ref) (f_4@@16 T@Field_4099_15448) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6190) (SummandMask1@@1 T@PolymorphicMapType_6190) (SummandMask2@@1 T@PolymorphicMapType_6190) (o_2@@17 T@Ref) (f_4@@17 T@Field_6229_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6190) (SummandMask1@@2 T@PolymorphicMapType_6190) (SummandMask2@@2 T@PolymorphicMapType_6190) (o_2@@18 T@Ref) (f_4@@18 T@Field_6242_6243) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.546:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2888| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_12298) (b T@Seq_12298) ) (!  (=> (|Seq#Equal_12298| a b) (= a b))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_12298| a b))
)))
(assert (forall ((a@@0 T@Seq_2888) (b@@0 T@Seq_2888) ) (!  (=> (|Seq#Equal_2888| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.519:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2888| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_12298) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_4104| s@@17))) (|Seq#ContainsTrigger_4104| s@@17 (|Seq#Index_4104| s@@17 i@@3)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4104| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2888) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2888| s@@18))) (|Seq#ContainsTrigger_2888| s@@18 (|Seq#Index_2888| s@@18 i@@4)))
 :qid |stdinbpl.412:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2888| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_12298) (s1@@3 T@Seq_12298) ) (!  (and (=> (= s0@@3 |Seq#Empty_4104|) (= (|Seq#Append_12298| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_4104|) (= (|Seq#Append_12298| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_12298| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2888) (s1@@4 T@Seq_2888) ) (!  (and (=> (= s0@@4 |Seq#Empty_2888|) (= (|Seq#Append_2888| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2888|) (= (|Seq#Append_2888| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.230:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2888| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_4104| (|Seq#Singleton_4104| t@@3) 0) t@@3)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4104| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2888| (|Seq#Singleton_2888| t@@4) 0) t@@4)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2888| t@@4))
)))
(assert (forall ((s@@19 T@Seq_12298) ) (! (<= 0 (|Seq#Length_4104| s@@19))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4104| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2888) ) (! (<= 0 (|Seq#Length_2888| s@@20))
 :qid |stdinbpl.213:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2888| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_12298) (s1@@5 T@Seq_12298) ) (!  (=> (|Seq#Equal_12298| s0@@5 s1@@5) (and (= (|Seq#Length_4104| s0@@5) (|Seq#Length_4104| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_4104| s0@@5))) (= (|Seq#Index_4104| s0@@5 j@@6) (|Seq#Index_4104| s1@@5 j@@6)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4104| s0@@5 j@@6))
 :pattern ( (|Seq#Index_4104| s1@@5 j@@6))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_12298| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2888) (s1@@6 T@Seq_2888) ) (!  (=> (|Seq#Equal_2888| s0@@6 s1@@6) (and (= (|Seq#Length_2888| s0@@6) (|Seq#Length_2888| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2888| s0@@6))) (= (|Seq#Index_2888| s0@@6 j@@7) (|Seq#Index_2888| s1@@6 j@@7)))
 :qid |stdinbpl.509:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2888| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2888| s1@@6 j@@7))
))))
 :qid |stdinbpl.506:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2888| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_4104| (|Seq#Singleton_4104| t@@5)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4104| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2888| (|Seq#Singleton_2888| t@@6)) 1)
 :qid |stdinbpl.221:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2888| t@@6))
)))
(assert (forall ((s@@21 T@Seq_12298) (t@@7 T@Seq_12298) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_4104| s@@21))) (= (|Seq#Take_4104| (|Seq#Append_12298| s@@21 t@@7) n@@17) (|Seq#Take_4104| s@@21 n@@17)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4104| (|Seq#Append_12298| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2888) (t@@8 T@Seq_2888) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2888| s@@22))) (= (|Seq#Take_2888| (|Seq#Append_2888| s@@22 t@@8) n@@18) (|Seq#Take_2888| s@@22 n@@18)))
 :qid |stdinbpl.363:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2888| (|Seq#Append_2888| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_12298) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_4104| s@@23))) (= (|Seq#Length_4104| (|Seq#Update_4104| s@@23 i@@5 v@@2)) (|Seq#Length_4104| s@@23)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4104| (|Seq#Update_4104| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_4104| s@@23) (|Seq#Update_4104| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2888) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2888| s@@24))) (= (|Seq#Length_2888| (|Seq#Update_2888| s@@24 i@@6 v@@3)) (|Seq#Length_2888| s@@24)))
 :qid |stdinbpl.262:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2888| (|Seq#Update_2888| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2888| s@@24) (|Seq#Update_2888| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6169) (o_54 T@Ref) (f_8 T@Field_4099_15448) (v@@4 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@10) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@10) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@10) (store (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@10) o_54 f_8 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@10) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@10) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@10) (store (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@10) o_54 f_8 v@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6169) (o_54@@0 T@Ref) (f_8@@0 T@Field_4099_15581) (v@@5 T@PolymorphicMapType_6718) ) (! (succHeap Heap@@11 (PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@11) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@11) (store (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@11) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@11) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@11) (store (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@11) o_54@@0 f_8@@0 v@@5) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6169) (o_54@@1 T@Ref) (f_8@@1 T@Field_6242_6243) (v@@6 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@12) (store (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@12) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@12) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6169 (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@12) (store (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@12) o_54@@1 f_8@@1 v@@6) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@12) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6169) (o_54@@2 T@Ref) (f_8@@2 T@Field_6229_53) (v@@7 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_6169 (store (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@13) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@13) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@13) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6169 (store (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@13) o_54@@2 f_8@@2 v@@7) (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@13) (|PolymorphicMapType_6169_4099_15625#PolymorphicMapType_6169| Heap@@13) (|PolymorphicMapType_6169_6229_15448#PolymorphicMapType_6169| Heap@@13)))
)))
(assert (forall ((s@@25 T@Seq_12298) (t@@9 T@Seq_12298) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_4104| s@@25))) (= (|Seq#Drop_4104| (|Seq#Append_12298| s@@25 t@@9) n@@19) (|Seq#Append_12298| (|Seq#Drop_4104| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4104| (|Seq#Append_12298| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2888) (t@@10 T@Seq_2888) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2888| s@@26))) (= (|Seq#Drop_2888| (|Seq#Append_2888| s@@26 t@@10) n@@20) (|Seq#Append_2888| (|Seq#Drop_2888| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.377:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2888| (|Seq#Append_2888| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_12298) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_4104| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_4104| (|Seq#Drop_4104| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_4104| s@@27 i@@7))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4104| s@@27 n@@21) (|Seq#Index_4104| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2888) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2888| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2888| (|Seq#Drop_2888| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2888| s@@28 i@@8))))
 :qid |stdinbpl.313:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2888| s@@28 n@@22) (|Seq#Index_2888| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_12298) (s1@@7 T@Seq_12298) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_4104|)) (not (= s1@@7 |Seq#Empty_4104|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_4104| s0@@7))) (= (|Seq#Index_4104| (|Seq#Append_12298| s0@@7 s1@@7) n@@23) (|Seq#Index_4104| s0@@7 n@@23)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4104| (|Seq#Append_12298| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_4104| s0@@7 n@@23) (|Seq#Append_12298| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2888) (s1@@8 T@Seq_2888) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2888|)) (not (= s1@@8 |Seq#Empty_2888|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2888| s0@@8))) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@8 s1@@8) n@@24) (|Seq#Index_2888| s0@@8 n@@24)))
 :qid |stdinbpl.253:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2888| (|Seq#Append_2888| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2888| s0@@8 n@@24) (|Seq#Append_2888| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_12298) (s1@@9 T@Seq_12298) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_4104|)) (not (= s1@@9 |Seq#Empty_4104|))) (<= 0 m)) (< m (|Seq#Length_4104| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_4104| s0@@9)) (|Seq#Length_4104| s0@@9)) m) (= (|Seq#Index_4104| (|Seq#Append_12298| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_4104| s0@@9))) (|Seq#Index_4104| s1@@9 m))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4104| s1@@9 m) (|Seq#Append_12298| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2888) (s1@@10 T@Seq_2888) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2888|)) (not (= s1@@10 |Seq#Empty_2888|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2888| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2888| s0@@10)) (|Seq#Length_2888| s0@@10)) m@@0) (= (|Seq#Index_2888| (|Seq#Append_2888| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2888| s0@@10))) (|Seq#Index_2888| s1@@10 m@@0))))
 :qid |stdinbpl.258:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2888| s1@@10 m@@0) (|Seq#Append_2888| s0@@10 s1@@10))
)))
(assert (forall ((o_54@@3 T@Ref) (f_24 T@Field_6242_6243) (Heap@@14 T@PolymorphicMapType_6169) ) (!  (=> (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@14) o_54@@3 $allocated) (select (|PolymorphicMapType_6169_3909_53#PolymorphicMapType_6169| Heap@@14) (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@14) o_54@@3 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@14) o_54@@3 f_24))
)))
(assert (forall ((s@@29 T@Seq_12298) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_4104| s@@29))) (= (|Seq#Index_4104| s@@29 i@@9) x@@3)) (|Seq#Contains_4104| s@@29 x@@3))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_4104| s@@29 x@@3) (|Seq#Index_4104| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2888) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2888| s@@30))) (= (|Seq#Index_2888| s@@30 i@@10) x@@4)) (|Seq#Contains_2888| s@@30 x@@4))
 :qid |stdinbpl.410:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2888| s@@30 x@@4) (|Seq#Index_2888| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_12298) (s1@@11 T@Seq_12298) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_12298| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_12298| s0@@11 s1@@11))) (not (= (|Seq#Length_4104| s0@@11) (|Seq#Length_4104| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_12298| s0@@11 s1@@11))) (= (|Seq#Length_4104| s0@@11) (|Seq#Length_4104| s1@@11))) (= (|Seq#SkolemDiff_12298| s0@@11 s1@@11) (|Seq#SkolemDiff_12298| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_12298| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_12298| s0@@11 s1@@11) (|Seq#Length_4104| s0@@11))) (not (= (|Seq#Index_4104| s0@@11 (|Seq#SkolemDiff_12298| s0@@11 s1@@11)) (|Seq#Index_4104| s1@@11 (|Seq#SkolemDiff_12298| s0@@11 s1@@11))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_12298| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2888) (s1@@12 T@Seq_2888) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2888| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2888| s0@@12 s1@@12))) (not (= (|Seq#Length_2888| s0@@12) (|Seq#Length_2888| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2888| s0@@12 s1@@12))) (= (|Seq#Length_2888| s0@@12) (|Seq#Length_2888| s1@@12))) (= (|Seq#SkolemDiff_2888| s0@@12 s1@@12) (|Seq#SkolemDiff_2888| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2888| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2888| s0@@12 s1@@12) (|Seq#Length_2888| s0@@12))) (not (= (|Seq#Index_2888| s0@@12 (|Seq#SkolemDiff_2888| s0@@12 s1@@12)) (|Seq#Index_2888| s1@@12 (|Seq#SkolemDiff_2888| s0@@12 s1@@12))))))
 :qid |stdinbpl.514:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2888| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_4099_15448) (v_1@@0 T@FrameType) (q T@Field_4099_15448) (w@@0 T@FrameType) (r T@Field_4099_15448) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6229_6229 p@@1 v_1@@0 q w@@0) (InsidePredicate_6229_6229 q w@@0 r u)) (InsidePredicate_6229_6229 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6229_6229 p@@1 v_1@@0 q w@@0) (InsidePredicate_6229_6229 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_12298) ) (!  (=> (= (|Seq#Length_4104| s@@31) 0) (= s@@31 |Seq#Empty_4104|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4104| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2888) ) (!  (=> (= (|Seq#Length_2888| s@@32) 0) (= s@@32 |Seq#Empty_2888|))
 :qid |stdinbpl.217:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2888| s@@32))
)))
(assert (forall ((s@@33 T@Seq_12298) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_4104| s@@33 n@@25) |Seq#Empty_4104|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4104| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2888) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2888| s@@34 n@@26) |Seq#Empty_2888|))
 :qid |stdinbpl.393:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2888| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun nodes () T@Seq_12298)
(declare-fun i_4 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_6190)
(declare-fun Heap@@15 () T@PolymorphicMapType_6169)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_3 () Int)
(declare-fun i1_10 () Int)
(declare-fun i2_12 () Int)
(set-info :boogie-vc-id Bug)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon11_correct true))
(let ((anon18_Else_correct  (=> (and (not (|Seq#Contains_2888| (|Seq#Range| 0 (- (|Seq#Length_4104| nodes) 1)) i_4)) (= (ControlFlow 0 25) 18)) anon11_correct)))
(let ((anon18_Then_correct  (=> (|Seq#Contains_2888| (|Seq#Range| 0 (- (|Seq#Length_4104| nodes) 1)) i_4) (and (=> (= (ControlFlow 0 19) (- 0 24)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 19) (- 0 23)) (< i_4 (|Seq#Length_4104| nodes))) (=> (< i_4 (|Seq#Length_4104| nodes)) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_4099_4100 QPMask@0 (|Seq#Index_4104| nodes i_4) next)) (=> (HasDirectPerm_4099_4100 QPMask@0 (|Seq#Index_4104| nodes i_4) next) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= (+ i_4 1) 0)) (=> (>= (+ i_4 1) 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< (+ i_4 1) (|Seq#Length_4104| nodes))) (=> (< (+ i_4 1) (|Seq#Length_4104| nodes)) (=> (= (ControlFlow 0 19) 18) anon11_correct))))))))))))))
(let ((anon17_Else_correct  (=> (and (forall ((i_3_2 Int) ) (!  (=> (|Seq#Contains_2888| (|Seq#Range| 0 (- (|Seq#Length_4104| nodes) 1)) i_3_2) (= (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@15) (|Seq#Index_4104| nodes i_3_2) next) (|Seq#Index_4104| nodes (+ i_3_2 1))))
 :qid |stdinbpl.672:20|
 :skolemid |65|
 :pattern ( (|Seq#Index_4104| nodes i_3_2))
)) (state Heap@@15 QPMask@0)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (< 0 (|Seq#Length_4104| nodes))) (=> (< 0 (|Seq#Length_4104| nodes)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (HasDirectPerm_4099_4100 QPMask@0 (|Seq#Index_4104| nodes 0) next)) (=> (HasDirectPerm_4099_4100 QPMask@0 (|Seq#Index_4104| nodes 0) next) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< 1 (|Seq#Length_4104| nodes))) (=> (< 1 (|Seq#Length_4104| nodes)) (=> (= (ControlFlow 0 14) (- 0 13)) (= (select (|PolymorphicMapType_6169_3912_3913#PolymorphicMapType_6169| Heap@@15) (|Seq#Index_4104| nodes 0) next) (|Seq#Index_4104| nodes 1))))))))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1)) (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4104| nodes i_1) (|Seq#Index_4104| nodes i_1_1))))
 :qid |stdinbpl.622:15|
 :skolemid |59|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@0)) (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_4104| nodes i_1@@0) (|Seq#Index_4104| nodes i_1_1@@0))))
 :qid |stdinbpl.622:15|
 :skolemid |59|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_4104| nodes i_1@@1)) (= (invRecv1 (|Seq#Index_4104| nodes i_1@@1)) i_1@@1)))
 :qid |stdinbpl.628:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_4104| nodes i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@1))
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@1))
 :pattern ( (|Seq#Index_4104| nodes i_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (|Seq#Index_4104| nodes (invRecv1 o_9)) o_9))
 :qid |stdinbpl.632:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@2) (not (= (|Seq#Index_4104| nodes i_1@@2) null)))
 :qid |stdinbpl.638:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_4104| nodes i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@2))
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_1@@2))
 :pattern ( (|Seq#Index_4104| nodes i_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_4104| nodes (invRecv1 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| QPMask@0) o_9@@0 next) (+ (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ZeroMask) o_9@@0 next) FullPerm)))) (=> (not (and (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| QPMask@0) o_9@@0 next) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ZeroMask) o_9@@0 next))))
 :qid |stdinbpl.644:22|
 :skolemid |63|
 :pattern ( (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| QPMask@0) o_9@@0 next))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_6229_53) ) (!  (=> true (= (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.648:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_6190_4099_53#PolymorphicMapType_6190| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_6242_6243) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.648:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6190_4099_4100#PolymorphicMapType_6190| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_4099_15448) ) (!  (=> true (= (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.648:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6190_4099_15448#PolymorphicMapType_6190| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_4099_15581) ) (!  (=> true (= (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.648:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6190_4099_19127#PolymorphicMapType_6190| QPMask@0) o_9@@4 f_5@@2))
))) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (and (=> (= (ControlFlow 0 26) 14) anon17_Else_correct) (=> (= (ControlFlow 0 26) 19) anon18_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon18_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon16_Else_correct  (=> (and (not (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_3)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon16_Then_correct  (=> (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i_3) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_3 (|Seq#Length_4104| nodes))) (=> (< i_3 (|Seq#Length_4104| nodes)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon13_Else_correct  (=> (and (forall ((i1_1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1) (not (= i1_1 i2_1)))) (not (= (|Seq#Index_4104| nodes i1_1) (|Seq#Index_4104| nodes i2_1))))
 :qid |stdinbpl.604:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1))
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1))
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (|Seq#Index_4104| nodes i2_1))
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_1) (|Seq#Index_4104| nodes i2_1))
 :pattern ( (|Seq#ContainsTrigger_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1) (|Seq#Index_4104| nodes i1_1))
 :pattern ( (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_1) (|Seq#Index_4104| nodes i1_1))
 :pattern ( (|Seq#Index_4104| nodes i1_1) (|Seq#Index_4104| nodes i2_1))
)) (state Heap@@15 ZeroMask)) (and (and (=> (= (ControlFlow 0 28) 26) anon15_Else_correct) (=> (= (ControlFlow 0 28) 9) anon16_Then_correct)) (=> (= (ControlFlow 0 28) 12) anon16_Else_correct)))))
(let ((anon3_correct true))
(let ((anon14_Else_correct  (=> (and (not (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_10) (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_12) (not (= i1_10 i2_12))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon14_Then_correct  (=> (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i1_10) (and (|Seq#Contains_2888| (|Seq#Range| 0 (|Seq#Length_4104| nodes)) i2_12) (not (= i1_10 i2_12)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_10 0)) (=> (>= i1_10 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_10 (|Seq#Length_4104| nodes))) (=> (< i1_10 (|Seq#Length_4104| nodes)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_12 0)) (=> (>= i2_12 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_12 (|Seq#Length_4104| nodes))) (=> (< i2_12 (|Seq#Length_4104| nodes)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and AssumePermUpperBound (< 1 (|Seq#Length_4104| nodes))) (and (not (|Seq#Contains_4104| nodes null)) (state Heap@@15 ZeroMask))) (and (and (=> (= (ControlFlow 0 29) 28) anon13_Else_correct) (=> (= (ControlFlow 0 29) 2) anon14_Then_correct)) (=> (= (ControlFlow 0 29) 7) anon14_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 30) 29) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
