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
(declare-sort T@Field_10081_53 0)
(declare-sort T@Field_10094_10095 0)
(declare-sort T@Field_16110_3130 0)
(declare-sort T@Field_10081_27305 0)
(declare-sort T@Field_10081_27172 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10042 0)) (((PolymorphicMapType_10042 (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| (Array T@Ref T@Field_16110_3130 Real)) (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| (Array T@Ref T@Field_10081_53 Real)) (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| (Array T@Ref T@Field_10094_10095 Real)) (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| (Array T@Ref T@Field_10081_27172 Real)) (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| (Array T@Ref T@Field_10081_27305 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10570 0)) (((PolymorphicMapType_10570 (|PolymorphicMapType_10570_10081_53#PolymorphicMapType_10570| (Array T@Ref T@Field_10081_53 Bool)) (|PolymorphicMapType_10570_10081_10095#PolymorphicMapType_10570| (Array T@Ref T@Field_10094_10095 Bool)) (|PolymorphicMapType_10570_10081_3130#PolymorphicMapType_10570| (Array T@Ref T@Field_16110_3130 Bool)) (|PolymorphicMapType_10570_10081_27172#PolymorphicMapType_10570| (Array T@Ref T@Field_10081_27172 Bool)) (|PolymorphicMapType_10570_10081_28483#PolymorphicMapType_10570| (Array T@Ref T@Field_10081_27305 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10021 0)) (((PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| (Array T@Ref T@Field_10081_53 Bool)) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| (Array T@Ref T@Field_10094_10095 T@Ref)) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| (Array T@Ref T@Field_16110_3130 Int)) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| (Array T@Ref T@Field_10081_27305 T@PolymorphicMapType_10570)) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| (Array T@Ref T@Field_10081_27172 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10081_53)
(declare-fun f_7 () T@Field_16110_3130)
(declare-sort T@Seq_16155 0)
(declare-fun |Seq#Length_6859| (T@Seq_16155) Int)
(declare-fun |Seq#Drop_6859| (T@Seq_16155 Int) T@Seq_16155)
(declare-sort T@Seq_3008 0)
(declare-fun |Seq#Length_3008| (T@Seq_3008) Int)
(declare-fun |Seq#Drop_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun succHeap (T@PolymorphicMapType_10021 T@PolymorphicMapType_10021) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10021 T@PolymorphicMapType_10021) Bool)
(declare-fun state (T@PolymorphicMapType_10021 T@PolymorphicMapType_10042) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10042) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10570)
(declare-fun |Seq#Index_6859| (T@Seq_16155 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3008| (T@Seq_3008 Int) Int)
(declare-fun |Seq#Empty_6859| () T@Seq_16155)
(declare-fun |Seq#Empty_3008| () T@Seq_3008)
(declare-fun |Seq#Update_6859| (T@Seq_16155 Int T@Ref) T@Seq_16155)
(declare-fun |Seq#Update_3008| (T@Seq_3008 Int Int) T@Seq_3008)
(declare-fun |Seq#Take_6859| (T@Seq_16155 Int) T@Seq_16155)
(declare-fun |Seq#Take_3008| (T@Seq_3008 Int) T@Seq_3008)
(declare-fun |Seq#Contains_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3008)
(declare-fun |Seq#Contains_16155| (T@Seq_16155 T@Ref) Bool)
(declare-fun |Seq#Skolem_16155| (T@Seq_16155 T@Ref) Int)
(declare-fun |Seq#Skolem_3008| (T@Seq_3008 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10021 T@PolymorphicMapType_10021 T@PolymorphicMapType_10042) Bool)
(declare-fun IsPredicateField_10081_27263 (T@Field_10081_27172) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10081 (T@Field_10081_27172) T@Field_10081_27305)
(declare-fun HasDirectPerm_10081_27236 (T@PolymorphicMapType_10042 T@Ref T@Field_10081_27172) Bool)
(declare-fun IsWandField_10081_29010 (T@Field_10081_27172) Bool)
(declare-fun WandMaskField_10081 (T@Field_10081_27172) T@Field_10081_27305)
(declare-fun |Seq#Singleton_6859| (T@Ref) T@Seq_16155)
(declare-fun |Seq#Singleton_3008| (Int) T@Seq_3008)
(declare-fun |Seq#Append_16155| (T@Seq_16155 T@Seq_16155) T@Seq_16155)
(declare-fun |Seq#Append_3008| (T@Seq_3008 T@Seq_3008) T@Seq_3008)
(declare-fun dummyHeap () T@PolymorphicMapType_10021)
(declare-fun ZeroMask () T@PolymorphicMapType_10042)
(declare-fun InsidePredicate_10081_10081 (T@Field_10081_27172 T@FrameType T@Field_10081_27172 T@FrameType) Bool)
(declare-fun IsPredicateField_6855_3130 (T@Field_16110_3130) Bool)
(declare-fun IsWandField_6855_3130 (T@Field_16110_3130) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6855_32556 (T@Field_10081_27305) Bool)
(declare-fun IsWandField_6855_32572 (T@Field_10081_27305) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6855_10095 (T@Field_10094_10095) Bool)
(declare-fun IsWandField_6855_10095 (T@Field_10094_10095) Bool)
(declare-fun IsPredicateField_6855_53 (T@Field_10081_53) Bool)
(declare-fun IsWandField_6855_53 (T@Field_10081_53) Bool)
(declare-fun HasDirectPerm_10081_33010 (T@PolymorphicMapType_10042 T@Ref T@Field_10081_27305) Bool)
(declare-fun HasDirectPerm_10081_3130 (T@PolymorphicMapType_10042 T@Ref T@Field_16110_3130) Bool)
(declare-fun HasDirectPerm_10081_10095 (T@PolymorphicMapType_10042 T@Ref T@Field_10094_10095) Bool)
(declare-fun HasDirectPerm_10081_53 (T@PolymorphicMapType_10042 T@Ref T@Field_10081_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10042 T@PolymorphicMapType_10042 T@PolymorphicMapType_10042) Bool)
(declare-fun |Seq#Equal_16155| (T@Seq_16155 T@Seq_16155) Bool)
(declare-fun |Seq#Equal_3008| (T@Seq_3008 T@Seq_3008) Bool)
(declare-fun |Seq#ContainsTrigger_6859| (T@Seq_16155 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3008| (T@Seq_3008 Int) Bool)
(declare-fun |Seq#SkolemDiff_16155| (T@Seq_16155 T@Seq_16155) Int)
(declare-fun |Seq#SkolemDiff_3008| (T@Seq_3008 T@Seq_3008) Int)
(assert (forall ((s T@Seq_16155) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6859| s)) (= (|Seq#Length_6859| (|Seq#Drop_6859| s n)) (- (|Seq#Length_6859| s) n))) (=> (< (|Seq#Length_6859| s) n) (= (|Seq#Length_6859| (|Seq#Drop_6859| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6859| (|Seq#Drop_6859| s n)) (|Seq#Length_6859| s))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6859| (|Seq#Drop_6859| s n)))
 :pattern ( (|Seq#Length_6859| s) (|Seq#Drop_6859| s n))
)))
(assert (forall ((s@@0 T@Seq_3008) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3008| s@@0)) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (- (|Seq#Length_3008| s@@0) n@@0))) (=> (< (|Seq#Length_3008| s@@0) n@@0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)) (|Seq#Length_3008| s@@0))))
 :qid |stdinbpl.303:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3008| (|Seq#Drop_3008| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3008| s@@0) (|Seq#Drop_3008| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10021) (Heap1 T@PolymorphicMapType_10021) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10021) (Mask T@PolymorphicMapType_10042) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10021) (Heap1@@0 T@PolymorphicMapType_10021) (Heap2 T@PolymorphicMapType_10021) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10081_27305) ) (!  (not (select (|PolymorphicMapType_10570_10081_28483#PolymorphicMapType_10570| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10570_10081_28483#PolymorphicMapType_10570| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10081_27172) ) (!  (not (select (|PolymorphicMapType_10570_10081_27172#PolymorphicMapType_10570| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10570_10081_27172#PolymorphicMapType_10570| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16110_3130) ) (!  (not (select (|PolymorphicMapType_10570_10081_3130#PolymorphicMapType_10570| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10570_10081_3130#PolymorphicMapType_10570| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10094_10095) ) (!  (not (select (|PolymorphicMapType_10570_10081_10095#PolymorphicMapType_10570| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10570_10081_10095#PolymorphicMapType_10570| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10081_53) ) (!  (not (select (|PolymorphicMapType_10570_10081_53#PolymorphicMapType_10570| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10570_10081_53#PolymorphicMapType_10570| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_16155) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6859| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6859| (|Seq#Drop_6859| s@@1 n@@1) j) (|Seq#Index_6859| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6859| (|Seq#Drop_6859| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3008) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3008| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0) (|Seq#Index_3008| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.324:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3008| (|Seq#Drop_3008| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6859| |Seq#Empty_6859|) 0))
(assert (= (|Seq#Length_3008| |Seq#Empty_3008|) 0))
(assert (forall ((s@@3 T@Seq_16155) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6859| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6859| (|Seq#Update_6859| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6859| (|Seq#Update_6859| s@@3 i v) n@@3) (|Seq#Index_6859| s@@3 n@@3)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6859| (|Seq#Update_6859| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6859| s@@3 n@@3) (|Seq#Update_6859| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3008) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3008| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3008| s@@4 n@@4)))))
 :qid |stdinbpl.279:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3008| (|Seq#Update_3008| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3008| s@@4 n@@4) (|Seq#Update_3008| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16155) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6859| s@@5)) (= (|Seq#Length_6859| (|Seq#Take_6859| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6859| s@@5) n@@5) (= (|Seq#Length_6859| (|Seq#Take_6859| s@@5 n@@5)) (|Seq#Length_6859| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6859| (|Seq#Take_6859| s@@5 n@@5)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6859| (|Seq#Take_6859| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6859| s@@5 n@@5) (|Seq#Length_6859| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3008) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3008| s@@6)) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3008| s@@6) n@@6) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) (|Seq#Length_3008| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)) 0)))
 :qid |stdinbpl.290:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3008| (|Seq#Take_3008| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3008| s@@6 n@@6) (|Seq#Length_3008| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.564:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_16155) (x T@Ref) ) (!  (=> (|Seq#Contains_16155| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16155| s@@7 x)) (< (|Seq#Skolem_16155| s@@7 x) (|Seq#Length_6859| s@@7))) (= (|Seq#Index_6859| s@@7 (|Seq#Skolem_16155| s@@7 x)) x)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16155| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3008) (x@@0 Int) ) (!  (=> (|Seq#Contains_3008| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3008| s@@8 x@@0)) (< (|Seq#Skolem_3008| s@@8 x@@0) (|Seq#Length_3008| s@@8))) (= (|Seq#Index_3008| s@@8 (|Seq#Skolem_3008| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.422:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3008| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_16155) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_6859| s@@9 n@@7) s@@9))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6859| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3008) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3008| s@@10 n@@8) s@@10))
 :qid |stdinbpl.406:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3008| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.259:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.257:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10021) (ExhaleHeap T@PolymorphicMapType_10021) (Mask@@0 T@PolymorphicMapType_10042) (pm_f_1 T@Field_10081_27172) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10081_27236 Mask@@0 null pm_f_1) (IsPredicateField_10081_27263 pm_f_1)) (= (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@0) null (PredicateMaskField_10081 pm_f_1)) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap) null (PredicateMaskField_10081 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10081_27263 pm_f_1) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap) null (PredicateMaskField_10081 pm_f_1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10021) (ExhaleHeap@@0 T@PolymorphicMapType_10021) (Mask@@1 T@PolymorphicMapType_10042) (pm_f_1@@0 T@Field_10081_27172) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10081_27236 Mask@@1 null pm_f_1@@0) (IsWandField_10081_29010 pm_f_1@@0)) (= (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@1) null (WandMaskField_10081 pm_f_1@@0)) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@0) null (WandMaskField_10081 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10081_29010 pm_f_1@@0) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@0) null (WandMaskField_10081 pm_f_1@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16155| (|Seq#Singleton_6859| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16155| (|Seq#Singleton_6859| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.547:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3008| (|Seq#Singleton_3008| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16155) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6859| s@@11))) (= (|Seq#Index_6859| (|Seq#Take_6859| s@@11 n@@9) j@@3) (|Seq#Index_6859| s@@11 j@@3)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6859| (|Seq#Take_6859| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6859| s@@11 j@@3) (|Seq#Take_6859| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3008) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3008| s@@12))) (= (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4) (|Seq#Index_3008| s@@12 j@@4)))
 :qid |stdinbpl.298:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3008| (|Seq#Take_3008| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3008| s@@12 j@@4) (|Seq#Take_3008| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_16155) (t T@Seq_16155) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6859| s@@13))) (< n@@11 (|Seq#Length_6859| (|Seq#Append_16155| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6859| s@@13)) (|Seq#Length_6859| s@@13)) n@@11) (= (|Seq#Take_6859| (|Seq#Append_16155| s@@13 t) n@@11) (|Seq#Append_16155| s@@13 (|Seq#Take_6859| t (|Seq#Sub| n@@11 (|Seq#Length_6859| s@@13)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6859| (|Seq#Append_16155| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3008) (t@@0 T@Seq_3008) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3008| s@@14))) (< n@@12 (|Seq#Length_3008| (|Seq#Append_3008| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)) (|Seq#Length_3008| s@@14)) n@@12) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12) (|Seq#Append_3008| s@@14 (|Seq#Take_3008| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3008| s@@14)))))))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10021) (ExhaleHeap@@1 T@PolymorphicMapType_10021) (Mask@@2 T@PolymorphicMapType_10042) (o_3 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@2) o_3 $allocated) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@1) o_3 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@1) o_3 $allocated))
)))
(assert (forall ((p T@Field_10081_27172) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10081_10081 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10081_10081 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_16155) (s1 T@Seq_16155) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6859|)) (not (= s1 |Seq#Empty_6859|))) (<= (|Seq#Length_6859| s0) n@@13)) (< n@@13 (|Seq#Length_6859| (|Seq#Append_16155| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6859| s0)) (|Seq#Length_6859| s0)) n@@13) (= (|Seq#Index_6859| (|Seq#Append_16155| s0 s1) n@@13) (|Seq#Index_6859| s1 (|Seq#Sub| n@@13 (|Seq#Length_6859| s0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6859| (|Seq#Append_16155| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3008) (s1@@0 T@Seq_3008) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3008|)) (not (= s1@@0 |Seq#Empty_3008|))) (<= (|Seq#Length_3008| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3008| (|Seq#Append_3008| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0)) (|Seq#Length_3008| s0@@0)) n@@14) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14) (|Seq#Index_3008| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3008| s0@@0))))))
 :qid |stdinbpl.270:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6855_3130 f_7)))
(assert  (not (IsWandField_6855_3130 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10021) (ExhaleHeap@@2 T@PolymorphicMapType_10021) (Mask@@3 T@PolymorphicMapType_10042) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10042) (o_2@@4 T@Ref) (f_4@@4 T@Field_10081_27305) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6855_32556 f_4@@4))) (not (IsWandField_6855_32572 f_4@@4))) (<= (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10042) (o_2@@5 T@Ref) (f_4@@5 T@Field_10081_27172) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10081_27263 f_4@@5))) (not (IsWandField_10081_29010 f_4@@5))) (<= (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10042) (o_2@@6 T@Ref) (f_4@@6 T@Field_10094_10095) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6855_10095 f_4@@6))) (not (IsWandField_6855_10095 f_4@@6))) (<= (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10042) (o_2@@7 T@Ref) (f_4@@7 T@Field_10081_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6855_53 f_4@@7))) (not (IsWandField_6855_53 f_4@@7))) (<= (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10042) (o_2@@8 T@Ref) (f_4@@8 T@Field_16110_3130) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6855_3130 f_4@@8))) (not (IsWandField_6855_3130 f_4@@8))) (<= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10042) (o_2@@9 T@Ref) (f_4@@9 T@Field_10081_27305) ) (! (= (HasDirectPerm_10081_33010 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10081_33010 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10042) (o_2@@10 T@Ref) (f_4@@10 T@Field_10081_27172) ) (! (= (HasDirectPerm_10081_27236 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10081_27236 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10042) (o_2@@11 T@Ref) (f_4@@11 T@Field_16110_3130) ) (! (= (HasDirectPerm_10081_3130 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10081_3130 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10042) (o_2@@12 T@Ref) (f_4@@12 T@Field_10094_10095) ) (! (= (HasDirectPerm_10081_10095 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10081_10095 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10042) (o_2@@13 T@Ref) (f_4@@13 T@Field_10081_53) ) (! (= (HasDirectPerm_10081_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10081_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10021) (ExhaleHeap@@3 T@PolymorphicMapType_10021) (Mask@@14 T@PolymorphicMapType_10042) (pm_f_1@@1 T@Field_10081_27172) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10081_27236 Mask@@14 null pm_f_1@@1) (IsPredicateField_10081_27263 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_8 T@Field_10081_53) ) (!  (=> (select (|PolymorphicMapType_10570_10081_53#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@4) null (PredicateMaskField_10081 pm_f_1@@1))) o2_1 f_8) (= (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@4) o2_1 f_8) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1 f_8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1 f_8))
)) (forall ((o2_1@@0 T@Ref) (f_8@@0 T@Field_10094_10095) ) (!  (=> (select (|PolymorphicMapType_10570_10081_10095#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@4) null (PredicateMaskField_10081 pm_f_1@@1))) o2_1@@0 f_8@@0) (= (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@4) o2_1@@0 f_8@@0) (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@0 f_8@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@0 f_8@@0))
))) (forall ((o2_1@@1 T@Ref) (f_8@@1 T@Field_16110_3130) ) (!  (=> (select (|PolymorphicMapType_10570_10081_3130#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@4) null (PredicateMaskField_10081 pm_f_1@@1))) o2_1@@1 f_8@@1) (= (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@4) o2_1@@1 f_8@@1) (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@1 f_8@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@1 f_8@@1))
))) (forall ((o2_1@@2 T@Ref) (f_8@@2 T@Field_10081_27172) ) (!  (=> (select (|PolymorphicMapType_10570_10081_27172#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@4) null (PredicateMaskField_10081 pm_f_1@@1))) o2_1@@2 f_8@@2) (= (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@4) o2_1@@2 f_8@@2) (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@2 f_8@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@2 f_8@@2))
))) (forall ((o2_1@@3 T@Ref) (f_8@@3 T@Field_10081_27305) ) (!  (=> (select (|PolymorphicMapType_10570_10081_28483#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@4) null (PredicateMaskField_10081 pm_f_1@@1))) o2_1@@3 f_8@@3) (= (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@4) o2_1@@3 f_8@@3) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@3 f_8@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@3) o2_1@@3 f_8@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10081_27263 pm_f_1@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10021) (ExhaleHeap@@4 T@PolymorphicMapType_10021) (Mask@@15 T@PolymorphicMapType_10042) (pm_f_1@@2 T@Field_10081_27172) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10081_27236 Mask@@15 null pm_f_1@@2) (IsWandField_10081_29010 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_8@@4 T@Field_10081_53) ) (!  (=> (select (|PolymorphicMapType_10570_10081_53#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@5) null (WandMaskField_10081 pm_f_1@@2))) o2_1@@4 f_8@@4) (= (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@5) o2_1@@4 f_8@@4) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@4 f_8@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@4 f_8@@4))
)) (forall ((o2_1@@5 T@Ref) (f_8@@5 T@Field_10094_10095) ) (!  (=> (select (|PolymorphicMapType_10570_10081_10095#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@5) null (WandMaskField_10081 pm_f_1@@2))) o2_1@@5 f_8@@5) (= (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@5) o2_1@@5 f_8@@5) (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@5 f_8@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@5 f_8@@5))
))) (forall ((o2_1@@6 T@Ref) (f_8@@6 T@Field_16110_3130) ) (!  (=> (select (|PolymorphicMapType_10570_10081_3130#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@5) null (WandMaskField_10081 pm_f_1@@2))) o2_1@@6 f_8@@6) (= (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@5) o2_1@@6 f_8@@6) (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@6 f_8@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@6 f_8@@6))
))) (forall ((o2_1@@7 T@Ref) (f_8@@7 T@Field_10081_27172) ) (!  (=> (select (|PolymorphicMapType_10570_10081_27172#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@5) null (WandMaskField_10081 pm_f_1@@2))) o2_1@@7 f_8@@7) (= (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@5) o2_1@@7 f_8@@7) (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@7 f_8@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@7 f_8@@7))
))) (forall ((o2_1@@8 T@Ref) (f_8@@8 T@Field_10081_27305) ) (!  (=> (select (|PolymorphicMapType_10570_10081_28483#PolymorphicMapType_10570| (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@5) null (WandMaskField_10081 pm_f_1@@2))) o2_1@@8 f_8@@8) (= (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@5) o2_1@@8 f_8@@8) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@8 f_8@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@4) o2_1@@8 f_8@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10081_29010 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.562:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3008| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10021) (ExhaleHeap@@5 T@PolymorphicMapType_10021) (Mask@@16 T@PolymorphicMapType_10042) (o_3@@0 T@Ref) (f_8@@9 T@Field_10081_27305) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10081_33010 Mask@@16 o_3@@0 f_8@@9) (= (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@6) o_3@@0 f_8@@9) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@5) o_3@@0 f_8@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| ExhaleHeap@@5) o_3@@0 f_8@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10021) (ExhaleHeap@@6 T@PolymorphicMapType_10021) (Mask@@17 T@PolymorphicMapType_10042) (o_3@@1 T@Ref) (f_8@@10 T@Field_10081_27172) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10081_27236 Mask@@17 o_3@@1 f_8@@10) (= (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@7) o_3@@1 f_8@@10) (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| ExhaleHeap@@6) o_3@@1 f_8@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| ExhaleHeap@@6) o_3@@1 f_8@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10021) (ExhaleHeap@@7 T@PolymorphicMapType_10021) (Mask@@18 T@PolymorphicMapType_10042) (o_3@@2 T@Ref) (f_8@@11 T@Field_16110_3130) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10081_3130 Mask@@18 o_3@@2 f_8@@11) (= (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@8) o_3@@2 f_8@@11) (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| ExhaleHeap@@7) o_3@@2 f_8@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| ExhaleHeap@@7) o_3@@2 f_8@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10021) (ExhaleHeap@@8 T@PolymorphicMapType_10021) (Mask@@19 T@PolymorphicMapType_10042) (o_3@@3 T@Ref) (f_8@@12 T@Field_10094_10095) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10081_10095 Mask@@19 o_3@@3 f_8@@12) (= (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@9) o_3@@3 f_8@@12) (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| ExhaleHeap@@8) o_3@@3 f_8@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| ExhaleHeap@@8) o_3@@3 f_8@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10021) (ExhaleHeap@@9 T@PolymorphicMapType_10021) (Mask@@20 T@PolymorphicMapType_10042) (o_3@@4 T@Ref) (f_8@@13 T@Field_10081_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10081_53 Mask@@20 o_3@@4 f_8@@13) (= (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@10) o_3@@4 f_8@@13) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@9) o_3@@4 f_8@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| ExhaleHeap@@9) o_3@@4 f_8@@13))
)))
(assert (forall ((s0@@1 T@Seq_16155) (s1@@1 T@Seq_16155) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6859|)) (not (= s1@@1 |Seq#Empty_6859|))) (= (|Seq#Length_6859| (|Seq#Append_16155| s0@@1 s1@@1)) (+ (|Seq#Length_6859| s0@@1) (|Seq#Length_6859| s1@@1))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6859| (|Seq#Append_16155| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3008) (s1@@2 T@Seq_3008) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3008|)) (not (= s1@@2 |Seq#Empty_3008|))) (= (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)) (+ (|Seq#Length_3008| s0@@2) (|Seq#Length_3008| s1@@2))))
 :qid |stdinbpl.239:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3008| (|Seq#Append_3008| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10081_27305) ) (! (= (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10081_27172) ) (! (= (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10094_10095) ) (! (= (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10081_53) ) (! (= (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_16110_3130) ) (! (= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_16155) (t@@1 T@Seq_16155) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6859| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6859| s@@15)) (|Seq#Length_6859| s@@15)) n@@15) (= (|Seq#Drop_6859| (|Seq#Append_16155| s@@15 t@@1) n@@15) (|Seq#Drop_6859| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6859| s@@15))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6859| (|Seq#Append_16155| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3008) (t@@2 T@Seq_3008) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3008| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16)) (|Seq#Length_3008| s@@16)) n@@16) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16) (|Seq#Drop_3008| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3008| s@@16))))))
 :qid |stdinbpl.396:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10042) (SummandMask1 T@PolymorphicMapType_10042) (SummandMask2 T@PolymorphicMapType_10042) (o_2@@19 T@Ref) (f_4@@19 T@Field_10081_27305) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10042) (SummandMask1@@0 T@PolymorphicMapType_10042) (SummandMask2@@0 T@PolymorphicMapType_10042) (o_2@@20 T@Ref) (f_4@@20 T@Field_10081_27172) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10042) (SummandMask1@@1 T@PolymorphicMapType_10042) (SummandMask2@@1 T@PolymorphicMapType_10042) (o_2@@21 T@Ref) (f_4@@21 T@Field_10094_10095) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10042) (SummandMask1@@2 T@PolymorphicMapType_10042) (SummandMask2@@2 T@PolymorphicMapType_10042) (o_2@@22 T@Ref) (f_4@@22 T@Field_10081_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10042) (SummandMask1@@3 T@PolymorphicMapType_10042) (SummandMask2@@3 T@PolymorphicMapType_10042) (o_2@@23 T@Ref) (f_4@@23 T@Field_16110_3130) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.561:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3008| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16155) (b T@Seq_16155) ) (!  (=> (|Seq#Equal_16155| a b) (= a b))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16155| a b))
)))
(assert (forall ((a@@0 T@Seq_3008) (b@@0 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.534:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3008| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16155) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6859| s@@17))) (|Seq#ContainsTrigger_6859| s@@17 (|Seq#Index_6859| s@@17 i@@3)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6859| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3008) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3008| s@@18))) (|Seq#ContainsTrigger_3008| s@@18 (|Seq#Index_3008| s@@18 i@@4)))
 :qid |stdinbpl.427:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3008| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16155) (s1@@3 T@Seq_16155) ) (!  (and (=> (= s0@@3 |Seq#Empty_6859|) (= (|Seq#Append_16155| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6859|) (= (|Seq#Append_16155| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16155| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3008) (s1@@4 T@Seq_3008) ) (!  (and (=> (= s0@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3008|) (= (|Seq#Append_3008| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.245:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3008| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_6859| (|Seq#Singleton_6859| t@@3) 0) t@@3)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6859| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3008| (|Seq#Singleton_3008| t@@4) 0) t@@4)
 :qid |stdinbpl.249:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3008| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16155) ) (! (<= 0 (|Seq#Length_6859| s@@19))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6859| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3008) ) (! (<= 0 (|Seq#Length_3008| s@@20))
 :qid |stdinbpl.228:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3008| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16155) (s1@@5 T@Seq_16155) ) (!  (=> (|Seq#Equal_16155| s0@@5 s1@@5) (and (= (|Seq#Length_6859| s0@@5) (|Seq#Length_6859| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_6859| s0@@5))) (= (|Seq#Index_6859| s0@@5 j@@6) (|Seq#Index_6859| s1@@5 j@@6)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6859| s0@@5 j@@6))
 :pattern ( (|Seq#Index_6859| s1@@5 j@@6))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16155| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3008) (s1@@6 T@Seq_3008) ) (!  (=> (|Seq#Equal_3008| s0@@6 s1@@6) (and (= (|Seq#Length_3008| s0@@6) (|Seq#Length_3008| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3008| s0@@6))) (= (|Seq#Index_3008| s0@@6 j@@7) (|Seq#Index_3008| s1@@6 j@@7)))
 :qid |stdinbpl.524:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3008| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3008| s1@@6 j@@7))
))))
 :qid |stdinbpl.521:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3008| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_6859| (|Seq#Singleton_6859| t@@5)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6859| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3008| (|Seq#Singleton_3008| t@@6)) 1)
 :qid |stdinbpl.236:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3008| t@@6))
)))
(assert (forall ((s@@21 T@Seq_16155) (t@@7 T@Seq_16155) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6859| s@@21))) (= (|Seq#Take_6859| (|Seq#Append_16155| s@@21 t@@7) n@@17) (|Seq#Take_6859| s@@21 n@@17)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6859| (|Seq#Append_16155| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3008) (t@@8 T@Seq_3008) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3008| s@@22))) (= (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18) (|Seq#Take_3008| s@@22 n@@18)))
 :qid |stdinbpl.378:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3008| (|Seq#Append_3008| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16155) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6859| s@@23))) (= (|Seq#Length_6859| (|Seq#Update_6859| s@@23 i@@5 v@@2)) (|Seq#Length_6859| s@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6859| (|Seq#Update_6859| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6859| s@@23) (|Seq#Update_6859| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3008) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3008| s@@24))) (= (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)) (|Seq#Length_3008| s@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3008| (|Seq#Update_3008| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3008| s@@24) (|Seq#Update_3008| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10021) (o_1 T@Ref) (f_9 T@Field_10081_27172) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@11) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@11) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@11) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@11) (store (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@11) o_1 f_9 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@11) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@11) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@11) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@11) (store (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@11) o_1 f_9 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10021) (o_1@@0 T@Ref) (f_9@@0 T@Field_10081_27305) (v@@5 T@PolymorphicMapType_10570) ) (! (succHeap Heap@@12 (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@12) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@12) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@12) (store (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@12) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@12) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@12) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@12) (store (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@12) o_1@@0 f_9@@0 v@@5) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10021) (o_1@@1 T@Ref) (f_9@@1 T@Field_16110_3130) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@13) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@13) (store (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@13) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@13) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@13) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@13) (store (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@13) o_1@@1 f_9@@1 v@@6) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@13) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10021) (o_1@@2 T@Ref) (f_9@@2 T@Field_10094_10095) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@14) (store (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@14) o_1@@2 f_9@@2 v@@7) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@14) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@14) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10021 (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@14) (store (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@14) o_1@@2 f_9@@2 v@@7) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@14) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@14) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10021) (o_1@@3 T@Ref) (f_9@@3 T@Field_10081_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10021 (store (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@15) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@15) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@15) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@15) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10021 (store (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@15) o_1@@3 f_9@@3 v@@8) (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@15) (|PolymorphicMapType_10021_6855_3130#PolymorphicMapType_10021| Heap@@15) (|PolymorphicMapType_10021_10081_27349#PolymorphicMapType_10021| Heap@@15) (|PolymorphicMapType_10021_10081_27172#PolymorphicMapType_10021| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_16155) (t@@9 T@Seq_16155) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6859| s@@25))) (= (|Seq#Drop_6859| (|Seq#Append_16155| s@@25 t@@9) n@@19) (|Seq#Append_16155| (|Seq#Drop_6859| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6859| (|Seq#Append_16155| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3008) (t@@10 T@Seq_3008) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3008| s@@26))) (= (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20) (|Seq#Append_3008| (|Seq#Drop_3008| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.392:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3008| (|Seq#Append_3008| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16155) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6859| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6859| (|Seq#Drop_6859| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6859| s@@27 i@@7))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6859| s@@27 n@@21) (|Seq#Index_6859| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3008) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3008| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3008| (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3008| s@@28 i@@8))))
 :qid |stdinbpl.328:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3008| s@@28 n@@22) (|Seq#Index_3008| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16155) (s1@@7 T@Seq_16155) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6859|)) (not (= s1@@7 |Seq#Empty_6859|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6859| s0@@7))) (= (|Seq#Index_6859| (|Seq#Append_16155| s0@@7 s1@@7) n@@23) (|Seq#Index_6859| s0@@7 n@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6859| (|Seq#Append_16155| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6859| s0@@7 n@@23) (|Seq#Append_16155| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3008) (s1@@8 T@Seq_3008) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3008|)) (not (= s1@@8 |Seq#Empty_3008|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3008| s0@@8))) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24) (|Seq#Index_3008| s0@@8 n@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3008| (|Seq#Append_3008| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3008| s0@@8 n@@24) (|Seq#Append_3008| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16155) (s1@@9 T@Seq_16155) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6859|)) (not (= s1@@9 |Seq#Empty_6859|))) (<= 0 m)) (< m (|Seq#Length_6859| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6859| s0@@9)) (|Seq#Length_6859| s0@@9)) m) (= (|Seq#Index_6859| (|Seq#Append_16155| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6859| s0@@9))) (|Seq#Index_6859| s1@@9 m))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6859| s1@@9 m) (|Seq#Append_16155| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3008) (s1@@10 T@Seq_3008) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3008|)) (not (= s1@@10 |Seq#Empty_3008|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3008| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10)) (|Seq#Length_3008| s0@@10)) m@@0) (= (|Seq#Index_3008| (|Seq#Append_3008| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3008| s0@@10))) (|Seq#Index_3008| s1@@10 m@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3008| s1@@10 m@@0) (|Seq#Append_3008| s0@@10 s1@@10))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_10094_10095) (Heap@@16 T@PolymorphicMapType_10021) ) (!  (=> (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@16) o_1@@4 $allocated) (select (|PolymorphicMapType_10021_6655_53#PolymorphicMapType_10021| Heap@@16) (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@16) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10021_6658_6659#PolymorphicMapType_10021| Heap@@16) o_1@@4 f_2))
)))
(assert (forall ((s@@29 T@Seq_16155) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6859| s@@29))) (= (|Seq#Index_6859| s@@29 i@@9) x@@3)) (|Seq#Contains_16155| s@@29 x@@3))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16155| s@@29 x@@3) (|Seq#Index_6859| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3008) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3008| s@@30))) (= (|Seq#Index_3008| s@@30 i@@10) x@@4)) (|Seq#Contains_3008| s@@30 x@@4))
 :qid |stdinbpl.425:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3008| s@@30 x@@4) (|Seq#Index_3008| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16155) (s1@@11 T@Seq_16155) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16155| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16155| s0@@11 s1@@11))) (not (= (|Seq#Length_6859| s0@@11) (|Seq#Length_6859| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16155| s0@@11 s1@@11))) (= (|Seq#Length_6859| s0@@11) (|Seq#Length_6859| s1@@11))) (= (|Seq#SkolemDiff_16155| s0@@11 s1@@11) (|Seq#SkolemDiff_16155| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16155| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16155| s0@@11 s1@@11) (|Seq#Length_6859| s0@@11))) (not (= (|Seq#Index_6859| s0@@11 (|Seq#SkolemDiff_16155| s0@@11 s1@@11)) (|Seq#Index_6859| s1@@11 (|Seq#SkolemDiff_16155| s0@@11 s1@@11))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16155| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3008) (s1@@12 T@Seq_3008) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3008| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (not (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3008| s0@@12 s1@@12))) (= (|Seq#Length_3008| s0@@12) (|Seq#Length_3008| s1@@12))) (= (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#SkolemDiff_3008| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3008| s0@@12 s1@@12) (|Seq#Length_3008| s0@@12))) (not (= (|Seq#Index_3008| s0@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12)) (|Seq#Index_3008| s1@@12 (|Seq#SkolemDiff_3008| s0@@12 s1@@12))))))
 :qid |stdinbpl.529:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3008| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_10081_27172) (v_1@@0 T@FrameType) (q T@Field_10081_27172) (w@@0 T@FrameType) (r T@Field_10081_27172) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10081_10081 p@@1 v_1@@0 q w@@0) (InsidePredicate_10081_10081 q w@@0 r u)) (InsidePredicate_10081_10081 p@@1 v_1@@0 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10081_10081 p@@1 v_1@@0 q w@@0) (InsidePredicate_10081_10081 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_16155) ) (!  (=> (= (|Seq#Length_6859| s@@31) 0) (= s@@31 |Seq#Empty_6859|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6859| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3008) ) (!  (=> (= (|Seq#Length_3008| s@@32) 0) (= s@@32 |Seq#Empty_3008|))
 :qid |stdinbpl.232:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3008| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16155) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6859| s@@33 n@@25) |Seq#Empty_6859|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6859| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3008) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3008| s@@34 n@@26) |Seq#Empty_3008|))
 :qid |stdinbpl.408:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3008| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_2 () Int)
(declare-fun s_2 () T@Seq_16155)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_10042)
(declare-fun Heap@@17 () T@PolymorphicMapType_10021)
(declare-fun i1_17 () Int)
(declare-fun i2_7 () Int)
(set-info :boogie-vc-id m)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (|Seq#Contains_3008| (|Seq#Range| 0 4) i_2)) (= (ControlFlow 0 22) 18)) anon7_correct)))
(let ((anon12_Then_correct  (=> (|Seq#Contains_3008| (|Seq#Range| 0 4) i_2) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< i_2 (|Seq#Length_6859| s_2))) (=> (< i_2 (|Seq#Length_6859| s_2)) (=> (= (ControlFlow 0 19) 18) anon7_correct))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 17)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1)) (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1_1)) (< NoPerm (/ (to_real 25) (to_real 100)))) (< NoPerm (/ (to_real 25) (to_real 100)))) (not (= (|Seq#Index_6859| s_2 i_1) (|Seq#Index_6859| s_2 i_1_1))))
 :qid |stdinbpl.635:15|
 :skolemid |59|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@0)) (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1_1@@0)) (< NoPerm (/ (to_real 25) (to_real 100)))) (< NoPerm (/ (to_real 25) (to_real 100)))) (not (= (|Seq#Index_6859| s_2 i_1@@0) (|Seq#Index_6859| s_2 i_1_1@@0))))
 :qid |stdinbpl.635:15|
 :skolemid |59|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@1) (< NoPerm (/ (to_real 25) (to_real 100)))) (and (qpRange1 (|Seq#Index_6859| s_2 i_1@@1)) (= (invRecv1 (|Seq#Index_6859| s_2 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.641:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_6859| s_2 i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i_1@@1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@1))
 :pattern ( (|Seq#Index_6859| s_2 i_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3008| (|Seq#Range| 0 4) (invRecv1 o_4)) (< NoPerm (/ (to_real 25) (to_real 100)))) (qpRange1 o_4)) (= (|Seq#Index_6859| s_2 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.645:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4))
))) (and (=> (= (ControlFlow 0 9) (- 0 16)) (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@2) (>= (/ (to_real 25) (to_real 100)) NoPerm))
 :qid |stdinbpl.651:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_6859| s_2 i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i_1@@2))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@2))
 :pattern ( (|Seq#Index_6859| s_2 i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@3) (>= (/ (to_real 25) (to_real 100)) NoPerm))
 :qid |stdinbpl.651:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_6859| s_2 i_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i_1@@3))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@3))
 :pattern ( (|Seq#Index_6859| s_2 i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@4) (> (/ (to_real 25) (to_real 100)) NoPerm)) (not (= (|Seq#Index_6859| s_2 i_1@@4) null)))
 :qid |stdinbpl.657:22|
 :skolemid |63|
 :pattern ( (|Seq#Index_6859| s_2 i_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i_1@@4))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i_1@@4))
 :pattern ( (|Seq#Index_6859| s_2 i_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3008| (|Seq#Range| 0 4) (invRecv1 o_4@@0)) (< NoPerm (/ (to_real 25) (to_real 100)))) (qpRange1 o_4@@0)) (and (=> (< NoPerm (/ (to_real 25) (to_real 100))) (= (|Seq#Index_6859| s_2 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ZeroMask) o_4@@0 f_7) (/ (to_real 25) (to_real 100)))))) (=> (not (and (and (|Seq#Contains_3008| (|Seq#Range| 0 4) (invRecv1 o_4@@0)) (< NoPerm (/ (to_real 25) (to_real 100)))) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.663:22|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| QPMask@0) o_4@@0 f_7))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10081_53) ) (!  (=> true (= (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.667:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10042_6855_53#PolymorphicMapType_10042| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10094_10095) ) (!  (=> true (= (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.667:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10042_6855_10095#PolymorphicMapType_10042| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_16110_3130) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.667:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10042_6855_3130#PolymorphicMapType_10042| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10081_27172) ) (!  (=> true (= (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.667:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10042_6855_27172#PolymorphicMapType_10042| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_10081_27305) ) (!  (=> true (= (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.667:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10042_6855_31427#PolymorphicMapType_10042| QPMask@0) o_4@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (=> (= (ControlFlow 0 9) (- 0 15)) (< 0 (|Seq#Length_6859| s_2))) (=> (< 0 (|Seq#Length_6859| s_2)) (and (=> (= (ControlFlow 0 9) (- 0 14)) (< 1 (|Seq#Length_6859| s_2))) (=> (< 1 (|Seq#Length_6859| s_2)) (=> (= (|Seq#Index_6859| s_2 0) (|Seq#Index_6859| s_2 1)) (and (=> (= (ControlFlow 0 9) (- 0 13)) (< 1 (|Seq#Length_6859| s_2))) (=> (< 1 (|Seq#Length_6859| s_2)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (< 2 (|Seq#Length_6859| s_2))) (=> (< 2 (|Seq#Length_6859| s_2)) (=> (= (|Seq#Index_6859| s_2 1) (|Seq#Index_6859| s_2 2)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (< 2 (|Seq#Length_6859| s_2))) (=> (< 2 (|Seq#Length_6859| s_2)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< 3 (|Seq#Length_6859| s_2))) (=> (< 3 (|Seq#Length_6859| s_2)) (=> (= (|Seq#Index_6859| s_2 2) (|Seq#Index_6859| s_2 3)) (=> (and (state Heap@@17 QPMask@0) (= (ControlFlow 0 9) (- 0 8))) false)))))))))))))))))))))))))
(let ((anon9_Else_correct  (=> (and (forall ((i1_1_1 Int) (i2_1_1 Int) ) (!  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i1_1_1) (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i2_1_1) (not (= i1_1_1 i2_1_1)))) (not (= (|Seq#Index_6859| s_2 i1_1_1) (|Seq#Index_6859| s_2 i2_1_1))))
 :qid |stdinbpl.617:20|
 :skolemid |58|
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i1_1_1) (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i1_1_1) (|Seq#Contains_3008| (|Seq#Range| 0 4) i2_1_1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i1_1_1) (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i2_1_1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i1_1_1) (|Seq#Contains_3008| (|Seq#Range| 0 4) i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i1_1_1) (|Seq#Index_6859| s_2 i2_1_1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i1_1_1) (|Seq#Index_6859| s_2 i2_1_1))
 :pattern ( (|Seq#ContainsTrigger_3008| (|Seq#Range| 0 4) i2_1_1) (|Seq#Index_6859| s_2 i1_1_1))
 :pattern ( (|Seq#Contains_3008| (|Seq#Range| 0 4) i2_1_1) (|Seq#Index_6859| s_2 i1_1_1))
 :pattern ( (|Seq#Index_6859| s_2 i1_1_1) (|Seq#Index_6859| s_2 i2_1_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 23) 9) anon11_Else_correct) (=> (= (ControlFlow 0 23) 19) anon12_Then_correct)) (=> (= (ControlFlow 0 23) 22) anon12_Else_correct)))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i1_17) (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i2_7) (not (= i1_17 i2_7))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i1_17) (and (|Seq#Contains_3008| (|Seq#Range| 0 4) i2_7) (not (= i1_17 i2_7)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_17 0)) (=> (>= i1_17 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_17 (|Seq#Length_6859| s_2))) (=> (< i1_17 (|Seq#Length_6859| s_2)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_7 0)) (=> (>= i2_7 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_7 (|Seq#Length_6859| s_2))) (=> (< i2_7 (|Seq#Length_6859| s_2)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (> (|Seq#Length_6859| s_2) 4) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 24) 23) anon9_Else_correct) (=> (= (ControlFlow 0 24) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 24) 7) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 25) 24) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
